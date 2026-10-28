// San Quentin - MSX2 opening, MSX-DOS 2 .COM
ProjName = "quentin2";
ProjModules = [ "main", "../../src/sq_title_msx2", "../../src/sq_music_msx2" ];
LibModules = [ "system", "bios", "vdp", "draw", "print", "input", "memory", "dos", "dos_mapper", "msx-music" ];
Machine = "2";
Target = "DOS2";
DiskSize = "720K";
Optim = "Size";
CompileComplexity = "Default";
Verbose = true;

PreBuildScripts = [ `"${process.execPath}" "${ProjDir}../../tools/font.js" msx2` ];
