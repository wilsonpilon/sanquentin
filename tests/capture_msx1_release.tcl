# Capture the actual release binary, without enabling the debug solver.
set throttle off
set output [file normalize [file join [file dirname [info script]] .. projects msx1 out]]
set log [open [file join $output release-test.log] w]
set failed 0

proc check {condition message} {
	puts $::log "[expr {$condition ? {PASS} : {FAIL}}]: $message"
	if {!$condition} {set ::failed 1}
	flush $::log
}

proc text {} {
	return [debug read_block VRAM 0 16384]
}

proc tap {} {
	keymatrixdown 8 1
	after time 0.15 {keymatrixup 8 1}
}

proc snap {name} {
	set ::throttle on
	after time 0.2 [list finish_snap $name]
}

proc finish_snap {name} {
	screenshot -raw [file join $::output $name]
	set ::throttle off
}

after time 5 {type_via_keybuf "\r"}
set symbols [open [file join $output quentin.noi] r]
set symbolText [read $symbols]
close $symbols
if {![regexp {DEF _Input_WaitKey (0x[0-9A-Fa-f]+)} $symbolText -> waitAddress]} {
	error "Input_WaitKey symbol not found; build the release first"
}
set waits 0
debug set_bp $waitAddress {} {
	incr ::waits
	if {$::waits == 1} {
		after time 0.5 {
			check [expr {([debug read {VDP regs} 0] & 2) != 0}] "SCREEN 2 title"
			snap release-title.png
		}
		after time 1 {tap}
	} elseif {$::waits == 2} {
		after time 0.5 {
			check [expr {[string first "Scarp Lantra" [text]] >= 0}] "original introduction"
			snap release-intro.png
		}
		after time 1 {tap}
		after time 4 {
			check [expr {[string first "SERRA" [text]] >= 0}] "playable initial cell"
			snap release-cell.png
		}
		after time 5 {type "PEGAR SERRA\r"}
		after time 10 {type "LISTAR\r"}
		after time 15 {
			check [expr {[string first "SERRA" [text]] >= 0}] "inventory after PEGAR SERRA and LISTAR"
			snap release-inventory.png
		}
		after time 16 {type "SERRAR\r"}
		after time 22 {type "LESTE\r"}
		after time 28 {
			check [expr {[string first "CORREDOR" [text]] >= 0}] "cell escape to corridor"
			snap release-corridor.png
		}
		after time 30 {finish}
	}
}

proc finish {} {
	if {!$::failed} {puts $::log "PASS: MSX1 release"}
	close $::log
	exit
}
after time 180 {check 0 "capture timeout"; finish}
