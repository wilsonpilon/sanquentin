set throttle off
set save_settings_on_exit false
set output [file normalize [file join [file dirname [info script]] .. projects msx2 out]]
set log [open [file join $output game-test.log] w]
set failed 0
proc check {condition message} {
	puts $::log "[expr {$condition ? {PASS} : {FAIL}}]: $message"
	if {!$condition} {set ::failed 1}
	flush $::log
}
proc finish {} {
	if {!$::failed} {puts $::log "PASS: MSX2 game"}
	close $::log
	exit
}
set file [open [file join $output quentin2.noi] r]
set symbols [read $file]
close $file
if {![regexp {DEF _g_GameState (0x[0-9A-Fa-f]+)} $symbols -> state]} {
	error "Game state symbol missing"
}
if {![regexp {DEF _Engine_BeginRoomVisit (0x[0-9A-Fa-f]+)} $symbols -> visit]} {
	error "Room visit symbol missing"
}
set file [open [file join $output quentin2.com] rb]
set binary [read $file]
close $file
set visitCode [string range $binary [expr {$visit - 256}] [expr {$visit - 249}]]
# Fix TIME for room visits so random guards cannot confiscate the smoke-test saw.
# Only the emulated clock changes; commands and engine state follow the real game.
debug set_bp $visit {
	[debug read_block memory $::visit 8] eq $::visitCode
} {
	debug write memory 0xFC9E 2
	debug write memory 0xFC9F 0
}
proc byte {offset} {return [debug read memory [expr {$::state + $offset}]]}
proc panel {x width} {
	set result ""
	for {set y 20} {$y < 103} {incr y} {
		append result [debug read_block VRAM [expr {$y * 128 + $x / 2}] [expr {$width / 2}]]
	}
	return $result
}
proc snap {name} {
	set ::throttle on
	after time 0.15 [list finish_snap $name]
}
proc finish_snap {name} {
	screenshot -raw [file join $::output $name]
	set ::throttle off
}
proc tap {row mask} {
	keymatrixdown $row $mask
	after time 0.15 [list keymatrixup $row $mask]
}
after time 5 {type_via_keybuf "\r"}
after time 30 {tap 8 16}
after time 33 {tap 5 1}
after time 38 {
	check [expr {[byte 14] == 1}] "S initializes the shared engine in the cell"
	check [expr {([debug read {VDP regs} 0] & 14) == 6}] "game stays in SCREEN 5"
	set ::cell [panel 4 122]
	set ::empty [panel 130 122]
	set ::input [debug read_block VRAM [expr {186 * 128}] [expr {8 * 128}]]
	snap game-cell.png
	type "PEGAR SERRX\bA\r"
}
after time 43 {
	check [expr {[byte 3] == 255}] "PEGAR SERRA uses shared inventory state"
	check [expr {[panel 130 122] ne $::empty}] "inventory shows the saw icon and name"
	check [expr {[panel 4 122] ne $::cell}] "saw disappears from the cell floor"
	set ::taken [panel 4 122]
	set ::inventory [panel 130 122]
	snap game-inventory.png
	type "SERRAR\r"
}
after time 48 {
	check [expr {[byte 16] == 1}] "SERRAR opens the grate in the shared engine"
	check [expr {[panel 4 122] ne $::taken}] "cell illustration reflects the cut grate"
	check [expr {[panel 130 122] eq $::inventory}] "unchanged inventory is preserved"
	snap game-grate.png
	tap 6 128
}
after time 53 {
	check [expr {[byte 14] == 2}] "F3 sends LESTE and reaches the corridor"
	check [expr {[panel 4 122] ne $::taken}] "location panel changes after movement"
	check [expr {[panel 130 122] eq $::inventory}] "inventory survives movement"
	check [expr {[debug read_block VRAM [expr {186 * 128}] [expr {8 * 128}]] eq $::input}] "fixed prompt is outside the scrolling message area"
	snap game-corridor.png
	type "OESTE\r"
}
after time 58 {
	check [expr {[byte 14] == 1}] "OESTE returns to the cell"
	check [expr {[byte 13] != 1}] "fixed room-visit clock keeps the smoke route free of guards"
	type "LARGAR SERRA\r"
}
after time 63 {
	check [expr {[byte 3] == 1}] "LARGAR SERRA leaves the object in the cell (actual=[byte 3])"
	check [expr {[panel 130 122] eq $::empty}] "inventory returns to empty"
	type "DESISTIR\r"
}
after time 68 {
	set screenMode [expr {[debug read {VDP regs} 0] & 14}]
	check [expr {$screenMode == 0 || $screenMode == 4}] "DESISTIR returns to DOS text mode"
	type_via_keybuf "echo GAME-DOS-OK\r"
}
after time 74 {
	check [expr {[string first "GAME-DOS-OK" [debug read_block VRAM 0 2000]] >= 0}] "DOS accepts commands after gameplay"
	finish
}
after time 180 {check 0 "game test timeout"; finish}
