;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rooms
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Room14
	.globl _Room3
	.globl _Room2
	.globl _Room1
	.globl _StrCpy
	.globl _StrEq
	.globl _Here
	.globl _FN
	.globl _Move
	.globl _Score
	.globl _Crazy
	.globl _Van
	.globl _Say
	.globl _DEAD
	.globl _Pause
	.globl _DOpen
	.globl _Door
	.globl _Walls
	.globl _Explode
	.globl _Rnd
	.globl _play
	.globl _delay
	.globl _nosound
	.globl _sound
	.globl _Wherey
	.globl _Gotoxy
	.globl _Col
	.globl _RB2
	.globl _RB
	.globl _RS
	.globl _RL
	.globl _Wln
	.globl _Wr
	.globl _SetDel
	.globl _SetAdd
	.globl _SetIn
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area _DABS (ABS)
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;rooms.c:4: void Room1(void)
;	---------------------------------
; Function Room1
; ---------------------------------
_Room1::
;rooms.c:6: switch (Prm) {
	ld	a, (_Prm)
	dec	a
	ret	nz
;rooms.c:8: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x0b
	jr	z, 00104$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x16
	jr	z, 00107$
	cp	a, #0x18
	jr	z, 00107$
	cp	a, #0x1c
	jr	z, 00107$
	cp	a, #0x23
	jp	z, 00126$
	cp	a, #0x27
	jp	z, 00187$
	cp	a, #0x2c
	jp	z, 00157$
	sub	a, #0x38
	jp	z, 00139$
	ret
;rooms.c:9: case 2: case 13: Door(2, 50); break;
00103$:
	ld	l, #0x32
	ld	a, #0x02
	jp	_Door
;rooms.c:10: case 11: RL(199); break;
00104$:
	ld	hl, #0x00c7
	jp	_RL
;rooms.c:11: case 22: case 24: case 28:
00107$:
;rooms.c:12: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x23
	jr	z, 00116$
	cp	a, #0x25
	jr	z, 00111$
	cp	a, #0x26
	jr	z, 00111$
	cp	a, #0x2c
	jr	z, 00111$
	cp	a, #0x37
	jr	z, 00111$
	cp	a, #0x3b
	jr	z, 00120$
	sub	a, #0x67
	jr	z, 00115$
	ret
;rooms.c:13: case 37: case 38: case 55: case 44:
00111$:
;rooms.c:14: if (Md != 0) RL(534); else RB(3, 11); break;
	ld	a, (_Md+0)
	or	a, a
	jr	z, 00113$
	ld	hl, #0x0216
	jp	_RL
00113$:
	ld	l, #0x0b
	ld	a, #0x03
	jp	_RB
;rooms.c:15: case 103: RL(317); break;
00115$:
	ld	hl, #0x013d
	jp	_RL
;rooms.c:16: case 35: if (En(6)) RL(542); else RL(543); break;
00116$:
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00118$
	ld	hl, #0x021e
	jp	_RL
00118$:
	ld	hl, #0x021f
	jp	_RL
;rooms.c:17: case 59:
00120$:
;rooms.c:18: switch (Region) {
	ld	a, (_Region)
	dec	a
	jr	z, 00121$
	ld	a, (_Region)
	cp	a, #0x02
	jr	z, 00122$
	sub	a, #0x04
	jr	z, 00123$
	ret
;rooms.c:19: case 1: RS(46); break;
00121$:
	ld	hl, #0x002e
	jp	_RS
;rooms.c:20: case 2: RS(63); break;
00122$:
	ld	hl, #0x003f
	jp	_RS
;rooms.c:21: case 4: RS(T[9] + 46); break;
00123$:
	ld	hl, (#(_T + 18) + 0)
	ld	bc, #0x002e
	add	hl, bc
;rooms.c:25: break;
	jp	_RS
;rooms.c:26: case 35:
00126$:
;rooms.c:27: if (N1 == 16 || N1 == 35) {
	ld	a, (_N1)
	cp	a, #0x10
	jr	z, 00136$
	sub	a, #0x23
	ret	nz
00136$:
;rooms.c:28: if (Here(16) && En(6)) {
	ld	a, #0x10
	call	_Here
	or	a, a
	jp	z, 00133$
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00133$
;rooms.c:29: if (!En(4)) {
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	nz, 00130$
;rooms.c:30: Add(7); sound(440); RS(19); T[6] = 4;
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ld	hl, #0x01b8
	call	_sound
	ld	hl, #0x0013
	call	_RS
	ld	hl, #0x0004
	ld	((_T + 12)), hl
;rooms.c:31: for (x = 1; x <= Rnd(30) + 9; x++) { y = Rnd(6000) + 60; play(y, y, 70); delay(9); }
	ld	hl, #_x
	ld	(hl), #0x01
00197$:
	ld	hl, #0x001e
	call	_Rnd
	ld	hl, #0x0009
	add	hl, de
	ld	a, (_x+0)
	ld	c, a
	xor	a, a
	ld	b, a
	sbc	hl, bc
	jr	c, 00127$
	ld	hl, #0x1770
	call	_Rnd
	ld	a, e
	add	a, #0x3c
	ld	(#_y), a
	ld	a, (_y)
	ld	e, a
	ld	d, #0x00
	ld	hl, #0x0046
	push	hl
	ld	l, e
	ld	h, d
	call	_play
	ld	hl, #0x0009
	call	_delay
	ld	hl, #_x
	inc	(hl)
	jr	00197$
00127$:
;rooms.c:32: Score(10, 67);
	ld	l, #0x43
	ld	a, #0x0a
	jp	_Score
00130$:
;rooms.c:34: Add(7); RL(149);
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ld	hl, #0x0095
	call	_RL
;rooms.c:35: for (x = 1; x <= Rnd(9) + 9; x++) { y = Rnd(9999); play(y, y, 30); delay(55); }
	ld	hl, #_x
	ld	(hl), #0x01
00200$:
	ld	hl, #0x0009
	call	_Rnd
	ld	hl, #0x0009
	add	hl, de
	ld	a, (_x+0)
	ld	c, a
	xor	a, a
	ld	b, a
	sbc	hl, bc
	ret	c
	ld	hl, #0x270f
	call	_Rnd
	ld	hl, #_y
	ld	(hl), e
	ld	a, (_y)
	ld	h, #0x00
	ld	de, #0x001e
	push	de
	ld	e, a
	ld	d, h
	ld	l, a
	call	_play
	ld	hl, #0x0037
	call	_delay
	ld	hl, #_x
	inc	(hl)
	jr	00200$
00133$:
;rooms.c:37: } else RL(141);
;rooms.c:39: break;
	ld	hl, #0x008d
	jp	_RL
;rooms.c:40: case 56:
00139$:
;rooms.c:41: if (En(7) && En(6)) {
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00154$
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00154$
;rooms.c:42: if (T[6] > 0) {
	ld	hl, (#(_T + 12) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00689$
	xor	a, #0x80
00689$:
	jp	p, 00151$
;rooms.c:43: if (StrEq(Input, Identity)) { RS(21); T[6] = 0; Score(15, 4); play(400, 400, 200); }
	ld	de, #_Identity
	ld	hl, #_Input
	call	_StrEq
	or	a, a
	jr	z, 00141$
	ld	hl, #0x0015
	call	_RS
	ld	hl, #0x0000
	ld	((_T + 12)), hl
	ld	l, #0x04
	ld	a, #0x0f
	call	_Score
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0190
	ld	h, d
	ld	l, e
	call	_play
	ret
00141$:
;rooms.c:44: else RL(142);
	ld	hl, #0x008e
	jp	_RL
00151$:
;rooms.c:46: if (StrEq(Input, "r2/20-8 d2/vega")) {
	ld	de, #___str_0
	ld	hl, #_Input
	call	_StrEq
	or	a, a
	jr	z, 00148$
;rooms.c:47: if (!(Region == 2 || Region == 4)) { RS(28); Add(26); Min(27); play(600, 600, 99); }
	ld	a, (_Region)
	cp	a, #0x02
	jr	z, 00144$
	sub	a, #0x04
	jr	z, 00144$
	ld	hl, #0x001c
	call	_RS
	ld	a, #0x1a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ld	hl, #0x0063
	push	hl
	ld	de, #0x0258
	ld	h, d
	ld	l, e
	call	_play
	ret
00144$:
;rooms.c:48: else RL(154);
	ld	hl, #0x009a
	jp	_RL
00148$:
;rooms.c:49: } else { Min(26); RS(39); Min(27); play(600, 600, 99); }
	ld	a, #0x1a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ld	hl, #0x0027
	call	_RS
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ld	hl, #0x0063
	push	hl
	ld	de, #0x0258
	ld	h, d
	ld	l, e
	call	_play
	ret
00154$:
;rooms.c:51: } else RL(179);
;rooms.c:52: break;
	ld	hl, #0x00b3
	jp	_RL
;rooms.c:53: case 44:
00157$:
;rooms.c:54: if (En(7) && En(6)) {
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00184$
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00184$
;rooms.c:55: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x28
	jr	z, 00165$
	cp	a, #0x29
	jp	z, 00169$
	sub	a, #0x2b
	ret	nz
;rooms.c:57: play(750, 750, 200);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x02ee
	ld	h, d
	ld	l, e
	call	_play
;rooms.c:58: if (Region == 4) {
	ld	a, (_Region)
	sub	a, #0x04
	jr	nz, 00163$
;rooms.c:59: if (T[9] == 11) {
	ld	hl, (#_T + 18)
	ld	a, l
	sub	a, #0x0b
	or	a, h
	jr	nz, 00160$
;rooms.c:60: Score(5, 68); Region = 2; T[13] = 3; TFlag = 2;
	ld	l, #0x44
	ld	a, #0x05
	call	_Score
	ld	hl, #_Region
	ld	(hl), #0x02
	ld	hl, #0x0003
	ld	((_T + 26)), hl
	ld	hl, #_TFlag
	ld	(hl), #0x02
;rooms.c:61: StrCpy(Nn[126], "hinged mouth\\mouth\\hinge\\");
	ld	de, #___str_1
	ld	hl, #(_Nn + 3780)
	call	_StrCpy
;rooms.c:62: RB(9, 11); Explode(30);
	ld	l, #0x0b
	ld	a, #0x09
	call	_RB
	ld	a, #0x1e
	jp	_Explode
00160$:
;rooms.c:63: } else RS(64);
	ld	hl, #0x0040
	jp	_RS
00163$:
;rooms.c:64: } else RL(198);
;rooms.c:65: break;
	ld	hl, #0x00c6
	jp	_RL
;rooms.c:66: case 40:
00165$:
;rooms.c:67: play(900, 900, 200);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0384
	ld	h, d
	ld	l, e
	call	_play
;rooms.c:68: if (En(26)) { RS(37); Add(27); } else RL(195);
	ld	a, #0x1a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00167$
	ld	hl, #0x0025
	call	_RS
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ret
00167$:
;rooms.c:69: break;
	ld	hl, #0x00c3
	jp	_RL
;rooms.c:70: case 41:
00169$:
;rooms.c:71: play(600, 600, 200);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0258
	ld	h, d
	ld	l, e
	call	_play
;rooms.c:72: if (En(27)) {
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00180$
;rooms.c:73: if (!En(22) && !En(23)) {
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	nz, 00173$
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	nz, 00173$
;rooms.c:74: Col(28, 23); RL(180); Col(11, 7);
	ld	l, #0x17
	ld	a, #0x1c
	call	_Col
	ld	hl, #0x00b4
	call	_RL
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;rooms.c:75: RS(38); T[8] = 7;
	ld	hl, #0x0026
	call	_RS
	ld	hl, #0x0007
	ld	((_T + 16)), hl
;rooms.c:76: for (x = 1; x <= 6; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00204$:
;rooms.c:77: for (y = 30; y <= 200; y++) { sound(y); delay(5); }
	ld	hl, #_y
	ld	(hl), #0x1e
00202$:
	ld	a, (_y)
	ld	h, #0x00
	ld	l, a
	call	_sound
	ld	hl, #0x0005
	call	_delay
	ld	hl, #_y
	inc	(hl)
	ld	a, #0xc8
	ld	hl, #_y
	sub	a, (hl)
	jr	nc, 00202$
;rooms.c:76: for (x = 1; x <= 6; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x06
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00204$
;rooms.c:78: nosound();
	jp	_nosound
00173$:
;rooms.c:79: } else { RS(40); play(500, 999, 3); Min(26); Min(27); }
	ld	hl, #0x0028
	call	_RS
	ld	hl, #0x0003
	push	hl
	ld	de, #0x03e7
	ld	hl, #0x01f4
	call	_play
	ld	a, #0x1a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ret
00180$:
;rooms.c:80: } else if (En(26)) RL(184); else RL(185);
	ld	a, #0x1a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00177$
	ld	hl, #0x00b8
	jp	_RL
00177$:
;rooms.c:82: }
	ld	hl, #0x00b9
	jp	_RL
00184$:
;rooms.c:83: } else RL(179);
;rooms.c:84: break;
	ld	hl, #0x00b3
	jp	_RL
;rooms.c:85: case 39:
00187$:
;rooms.c:86: if (SetIn(NounSet, 16) && En(6)) {
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetIn
	or	a, a
	ret	z
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	ret	z
;rooms.c:87: if (En(7)) RL(575); else { Min(6); RL(145); SFlag = 0; }
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00189$
	ld	hl, #0x023f
	jp	_RL
00189$:
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ld	hl, #0x0091
	call	_RL
	xor	a, a
	ld	(#_SFlag), a
;rooms.c:92: }
;rooms.c:93: }
	ret
___str_0:
	.ascii "r2/20-8 d2/vega"
	.db 0x00
___str_1:
	.ascii "hinged mouth"
	.db 0x5c
	.ascii "mouth"
	.db 0x5c
	.ascii "hinge"
	.db 0x5c
	.db 0x00
;rooms.c:95: void Room2(void)
;	---------------------------------
; Function Room2
; ---------------------------------
_Room2::
;rooms.c:97: switch (Prm) {
	ld	a, (_Prm)
	cp	a, #0x02
	jr	z, 00101$
	sub	a, #0x03
	jp	z, 00157$
	ret
;rooms.c:98: case 2:
00101$:
;rooms.c:99: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00117$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00118$
	cp	a, #0x04
	jr	z, 00119$
	cp	a, #0x09
	jr	z, 00104$
	cp	a, #0x0b
	jr	z, 00117$
	cp	a, #0x0d
	jr	z, 00104$
	cp	a, #0x18
	jr	z, 00121$
	cp	a, #0x1c
	jr	z, 00121$
	cp	a, #0x29
	jp	z, 00135$
	cp	a, #0x32
	jp	z, 00127$
	cp	a, #0x33
	jr	z, 00104$
	sub	a, #0x35
	jp	z, 00150$
	ret
;rooms.c:100: case 9: case 13: case 51:
00104$:
;rooms.c:101: if (N1 == 0 || N1 == 62 || N1 == 64 || N1 == 71) {
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00111$
	ld	a, (_N1)
	cp	a, #0x3e
	jr	z, 00111$
	cp	a, #0x40
	jr	z, 00111$
	sub	a, #0x47
	ret	nz
00111$:
;rooms.c:102: if (En(23)) {
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00109$
;rooms.c:103: RL(237);
	ld	hl, #0x00ed
	call	_RL
;rooms.c:104: switch (Region) { case 1: Move(22); break; case 2: Move(24); break; }
	ld	a, (_Region)
	dec	a
	jr	z, 00105$
	ld	a, (_Region)
	sub	a, #0x02
	jr	z, 00106$
	ret
00105$:
	ld	a, #0x16
	jp	_Move
00106$:
	ld	a, #0x18
	jp	_Move
00109$:
;rooms.c:105: } else RL(99);
;rooms.c:107: break;
	ld	hl, #0x0063
	jp	_RL
;rooms.c:108: case 1: case 11: Door(1, 50); break;
00117$:
	ld	l, #0x32
	ld	a, #0x01
	jp	_Door
;rooms.c:109: case 2: Move(3); break;
00118$:
	ld	a, #0x03
	jp	_Move
;rooms.c:110: case 4: Move(4); break;
00119$:
	ld	a, #0x04
	jp	_Move
;rooms.c:111: case 24: case 28:
00121$:
;rooms.c:112: if (StrEq(NStr, "hatch")) { if (En(23)) RL(163); else RL(99); }
	ld	de, #___str_2
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	ret	z
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00123$
	ld	hl, #0x00a3
	jp	_RL
00123$:
;rooms.c:113: break;
	ld	hl, #0x0063
	jp	_RL
;rooms.c:114: case 50:
00127$:
;rooms.c:115: if (N1 == 78) {
	ld	a, (_N1)
	sub	a, #0x4e
	ret	nz
;rooms.c:116: if (En(22)) { RL(160); Min(22); }
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00131$
	ld	hl, #0x00a0
	call	_RL
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ret
00131$:
;rooms.c:118: RL(161); Add(22);
	ld	hl, #0x00a1
	call	_RL
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
;rooms.c:119: if (T[8] > 0) { RS(40); play(500, 999, 3); T[8] = 0; Min(27); }
	ld	hl, (#(_T + 16) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00608$
	xor	a, #0x80
00608$:
	ret	p
	ld	hl, #0x0028
	call	_RS
	ld	hl, #0x0003
	push	hl
	ld	de, #0x03e7
	ld	hl, #0x01f4
	call	_play
	ld	hl, #0x0000
	ld	((_T + 16)), hl
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
;rooms.c:122: break;
	ret
;rooms.c:123: case 41:
00135$:
;rooms.c:124: if (StrEq(NStr, "hatch")) {
	ld	de, #___str_2
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	ret	z
;rooms.c:125: if (Region != 4) {
	ld	a, (_Region)
	sub	a, #0x04
	jp	z, 00146$
;rooms.c:126: if (En(22)) {
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	z, 00143$
;rooms.c:127: RL(96); Add(23);
	ld	hl, #0x0060
	call	_RL
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
;rooms.c:128: if (!En(44) && Region == 2) {
	ld	a, #0x2c
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	ret	nz
	ld	a, (_Region)
	sub	a, #0x02
	ret	nz
;rooms.c:129: Add(44); RL(327);
	ld	a, #0x2c
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ld	hl, #0x0147
	call	_RL
;rooms.c:130: for (i = 1; i <= 400; i++) sound(Rnd(3500) + 999);
	ld	hl, #0x0001
	ld	(_i), hl
00178$:
	ld	hl, #0x0dac
	call	_Rnd
	ld	hl, #0x03e7
	add	hl, de
	call	_sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0x90
	ld	iy, #_i
	cp	a, 0 (iy)
	ld	a, #0x01
	sbc	a, 1 (iy)
	jp	po, 00612$
	xor	a, #0x80
00612$:
	jp	p, 00178$
;rooms.c:131: for (i = 7500; i >= 500; i--) { sound(Rnd(i) + i); sound(Rnd(3500) + 2000); }
	ld	hl, #0x1d4c
	ld	(_i), hl
00180$:
	ld	hl, (_i)
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_sound
	ld	hl, #0x0dac
	call	_Rnd
	ld	hl, #0x07d0
	add	hl, de
	call	_sound
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	ld	a, (_i+0)
	sub	a, #0xf4
	ld	a, (_i+1)
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	nc, 00180$
;rooms.c:132: for (i = 1; i <= 300; i++) sound(Rnd(3500) + 2500);
	ld	hl, #0x0001
	ld	(_i), hl
00182$:
	ld	hl, #0x0dac
	call	_Rnd
	ld	hl, #0x09c4
	add	hl, de
	call	_sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0x2c
	ld	iy, #_i
	cp	a, 0 (iy)
	ld	a, #0x01
	sbc	a, 1 (iy)
	jp	po, 00613$
	xor	a, #0x80
00613$:
	jp	p, 00182$
;rooms.c:133: nosound();
	jp	_nosound
00143$:
;rooms.c:135: } else RL(97);
	ld	hl, #0x0061
	jp	_RL
00146$:
;rooms.c:136: } else { RS(45); DEAD(); }
	ld	hl, #0x002d
	call	_RS
;rooms.c:138: break;
	jp	_DEAD
;rooms.c:139: case 53:
00150$:
;rooms.c:140: if (N1 == 56) { if (En(23)) { RL(98); Min(23); } else Say("hatch", "closed"); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00152$
	ld	hl, #0x0062
	call	_RL
	ld	a, #0x17
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ret
00152$:
	ld	de, #___str_3
;rooms.c:143: break;
	ld	hl, #___str_2
	jp	_Say
;rooms.c:144: case 3:
00157$:
;rooms.c:145: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00159$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00160$
	cp	a, #0x04
	jr	z, 00161$
	cp	a, #0x0d
	jr	z, 00159$
	cp	a, #0x18
	jr	z, 00169$
	cp	a, #0x1c
	jr	z, 00163$
	cp	a, #0x1f
	jr	z, 00163$
	cp	a, #0x29
	jr	z, 00169$
	sub	a, #0x4c
	jr	z, 00169$
	ret
;rooms.c:146: case 1: case 13: Move(2); break;
00159$:
	ld	a, #0x02
	jp	_Move
;rooms.c:147: case 3: Move(6); break;
00160$:
	ld	a, #0x06
	jp	_Move
;rooms.c:148: case 4: Move(7); break;
00161$:
	ld	a, #0x07
	jp	_Move
;rooms.c:149: case 28: case 31:
00163$:
;rooms.c:150: if (N1 == 55 || N1 == 81) { RB2(4, 12); Pause(); }
	ld	a, (_N1)
	cp	a, #0x37
	jr	z, 00164$
	sub	a, #0x51
	ret	nz
00164$:
	ld	l, #0x0c
	ld	a, #0x04
	call	_RB2
;rooms.c:151: break;
	jp	_Pause
;rooms.c:152: case 24: case 41: case 76:
00169$:
;rooms.c:153: if (N1 == 55) { if (Md == 1 || Md == 4) RL(533); else { RS(22); DEAD(); } }
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
	ld	a, (_Md)
	dec	a
	jr	z, 00170$
	ld	a, (_Md)
	sub	a, #0x04
	jr	nz, 00171$
00170$:
	ld	hl, #0x0215
	jp	_RL
00171$:
	ld	hl, #0x0016
	call	_RS
;rooms.c:157: }
;rooms.c:158: }
	jp	_DEAD
___str_2:
	.ascii "hatch"
	.db 0x00
___str_3:
	.ascii "closed"
	.db 0x00
;rooms.c:160: void Room3(void)
;	---------------------------------
; Function Room3
; ---------------------------------
_Room3::
;rooms.c:162: switch (Prm) {
	ld	a, (_Prm)
	cp	a, #0x04
	jr	z, 00101$
	cp	a, #0x05
	jp	z, 00174$
	cp	a, #0x06
	jp	z, 00182$
	sub	a, #0x07
	jp	z, 00195$
	ret
;rooms.c:163: case 4:
00101$:
;rooms.c:164: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00103$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x16
	jr	z, 00105$
	cp	a, #0x1c
	jr	z, 00105$
	cp	a, #0x1f
	jp	z, 00117$
	cp	a, #0x21
	jp	z, 00128$
	cp	a, #0x29
	jp	z, 00125$
	cp	a, #0x2a
	jp	z, 00125$
	cp	a, #0x2b
	jp	z, 00125$
	cp	a, #0x2c
	jp	z, 00125$
	cp	a, #0x36
	jp	z, 00148$
	cp	a, #0x38
	jp	z, 00152$
	sub	a, #0x58
	jp	z, 00125$
	ret
;rooms.c:165: case 3: case 13: Move(2); break;
00103$:
	ld	a, #0x02
	jp	_Move
;rooms.c:166: case 28: case 22:
00105$:
;rooms.c:167: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00108$
	cp	a, #0x34
	jr	z, 00107$
	cp	a, #0x37
	jr	z, 00109$
	cp	a, #0x40
	jr	z, 00112$
	cp	a, #0x51
	jr	z, 00111$
	cp	a, #0x5a
	jr	z, 00106$
	sub	a, #0x77
	jr	z, 00111$
	ret
;rooms.c:168: case 90: RS(23); break;
00106$:
	ld	hl, #0x0017
	jp	_RS
;rooms.c:169: case 52: RS(26); break;
00107$:
	ld	hl, #0x001a
	jp	_RS
;rooms.c:170: case 38: RS(27); break;
00108$:
	ld	hl, #0x001b
	jp	_RS
;rooms.c:171: case 55: RS(31); break;
00109$:
	ld	hl, #0x001f
	jp	_RS
;rooms.c:172: case 81: case 119: RB(10, 14); Pause(); break;
00111$:
	ld	l, #0x0e
	ld	a, #0x0a
	call	_RB
	jp	_Pause
;rooms.c:173: case 64:
00112$:
;rooms.c:174: if (NicheCon != 0) { Wr("There is a "); Wr(FN(NicheCon)); Wr(" sitting on the niche."); Wln(); }
	ld	a, (_NicheCon+0)
	or	a, a
	jr	z, 00114$
	ld	hl, #___str_4
	call	_Wr
	ld	a, (_NicheCon)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_5
	call	_Wr
	jp	_Wln
00114$:
;rooms.c:175: else RL(152);
;rooms.c:178: break;
	ld	hl, #0x0098
	jp	_RL
;rooms.c:179: case 31: if (N1 == 81 || N1 == 119) { RB(10, 14); Pause(); } break;
00117$:
	ld	a, (_N1)
	cp	a, #0x51
	jr	z, 00118$
	sub	a, #0x77
	ret	nz
00118$:
	ld	l, #0x0e
	ld	a, #0x0a
	call	_RB
	jp	_Pause
;rooms.c:180: case 41: case 42: case 43: case 44: case 88:
00125$:
;rooms.c:181: if (N1 == 55) RL(174);
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
;rooms.c:182: break;
	ld	hl, #0x00ae
	jp	_RL
;rooms.c:183: case 33:
00128$:
;rooms.c:184: if (N2 == 64) {
	ld	a, (_N2)
	sub	a, #0x40
	ret	nz
;rooms.c:185: if (N1 == 3 || N1 == 4 || N1 == 8 || N1 == 9 || N1 == 12 || N1 == 17 || N1 == 29) {
	ld	a, (_N1)
	cp	a, #0x03
	jr	z, 00137$
	cp	a, #0x04
	jr	z, 00137$
	cp	a, #0x08
	jr	z, 00137$
	cp	a, #0x09
	jr	z, 00137$
	cp	a, #0x0c
	jr	z, 00137$
	cp	a, #0x11
	jr	z, 00137$
	sub	a, #0x1d
	jr	nz, 00138$
00137$:
;rooms.c:186: if (Pr == 1 || Pr == 5 || Pr == 10) {
	ld	a, (_Pr)
	dec	a
	jr	z, 00132$
	ld	a, (_Pr)
	cp	a, #0x05
	jr	z, 00132$
	sub	a, #0x0a
	jp	nz, _Crazy
00132$:
;rooms.c:187: if (NicheCon == 0) { Van(N1); R[N1] = 4; NicheCon = N1; RL(147); }
	ld	a, (_NicheCon+0)
	or	a, a
	jr	nz, 00130$
	ld	a, (_N1)
	call	_Van
	ld	hl, #_R
	ld	a, (_N1)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x04
	ld	a, (_N1+0)
	ld	(#_NicheCon), a
	ld	hl, #0x0093
	jp	_RL
00130$:
;rooms.c:188: else RL(148);
;rooms.c:189: } else Crazy();
	ld	hl, #0x0094
	jp	_RL
00138$:
;rooms.c:190: } else RL(146);
;rooms.c:192: break;
	ld	hl, #0x0092
	jp	_RL
;rooms.c:193: case 54: if (N1 == 38 || N1 == 90) { RL(321); Serum = 1; } break;
00148$:
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00149$
	sub	a, #0x5a
	ret	nz
00149$:
	ld	hl, #0x0141
	call	_RL
	ld	hl, #_Serum
	ld	(hl), #0x01
	ret
;rooms.c:194: case 56:
00152$:
;rooms.c:195: Serum = Serum + 1;
	ld	a, (_Serum)
	inc	a
	ld	(#_Serum), a
;rooms.c:196: if (Serum < 3) {
	ld	a, (_Serum+0)
	sub	a, #0x03
	jp	nc, 00171$
;rooms.c:197: if (NicheCon == 0) RS(24);
	ld	a, (_NicheCon+0)
	or	a, a
	jr	nz, 00168$
	ld	hl, #0x0018
	jp	_RS
00168$:
;rooms.c:198: else if (NicheCon != 29) {
	ld	a, (_NicheCon)
	sub	a, #0x1d
	jr	z, 00165$
;rooms.c:199: Wr("A small amount of serum drips onto the "); Wr(FN(NicheCon)); Wr(" and ");
	ld	hl, #___str_6
	call	_Wr
	ld	a, (_NicheCon)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_7
	call	_Wr
;rooms.c:200: Wr("dries up."); Wln();
	ld	hl, #___str_8
	call	_Wr
	jp	_Wln
00165$:
;rooms.c:202: if (MugCon == 0) {
	ld	a, (_MugCon+0)
	or	a, a
	jr	nz, 00162$
;rooms.c:203: MugCon = 92; RS(25); SetAdd(L[4], 92);
	ld	hl, #_MugCon
	ld	(hl), #0x5c
	ld	hl, #0x0019
	call	_RS
	ld	a, #0x5c
	push	af
	inc	sp
	ld	hl, #(_L + 68)
	call	_SetAdd
;rooms.c:204: if (StrEq(Input, "6")) Add(42); else Min(42);
	ld	de, #___str_9
	ld	hl, #_Input
	call	_StrEq
	or	a, a
	jr	z, 00154$
	ld	a, #0x2a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ret
00154$:
	ld	a, #0x2a
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ret
00162$:
;rooms.c:206: if (MugCon == 79 || MugCon == 92 || MugCon == 99) {
	ld	a, (_MugCon)
	cp	a, #0x4f
	jr	z, 00156$
	cp	a, #0x5c
	jr	z, 00156$
	sub	a, #0x63
	jr	nz, 00157$
00156$:
;rooms.c:207: Wr("The serum mixes with the "); Wr(FN(MugCon)); Wr(" inside the mug."); Wln();
	ld	hl, #___str_10
	call	_Wr
	ld	a, (_MugCon)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_11
	call	_Wr
	jp	_Wln
00157$:
;rooms.c:209: Wr("The serum drips on the "); Wr(FN(MugCon)); Wr(" inside the mug and");
	ld	hl, #___str_12
	call	_Wr
	ld	a, (_MugCon)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_13
	call	_Wr
;rooms.c:210: Wr(" quickly evaporates."); Wln();
	ld	hl, #___str_14
	call	_Wr
	jp	_Wln
00171$:
;rooms.c:214: } else RS(135);
;rooms.c:217: break;
	ld	hl, #0x0087
	jp	_RS
;rooms.c:218: case 5:
00174$:
;rooms.c:219: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00176$
	cp	a, #0x0d
	jr	z, 00176$
	cp	a, #0x16
	jr	z, 00178$
	sub	a, #0x1c
	jr	z, 00178$
	ret
;rooms.c:220: case 2: case 13: Move(6); break;
00176$:
	ld	a, #0x06
	jp	_Move
;rooms.c:221: case 22: case 28: if (N1 == 98) RL(122); break;
00178$:
	ld	a, (_N1)
	sub	a, #0x62
	ret	nz
;rooms.c:223: break;
	ld	hl, #0x007a
	jp	_RL
;rooms.c:224: case 6:
00182$:
;rooms.c:225: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00184$
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00186$
	cp	a, #0x0b
	jr	z, 00184$
	cp	a, #0x0d
	jr	z, 00186$
	cp	a, #0x1c
	jr	z, 00187$
	sub	a, #0x33
	jr	z, 00191$
	ret
;rooms.c:226: case 1: case 11: Move(5); break;
00184$:
	ld	a, #0x05
	jp	_Move
;rooms.c:227: case 4: case 13: Move(3); break;
00186$:
	ld	a, #0x03
	jp	_Move
;rooms.c:228: case 28: switch (N1) { case 80: RL(159); break; case 69: RS(29); break; } break;
00187$:
	ld	a, (_N1)
	cp	a, #0x45
	jr	z, 00189$
	sub	a, #0x50
	ret	nz
	ld	hl, #0x009f
	jp	_RL
00189$:
	ld	hl, #0x001d
	jp	_RS
;rooms.c:229: case 51: if (N1 == 69) Vb = 35; break;
00191$:
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
	ld	hl, #_Vb
	ld	(hl), #0x23
;rooms.c:231: break;
	ret
;rooms.c:232: case 7:
00195$:
;rooms.c:233: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00197$
	cp	a, #0x0d
	jr	z, 00197$
	cp	a, #0x16
	jr	z, 00199$
	cp	a, #0x18
	jr	z, 00202$
	cp	a, #0x1c
	jr	z, 00199$
	cp	a, #0x27
	jr	z, 00209$
	cp	a, #0x29
	jr	z, 00206$
	sub	a, #0x35
	jr	z, 00206$
	ret
;rooms.c:234: case 3: case 13: Move(3); break;
00197$:
	ld	a, #0x03
	jp	_Move
;rooms.c:235: case 22: case 28: if (N1 == 32) RL(155); break;
00199$:
	ld	a, (_N1)
	sub	a, #0x20
	ret	nz
	ld	hl, #0x009b
	jp	_RL
;rooms.c:236: case 24: if (N1 == 32) RL(156); break;
00202$:
	ld	a, (_N1)
	sub	a, #0x20
	ret	nz
	ld	hl, #0x009c
	jp	_RL
;rooms.c:237: case 41: case 53: if (N1 == 32) RL(157); break;
00206$:
	ld	a, (_N1)
	sub	a, #0x20
	ret	nz
	ld	hl, #0x009d
	jp	_RL
;rooms.c:238: case 39: if (SetIn(NounSet, 32)) RL(158); break;
00209$:
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetIn
	or	a, a
	ret	z
	ld	hl, #0x009e
;rooms.c:241: }
;rooms.c:242: }
	jp	_RL
___str_4:
	.ascii "There is a "
	.db 0x00
___str_5:
	.ascii " sitting on the niche."
	.db 0x00
___str_6:
	.ascii "A small amount of serum drips onto the "
	.db 0x00
___str_7:
	.ascii " and "
	.db 0x00
___str_8:
	.ascii "dries up."
	.db 0x00
___str_9:
	.ascii "6"
	.db 0x00
___str_10:
	.ascii "The serum mixes with the "
	.db 0x00
___str_11:
	.ascii " inside the mug."
	.db 0x00
___str_12:
	.ascii "The serum drips on the "
	.db 0x00
___str_13:
	.ascii " inside the mug and"
	.db 0x00
___str_14:
	.ascii " quickly evaporates."
	.db 0x00
;rooms.c:244: void Room14(void)
;	---------------------------------
; Function Room14
; ---------------------------------
_Room14::
;rooms.c:246: switch (Prm) {
	ld	a, (_Prm)
	cp	a, #0x40
	jr	z, 00101$
	cp	a, #0x41
	jp	z, 00130$
	cp	a, #0x42
	jp	z, 00138$
	cp	a, #0x43
	jp	z, 00162$
	cp	a, #0x47
	jp	z, 00168$
	sub	a, #0x48
	jp	z, 00184$
	ret
;rooms.c:247: case 64:
00101$:
;rooms.c:248: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00103$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00105$
	cp	a, #0x0b
	jr	z, 00105$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x14
	jp	z, 00120$
	cp	a, #0x18
	jp	z, 00120$
	cp	a, #0x1c
	jr	z, 00106$
	cp	a, #0x1f
	jr	z, 00116$
	sub	a, #0x36
	jp	z, 00123$
	ret
;rooms.c:249: case 1: case 13: DOpen(99); RS(139); DEAD(); break;
00103$:
	ld	a, #0x63
	call	_DOpen
	ld	hl, #0x008b
	call	_RS
	jp	_DEAD
;rooms.c:250: case 2: case 11: Move(65); break;
00105$:
	ld	a, #0x41
	jp	_Move
;rooms.c:251: case 28:
00106$:
;rooms.c:252: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x23
	jr	z, 00107$
	cp	a, #0x31
	jr	z, 00109$
	cp	a, #0x48
	jr	z, 00111$
	cp	a, #0x51
	jr	z, 00112$
	cp	a, #0x56
	jr	z, 00113$
	cp	a, #0x74
	jr	z, 00111$
	cp	a, #0x7a
	jr	z, 00109$
	sub	a, #0x7f
	jr	z, 00114$
	ret
;rooms.c:253: case 35: RL(330); break;
00107$:
	ld	hl, #0x014a
	jp	_RL
;rooms.c:254: case 49: case 122: RL(334); break;
00109$:
	ld	hl, #0x014e
	jp	_RL
;rooms.c:255: case 72: case 116: Score(5, 90); RS(148); break;
00111$:
	ld	l, #0x5a
	ld	a, #0x05
	call	_Score
	ld	hl, #0x0094
	jp	_RS
;rooms.c:256: case 81: RB(5, 11); break;
00112$:
	ld	l, #0x0b
	ld	a, #0x05
	jp	_RB
;rooms.c:257: case 86: RL(333); break;
00113$:
	ld	hl, #0x014d
	jp	_RL
;rooms.c:258: case 127: RL(351); break;
00114$:
;rooms.c:260: break;
	ld	hl, #0x015f
	jp	_RL
;rooms.c:261: case 31: if (N1 == 81) RB(5, 11); break;
00116$:
	ld	a, (_N1)
	sub	a, #0x51
	ret	nz
	ld	l, #0x0b
	ld	a, #0x05
	jp	_RB
;rooms.c:262: case 20: case 24: if (N1 == 127) RS(142); break;
00120$:
	ld	a, (_N1)
	sub	a, #0x7f
	ret	nz
	ld	hl, #0x008e
	jp	_RS
;rooms.c:263: case 54:
00123$:
;rooms.c:264: if (N1 == 127) { if (Md == 3) { RL(537); DEAD(); } else RL(538); }
	ld	a, (_N1)
	sub	a, #0x7f
	ret	nz
	ld	a, (_Md)
	sub	a, #0x03
	jr	nz, 00125$
	ld	hl, #0x0219
	call	_RL
	jp	_DEAD
00125$:
;rooms.c:267: break;
	ld	hl, #0x021a
	jp	_RL
;rooms.c:268: case 65:
00130$:
;rooms.c:269: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00131$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00132$
	cp	a, #0x04
	jr	z, 00133$
	sub	a, #0x1c
	jr	z, 00134$
	ret
;rooms.c:270: case 1: Move(64); break;
00131$:
	ld	a, #0x40
	jp	_Move
;rooms.c:271: case 2: Move(66); break;
00132$:
	ld	a, #0x42
	jp	_Move
;rooms.c:272: case 4: Door(68, 20); break;
00133$:
	ld	l, #0x14
	ld	a, #0x44
	jp	_Door
;rooms.c:273: case 28: if (N1 == 56) RL(92); break;
00134$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
;rooms.c:275: break;
	ld	hl, #0x005c
	jp	_RL
;rooms.c:276: case 66:
00138$:
;rooms.c:277: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00139$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00140$
	cp	a, #0x03
	jr	z, 00141$
	cp	a, #0x04
	jr	z, 00145$
	cp	a, #0x1c
	jr	z, 00146$
	sub	a, #0x21
	jr	z, 00153$
	ret
;rooms.c:278: case 1: Move(65); break;
00139$:
	ld	a, #0x41
	jp	_Move
;rooms.c:279: case 2: Move(67); break;
00140$:
	ld	a, #0x43
	jp	_Move
;rooms.c:280: case 3: if (T[20] > 1) { Score(15, 91); Move(73); } else RL(92); break;
00141$:
	ld	hl, (#(_T + 40) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01030$
	xor	a, #0x80
01030$:
	jp	p, 00143$
	ld	l, #0x5b
	ld	a, #0x0f
	call	_Score
	ld	a, #0x49
	jp	_Move
00143$:
	ld	hl, #0x005c
	jp	_RL
;rooms.c:281: case 4: Move(72); break;
00145$:
	ld	a, #0x48
	jp	_Move
;rooms.c:282: case 28:
00146$:
;rooms.c:283: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00147$
	sub	a, #0x40
	jr	z, 00151$
	ret
;rooms.c:284: case 56: if (T[20] > 1) RL(370); else RL(92); break;
00147$:
	ld	hl, (#(_T + 40) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01033$
	xor	a, #0x80
01033$:
	jp	p, 00149$
	ld	hl, #0x0172
	jp	_RL
00149$:
	ld	hl, #0x005c
	jp	_RL
;rooms.c:285: case 64: RL(335); break;
00151$:
;rooms.c:287: break;
	ld	hl, #0x014f
	jp	_RL
;rooms.c:288: case 33:
00153$:
;rooms.c:289: if (N2 == 64) {
	ld	a, (_N2)
	sub	a, #0x40
	ret	nz
;rooms.c:290: if (Pr == 5) {
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;rooms.c:291: if (N1 == 12) { RL(336); T[20] = 3; DOpen(20); Score(5, 92); }
	ld	a, (_N1)
	sub	a, #0x0c
	jr	nz, 00155$
	ld	hl, #0x0150
	call	_RL
	ld	hl, #0x0003
	ld	((_T + 40)), hl
	ld	a, #0x14
	call	_DOpen
	ld	l, #0x5c
	ld	a, #0x05
	jp	_Score
00155$:
;rooms.c:292: else RL(137);
;rooms.c:297: break;
	ld	hl, #0x0089
	jp	_RL
;rooms.c:298: case 67:
00162$:
;rooms.c:299: switch (Vb) {
	ld	a, (_Vb)
	dec	a
	jr	z, 00163$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00165$
	cp	a, #0x04
	jr	z, 00166$
	sub	a, #0x0b
	jr	z, 00165$
	ret
;rooms.c:300: case 1: Move(66); break;
00163$:
	ld	a, #0x42
	jp	_Move
;rooms.c:301: case 2: case 11: Door(75, 5); break;
00165$:
	ld	l, #0x05
	ld	a, #0x4b
	jp	_Door
;rooms.c:302: case 4: Move(71); break;
00166$:
;rooms.c:304: break;
	ld	a, #0x47
	jp	_Move
;rooms.c:305: case 71:
00168$:
;rooms.c:306: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00169$
	cp	a, #0x1c
	jr	z, 00170$
	sub	a, #0x1f
	jr	z, 00177$
	ret
;rooms.c:307: case 3: Move(67); break;
00169$:
	ld	a, #0x43
	jp	_Move
;rooms.c:308: case 28:
00170$:
;rooms.c:309: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x3b
	jr	z, 00171$
	sub	a, #0x74
	jr	z, 00175$
	ret
;rooms.c:310: case 59: if (CodeSet == 4) RL(353); else RL(355); break;
00171$:
	ld	a, (_CodeSet)
	sub	a, #0x04
	jr	nz, 00173$
	ld	hl, #0x0161
	jp	_RL
00173$:
	ld	hl, #0x0163
	jp	_RL
;rooms.c:311: case 116: RL(354); break;
00175$:
;rooms.c:313: break;
	ld	hl, #0x0162
	jp	_RL
;rooms.c:314: case 31:
00177$:
;rooms.c:315: if (N1 == 59) { if (CodeSet == 4) { RB2(11, 14); Pause(); } else RL(355); }
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	a, (_CodeSet)
	sub	a, #0x04
	jr	nz, 00179$
	ld	l, #0x0e
	ld	a, #0x0b
	call	_RB2
	jp	_Pause
00179$:
;rooms.c:318: break;
	ld	hl, #0x0163
	jp	_RL
;rooms.c:319: case 72:
00184$:
;rooms.c:320: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00185$
	cp	a, #0x18
	jr	z, 00187$
	cp	a, #0x1c
	jr	z, 00187$
	cp	a, #0x21
	jp	z, 00203$
	cp	a, #0x29
	jp	z, 00221$
	cp	a, #0x2a
	jp	z, 00232$
	cp	a, #0x2c
	jp	z, 00232$
	sub	a, #0x35
	jp	z, 00228$
	ret
;rooms.c:321: case 3: Move(66); break;
00185$:
	ld	a, #0x42
	jp	_Move
;rooms.c:322: case 28: case 24:
00187$:
;rooms.c:323: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00190$
	cp	a, #0x26
	jr	z, 00190$
	cp	a, #0x2e
	jr	z, 00191$
	cp	a, #0x37
	jr	z, 00195$
	sub	a, #0x80
	ret	nz
;rooms.c:324: case 128: RL(560); break;
	ld	hl, #0x0230
	jp	_RL
;rooms.c:325: case 37: case 38: RL(339); break;
00190$:
	ld	hl, #0x0153
	jp	_RL
;rooms.c:326: case 46: if (Md != 0) { Score(5, 93); RL(343); } else RS(145); break;
00191$:
	ld	a, (_Md+0)
	or	a, a
	jr	z, 00193$
	ld	l, #0x5d
	ld	a, #0x05
	call	_Score
	ld	hl, #0x0157
	jp	_RL
00193$:
	ld	hl, #0x0091
	jp	_RS
;rooms.c:327: case 55:
00195$:
;rooms.c:328: if (En(46)) {
	ld	a, #0x2e
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00200$
;rooms.c:329: if (RobotCon != 0) { Wr("The robot's panel contains a "); Wr(FN(RobotCon)); Wr("."); Wln(); }
	ld	a, (_RobotCon+0)
	or	a, a
	jr	z, 00197$
	ld	hl, #___str_15
	call	_Wr
	ld	a, (_RobotCon)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_16
	call	_Wr
	jp	_Wln
00197$:
;rooms.c:330: else RL(346);
	ld	hl, #0x015a
	jp	_RL
00200$:
;rooms.c:331: } else RL(344);
;rooms.c:334: break;
	ld	hl, #0x0158
	jp	_RL
;rooms.c:335: case 33:
00203$:
;rooms.c:336: if (N2 == 55) {
	ld	a, (_N2)
	sub	a, #0x37
	ret	nz
;rooms.c:337: if (Pr == 5) {
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;rooms.c:338: if (En(46)) {
	ld	a, #0x2e
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00215$
;rooms.c:339: if (RobotCon == 0) {
	ld	a, (_RobotCon+0)
	or	a, a
	jr	nz, 00212$
;rooms.c:340: if (N1 == 3 || N1 == 4 || N1 == 8 || N1 == 12 || N1 == 17)
	ld	a, (_N1)
	cp	a, #0x03
	jr	z, 00204$
	cp	a, #0x04
	jr	z, 00204$
	cp	a, #0x08
	jr	z, 00204$
	cp	a, #0x0c
	jr	z, 00204$
	sub	a, #0x11
	jr	nz, 00205$
00204$:
;rooms.c:341: { Van(N1); RL(347); R[N1] = 72; RobotCon = N1; }
	ld	a, (_N1)
	call	_Van
	ld	hl, #0x015b
	call	_RL
	ld	hl, #_R
	ld	a, (_N1)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x48
	ld	a, (_N1+0)
	ld	(#_RobotCon), a
	ret
00205$:
;rooms.c:342: else RL(137);
	ld	hl, #0x0089
	jp	_RL
00212$:
;rooms.c:343: } else RL(348);
	ld	hl, #0x015c
	jp	_RL
00215$:
;rooms.c:344: } else RL(344);
;rooms.c:347: break;
	ld	hl, #0x0158
	jp	_RL
;rooms.c:348: case 41:
00221$:
;rooms.c:349: if (N1 == 55 || N1 == 46) {
	ld	a, (_N1)
	cp	a, #0x37
	jr	z, 00225$
	sub	a, #0x2e
	ret	nz
00225$:
;rooms.c:350: if (RobotCon == 0) RL(558);
	ld	a, (_RobotCon+0)
	or	a, a
	jr	nz, 00223$
	ld	hl, #0x022e
	jp	_RL
00223$:
;rooms.c:352: R[RobotCon] = 72; Add(46); Score(25, 94);
	ld	hl, #_R
	ld	a, (_RobotCon)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x48
	ld	a, #0x2e
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
	ld	l, #0x5e
	ld	a, #0x19
	call	_Score
;rooms.c:353: Wr("The panel slides open, revealing a "); Wr(FN(RobotCon)); Wr(" inside."); Wln();
	ld	hl, #___str_17
	call	_Wr
	ld	a, (_RobotCon)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_18
	call	_Wr
;rooms.c:356: break;
	jp	_Wln
;rooms.c:357: case 53: if (N1 == 55) { Van(RobotCon); Min(46); RL(344); } break;
00228$:
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
	ld	a, (_RobotCon)
	call	_Van
	ld	a, #0x2e
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
	ld	hl, #0x0158
	jp	_RL
;rooms.c:358: case 42: case 44:
00232$:
;rooms.c:359: switch (N1) {
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00235$
	cp	a, #0x26
	jr	z, 00235$
	cp	a, #0x2c
	jr	z, 00235$
	sub	a, #0x2e
	jr	z, 00236$
	ret
;rooms.c:360: case 37: case 38: case 44:
00235$:
;rooms.c:361: RL(340); Walls(9); Gotoxy(43, Wherey() - 1); Col(28, 31);
	ld	hl, #0x0154
	call	_RL
	ld	a, #0x09
	call	_Walls
	call	_Wherey
	ld	l, a
	dec	l
	ld	a, #0x2b
	call	_Gotoxy
	ld	l, #0x1f
	ld	a, #0x1c
	call	_Col
;rooms.c:362: Wr("BOOM!"); Wln(); Explode(32); DEAD(); break;
	ld	hl, #___str_19
	call	_Wr
	call	_Wln
	ld	a, #0x20
	call	_Explode
	jp	_DEAD
;rooms.c:363: case 46:
00236$:
;rooms.c:364: if (StrEq(VStr, "turn on") || StrEq(VStr, "activat") || StrEq(VStr, "turn off")) RL(341);
	ld	de, #___str_20
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00241$
	ld	de, #___str_21
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00241$
	ld	de, #___str_22
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00242$
00241$:
	ld	hl, #0x0155
	jp	_RL
00242$:
;rooms.c:365: else if (!En(94) && !En(93)) { RL(342); RL(559); }
	ld	a, #0x5e
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	nz, 00238$
	ld	a, #0x5d
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	nz, 00238$
	ld	hl, #0x0156
	call	_RL
	ld	hl, #0x022f
	jp	_RL
00238$:
;rooms.c:366: else RL(342);
	ld	hl, #0x0156
;rooms.c:372: }
;rooms.c:373: }
	jp	_RL
___str_15:
	.ascii "The robot's panel contains a "
	.db 0x00
___str_16:
	.ascii "."
	.db 0x00
___str_17:
	.ascii "The panel slides open, revealing a "
	.db 0x00
___str_18:
	.ascii " inside."
	.db 0x00
___str_19:
	.ascii "BOOM!"
	.db 0x00
___str_20:
	.ascii "turn on"
	.db 0x00
___str_21:
	.ascii "activat"
	.db 0x00
___str_22:
	.ascii "turn off"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
