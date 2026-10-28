const assert = require("assert");
const crypto = require("crypto");
const fs = require("fs");
const os = require("os");
const path = require("path");
const { spawnSync } = require("child_process");
const { buildDisks, editions } = require("../tools/disks");

const root = path.resolve(__dirname, "..");
const temporary = fs.mkdtempSync(path.join(os.tmpdir(), "sanquentin-disk-test-"));
const tool = path.join(root, "MSXgl", "tools", "build", "msxtar", "msxtar.exe");
const digest = data => crypto.createHash("sha256").update(data).digest("hex");
try {
    // Missing inputs must fail before touching either published image.
    assert.throws(() => buildDisks(temporary), /ENOENT/);
    for (const [name, edition] of Object.entries(editions)) {
        const project = path.join(root, "projects", name);
        const disk = path.join(project, "emul", "dsk", edition.disk);
        const image = fs.readFileSync(disk);
        assert.strictEqual(image.length, edition.dos === 1 ? 360 * 1024 : 720 * 1024);
        const sectorSize = image.readUInt16LE(11);
        const rootSector = image.readUInt16LE(14) + image[16] * image.readUInt16LE(22);
        const firstEntry = image.toString("ascii", rootSector * sectorSize, rootSector * sectorSize + 11);
        assert.strictEqual(firstEntry, edition.dos === 1 ? "MSXDOS  SYS" : "MSXDOS2 SYS",
            "System file must be the first root directory entry");
        const stage = path.join(temporary, name);
        fs.mkdirSync(stage);
        const result = spawnSync(tool, ["-xf", disk], { cwd: stage, encoding: "utf8" });
        if (result.error) throw result.error;
        assert.strictEqual(result.status, 0, result.stderr);
        const files = new Map(fs.readdirSync(stage).map(file => [file.toLowerCase(), file]));
        assert.deepStrictEqual([...files.keys()].sort(),
            [...edition.system, "autoexec.bat", "quentin.com", "quentin2.com"].map(file => file.toLowerCase()).sort());
        for (const [companion, program] of Object.entries(editions)) {
            const file = program.name + ".com";
            const expected = fs.readFileSync(path.join(root, "projects", companion, "out", file));
            const actual = fs.readFileSync(path.join(stage, files.get(file)));
            assert.deepStrictEqual(actual, expected, `${edition.disk}: stale or truncated ${file}`);
        }
        for (const file of [...edition.system, "autoexec.bat"]) {
            assert.deepStrictEqual(fs.readFileSync(path.join(stage, files.get(file.toLowerCase()))),
                fs.readFileSync(path.join(project, "emul", `dos${edition.dos}`, file)));
        }
        const autoexec = fs.readFileSync(path.join(stage, files.get("autoexec.bat")), "ascii");
        assert.match(autoexec, new RegExp(`^${edition.name}\\r?$`, "m"));
        const metadata = JSON.parse(fs.readFileSync(path.join(project, "out", "build.json"), "utf8"));
        assert.strictEqual(metadata.files[edition.disk], digest(image));
        for (const [companion, program] of Object.entries(editions)) {
            assert.strictEqual(metadata.programs[program.name + ".com"],
                digest(fs.readFileSync(path.join(root, "projects", companion, "out", program.name + ".com"))));
        }
        console.log(`PASS: ${edition.disk}: correct boot order, both complete COM files, AUTOEXEC and metadata`);
    }
} finally {
    fs.rmSync(temporary, { recursive: true, force: true, maxRetries: 3, retryDelay: 100 });
}
