set f [open "E:/supernova/msx/nova/out/bp5.txt" w]
set throttle off
proc hit {name} { global f; puts $f "t=[format %.3f [machine_info time]] $name"; flush $f }
debug set_bp 0x000059C6 {} {hit Title}
debug set_bp 0x00005980 {} {hit Init1}
debug set_bp 0x00005987 {} {hit Init2}
debug set_bp 0x0000598E {} {hit Init3}
debug set_bp 0x000011A1 {} {hit Describe}
debug set_bp 0x0000585A {} {hit PlayerInput}
debug set_bp 0x00005853 {} {hit Parser_Syntax}
after time 42 { type " " }
after time 48 { type " " }
after time 52 { type "bob\r" }
after time 100 { close $f; exit }
