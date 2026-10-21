const fs = require("fs");
const path = require("path");
const crypto = require("crypto");
const { spawnSync } = require("child_process");

const root = path.resolve(__dirname, "..");
const stateFile = path.join(root, "version.json");
const editions = {
    msx1: { name: "quentin", disk: "DOS1_quentin.dsk", debug: 0 },
    msx2: { name: "quentin2", disk: "DOS2_quentin2.dsk", debug: 0 }
};

function validate(state) {
    if (!Number.isSafeInteger(state.milestone) || state.milestone < 1 ||
        !Number.isSafeInteger(state.build) || state.build < 0 ||
        typeof state.codename !== "string" || !state.codename.trim() ||
        typeof state.subtitle !== "string" || !state.subtitle.trim()) {
        throw new Error("Invalid version.json: milestone/build integers and nonempty codename/subtitle required");
    }
    return state;
}

function nextVersion(state, options = {}) {
    validate(state);
    if (options.codename && !options.milestone) {
        throw new Error("--codename requires --milestone");
    }
    if (options.milestone && (!options.codename || !options.subtitle)) {
        throw new Error("A new milestone requires --codename and --subtitle");
    }
    return validate({
        milestone: state.milestone + (options.milestone ? 1 : 0),
        build: options.milestone ? 1 : state.build + 1,
        codename: options.codename || state.codename,
        subtitle: options.subtitle || state.subtitle
    });
}

function version(state) {
    return `${state.milestone}.${state.build}`;
}

function execute(command, args, cwd = root) {
    const result = spawnSync(command, args, { cwd, stdio: "inherit" });
    if (result.error) throw result.error;
    if (result.status !== 0) throw new Error(`${command} failed (exit ${result.status})`);
}

function output(command, args) {
    const result = spawnSync(command, args, { cwd: root, encoding: "utf8" });
    if (result.error) throw result.error;
    if (result.status !== 0) throw new Error(result.stderr || `${command} failed`);
    return result.stdout.trim();
}

function hash(file) {
    return crypto.createHash("sha256").update(fs.readFileSync(file)).digest("hex");
}

function writeJSON(file, data) {
    fs.writeFileSync(file, JSON.stringify(data, null, 2) + "\n");
}

function build(selection, args) {
    const selected = selection === "all" ? Object.keys(editions) : [selection];
    if (selected.some(name => !editions[name])) throw new Error("Select all, msx1 or msx2");
    const options = {};
    const compilerArgs = [];
    const defines = new Set();
    for (let i = 0; i < args.length; ++i) {
        const arg = args[i];
        if (arg === "--milestone") options.milestone = true;
        else if (arg === "--codename" || arg === "--subtitle") {
            if (!args[i + 1] || args[i + 1].startsWith("--")) throw new Error(`Missing ${arg} value`);
            options[arg.slice(2)] = args[++i];
        } else {
            // Versioned builds must actually compile, link, package and deploy.
            if (!/^define=[A-Za-z_][A-Za-z_0-9]*:[A-Za-z_0-9]+$/.test(arg)) {
                throw new Error(`Unsupported build argument: ${arg}. Only define=NAME:VALUE is accepted.`);
            }
            const name = arg.slice(7).split(":")[0];
            if (defines.has(name)) throw new Error(`Duplicate compiler define: ${name}`);
            defines.add(name);
            compilerArgs.push(arg);
        }
    }
    const state = nextVersion(JSON.parse(fs.readFileSync(stateFile, "utf8")), options);
    console.log(`San Quentin ${version(state)} - ${state.codename}: ${state.subtitle}`);
    for (const name of selected) {
        const edition = editions[name];
        const project = path.join(root, "projects", name);
        const out = path.join(project, "out");
        fs.mkdirSync(out, { recursive: true });
        fs.writeFileSync(path.join(out, "build_version.h"),
            `#define SQ_BUILD_VERSION "${version(state)}"\n` +
            `#define SQ_BUILD_CODENAME ${JSON.stringify(state.codename)}\n` +
            `#define SQ_BUILD_SUBTITLE ${JSON.stringify(state.subtitle)}\n`);
        const binary = path.join(out, edition.name + ".com");
        const disk = path.join(project, "emul", "dsk", edition.disk);
        // Remove only previous final outputs so a failing build cannot be packaged as new.
        for (const file of [binary, disk, path.join(out, "build.json")]) {
            if (fs.existsSync(file)) fs.unlinkSync(file);
        }
        const debug = compilerArgs.find(arg => arg.startsWith("define=DEBUG:"));
        execute(process.execPath, [path.join(root, "MSXgl", "engine", "script", "js", "build.js"),
            `define=DEBUG:${edition.debug}`, ...compilerArgs], project);
        if (!fs.existsSync(binary) || !fs.existsSync(disk)) {
            throw new Error(`Build did not generate both COM and DSK for ${name}`);
        }
        writeJSON(path.join(out, "build.json"), {
            ...state, version: version(state), edition: name,
            debug: debug ? Number(debug.split(":")[1]) : edition.debug,
            compilerArgs, builtAt: new Date().toISOString(),
            files: { [path.basename(binary)]: hash(binary), [edition.disk]: hash(disk) }
        });
    }
    writeJSON(stateFile, state);
    console.log(`Completed ${version(state)}. version.json updated after successful build.`);
}

