# Visual fixtures inject room states, not routes through the adventure.
set throttle off
set save_settings_on_exit false
set output [file normalize [file join [file dirname [info script]] .. projects msx2 out]]
set log [open [file join $output rooms-test.log] w]
set failed 0
set cases {}
for {set room 1} {$room <= 24} {incr room} {lappend cases [list $room 0]}
lappend cases {12 1} {12 2} {12 3} {11 1} {11 2}
set index 0
set armed 1
set capturing 0
array set images {}
proc check {condition message} {
	puts $::log "[expr {$condition ? {PASS} : {FAIL}}]: $message"
	if {!$condition} {set ::failed 1}
	flush $::log
}
proc finish {} {
	if {!$::failed} {puts $::log "PASS: MSX2 rooms"}
	close $::log
	exit
}
set f [open [file join $output quentin2.noi] r]
set symbols [read $f]
close $f
foreach name {g_GameState GameUI_Refresh GameUI_ReadCommand} {
	if {![regexp "DEF _$name (0x\[0-9A-Fa-f\]+)" $symbols -> address]} {
		error "Missing symbol $name"
	}
	set addr($name) $address
}
proc state {offset value} {
	debug write memory [expr {$::addr(g_GameState) + $offset}] $value
}
proc fixture {} {
	if {!$::armed || $::index >= [llength $::cases]} {return}
	set ::armed 0
	lassign [lindex $::cases $::index] room variant
	for {set object 0} {$object < 14} {incr object} {state $object 0}
	state 14 $room
	state 15 0
	state 16 0
	state 17 [expr {$room == 11 && $variant}]
	state 18 [expr {$room == 12 && ($variant == 1 || $variant == 2)}]
	state 19 0
	if {$room == 12 && ($variant == 1 || $variant == 3)} {state 11 255}
	if {$room == 11 && $variant == 1} {state 0 255}
}
proc picture {} {
	set result ""
	for {set y 20} {$y < 103} {incr y} {
		append result [debug read_block VRAM [expr {$y * 128 + 2}] 62]
	}
	return $result
}
proc snapshot {} {
	if {$::armed || $::capturing} {return}
	set ::capturing 1
	set ::throttle on
	after time 0.2 capture
}
proc group {name} {
	switch -- $name {
		12-2 - 12-3 {return 12-0}
		11-2 {return 11-0}
		default {return $name}
	}
}
proc capture {} {
	lassign [lindex $::cases $::index] room variant
	set image [picture]
	set name [format "%02d-%d" $room $variant]
	foreach previous [array names ::images] {
		set same [expr {[group $name] eq [group $previous]}]
		check [expr {($image eq $::images($previous)) == $same}] \
			"scene $name vs $previous respects location, lighting and hidden passages (excluding title)"
	}
	set ::images($name) $image
	screenshot -raw [file join $::output "room-$name.png"]
	# All drawing must remain inside the location pane.
	set borders [debug read_block VRAM [expr {104 * 128}] [expr {6 * 128}]]
	append borders [debug read_block VRAM [expr {184 * 128}] [expr {11 * 128}]]
	append borders [debug read_block VRAM [expr {204 * 128}] [expr {8 * 128}]]
	for {set y 3} {$y < 104} {incr y} {
		append borders [debug read_block VRAM [expr {$y * 128 + 63}] 2]
	}
	if {$::index == 0} {set ::border $borders}
	check [expr {$borders eq $::border}] "room $name preserves dividers, prompt and instructions"
	set inventory ""
	for {set y 4} {$y < 104} {incr y} {
		append inventory [debug read_block VRAM [expr {$y * 128 + 65}] 61]
	}
	if {$::index == 0} {set ::inventory $inventory}
	if {!$variant} {
		check [expr {$inventory eq $::inventory}] "room $name preserves the empty inventory"
	}
	incr ::index
	set ::throttle off
	if {$::index == [llength $::cases]} {
		check [expr {[array size ::images] == 29}] "24 locations and five lighting/digging variants captured"
		finish
		return
	}
	set ::capturing 0
	set ::armed 1
	type "LISTAR\r"
}
# Guard against DOS startup hitting the same addresses before the game is loaded.
set f [open [file join $output quentin2.com] rb]
set binary [read $f]
close $f
foreach name {GameUI_Refresh GameUI_ReadCommand} {
	set start [expr {$addr($name) - 256}]
	set code($name) [string range $binary $start [expr {$start + 7}]]
}
debug set_bp $addr(GameUI_Refresh) {
	[debug read_block memory $::addr(GameUI_Refresh) 8] eq $::code(GameUI_Refresh)
} fixture
debug set_bp $addr(GameUI_ReadCommand) {
	[debug read_block memory $::addr(GameUI_ReadCommand) 8] eq $::code(GameUI_ReadCommand)
} snapshot
proc tap {row mask} {
	keymatrixdown $row $mask
	after time 0.15 [list keymatrixup $row $mask]
}
after time 5 {type_via_keybuf "\r"}
after time 30 {tap 8 16}
after time 33 {tap 5 1}
after time 240 {check 0 "room gallery timeout"; finish}
