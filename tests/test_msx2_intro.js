const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const source = fs.readFileSync(path.join(root, "src", "sq_title_msx2.c"), "utf8");
const basic = fs.readFileSync(path.join(root, "basic", "quentin.asc"), "latin1");
const captions = source.match(/s_Captions\[CARD_COUNT\]\[3\]\s*=\s*\{([\s\S]*?)\n\};/)[1];
const lines = Array.from(captions.matchAll(/"([^"]*)"/g), match => match[1]);
const count = Number(source.match(/#define CARD_COUNT (\d+)/)[1]);
assert.strictEqual(count, 10);
assert.strictEqual(lines.length, count * 3);
for (const line of lines) {
    assert.ok(line.length <= 39, `Caption exceeds the frame: ${line}`);
}

const original = [2380, 2390, 2400].map(number => {
    const line = basic.split(/\r?\n/).find(text => text.startsWith(`${number} `));
    assert.ok(line, `Missing BASIC line ${number}`);
    return line.match(/"([^"]*)"/)[1];
}).join("");
// BASIC embeds WIDTH 40 padding and joins words across physical screen lines.
const compact = text => text.replace(/\s/g, "");
const story = lines.slice(9, -1).join("");
assert.strictEqual(compact(story), compact(original),
    "The entire original introduction and question must be preserved in order");
assert.strictEqual(lines.at(-1), "[S] SIM                 [N] NAO");
console.log("PASS: all original introduction text, final question, ten cards and caption bounds");
