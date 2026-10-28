const fs = require("fs");
const os = require("os");
const path = require("path");
const { spawnSync } = require("child_process");

const root = path.resolve(__dirname, "..");
const editions = {
    msx1: { name: "quentin", disk: "DOS1_quentin.dsk", debug: 0, dos: 1, size: "360K",
        system: ["MSXDOS.SYS", "COMMAND.COM"] },
    msx2: { name: "quentin2", disk: "DOS2_quentin2.dsk", debug: 0, dos: 2, size: "720K",
        system: ["MSXDOS2.SYS", "COMMAND2.COM"] }
};

function buildDisks(projectRoot = root) {
    const tool = path.join(root, "MSXgl", "tools", "build", "msxtar", "msxtar.exe");
    // Both programs embed their font, graphics, score and game data in the COM.
    const payload = Object.entries(editions).map(([name, edition]) => ({
        source: path.join(projectRoot, "projects", name, "out", edition.name + ".com"),
        name: edition.name + ".com"
    }));
    const plans = Object.entries(editions).map(([name, edition]) => {
        const project = path.join(projectRoot, "projects", name);
        const files = [...edition.system, "autoexec.bat"].map(file => ({
            source: path.join(project, "emul", `dos${edition.dos}`, file), name: file
        })).concat(payload);
        return { edition, files, destination: path.join(project, "emul", "dsk", edition.disk) };
    });
    for (const plan of plans) {
        for (const file of plan.files) {
            if (!fs.statSync(file.source).isFile()) throw new Error(`Not a disk input file: ${file.source}`);
        }
    }
    const temporary = fs.mkdtempSync(path.join(os.tmpdir(), "sanquentin-disks-"));
    try {
        for (const [index, plan] of plans.entries()) {
            const stage = path.join(temporary, String(index));
            fs.mkdirSync(stage);
            for (const file of plan.files) fs.copyFileSync(file.source, path.join(stage, file.name));
            const result = spawnSync(tool, ["-cf", plan.edition.disk, `--dos${plan.edition.dos}`,
                `--size=${plan.edition.size}`, ...plan.files.map(file => file.name)],
            { cwd: stage, stdio: "inherit" });
            if (result.error) throw result.error;
            if (result.status !== 0) throw new Error(`Disk creation failed: ${plan.edition.disk} (${result.status})`);
        }
        // Publish only after both images have been created successfully.
        for (const [index, plan] of plans.entries()) {
            fs.mkdirSync(path.dirname(plan.destination), { recursive: true });
            fs.copyFileSync(path.join(temporary, String(index), plan.edition.disk), plan.destination);
            console.log(`${plan.edition.disk}: QUENTIN.COM + QUENTIN2.COM (${plan.edition.size})`);
        }
    } finally {
        fs.rmSync(temporary, { recursive: true, force: true, maxRetries: 3, retryDelay: 100 });
    }
}

module.exports = { buildDisks, editions };
if (require.main === module) {
    try {
        buildDisks();
    } catch (error) {
        console.error(`Disk error: ${error.message}`);
        process.exitCode = 1;
    }
}