function pack() {
    const state = validate(JSON.parse(fs.readFileSync(stateFile, "utf8")));
    if (state.build < 1) throw new Error("Build both editions first");
    if (output("git", ["status", "--porcelain", "--untracked-files=no"])) {
        throw new Error("Commit tracked changes before packaging a release");
    }
    const id = version(state);
    const directory = path.join(root, "dist", id);
    if (fs.existsSync(directory)) throw new Error(`Refusing to overwrite ${directory}`);
    const builds = {};
    // Validate both editions before creating a release directory.
    for (const [name, edition] of Object.entries(editions)) {
        const project = path.join(root, "projects", name);
        const metadata = JSON.parse(fs.readFileSync(path.join(project, "out", "build.json"), "utf8"));
        if (metadata.version !== id || metadata.codename !== state.codename ||
            metadata.subtitle !== state.subtitle || metadata.debug !== 0) {
            throw new Error(`Rebuild both editions together for ${id}, DEBUG=0 required (${name})`);
        }
        const files = [
            path.join(project, "out", edition.name + ".com"),
            path.join(project, "emul", "dsk", edition.disk)
        ];
        for (const file of files) {
            if (hash(file) !== metadata.files[path.basename(file)]) {
                throw new Error(`Binary changed since build: ${file}`);
            }
        }
        builds[name] = { metadata, files };
    }
    const notes = path.join(root, "docs", "releases", `${id}.md`);
    const screenshots = path.join(root, "images", "releases", id);
    const screenshotFiles = fs.readdirSync(screenshots).filter(file => file.endsWith(".png")).sort();
    if (!fs.existsSync(notes) ||
        !screenshotFiles.some(file => file.startsWith("msx1-")) ||
        !screenshotFiles.some(file => file.startsWith("msx2-"))) {
        throw new Error("Release notes and screenshots for both editions are required");
    }
    fs.mkdirSync(directory, { recursive: true });
    fs.copyFileSync(notes, path.join(directory, "RELEASE-NOTES.md"));
    const readme = fs.readFileSync(path.join(root, "README.md"), "utf8").replace(
        /(!?)\[([^\]]*)\]\(([^)]+)\)/g, (match, image, label, target) => {
            if (/^(https?:|#)/.test(target)) return match;
            const screenshotPrefix = `images/releases/${id}/`;
            const destination = target.startsWith(screenshotPrefix) ?
                "screenshots/" + target.slice(screenshotPrefix.length) :
                image ? `https://raw.githubusercontent.com/wilsonpilon/sanquentin/v${id}/${target}` :
                    `https://github.com/wilsonpilon/sanquentin/blob/v${id}/${target}`;
            return `${image}[${label}](${destination})`;
        });
    fs.writeFileSync(path.join(directory, "README.md"), readme);
    fs.copyFileSync(path.join(root, "LICENSE"), path.join(directory, "LICENSE"));
    fs.copyFileSync(path.join(root, "MSXgl", "LICENSE.md"), path.join(directory, "LICENSE-MSXgl.md"));
    const packaged = [];
    for (const [name, entry] of Object.entries(builds)) {
        for (const file of entry.files) {
            const destination = path.join(directory, `sanquentin-${name}-${id}${path.extname(file)}`);
            fs.copyFileSync(file, destination);
            packaged.push(path.basename(destination));
        }
    }
    fs.mkdirSync(path.join(directory, "screenshots"));
    for (const file of screenshotFiles) {
        fs.copyFileSync(path.join(screenshots, file), path.join(directory, "screenshots", file));
        packaged.push(path.join("screenshots", file));
    }
    const manifest = {
        ...state, version: id, commit: output("git", ["rev-parse", "HEAD"]),
        builds: Object.fromEntries(Object.entries(builds).map(([name, entry]) => [name, entry.metadata])),
        files: Object.fromEntries(packaged.map(file => [file, hash(path.join(directory, file))]))
    };
    writeJSON(path.join(directory, "manifest.json"), manifest);
    packaged.push("manifest.json", "RELEASE-NOTES.md", "README.md", "LICENSE", "LICENSE-MSXgl.md");
    fs.writeFileSync(path.join(directory, "SHA256SUMS.txt"),
        packaged.map(file => `${hash(path.join(directory, file))}  ${file.replace(/\\/g, "/")}`).join("\n") + "\n");
    const archive = `sanquentin-${id}.zip`;
    execute(path.join(root, "MSXgl", "tools", "build", "7zip", "7za.exe"),
        ["a", "-tzip", archive, ...packaged, "SHA256SUMS.txt"], directory);
    fs.writeFileSync(path.join(directory, archive + ".sha256"),
        `${hash(path.join(directory, archive))}  ${archive}\n`);
    console.log(`Release files: ${directory}`);
}

