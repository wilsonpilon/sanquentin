# Run with tests\run_msx2_intro_tests.bat after building the MSX2 project.
# Output is kept with the ignored build products.
set throttle off
set output [file normalize [file join [file dirname [info script]] .. projects msx2 out]]
set log [open [file join $output intro-test.log] w]
set failed 0
array set cards {}
set fontFile [open [file join [file dirname [info script]] .. resource vram.dat] rb]
set fontData [read $fontFile]
close $fontFile

proc check {condition message} {
	if {!$condition} {
		puts $::log "FAIL: $message"
		set ::failed 1
	} else {
		puts $::log "PASS: $message"
	}
	flush $::log
}

proc tap {row mask} {
	keymatrixdown $row $mask
	after time 0.15 [list keymatrixup $row $mask]
}

proc picture {} {
	return [debug read_block VRAM [expr {20 * 128}] [expr {179 * 128}]]
}

proc ready {} {
	return [expr {[debug read_block VRAM 0 [expr {212 * 128}]] eq
		[debug read_block VRAM 32768 [expr {212 * 128}]]}]
}

proc check_font {} {
	set matches 1
	set x 8
	foreach character [split "SAN QUENTIN" ""] {
		scan $character %c code
		binary scan [string range $::fontData [expr {$code * 8}] [expr {$code * 8 + 7}]] cu* rows
		set y 5
		foreach row $rows {
			set expected {}
			for {set bit 7} {$bit >= 2} {incr bit -2} {
				set left [expr {($row & (1 << $bit)) ? 14 : 1}]
				set right [expr {($row & (1 << ($bit - 1))) ? 14 : 1}]
				lappend expected [expr {($left << 4) | $right}]
			}
			binary scan [debug read_block VRAM [expr {$y * 128 + $x / 2}] 3] cu* actual
			if {$actual ne $expected} {set matches 0}
			incr y
		}
		incr x 6
	}
	check $matches "title pixels match vram.dat with 6-pixel advance and SCREEN 5 colors"
}

proc capture {card} {
	check [expr {([debug read {VDP regs} 0] & 14) == 6}] "SCREEN 5 active"
	check [expr {([debug read {VDP regs} 9] & 128) != 0}] "212 lines active"
	check [expr {[debug read {VDP regs} 2] == 31}] "page 0 displayed"
	set front [debug read_block VRAM 0 [expr {212 * 128}]]
	set back [debug read_block VRAM 32768 [expr {212 * 128}]]
	check [expr {$front eq $back}] "transition completed without partial drawing"
	check_font
	set ::cards($card) [picture]
	binary scan $::cards($card) cu* bytes
	set colors [dict create]
	foreach byte $bytes {
		dict set colors [expr {$byte >> 4}] 1
		dict set colors [expr {$byte & 15}] 1
	}
	if {$card < 7} {
		check [expr {[dict size $colors] >= 10}] "card $card uses at least 10 colors"
	} else {
		# Restrict the blackout check to the image, excluding the bright captions.
		binary scan [debug read_block VRAM [expr {20 * 128 + 3}] 16000] cu* pixels
		set dark 0
		foreach byte $pixels {
			foreach color [list [expr {$byte >> 4}] [expr {$byte & 15}]] {
				if {$color in {0 1 2 9}} {incr dark}
			}
		}
		check [expr {$dark > 28000}] "card $card image is predominantly dark"
	}
	# All eight font rows must contain pixels, not the one-line TEXT-mode font.
	set rows 0
	for {set y 168} {$y < 176} {incr y} {
		set line [debug read_block VRAM [expr {$y * 128 + 5}] 114]
		if {$line ne [string repeat \x00 114]} {incr rows}
	}
	check [expr {$rows >= 6}] "card $card has multi-line bitmap glyphs"
}

proc snap {name continuation} {
	# At unlimited speed openMSX may skip host frames; let the renderer catch up.
	set ::throttle on
	after time 0.15 [list finish_snap $name $continuation]
}

proc finish_snap {name continuation} {
	screenshot -raw [file join $::output $name]
	set ::throttle off
	uplevel #0 $continuation
}

