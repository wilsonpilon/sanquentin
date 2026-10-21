# openMSX -machine Sony_HB-701FD -script tests\capture_random_oracle.tcl
# Uses the user's installed MSX ROM; no ROM or disassembly is distributed.
set throttle off
set ::rngfile [open [file join $::env(TEMP) sanquentin-random-oracle.txt] w]
set ::rngcount 0
set ::rnghash 2166136261
set ::starcount 0
set ::starhash 2166136261
set ::starphase 0
debug set_bp 0x2C15 {$::rngcount < 65637} {
	for {set i 1} {$i <= 7} {incr i} {
		set byte [debug read memory [expr {0xF857 + $i}]]
		set ::rnghash [expr {(($::rnghash ^ $byte) * 16777619) & 0xFFFFFFFF}]
	}
	incr ::rngcount
	if {$::rngcount == 65637} {
		set result [expr {$::rnghash == 0xF9B5293F ? "PASS" : "FAIL"}]
		puts $::rngfile [format "%s: %d ROM values; FNV-1a=%08X" $result $::rngcount $::rnghash]
		flush $::rngfile
		after time 1 {
			set ::starphase 1
			type_via_keybuf "NEW\r10 DEFINT A-Z:FOR W=0 TO 90:X=256*RND(1):Y=70*RND(1):POKE &HC000,X MOD 256:POKE &HC001,Y:NEXT:STOP\rRUN\r"
		}
	}
}
debug set_watchpoint write_mem {0xC000 0xC001} {$::starphase} {
	set ::starhash [expr {(($::starhash ^ $::wp_last_value) * 16777619) & 0xFFFFFFFF}]
	incr ::starcount
	if {$::starcount == 182} {
		set result [expr {$::starhash == 0x436D8AB4 ? "PASS" : "FAIL"}]
		puts $::rngfile [format "%s: 91 DEFINT star pairs; FNV-1a=%08X" $result $::starhash]
		close $::rngfile
		after time 1 exit
	}
}
# Also works when the machine boots to a DOS date prompt.
after time 5 {type_via_keybuf "\r"}
after time 7 {type_via_keybuf "basic\r"}
after time 10 {
	type_via_keybuf "10 DEFDBL A-Z:FOR I=1 TO 100:A=RND(1):NEXT\r20 FOR T=0 TO 65535:A=RND(-T):NEXT\r30 A=RND(0):STOP\rRUN\r"
}
after time 4000 {
	puts $::rngfile "FAIL: timeout after $::rngcount ROM values"
	close $::rngfile
	exit
}
