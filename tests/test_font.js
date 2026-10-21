const assert = require("assert");
const fs = require("fs");
const path = require("path");
const { spawnSync } = require("child_process");
const { convertFont } = require("../tools/font");

const root = path.resolve(__dirname, "..");
const data = fs.readFileSync(path.join(root, "resource", "vram.dat"));
const header = convertFont(data);
const bytes = [...header.matchAll(/0x([0-9A-F]{2})/g)].map(match => parseInt(match[1], 16));
assert.match(header, /const unsigned char g_Font_VRAM\[\]/);
assert.deepStrictEqual(bytes.slice(0, 4), [0x88, 0x68, 0, 254]);
assert.strictEqual(bytes.length, 2052);
assert.deepStrictEqual(Buffer.from(bytes.slice(4)), data);
for (let code = 0; code < 256; ++code) {
    assert.deepStrictEqual(Buffer.from(bytes.slice(4 + code * 8, 12 + code * 8)),
        data.subarray(code * 8, code * 8 + 8), `Glyph ${code} moved or changed`);
}
assert.throws(() => convertFont(Buffer.alloc(2047)), /exactly 2048/);
assert.throws(() => convertFont(Buffer.alloc(2049)), /exactly 2048/);
const replacement = Buffer.alloc(2048, 0xA5);
const replaced = [...convertFont(replacement).matchAll(/0x([0-9A-F]{2})/g)]
    .slice(4).map(match => parseInt(match[1], 16));
assert.deepStrictEqual(Buffer.from(replaced), replacement);
for (const args of [[], ["msx1"], ["msx2"]]) {
    const result = spawnSync(process.execPath, [path.join(root, "tools", "font.js"), ...args],
        { cwd: path.join(root, "resource"), encoding: "utf8" });
    assert.ifError(result.error);
    assert.strictEqual(result.status, 0, result.stderr);
    const generated = fs.readFileSync(path.join(root, "projects", args[0] || "msx1",
        "out", "font_vram.h"), "utf8");
    assert.strictEqual(generated, header);
}
for (const args of [["msx3"], ["msx2", "extra"]]) {
    const result = spawnSync(process.execPath, [path.join(root, "tools", "font.js"), ...args],
        { encoding: "utf8" });
    assert.ifError(result.error);
    assert.notStrictEqual(result.status, 0);
    assert.match(result.stderr, /Usage:/);
}
console.log("font tests: OK (256 glyphs preserved, header, size validation, replacement and both editions)");
