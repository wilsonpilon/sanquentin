const fs = require("fs");
const path = require("path");

function convertFont(data) {
    if (data.length !== 2048) {
        throw new Error(`VRAM font must contain exactly 2048 bytes; received ${data.length}`);
    }
    const rows = [];
    for (let i = 0; i < data.length; i += 8) {
        rows.push("\t" + [...data.subarray(i, i + 8)].map(value =>
            "0x" + value.toString(16).toUpperCase().padStart(2, "0")).join(", ") + ",");
    }
    return "// Generated from resource/vram.dat; do not edit.\n" +
        "// Patterns: 8x8, advance: 6x8, codes: 0-254; glyph 255 retained as trailing data.\n" +
        "// The MSXgl text loader uses an 8-bit character count (maximum 255).\n" +
        "#pragma once\n\n" +
        "const unsigned char g_Font_VRAM[] =\n{\n" +
        "\t0x88, 0x68, 0x00, 0xFE,\n" + rows.join("\n") + "\n};\n";
}

if (require.main === module) {
    const edition = process.argv[2] || "msx1";
    if (process.argv.length > 3 || !["msx1", "msx2"].includes(edition)) {
        throw new Error("Usage: node tools\\font.js [msx1|msx2]");
    }
    const root = path.resolve(__dirname, "..");
    const output = path.join(root, "projects", edition, "out");
    const header = convertFont(fs.readFileSync(path.join(root, "resource", "vram.dat")));
    fs.mkdirSync(output, { recursive: true });
    fs.writeFileSync(path.join(output, "font_vram.h"), header);
}

module.exports = { convertFont };
