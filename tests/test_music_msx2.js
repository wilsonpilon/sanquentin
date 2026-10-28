const fs = require("fs");
const os = require("os");
const path = require("path");
const { spawnSync } = require("child_process");

const temporary = fs.mkdtempSync(path.join(os.tmpdir(), "sanquentin-music-"));
function run(command, args) {
    const result = spawnSync(command, args, { stdio: "inherit" });
    if (result.error) throw result.error;
    if (result.status !== 0) throw new Error(`${command} failed (${result.status})`);
}

try {
    // The test supplies hardware types and register spies; compile the real sequencer.
    for (const header of ["msxgl.h", "bios_var.h", "psg.h", "msx-music.h", "msx-music_reg.h"]) {
        fs.writeFileSync(path.join(temporary, header), "");
    }
    const executable = path.join(temporary, "test_music.exe");
    run("gcc", ["-std=c11", "-Wall", "-Wextra", "-Werror", "-I", temporary,
        path.join(__dirname, "test_music_msx2.c"), "-o", executable]);
    run(executable, []);
} finally {
    fs.rmSync(temporary, { recursive: true, force: true, maxRetries: 3, retryDelay: 100 });
}
