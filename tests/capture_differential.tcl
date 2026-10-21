# Executed by run_differential.js against a generated, temporary BASIC copy.
set throttle off
set ::output [open [file join $::env(SQ_DIFFERENTIAL_DIR) basic.jsonl] w]
set ::covered [dict create]
set ::count 0
set ::armed 0

debug set_watchpoint write_mem 0xC106 {$::armed} {
	set line [expr {[debug read memory 0xC104] + 256 * [debug read memory 0xC105]}]
	dict set ::covered $line 1
}
debug set_watchpoint write_mem 0xC100 {} {
	if {$::wp_last_value == 127} {
		set ::armed 1
	} elseif {$::armed && $::wp_last_value == 1} {
		set id [expr {[debug read memory 0xC030] + 256 * [debug read memory 0xC031]}]
		set values {}
		for {set i 0} {$i < 27} {incr i} {
			lappend values [debug read memory [expr {0xC000 + $i}]]
		}
		puts $::output [format {{"id":%d,"values":[%s]}} $id [join $values ,]]
		flush $::output
		incr ::count
	} elseif {$::armed && $::wp_last_value == 255} {
		puts $::output [format {{"complete":%d,"lines":[%s]}} $::count [join [lsort -integer [dict keys $::covered]] ,]]
		close $::output
		exit
	}
}
after time 3 {type_via_keybuf "\r"}
after time 8 {type_via_keybuf "LOAD\"A:ORACLE.BAS\",R\r"}
after time 300 {
	if {$::count == 0} {
		set base [expr {([debug read {VDP regs} 2] & 15) * 1024}]
		puts stderr "BASIC startup screen: [debug read_block VRAM $base 960]"
		puts $::output {{"error":"No scenario completed during startup"}}
		close $::output
		exit
	}
}
after time 12000 {
	set base [expr {([debug read {VDP regs} 2] & 15) * 1024}]
	puts stderr "BASIC screen at timeout: [debug read_block VRAM $base 960]"
	puts $::output [format {{"error":"BASIC timeout","completed":%d}} $::count]
	close $::output
	exit
}
