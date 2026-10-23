# Capture the actual release binary, without enabling the debug solver.
set throttle off
set output [file normalize [file join [file dirname [info script]] .. projects msx1 out]]
set log [open [file join $output release-test.log] w]
set failed 0
set fontFile [open [file join [file dirname [info script]] .. resource vram.dat] rb]
set expectedFont [read $fontFile]
close $fontFile
if {[string length $expectedFont] != 2048} {error "Expected a 2048-byte SCREEN 0 font"}

proc check {condition message} {
	puts $::log "[expr {$condition ? {PASS} : {FAIL}}]: $message"
	if {!$condition} {set ::failed 1}
	flush $::log
}

proc text {} {
	return [debug read_block VRAM 0 16384]
}

proc check_font {stage} {
	set base [expr {([debug read {VDP regs} 4] & 7) * 2048}]
	check [expr {[debug read_block VRAM $base 2048] eq $::expectedFont}] "$stage custom font: all 256 glyphs"
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
# COMMAND.COM also runs in the TPA while DOS boots; only count hits on game code.
set binaryFile [open [file join $output quentin.com] rb]
set binary [read $binaryFile]
close $binaryFile
set waitOffset [expr {$waitAddress - 0x100}]
set waitCode [string range $binary $waitOffset [expr {$waitOffset + 7}]]
if {[string length $waitCode] != 8} {error "Input_WaitKey outside quentin.com"}
set waits 0
debug set_bp $waitAddress {[debug read_block memory $::waitAddress 8] eq $::waitCode} {
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
			check_font introduction
			snap release-intro.png
		}
		after time 1 {tap}
		after time 4 {
			check [expr {[string first "SERRA" [text]] >= 0}] "playable initial cell"
			check_font cell
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
			check_font corridor
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
