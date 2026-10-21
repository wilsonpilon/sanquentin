set f [open "E:/supernova/msx/rttest/out/bp3.txt" w]
set throttle off
proc trace {} {
  global f
  for {set i 0} {$i < 80} {incr i} {
    puts $f "PC=[format %04X [reg PC]] A=[format %02X [reg A]] SP=[format %04X [reg SP]]"
    debug step
  }
  flush $f
}
debug set_bp 0x1D02 {} {trace}
after time 40 { type " " }
after time 50 { close $f; exit }
