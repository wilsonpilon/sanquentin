set f [open "E:/supernova/msx/rttest/out/bp2.txt" w]
set throttle off
debug set_bp 0x2DB {} {puts $f "main t=[format %.2f [machine_info time]] SP=[format %04X [reg SP]] mem6=[format %02X%02X [peek 7] [peek 6]]"; flush $f}
after time 30 { close $f; exit }
