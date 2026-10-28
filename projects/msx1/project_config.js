//-- San Quentin - MSX1 edition (MSX-DOS 1 .COM)
ProjName = "quentin";
ProjModules = [ "main", "../../src/sq_font", "../../src/sq_parser", "../../src/sq_engine", "../../src/sq_random", "../../src/sq_solver", "../../src/sq_game", "../../src/sq_game_ui_msx1", "../../src/sq_gfx2", "../../src/sq_input", "../../src/sq_intro", "../../src/sq_title" ];
LibModules = [ "system", "bios", "vdp", "memory", "input", "print" ];
Machine = "1";
Target = "DOS1";
// Disco de teste de 360K (face unica): e o formato aceito pelos drives de
// MSX1 da epoca. Com 720K o boot do MSX-DOS 1 falha e a maquina cai no BASIC.
DiskSize = "360K";
Optim = "Size";
CompileComplexity = "Default";
Verbose = true;

PreBuildScripts = [ `"${process.execPath}" "${ProjDir}../../tools/font.js"` ];

// tools/release.js rebuilds both disks after both COM files are ready.
