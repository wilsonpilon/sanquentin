const assert = require("assert");
const fs = require("fs");
const path = require("path");
const { spawnSync } = require("child_process");
const { nextVersion, validate, version } = require("../tools/release");
const initial = { milestone: 1, build: 0, codename: "Danny Trejo", subtitle: "Initial" };
assert.strictEqual(version(nextVersion(initial)), "1.1");
assert.strictEqual(version(nextVersion(nextVersion(initial))), "1.2");
assert.strictEqual(initial.build, 0);
assert.deepStrictEqual(nextVersion({ ...initial, build: 15 }, {
    milestone: true, codename: "Next", subtitle: "New phase"
}), { milestone: 2, build: 1, codename: "Next", subtitle: "New phase" });
assert.strictEqual(nextVersion(initial, { subtitle: "New build" }).subtitle, "New build");
assert.throws(() => nextVersion(initial, { milestone: true }), /requires/);
assert.throws(() => nextVersion(initial, { codename: "Changed" }), /requires/);
for (const bad of [{ milestone: 0 }, { build: -1 }, { build: 1.5 }, { codename: "" }, { subtitle: "" }]) {
    assert.throws(() => validate({ ...initial, ...bad }), /Invalid/);
}
const root = path.resolve(__dirname, "..");
const before = fs.readFileSync(path.join(root, "version.json"), "utf8");
for (const args of [
    ["build", "all", "--milestone"],
    ["build", "all", "define=DEBUG:0", "define=DEBUG:1"],
    ["build", "all", "compile=off"],
    ["build", "unknown"],
    ["build", "toString"],
    ["build", "all", "--subtitle"]
]) {
    const result = spawnSync(process.execPath, [path.join(root, "tools", "release.js"), ...args]);
    assert.notStrictEqual(result.status, 0, `Should reject ${args.join(" ")}`);
    assert.strictEqual(fs.readFileSync(path.join(root, "version.json"), "utf8"), before);
    assert.ok(!fs.existsSync(path.join(root, ".release.lock")), "Lock must be released after errors");
}
console.log("PASS: 1.1 bootstrap, automatic builds, milestone reset and version validation");