function publish() {
    const state = validate(JSON.parse(fs.readFileSync(stateFile, "utf8")));
    const id = version(state);
    const directory = path.join(root, "dist", id);
    if (!fs.existsSync(directory)) pack();
    const manifest = JSON.parse(fs.readFileSync(path.join(directory, "manifest.json"), "utf8"));
    if (manifest.commit !== output("git", ["rev-parse", "HEAD"]) ||
        manifest.version !== id ||
        output("git", ["status", "--porcelain", "--untracked-files=no"])) {
        throw new Error("Package must match the clean current commit and version");
    }
    // Verify the complete archive and every packaged file before uploading.
    for (const sums of ["SHA256SUMS.txt", `sanquentin-${id}.zip.sha256`]) {
        for (const line of fs.readFileSync(path.join(directory, sums), "utf8").trim().split("\n")) {
            const [expected, file] = line.split("  ");
            if (hash(path.join(directory, file)) !== expected) throw new Error(`Checksum mismatch: ${file}`);
        }
    }
    const branch = output("git", ["branch", "--show-current"]);
    if (!branch) throw new Error("Publish from a branch, not detached HEAD");
    const tag = `v${id}`;
    const existing = output("git", ["tag", "--list", tag]);
    if (existing && output("git", ["rev-list", "-n", "1", tag]) !== manifest.commit) {
        throw new Error(`${tag} already points to another commit`);
    }
    execute("gh", ["auth", "status"]);
    if (!existing) execute("git", ["tag", "-a", tag, "-m", `${id} - ${state.codename}: ${state.subtitle}`]);
    execute("git", ["push", "--atomic", "origin", `HEAD:refs/heads/${branch}`, `refs/tags/${tag}`]);
    const assets = fs.readdirSync(directory).filter(file =>
        /\.(zip|com|dsk|sha256)$/.test(file) || ["manifest.json", "SHA256SUMS.txt"].includes(file));
    execute("gh", ["release", "create", tag, "--verify-tag", "--prerelease",
        "--title", `${id} - ${state.codename} - ${state.subtitle}`,
        "--notes-file", path.join(root, "docs", "releases", `${id}.md`),
        ...assets.map(file => path.join(directory, file))]);
}

function main(args) {
    const command = args.shift();
    if (command === "build") build(args.shift() || "all", args);
    else if (command === "pack" && args.length === 0) pack();
    else if (command === "publish" && args.length === 0) publish();
    else if (command === "status" && args.length === 0) {
        const state = validate(JSON.parse(fs.readFileSync(stateFile, "utf8")));
        console.log(`${version(state)} - ${state.codename}: ${state.subtitle}`);
    } else throw new Error("Usage: release.js build [all|msx1|msx2] [--milestone --codename NAME --subtitle TEXT] [define=NAME:VALUE] | pack | publish | status");
}

module.exports = { nextVersion, validate, version };
if (require.main === module) {
    const lock = path.join(root, ".release.lock");
    let locked = false;
    try {
        if (["build", "pack", "publish"].includes(process.argv[2])) {
            fs.writeFileSync(lock, String(process.pid), { flag: "wx" });
            locked = true;
        }
        main(process.argv.slice(2));
    } catch (error) {
        console.error(`Release error: ${error.message}`);
        process.exitCode = 1;
    } finally {
        if (locked) fs.unlinkSync(lock);
    }
}
