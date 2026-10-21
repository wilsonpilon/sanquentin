set f [open "E:/supernova/msx/rttest/out/pc2.txt" w]
proc sample {} {
  global f
  puts $f "t=[format %.2f [machine_info time]] PC=[format %04X [reg PC]] SP=[format %04X [reg SP]] J=[format %04X [expr [peek 0xfc9e] + 256*[peek 0xfc9f]]]"
  flush $f
  after time 0.1 sample
}
set throttle off
after time 27 sample
after time 30 { close $f; exit }
