set f [open "E:/supernova/msx/rttest/out/pc3.txt" w]
proc sample {} {
  global f
  puts $f "t=[format %.1f [machine_info time]] PC=[format %04X [reg PC]] GET=[format %04X [expr [peek 0xf3fa]+256*[peek 0xf3fb]]] PUT=[format %04X [expr [peek 0xf3f8]+256*[peek 0xf3f9]]] J=[format %04X [expr [peek 0xfc9e] + 256*[peek 0xfc9f]]]"
  flush $f
  after time 1 sample
}
set throttle off
after time 40 sample
after time 46 { type " " }
after time 56 { close $f; exit }
