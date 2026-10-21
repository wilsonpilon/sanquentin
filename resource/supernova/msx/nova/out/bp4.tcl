set f [open "E:/supernova/msx/nova/out/bp4.txt" w]
set throttle off
proc hit {name} {
  global f
  puts $f "t=[format %.3f [machine_info time]] $name"
  flush $f
}
debug set_bp 0x000024FA {} {hit GetKey}
debug set_bp 0x00005853 {} {hit Parser_Syntax}
debug set_bp 0x000059A3 {} {hit Time1}
debug set_bp 0x000011A1 {} {hit Describe}
debug set_bp 0x00005861 {} {hit Present}
debug set_bp 0x00005868 {} {hit Room1}
debug set_bp 0x000058A0 {} {hit Room4}
debug set_bp 0x000058CA {} {hit Default0}
debug set_bp 0x000058D1 {} {hit Default1}
debug set_bp 0x000058DF {} {hit Default3}
after time 80 { type "look\r" }
after time 95 { type "inventory\r" }
after time 110 { type "examine mug\r" }
after time 125 { close $f; exit }
