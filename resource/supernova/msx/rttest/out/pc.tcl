set f [open "E:/supernova/msx/rttest/out/pc.txt" w]
proc sample {} {
  global f
  puts $f "t=[format %.1f [machine_info time]] PC=[format %04X [reg PC]] SP=[format %04X [reg SP]] GET=[format %04X [expr [peek 0xf3fa]+256*[peek 0xf3fb]]] PUT=[format %04X [expr [peek 0xf3f8]+256*[peek 0xf3f9]]]"
  flush $f
  after time 1 sample
}
set throttle off
after time 36 sample
after time 40 { type " " }
after time 48 { close $f; exit }
