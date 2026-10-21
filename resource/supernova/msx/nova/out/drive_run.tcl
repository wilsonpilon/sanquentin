set title_addr 0x59C6
set outdir {E:/supernova/msx/nova/out}
set endtime 120
set script [list  {10 " " -1} {3 " " -1} {3 "bob\r" -1} {9 "read menu\r" 6}]
# openMSX driver for the game: types the commands of ::script at fixed delays after the game has started
# (breakpoint on Title = time zero), takes screenshots as asked.
#   script items: {delay text shot_delay}  delay = seconds after the previous item; shot_delay < 0: no screenshot
# variables set by the caller: title_addr, script, outdir, endtime
set throttle off
set ::shots 0
proc run_script {} {
	set t [machine_info time]
	foreach item $::script {
		set t [expr $t + [lindex $item 0]]
		set text [lindex $item 1]
		set sd [lindex $item 2]
		after time $t [list type $text]
		if {$sd >= 0} {
			incr ::shots
			after time [expr $t + $sd] [list screenshot "$::outdir/shot$::shots.png"]
		}
	}
}
set ::started 0
debug set_bp $title_addr {} {if {!$::started} {set ::started 1; run_script}}
after time $endtime { exit }