after time 5 {type_via_keybuf "\r"}
proc await_change {previous continuation remaining} {
	if {[picture] ne $previous && [ready]} {
		after time 0.25 $continuation
	} elseif {$remaining > 0} {
		after time 0.25 [list await_change $previous $continuation [expr {$remaining - 1}]]
	} else {
		check 0 "timed out waiting for complete card"
		finish
	}
}

proc move {row mask continuation} {
	set previous [picture]
	tap $row $mask
	await_change $previous $continuation 80
}

proc observe_blackout {} {
	if {!$::observing} {return}
	if {[debug read {VDP palette} 2] == 0 && [debug read {VDP palette} 3] == 0} {
		set ::sawBlackout 1
		check [expr {[debug read {VDP palette} 28] == 118}] "blackout preserves caption palette"
	}
	after time 0.04 observe_blackout
}

proc tour {card} {
	capture $card
	if {$card == 7} {
		set ::observing 0
		check $::sawBlackout "power failure flickers before the dark scene"
	}
	snap [format "intro-%02d.png" [expr {$card + 1}]] [list next_card $card]
}

proc next_card {card} {
	if {$card == 9} {
		after time 14 {stage 2}
	} else {
		if {$card == 6} {
			set ::sawBlackout 0
			set ::observing 1
			observe_blackout
		}
		move 8 128 [list tour [expr {$card + 1}]]
	}
}

proc stage {number} {
	switch $number {
		0 {
			check [expr {[picture] eq $::cards(0)}] "pause holds card for more than 12 seconds"
			move 8 128 {tour 1}
		}
		2 {
			check [expr {[picture] eq $::cards(9)}] "question waits for a decision"
			tap 8 1
			after time 1 {stage 3}
		}
		3 {
			check [expr {[picture] eq $::cards(9)}] "space does not answer the S/N question"
			move 8 16 {stage 4}
		}
		4 {
			check [expr {[picture] eq $::cards(8)}] "left returns from question to story"
			move 7 128 {stage 5}
		}
		5 {
			check [expr {[picture] eq $::cards(9)}] "Enter advances to the question"
			move 4 8 {stage 6}
		}
		6 {
			check [expr {[picture] eq $::cards(0)}] "N restarts the slideshow"
			after time 11 {
				check [expr {[picture] eq $::cards(0)}] "restart resets the reading timer"
				await_change $::cards(0) {stage 7} 40
			}
		}
		7 {
			check [expr {[picture] eq $::cards(1)}] "N resumes automatic advancement"
			move 8 16 {stage 8}
		}
		8 {
			check [expr {[picture] eq $::cards(0)}] "automatic 12-second advance and wrap"
			move 8 16 {stage 11}
		}
		11 {
			check [expr {[picture] eq $::cards(9)}] "first card wraps backwards to question"
			move 5 1 {stage 12}
		}
		12 {
			set ::accepted [picture]
			check [expr {$::accepted ne $::cards(9)}] "S displays development notice"
			snap intro-accepted.png {after time 14 {stage 13}}
		}
		13 {
			check [expr {[picture] eq $::accepted}] "accepted notice does not auto-advance"
			move 4 8 {stage 14}
		}
		14 {
			check [expr {[picture] eq $::cards(0)}] "N can replay after accepting"
			move 8 16 {stage 15}
		}
		15 {move 5 1 {stage 16}}
		16 {
			tap 7 128
			after time 3 {stage 9}
		}
		9 {
			set mode [expr {[debug read {VDP regs} 0] & 14}]
			check [expr {$mode == 0 || $mode == 4}] "Enter after accepting restores DOS text mode"
			snap intro-dos.png {
				type_via_keybuf "echo DOS-RETURN-OK\r"
				after time 2 {stage 10}
			}
		}
		10 {
			set text [debug read_block VRAM 0 2000]
			check [expr {[string first "DOS-RETURN-OK" $text] >= 0}] "DOS accepts commands after ESC"
			finish
		}
	}
}

proc finish {} {
	if {!$::failed} {puts $::log "PASS: MSX2 intro"}
	close $::log
	exit
}

after time 30 {tap 4 32}
after time 31 {capture 0; snap intro-01.png {after time 14 {stage 0}}}
after time 360 {check 0 "global timeout"; finish}
