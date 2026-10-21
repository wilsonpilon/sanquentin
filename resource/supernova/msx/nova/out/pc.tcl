set f [open "E:/supernova/msx/nova/out/pc.txt" w]
proc sample {} {
  global f
  puts $f "t=[format %.1f [machine_info time]] PC=[format %04X [reg PC]] SP=[format %04X [reg SP]] J=[format %04X [expr [peek 0xfc9e] + 256*[peek 0xfc9f]]]"
  flush $f
  after time 2 sample
}
set throttle off
after time 62 { type "q\r" }
after time 68 { type "y" }
after time 70 sample
after time 90 { close $f; exit }
