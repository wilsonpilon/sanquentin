;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module parser
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Default1
	.globl _MoveTo
	.globl _Describe
	.globl _Dictionary
	.globl _Present
	.globl _FindMood
	.globl _ChopSeven
	.globl _LowerCase
	.globl _PreFormat
	.globl _StrCat
	.globl _StrCpy
	.globl _StrEq
	.globl _Col
	.globl _RR
	.globl _RS
	.globl _RL
	.globl _Wln
	.globl _Wr
	.globl _Copy
	.globl _Insert
	.globl _Delete
	.globl _Pos
	.globl _SetEmpty
	.globl _SetDel
	.globl _SetAdd
	.globl _SetIn
	.globl _FN
	.globl _Here
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_s_I:
	.ds 2
_FN_Temp_10000_85:
	.ds 30
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
;parser.c:9: static void QFormat(char* I)
;	---------------------------------
; Function QFormat
; ---------------------------------
_QFormat:
	ld	c, l
	ld	b, h
;parser.c:12: if (I[0] == '.' || I[0] == ' ') Delete(I, 1, 1);
	ld	a, (bc)
	cp	a, #0x2e
	jr	z, 00101$
	cp	a, #0x20
	jr	nz, 00120$
00101$:
	push	bc
	ld	hl, #0x101
	push	hl
	ld	l, c
	ld	h, b
	call	_Delete
	pop	bc
;parser.c:13: l = 0; while (I[l]) l++;
00120$:
	ld	e, #0x00
00104$:
	ld	l, e
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	z, 00123$
	inc	e
	jr	00104$
00123$:
	ld	d, e
;parser.c:14: if (l && (I[l - 1] == '.' || I[l - 1] == ' ')) Delete(I, l, 1);
	ld	a, e
	or	a, a
	ret	z
	dec	e
	ld	l, e
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	cp	a, #0x2e
	jr	z, 00107$
	cp	a, #0x20
	ret	nz
00107$:
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l, c
	ld	h, b
	call	_Delete
;parser.c:15: }
	ret
;parser.c:17: static void Spaces(char* I)
;	---------------------------------
; Function Spaces
; ---------------------------------
_Spaces:
	ex	de, hl
;parser.c:20: while (I[l]) l++;
	ld	c, #0x00
00101$:
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	z, 00103$
	inc	c
	jr	00101$
00103$:
;parser.c:21: Insert(" ", I, 1);
	push	bc
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_0
	call	_Insert
	pop	de
	pop	bc
;parser.c:22: I[l + 1] = ' '; I[l + 2] = 0;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	inc	hl
	add	hl, de
	ld	(hl), #0x20
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	add	hl, de
	ld	(hl), #0x00
;parser.c:23: }
	ret
___str_0:
	.ascii " "
	.db 0x00
;parser.c:25: static void D(const char* A, u8 B)
;	---------------------------------
; Function D
; ---------------------------------
_D:
;parser.c:28: while ((p = Pos(A, s_I)) != 0) Delete(s_I, p, B);
00101$:
	push	hl
	ld	de, (_s_I)
	call	_Pos
	pop	hl
	ld	b, a
	or	a, a
	jr	z, 00104$
	push	hl
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, (_s_I)
	call	_Delete
	pop	hl
	jr	00101$
00104$:
;parser.c:29: }
	pop	hl
	inc	sp
	jp	(hl)
;parser.c:31: static void Strip(const char* what, u8 off, u8 cnt)
;	---------------------------------
; Function Strip
; ---------------------------------
_Strip:
	ld	c, l
	ld	b, h
;parser.c:34: while ((p = Pos(what, s_I)) != 0) Delete(s_I, p + off, cnt);
00101$:
	push	bc
	ld	de, (_s_I)
	ld	l, c
	ld	h, b
	call	_Pos
	pop	bc
	ld	e, a
	or	a, a
	jr	z, 00104$
	ld	hl, #2
	add	hl, sp
	ld	a, e
	add	a, (hl)
	push	bc
	ld	iy, #5
	add	iy, sp
	ld	h, 0 (iy)
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, (_s_I)
	call	_Delete
	pop	bc
	jr	00101$
00104$:
;parser.c:35: }
	pop	hl
	pop	af
	jp	(hl)
;parser.c:37: void PreFormat(char* I)
;	---------------------------------
; Function PreFormat
; ---------------------------------
_PreFormat::
	push	ix
	ld	ix,	#0
	add	ix, sp
;parser.c:39: s_I = I;
	push	hl
	ld	(_s_I), hl
;parser.c:40: D("  ", 1); QFormat(I);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_1
	call	_D
	pop	hl
	push	hl
	call	_QFormat
;parser.c:41: FFlag = 0; if (I[0]) FFlag = 1;
	xor	a, a
	ld	(#_FFlag), a
	pop	hl
	push	hl
	ld	a, (hl)
	or	a, a
	jr	z, 00102$
	ld	hl, #_FFlag
	ld	(hl), #0x01
00102$:
;parser.c:42: Spaces(I);
	pop	hl
	push	hl
	call	_Spaces
;parser.c:43: Crawl = (Pos(" crawl ", I) > 0); D(" crawl ", 6);
	pop	de
	push	de
	ld	hl, #___str_2
	call	_Pos
	or	a, a
	ld	a, #0x01
	jr	nz, 00121$
	xor	a, a
00121$:
	ld	(#_Crawl), a
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #___str_2
	call	_D
;parser.c:44: D(" walk ", 5); D(" run ", 4); D(" go ", 3); D(" travel ", 7);
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #___str_3
	call	_D
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #___str_4
	call	_D
	ld	a, #0x03
	push	af
	inc	sp
	ld	hl, #___str_5
	call	_D
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #___str_6
	call	_D
;parser.c:45: QFormat(I); if (!I[0] && FFlag == 1) FFlag = 2; Spaces(I);
	pop	hl
	push	hl
	call	_QFormat
	pop	hl
	push	hl
	ld	a, (hl)
	or	a, a
	jr	nz, 00104$
	ld	a, (_FFlag)
	dec	a
	jr	nz, 00104$
	ld	hl, #_FFlag
	ld	(hl), #0x02
00104$:
	pop	hl
	push	hl
	call	_Spaces
;parser.c:46: D(" of ", 3); D(" the ", 4); D(" very ", 5); D(" more ", 5); D(" and ", 4);
	ld	a, #0x03
	push	af
	inc	sp
	ld	hl, #___str_7
	call	_D
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #___str_8
	call	_D
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #___str_9
	call	_D
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #___str_10
	call	_D
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #___str_11
	call	_D
;parser.c:47: D(" large ", 6); D(" big ", 4); D(" huge ", 5); D(" please ", 7);
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #___str_12
	call	_D
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #___str_13
	call	_D
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #___str_14
	call	_D
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #___str_15
	call	_D
;parser.c:48: D(" small ", 6); D(" little ", 7); D(" tiny ", 5);
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #___str_16
	call	_D
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #___str_17
	call	_D
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #___str_18
	call	_D
;parser.c:49: D("'", 1); D("#", 1); D("!", 1); D("?", 1); D(" number ", 7);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_19
	call	_D
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_20
	call	_D
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_21
	call	_D
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_22
	call	_D
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #___str_23
	call	_D
;parser.c:50: QFormat(I); if (!I[0] && FFlag == 1) FFlag = 3; Spaces(I);
	pop	hl
	push	hl
	call	_QFormat
	pop	hl
	push	hl
	ld	a, (hl)
	or	a, a
	jr	nz, 00107$
	ld	a, (_FFlag)
	dec	a
	jr	nz, 00107$
	ld	hl, #_FFlag
	ld	(hl), #0x03
00107$:
	pop	hl
	push	hl
	call	_Spaces
;parser.c:51: Strip("examine ", 2, 5);
	ld	hl, #0x502
	push	hl
	ld	hl, #___str_24
	call	_Strip
;parser.c:52: Strip(" into ", 3, 2);
	ld	hl, #0x203
	push	hl
	ld	hl, #___str_25
	call	_Strip
;parser.c:53: Strip(" onto ", 3, 2);
	ld	hl, #0x203
	push	hl
	ld	hl, #___str_26
	call	_Strip
;parser.c:54: Strip(" inside ", 3, 4);
	ld	hl, #0x403
	push	hl
	ld	hl, #___str_27
	call	_Strip
;parser.c:55: Strip(" within ", 1, 4);
	ld	hl, #0x401
	push	hl
	ld	hl, #___str_28
	call	_Strip
;parser.c:56: Strip("look ", 1, 3);
	ld	hl, #0x301
	push	hl
	ld	hl, #___str_29
	call	_Strip
;parser.c:57: Strip(". ", 1, 1);
	ld	hl, #0x101
	push	hl
	ld	hl, #___str_30
	call	_Strip
;parser.c:60: while ((p = Pos(",", I)) != 0) { Insert(" ", I, p); Delete(I, Pos(",", I), 1); }
00109$:
	pop	de
	push	de
	ld	hl, #___str_31
	call	_Pos
	ld	b, a
	or	a, a
	jr	z, 00111$
	push	bc
	inc	sp
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	hl, #___str_32
	call	_Insert
	pop	de
	push	de
	ld	hl, #___str_31
	call	_Pos
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	pop	de
	pop	hl
	push	hl
	push	de
	call	_Delete
	jr	00109$
00111$:
;parser.c:62: D("..", 1); D(" .", 1); D("  ", 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_33
	call	_D
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_34
	call	_D
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_1
	call	_D
;parser.c:63: QFormat(I);
	pop	hl
	push	hl
	call	_QFormat
;parser.c:64: if (!I[0]) {
	pop	hl
	push	hl
	ld	a, (hl)
;parser.c:65: EFlag = 0;
	or	a,a
	jr	nz, 00118$
	ld	(#_EFlag), a
;parser.c:66: switch (FFlag) {
	ld	a, (_FFlag)
	cp	a, #0x02
	jr	z, 00112$
	sub	a, #0x03
	jr	z, 00113$
	jr	00114$
;parser.c:67: case 2: RL(193); break;
00112$:
	ld	hl, #0x00c1
	call	_RL
	jr	00118$
;parser.c:68: case 3: RL(186); break;
00113$:
	ld	hl, #0x00ba
	call	_RL
	jr	00118$
;parser.c:69: default: Wr("Pardon me?"); Wln();
00114$:
	ld	hl, #___str_35
	call	_Wr
	call	_Wln
;parser.c:70: }
00118$:
;parser.c:72: }
	pop	af
	pop	ix
	ret
___str_1:
	.ascii "  "
	.db 0x00
___str_2:
	.ascii " crawl "
	.db 0x00
___str_3:
	.ascii " walk "
	.db 0x00
___str_4:
	.ascii " run "
	.db 0x00
___str_5:
	.ascii " go "
	.db 0x00
___str_6:
	.ascii " travel "
	.db 0x00
___str_7:
	.ascii " of "
	.db 0x00
___str_8:
	.ascii " the "
	.db 0x00
___str_9:
	.ascii " very "
	.db 0x00
___str_10:
	.ascii " more "
	.db 0x00
___str_11:
	.ascii " and "
	.db 0x00
___str_12:
	.ascii " large "
	.db 0x00
___str_13:
	.ascii " big "
	.db 0x00
___str_14:
	.ascii " huge "
	.db 0x00
___str_15:
	.ascii " please "
	.db 0x00
___str_16:
	.ascii " small "
	.db 0x00
___str_17:
	.ascii " little "
	.db 0x00
___str_18:
	.ascii " tiny "
	.db 0x00
___str_19:
	.ascii "'"
	.db 0x00
___str_20:
	.ascii "#"
	.db 0x00
___str_21:
	.ascii "!"
	.db 0x00
___str_22:
	.ascii "?"
	.db 0x00
___str_23:
	.ascii " number "
	.db 0x00
___str_24:
	.ascii "examine "
	.db 0x00
___str_25:
	.ascii " into "
	.db 0x00
___str_26:
	.ascii " onto "
	.db 0x00
___str_27:
	.ascii " inside "
	.db 0x00
___str_28:
	.ascii " within "
	.db 0x00
___str_29:
	.ascii "look "
	.db 0x00
___str_30:
	.ascii ". "
	.db 0x00
___str_31:
	.ascii ","
	.db 0x00
___str_32:
	.ascii " "
	.db 0x00
___str_33:
	.ascii ".."
	.db 0x00
___str_34:
	.ascii " ."
	.db 0x00
___str_35:
	.ascii "Pardon me?"
	.db 0x00
;parser.c:74: void LowerCase(char* I)
;	---------------------------------
; Function LowerCase
; ---------------------------------
_LowerCase::
	ld	b, l
	ld	c, h
;parser.c:76: for (x = 0; I[x]; x++)
	xor	a, a
	ld	(#_x), a
00106$:
	ld	a, b
	ld	hl, #_x
	add	a, (hl)
	ld	e, a
	ld	a, c
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	or	a, a
	ret	z
;parser.c:77: if (I[x] >= 'A' && I[x] <= 'Z') I[x] += 32;
	cp	a, #0x41
	jr	c, 00107$
	cp	a, #0x5b
	jr	nc, 00107$
	add	a, #0x20
	ld	(de), a
00107$:
;parser.c:76: for (x = 0; I[x]; x++)
	ld	hl, #_x
	inc	(hl)
;parser.c:78: }
	jr	00106$
;parser.c:80: void ChopSeven(char* I)
;	---------------------------------
; Function ChopSeven
; ---------------------------------
_ChopSeven::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-133
	add	iy, sp
	ld	sp, iy
	ld	c, l
	ld	b, h
;parser.c:84: if (!I[0]) return;
	ld	a, (bc)
	or	a, a
;parser.c:85: l = 0; while (I[l]) l++;
	jp	z, 00119$
	ld	e, #0x00
00103$:
	ld	l, e
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	z, 00105$
	inc	e
	jr	00103$
00105$:
;parser.c:86: I[l] = ' '; I[l + 1] = 0;
	ld	(hl), #0x20
	ld	d, #0x00
	ex	de, hl
	inc	hl
	add	hl, bc
	ld	(hl), #0x00
;parser.c:87: x = 1;
	ld	hl, #_x
	ld	(hl), #0x01
;parser.c:88: do {
;parser.c:90: while (I[x - 1] != ' ' && I[x - 1] != '.' && I[x - 1] != ',') { W[k++] = I[x - 1]; x++; }
00139$:
	ld	-1 (ix), #0x00
00108$:
	ld	a, (_x)
	ld	h, #0x00
	ld	l, a
	dec	hl
	add	hl, bc
	ld	e, (hl)
	ld	a, e
	cp	a, #0x20
	jr	z, 00110$
	cp	a, #0x2e
	jr	z, 00110$
	sub	a, #0x2c
	jr	z, 00110$
	push	de
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	pop	de
	ld	d, l
	ld	a, h
	inc	-1 (ix)
	ld	l, d
	ld	h, a
	ld	(hl), e
	ld	hl, #_x
	inc	(hl)
	jr	00108$
00110$:
;parser.c:91: W[k] = 0;
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	(hl), #0x00
;parser.c:92: if (k > 7) {
	ld	a, #0x07
	sub	a, -1 (ix)
	jr	nc, 00112$
;parser.c:93: y = Pos(W, I); x = x + (7 - k);
	push	bc
	ld	e, c
	ld	d, b
	ld	hl, #2
	add	hl, sp
	call	_Pos
	pop	bc
	ld	(#_y), a
	ld	e, -1 (ix)
	ld	a, #0x07
	sub	a, e
	ld	e, a
	ld	a, (_x)
	add	a, e
	ld	(#_x), a
;parser.c:94: Delete(I, y, k); Delete(W, 8, 130);
	push	bc
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	a, (_y)
	push	af
	inc	sp
	ld	l, c
	ld	h, b
	call	_Delete
	ld	hl, #0x8208
	push	hl
	ld	hl, #4
	add	hl, sp
	call	_Delete
	pop	bc
;parser.c:95: Insert(W, I, y);
	push	bc
	ld	a, (_y)
	push	af
	inc	sp
	ld	e, c
	ld	d, b
	ld	hl, #3
	add	hl, sp
	call	_Insert
	pop	bc
00112$:
;parser.c:97: x++;
	ld	hl, #_x
	inc	(hl)
;parser.c:98: l = 0; while (I[l]) l++;
	ld	d, #0x00
00113$:
	ld	l, d
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	z, 00117$
	inc	d
	jr	00113$
00117$:
;parser.c:99: } while ((u8)(x - 1) != l);
	ld	a, (_x)
	dec	a
	sub	a, d
	jp	nz, 00139$
;parser.c:100: Delete(I, l, 1);
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l, c
	ld	h, b
	call	_Delete
00119$:
;parser.c:101: }
	ld	sp, ix
	pop	ix
	ret
;parser.c:103: void FindMood(char* input, char* word, u8* md)
;	---------------------------------
; Function FindMood
; ---------------------------------
_FindMood::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-127
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;parser.c:107: Spaces(input); x = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Spaces
	xor	a, a
	ld	(#_x), a
;parser.c:108: while (x < 4) {
00108$:
	ld	a, (_x+0)
	sub	a, #0x04
	jp	nc, 00110$
;parser.c:109: x++;
	ld	hl, #_x
	inc	(hl)
;parser.c:110: counter = '1';
	ld	-1 (ix), #0x31
;parser.c:111: StrCpy(Temp1, Aa[x]);
	ld	a, (#_x + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	(sp), hl
	ld	a, #<(_Aa)
	add	a, -127 (ix)
	ld	-7 (ix), a
	ld	a, #>(_Aa)
	adc	a, -126 (ix)
	ld	-6 (ix), a
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #2
	add	hl, sp
	call	_StrCpy
;parser.c:112: while (Pos(&counter, Temp1) > 0) {   // (single-char string; simplification)
00105$:
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #126
	add	hl, sp
	call	_Pos
	or	a, a
	jr	z, 00108$
;parser.c:113: Copy(Temp2, Temp1, 1, Pos(&counter, Temp1) - 1);
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #126
	add	hl, sp
	call	_Pos
	dec	a
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	hl, #58
	add	hl, sp
	call	_Copy
;parser.c:114: tmp[0] = ' '; tmp[1] = 0; StrCat(tmp, Temp2); StrCat(tmp, " ");
	ld	hl, #86
	add	hl, sp
	ld	(hl), #0x20
	ld	-40 (ix), #0x00
	ex	de, hl
	push	de
	ld	hl, #58
	add	hl, sp
	ex	de, hl
	call	_StrCat
	pop	hl
	push	hl
	ld	de, #___str_36
	call	_StrCat
	pop	hl
;parser.c:115: if (Pos(tmp, input) > 0) {
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	call	_Pos
	or	a, a
	jr	z, 00104$
;parser.c:116: StrCpy(word, Temp2);
	ld	hl, #56
	add	hl, sp
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	call	_StrCpy
;parser.c:117: *md = x; if (*md == 2) *md = 1;
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_x)
	ld	(hl), a
	ld	a, (_x)
	cp	a, #0x02
	jr	nz, 00102$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x01
00102$:
;parser.c:118: x = 4; counter = '8';
	ld	hl, #_x
	ld	(hl), #0x04
	ld	-1 (ix), #0x38
;parser.c:119: Delete(input, Pos(Temp2, input), 1 + 0);
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #56
	add	hl, sp
	call	_Pos
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Delete
00104$:
;parser.c:121: Delete(Temp1, 1, Pos(&counter, Temp1));
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #126
	add	hl, sp
	call	_Pos
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #4
	add	hl, sp
	call	_Delete
;parser.c:122: counter++;
	inc	-1 (ix)
	jp	00105$
00110$:
;parser.c:125: QFormat(input);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_QFormat
;parser.c:126: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
___str_36:
	.ascii " "
	.db 0x00
;parser.c:128: const char* FN(u8 vnp)
;	---------------------------------
; Function FN
; ---------------------------------
_FN::
	ld	e, a
;parser.c:131: SFlag = 1;
	ld	hl, #_SFlag
	ld	(hl), #0x01
;parser.c:132: Copy(Temp, Nn[vnp], 1, Pos("\\", Nn[vnp]) - 1);
	ld	bc, #_Nn+0
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ex	de, hl
	push	de
	ld	hl, #___str_37
	call	_Pos
	pop	de
	dec	a
	ld	b, a
	ld	c, #0x01
	push	bc
	ld	hl, #_FN_Temp_10000_85
	call	_Copy
;parser.c:133: return Temp;
	ld	de, #_FN_Temp_10000_85
;parser.c:134: }
	ret
___str_37:
	.db 0x5c
	.db 0x00
;parser.c:136: u8 Here(u8 obj)
;	---------------------------------
; Function Here
; ---------------------------------
_Here::
	ld	b, a
;parser.c:138: u8 r = 0;
	ld	c, #0x00
;parser.c:139: if (SetIn(L[Prm], obj)) r = 1;
	ld	a, (#_Prm + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_L
	add	hl, de
	push	bc
	push	bc
	inc	sp
	call	_SetIn
	pop	bc
	or	a, a
	jr	z, 00102$
	ld	c, #0x01
00102$:
;parser.c:140: if (obj == 79 && MugCon == 79 && SetIn(Inv, 29)) r = 1;
	ld	a, b
	sub	a, #0x4f
	jr	nz, 00104$
	ld	a, (_MugCon)
	sub	a, #0x4f
	jr	nz, 00104$
	push	bc
	ld	a, #0x1d
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	pop	bc
	or	a, a
	jr	z, 00104$
	ld	c, #0x01
00104$:
;parser.c:141: if (obj <= MMax) if (R[obj] == Prm || SetIn(Inv, obj)) r = 1;
	ld	a, #0x1d
	sub	a, b
	jr	c, 00111$
	ld	de, #_R+0
	ld	l, b
	ld	h, #0x00
	add	hl, de
	ld	a, (_Prm)
	sub	a, (hl)
	jr	z, 00107$
	push	bc
	push	bc
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	pop	bc
	or	a, a
	jr	z, 00111$
00107$:
	ld	c, #0x01
00111$:
;parser.c:142: if (obj == 58 && (SetIn(Inv, 3) || SetIn(Inv, 4) || R[4] == Prm || R[3] == Prm)) r = 1;
	ld	a, b
	sub	a, #0x3a
	jr	nz, 00113$
	ld	hl, #_Inv+0
	push	hl
	push	bc
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetIn
	pop	bc
	pop	hl
	or	a, a
	jr	nz, 00112$
	push	bc
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetIn
	pop	bc
	or	a, a
	jr	nz, 00112$
	ld	hl, #_R + 4
	ld	a, (_Prm)
	sub	a, (hl)
	jr	z, 00112$
	ld	hl, #_R + 3
	ld	a, (_Prm)
	sub	a, (hl)
	jr	nz, 00113$
00112$:
	ld	c, #0x01
00113$:
;parser.c:143: return r;
	ld	a, c
;parser.c:144: }
	ret
;parser.c:146: u8 Present(void)
;	---------------------------------
; Function Present
; ---------------------------------
_Present::
;parser.c:148: x = 0;
	xor	a, a
	ld	(#_x), a
;parser.c:149: if (!(Vb == 17 || Vb == 18 || Vb == 37 || Vb == 39)) {
	ld	a, (_Vb)
	cp	a, #0x11
	jr	z, 00117$
	cp	a, #0x12
	jr	z, 00117$
	cp	a, #0x25
	jr	z, 00117$
	sub	a, #0x27
	jr	z, 00117$
;parser.c:150: if (N1 != 0) {
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00110$
;parser.c:151: if (Here(N1)) {
	ld	a, (_N1)
	call	_Here
	or	a, a
	jr	z, 00107$
;parser.c:152: if (N2 != 0) {
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00104$
;parser.c:153: if (Here(N2)) return 1;
	ld	a, (_N2)
	call	_Here
	or	a, a
	jr	z, 00102$
	ld	a, #0x01
	ret
00102$:
;parser.c:154: Wr("You can't see any "); Wr(FN(N2)); Wr(" here."); Wln();
	ld	hl, #___str_38
	call	_Wr
	ld	a, (_N2)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_39
	call	_Wr
	call	_Wln
	jr	00118$
00104$:
;parser.c:155: } else return 1;
	ld	a, #0x01
	ret
00107$:
;parser.c:156: } else { Wr("You can't see any "); Wr(FN(N1)); Wr(" here."); Wln(); }
	ld	hl, #___str_38
	call	_Wr
	ld	a, (_N1)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_39
	call	_Wr
	call	_Wln
	jr	00118$
00110$:
;parser.c:157: } else return 1;
	ld	a, #0x01
	ret
00117$:
;parser.c:159: for (x = 1; x <= NMax; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00122$:
;parser.c:160: if (SetIn(NounSet, x) && !Here(x)) {
	ld	a, (_x)
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetIn
	or	a, a
	jr	z, 00123$
	ld	a, (_x)
	call	_Here
	or	a, a
	jr	nz, 00123$
;parser.c:161: Wr("You can't see any "); Wr(FN(x)); Wr(" here."); Wln();
	ld	hl, #___str_38
	call	_Wr
	ld	a, (_x)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_39
	call	_Wr
	call	_Wln
;parser.c:162: return 0;
	xor	a, a
	ret
00123$:
;parser.c:159: for (x = 1; x <= NMax; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x85
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00122$
;parser.c:164: return 1;
	ld	a, #0x01
	ret
00118$:
;parser.c:166: return 0;
	xor	a, a
;parser.c:167: }
	ret
___str_38:
	.ascii "You can't see any "
	.db 0x00
___str_39:
	.ascii " here."
	.db 0x00
;parser.c:169: static void Convert(u8* n, u8 Max)
;	---------------------------------
; Function Convert
; ---------------------------------
_Convert:
;parser.c:171: switch (Max) {
	push	iy
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
	dec	a
	jr	z, 00101$
	push	iy
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
	sub	a, #0x02
	jp	z, 00121$
	push	iy
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	pop	iy
	sub	a, #0x03
	jp	z, 00163$
	jp	00169$
;parser.c:172: case 1:
00101$:
;parser.c:173: switch (*n) {
	ld	a, (de)
	cp	a, #0x0c
	jr	z, 00102$
	cp	a, #0x0e
	jr	z, 00103$
	cp	a, #0x17
	jr	z, 00104$
	cp	a, #0x1b
	jr	z, 00105$
	cp	a, #0x1d
	jr	z, 00106$
	cp	a, #0x22
	jr	z, 00107$
	cp	a, #0x24
	jr	z, 00108$
	cp	a, #0x26
	jr	z, 00109$
	cp	a, #0x28
	jr	z, 00110$
	cp	a, #0x2b
	jr	z, 00111$
	cp	a, #0x2d
	jr	z, 00112$
	cp	a, #0x34
	jr	z, 00113$
	cp	a, #0x37
	jr	z, 00114$
	cp	a, #0x39
	jr	z, 00116$
	cp	a, #0x3a
	jr	z, 00116$
	cp	a, #0x3c
	jr	z, 00118$
	cp	a, #0x3d
	jr	z, 00118$
	cp	a, #0x3f
	jr	z, 00119$
	jp	00169$
;parser.c:174: case 12: *n = 11; break; case 14: *n = 13; break; case 23: *n = 22; break; case 27: *n = 26; break;
00102$:
	ld	a, #0x0b
	ld	(de), a
	jp	00169$
00103$:
	ld	a, #0x0d
	ld	(de), a
	jp	00169$
00104$:
	ld	a, #0x16
	ld	(de), a
	jp	00169$
00105$:
	ld	a, #0x1a
	ld	(de), a
	jp	00169$
;parser.c:175: case 29: *n = 28; break; case 34: *n = 33; break; case 36: *n = 35; break; case 38: *n = 37; break;
00106$:
	ld	a, #0x1c
	ld	(de), a
	jp	00169$
00107$:
	ld	a, #0x21
	ld	(de), a
	jp	00169$
00108$:
	ld	a, #0x23
	ld	(de), a
	jp	00169$
00109$:
	ld	a, #0x25
	ld	(de), a
	jp	00169$
;parser.c:176: case 40: *n = 39; break; case 43: *n = 42; break; case 45: *n = 44; break;
00110$:
	ld	a, #0x27
	ld	(de), a
	jp	00169$
00111$:
	ld	a, #0x2a
	ld	(de), a
	jp	00169$
00112$:
	ld	a, #0x2c
	ld	(de), a
	jp	00169$
;parser.c:177: case 52: *n = 51; break; case 55: *n = 54; break; case 57: case 58: *n = 56; break;
00113$:
	ld	a, #0x33
	ld	(de), a
	jp	00169$
00114$:
	ld	a, #0x36
	ld	(de), a
	jp	00169$
00116$:
	ld	a, #0x38
	ld	(de), a
	jp	00169$
;parser.c:178: case 60: case 61: *n = 59; break; case 63: *n = 62; break;
00118$:
	ld	a, #0x3b
	ld	(de), a
	jp	00169$
00119$:
	ld	a, #0x3e
	ld	(de), a
;parser.c:180: break;
	jp	00169$
;parser.c:181: case 2:
00121$:
;parser.c:182: switch (*n) {
	ld	a, (de)
	cp	a, #0x0d
	jp	z, 00124$
	cp	a, #0x0e
	jp	z, 00124$
	cp	a, #0x0f
	jp	z, 00124$
	cp	a, #0x15
	jp	z, 00125$
	cp	a, #0x1b
	jp	z, 00143$
	cp	a, #0x1f
	jp	z, 00151$
	cp	a, #0x21
	jp	z, 00126$
	cp	a, #0x24
	jp	z, 00127$
	cp	a, #0x27
	jp	z, 00128$
	cp	a, #0x2d
	jp	z, 00129$
	cp	a, #0x32
	jp	z, 00130$
	cp	a, #0x35
	jp	z, 00131$
	cp	a, #0x39
	jp	z, 00144$
	cp	a, #0x3a
	jp	z, 00159$
	cp	a, #0x3d
	jp	z, 00145$
	cp	a, #0x3f
	jp	z, 00142$
	cp	a, #0x41
	jp	z, 00132$
	cp	a, #0x43
	jp	z, 00133$
	cp	a, #0x46
	jp	z, 00134$
	cp	a, #0x4c
	jp	z, 00136$
	cp	a, #0x4d
	jp	z, 00136$
	cp	a, #0x54
	jp	z, 00153$
	cp	a, #0x5b
	jp	z, 00146$
	cp	a, #0x61
	jr	z, 00137$
	cp	a, #0x65
	jr	z, 00139$
	cp	a, #0x66
	jr	z, 00139$
	cp	a, #0x69
	jp	z, 00150$
	cp	a, #0x6a
	jp	z, 00150$
	cp	a, #0x6b
	jp	z, 00150$
	cp	a, #0x6c
	jp	z, 00150$
	cp	a, #0x72
	jr	z, 00140$
	cp	a, #0x73
	jp	z, 00156$
	cp	a, #0x75
	jr	z, 00141$
	cp	a, #0x85
	jp	z, 00152$
	jp	00169$
;parser.c:183: case 13: case 14: case 15: *n = 12; break; case 21: *n = 20; break; case 33: *n = 32; break;
00124$:
	ld	a, #0x0c
	ld	(de), a
	jp	00169$
00125$:
	ld	a, #0x14
	ld	(de), a
	jp	00169$
00126$:
	ld	a, #0x20
	ld	(de), a
	jp	00169$
;parser.c:184: case 36: *n = 35; break; case 39: *n = 38; break; case 45: *n = 44; break;
00127$:
	ld	a, #0x23
	ld	(de), a
	jp	00169$
00128$:
	ld	a, #0x26
	ld	(de), a
	jp	00169$
00129$:
	ld	a, #0x2c
	ld	(de), a
	jp	00169$
;parser.c:185: case 50: *n = 49; break; case 53: *n = 52; break; case 65: *n = 64; break;
00130$:
	ld	a, #0x31
	ld	(de), a
	jp	00169$
00131$:
	ld	a, #0x34
	ld	(de), a
	jp	00169$
00132$:
	ld	a, #0x40
	ld	(de), a
	jp	00169$
;parser.c:186: case 67: *n = 66; break; case 70: *n = 69; break; case 76: case 77: *n = 75; break;
00133$:
	ld	a, #0x42
	ld	(de), a
	jp	00169$
00134$:
	ld	a, #0x45
	ld	(de), a
	jp	00169$
00136$:
	ld	a, #0x4b
	ld	(de), a
	jp	00169$
;parser.c:187: case 97: *n = 96; break; case 101: case 102: *n = 100; break; case 114: *n = 113; break;
00137$:
	ld	a, #0x60
	ld	(de), a
	jr	00169$
00139$:
	ld	a, #0x64
	ld	(de), a
	jr	00169$
00140$:
	ld	a, #0x71
	ld	(de), a
	jr	00169$
;parser.c:188: case 117: *n = 116; break; case 63: *n = 62; break;
00141$:
	ld	a, #0x74
	ld	(de), a
	jr	00169$
00142$:
	ld	a, #0x3e
	ld	(de), a
	jr	00169$
;parser.c:189: case 27: *n = 26; break; case 57: *n = 56; break; case 61: *n = 60; break;
00143$:
	ld	a, #0x1a
	ld	(de), a
	jr	00169$
00144$:
	ld	a, #0x38
	ld	(de), a
	jr	00169$
00145$:
	ld	a, #0x3c
	ld	(de), a
	jr	00169$
;parser.c:190: case 91: *n = 90; break; case 105: case 106: case 107: case 108: *n = 109; break; case 31: *n = 28; break;
00146$:
	ld	a, #0x5a
	ld	(de), a
	jr	00169$
00150$:
	ld	a, #0x6d
	ld	(de), a
	jr	00169$
00151$:
	ld	a, #0x1c
	ld	(de), a
	jr	00169$
;parser.c:191: case 133: *n = 46; break; case 84: if (Prm > 21) *n = 128; break;
00152$:
	ld	a, #0x2e
	ld	(de), a
	jr	00169$
00153$:
	ld	a, #0x15
	ld	iy, #_Prm
	sub	a, 0 (iy)
	jr	nc, 00169$
	ld	a, #0x80
	ld	(de), a
	jr	00169$
;parser.c:192: case 115: if (Prm == 28) *n = 112; break;
00156$:
	ld	a, (_Prm)
	sub	a, #0x1c
	jr	nz, 00169$
	ld	a, #0x70
	ld	(de), a
	jr	00169$
;parser.c:193: case 58: if (Prm == 52) *n = 64; break;
00159$:
	ld	a, (_Prm)
	sub	a, #0x34
	jr	nz, 00169$
	ld	a, #0x40
	ld	(de), a
;parser.c:195: break;
	jr	00169$
;parser.c:196: case 3:
00163$:
;parser.c:197: switch (*n) { case 2: *n = 1; break; case 4: *n = 3; break; case 8: *n = 7; break; }
	ld	a, (de)
	cp	a, #0x02
	jr	z, 00164$
	cp	a, #0x04
	jr	z, 00165$
	cp	a, #0x08
	jr	z, 00166$
	jr	00169$
00164$:
	ld	a, #0x01
	ld	(de), a
	jr	00169$
00165$:
	ld	a, #0x03
	ld	(de), a
	jr	00169$
00166$:
	ld	a, #0x07
	ld	(de), a
;parser.c:199: }
00169$:
;parser.c:200: }
	pop	hl
	inc	sp
	jp	(hl)
;parser.c:202: static void FindWord(char* I, u8* vnp, char* word, u8 Max)
;	---------------------------------
; Function FindWord
; ---------------------------------
_FindWord:
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-142
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;parser.c:206: QFormat(I); Spaces(I); j = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_QFormat
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Spaces
	ld	-1 (ix), #0x00
;parser.c:207: while (j < Mx[Max]) {
	ld	a, 6 (ix)
	dec	a
	ld	a, #0x01
	jr	z, 00201$
	xor	a, a
00201$:
	ld	-14 (ix), a
	ld	a, 6 (ix)
	sub	a, #0x02
	ld	a, #0x01
	jr	z, 00203$
	xor	a, a
00203$:
	ld	-13 (ix), a
	ld	a, 6 (ix)
	sub	a, #0x03
	ld	a, #0x01
	jr	z, 00205$
	xor	a, a
00205$:
	ld	-12 (ix), a
	ld	a, #<(_Mx)
	add	a, 6 (ix)
	ld	-11 (ix), a
	ld	a, #>(_Mx)
	adc	a, #0x00
	ld	-10 (ix), a
00115$:
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a,-1 (ix)
	sub	a,(hl)
	jp	nc, 00117$
;parser.c:208: j++;
	inc	-1 (ix)
;parser.c:209: switch (Max) { case 1: StrCpy(Temp1, Vb_[j]); break; case 2: StrCpy(Temp1, Nn[j]); break; case 3: StrCpy(Temp1, Pp[j]); break; }
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -14 (ix)
	or	a, a
	jr	nz, 00101$
	ld	a, -13 (ix)
	or	a, a
	jr	nz, 00102$
	ld	a, -12 (ix)
	or	a, a
	jr	nz, 00103$
	jr	00104$
00101$:
	ld	a, #<(_Vb_)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #>(_Vb_)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #0
	add	hl, sp
	call	_StrCpy
	jr	00104$
00102$:
	ld	a, #<(_Nn)
	add	a, -9 (ix)
	ld	e, a
	ld	a, #>(_Nn)
	adc	a, -8 (ix)
	ld	d, a
	ld	hl, #0
	add	hl, sp
	call	_StrCpy
	jr	00104$
00103$:
	ld	a, #<(_Pp)
	add	a, -9 (ix)
	ld	e, a
	ld	a, #>(_Pp)
	adc	a, -8 (ix)
	ld	d, a
	ld	hl, #0
	add	hl, sp
	call	_StrCpy
00104$:
;parser.c:210: ps = Pos("\\", Temp1);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_40
	call	_Pos
	ld	b, a
;parser.c:211: while (ps > 0) {
00112$:
	ld	a, b
	or	a, a
	jp	z, 00115$
;parser.c:212: Copy(Temp2, Temp1, 1, ps - 1);
	ld	c, b
	ld	a, c
	dec	a
	push	bc
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	hl, #34
	add	hl, sp
	call	_Copy
	pop	bc
;parser.c:213: tmp[0] = ' '; tmp[1] = 0; StrCat(tmp, Temp2); StrCat(tmp, " ");
	ld	hl, #60
	add	hl, sp
	ld	(hl), #0x20
	ld	-81 (ix), #0x00
	push	hl
	push	bc
	ex	de, hl
	ld	hl, #34
	add	hl, sp
	ex	de, hl
	call	_StrCat
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de, #___str_41
	call	_StrCat
	pop	bc
	pop	hl
;parser.c:216: Copy(cmp, I, 1, ps + 1);
	ld	a, c
	inc	a
	push	hl
	push	bc
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #100
	add	hl, sp
	call	_Copy
	pop	bc
	pop	hl
;parser.c:217: if (StrEq(cmp, tmp)) {
	push	bc
	ex	de, hl
	ld	hl, #96
	add	hl, sp
	call	_StrEq
	pop	bc
	or	a, a
	jr	z, 00111$
;parser.c:218: *vnp = j;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
;parser.c:219: Convert(vnp, Max);
	push	bc
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	call	_Convert
;parser.c:220: StrCpy(word, Temp2);
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	call	_StrCpy
	pop	bc
;parser.c:221: Delete(I, 1, ps);
	push	bc
	ld	c, #0x01
	push	bc
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Delete
	pop	bc
;parser.c:222: if (Max == 1) StrCpy(VStr, word); else if (Max == 2) StrCpy(NStr, word);
	ld	a, -14 (ix)
	or	a, a
	jr	z, 00108$
	push	bc
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #_VStr
	call	_StrCpy
	pop	bc
	jr	00109$
00108$:
	ld	a, -13 (ix)
	or	a, a
	jr	z, 00109$
	push	bc
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #_NStr
	call	_StrCpy
	pop	bc
00109$:
;parser.c:223: j = Mx[Max];
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
;parser.c:224: StrCpy(Temp1, "X");
	push	bc
	ld	de, #___str_42
	ld	hl, #2
	add	hl, sp
	call	_StrCpy
	pop	bc
00111$:
;parser.c:227: Delete(Temp1, 1, ps);
	ld	c, #0x01
	push	bc
	ld	hl, #2
	add	hl, sp
	call	_Delete
;parser.c:228: ps = Pos("\\", Temp1);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_40
	call	_Pos
	ld	b, a
	jp	00112$
00117$:
;parser.c:231: QFormat(I);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_QFormat
;parser.c:232: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
___str_40:
	.db 0x5c
	.db 0x00
___str_41:
	.ascii " "
	.db 0x00
___str_42:
	.ascii "X"
	.db 0x00
;parser.c:234: void Dictionary(u8 ifFound, u8 skipList)
;	---------------------------------
; Function Dictionary
; ---------------------------------
_Dictionary::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-41
	add	iy, sp
	ld	sp, iy
	ld	-1 (ix), a
	ld	c, l
;parser.c:236: u8 stop = 1;
	ld	b, #0x01
;parser.c:237: VNP = 0; list = 1;
	xor	a, a
	ld	(#_VNP), a
	ld	hl, #_list
	ld	(hl), #0x01
;parser.c:238: while (list < 4 && stop == 1) {
00107$:
	ld	a, (_list+0)
	sub	a, #0x04
	jr	nc, 00109$
	ld	a, b
	dec	a
	jr	nz, 00109$
;parser.c:239: if (list == skipList) list++;
	ld	a, (_list)
	sub	a, c
	jr	nz, 00104$
	ld	hl, #_list
	inc	(hl)
	jr	00107$
00104$:
;parser.c:241: FindWord(Input, &VNP, Word, list);
	ld	de, #_VNP
	push	bc
	ld	a, (_list)
	push	af
	inc	sp
	ld	hl, #_Word
	push	hl
	ld	hl, #_Input
	call	_FindWord
	pop	bc
;parser.c:242: if (VNP != 0) { EFlag = ifFound; list--; stop = 0; }
	ld	a, (_VNP+0)
	or	a, a
	jr	z, 00102$
	ld	a, -1 (ix)
	ld	(#_EFlag), a
	ld	hl, #_list
	dec	(hl)
	ld	b, #0x00
00102$:
;parser.c:243: list++;
	ld	hl, #_list
	inc	(hl)
	jr	00107$
00109$:
;parser.c:246: if (EFlag != ifFound) {
	ld	a, (_EFlag)
	sub	a, -1 (ix)
	jr	z, 00120$
;parser.c:248: EFlag = 5; StrCat(Input, " ");
	ld	hl, #_EFlag
	ld	(hl), #0x05
	ld	de, #___str_43
	ld	hl, #_Input
	call	_StrCat
;parser.c:249: Copy(Word, Input, 1, Pos(" ", Input) - 1);
	ld	de, #_Input
	ld	hl, #___str_43
	call	_Pos
	dec	a
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	de, #_Input
	ld	hl, #_Word
	call	_Copy
;parser.c:250: tmp[0] = ' '; tmp[1] = 0; StrCat(tmp, Word); StrCat(tmp, " ");
	ld	hl, #0
	add	hl, sp
	ld	(hl), #0x20
	ld	-40 (ix), #0x00
	push	hl
	ld	de, #_Word
	call	_StrCat
	pop	hl
	push	hl
	ld	de, #___str_43
	call	_StrCat
	pop	hl
;parser.c:251: if (Pos(tmp, " top directi next some from is under underne leaning but speak pay ") > 0) EFlag = ifFound;
	ld	de, #___str_44
	call	_Pos
	or	a, a
	jr	z, 00114$
	ld	a, -1 (ix)
	ld	(#_EFlag), a
	jr	00115$
00114$:
;parser.c:252: else if (Word[0] >= '0' && Word[0] <= '9') EFlag = 17;
	ld	a, (#_Word + 0)
	cp	a, #0x30
	jr	c, 00115$
	cp	a, #0x3a
	jr	nc, 00115$
	ld	hl, #_EFlag
	ld	(hl), #0x11
00115$:
;parser.c:253: if (ifFound == 14) EFlag = 14;
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	nz, 00117$
	ld	hl, #_EFlag
	ld	(hl), #0x0e
00117$:
;parser.c:254: QFormat(Input);
	ld	hl, #_Input
	call	_QFormat
00120$:
;parser.c:256: }
	ld	sp, ix
	pop	ix
	ret
___str_43:
	.ascii " "
	.db 0x00
___str_44:
	.ascii " top directi next some from is under underne leaning but spe"
	.ascii "ak pay "
	.db 0x00
;parser.c:258: void Describe(u8 room)
;	---------------------------------
; Function Describe
; ---------------------------------
_Describe::
	call	___sdcc_enter_ix
	push	af
	dec	sp
	ld	-1 (ix), a
;parser.c:260: Col(9, 9); Wr(RN[Prm]); Col(11, 7); Wln();
	ld	a,#0x09
	ld	l,a
	call	_Col
	ld	bc, #_RN+0
	ld	a, (#_Prm + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, bc
	call	_Wr
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	call	_Wln
;parser.c:261: if (En(1) || (!En(1) && !SetIn(Brief, Prm))) {
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	nz, 00119$
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	nz, 00120$
	ld	a, (_Prm)
	push	af
	inc	sp
	ld	hl, #_Brief
	call	_SetIn
	or	a, a
	jp	nz, 00120$
00119$:
;parser.c:262: SetAdd(Brief, Prm);
	ld	a, (_Prm)
	push	af
	inc	sp
	ld	hl, #_Brief
	call	_SetAdd
;parser.c:263: switch (Prm) {
	ld	a, (_Prm)
	cp	a, #0x1d
	jr	z, 00101$
	cp	a, #0x22
	jr	z, 00105$
	cp	a, #0x34
	jr	z, 00109$
	sub	a, #0x5b
	jr	z, 00113$
	jp	00117$
;parser.c:264: case 29: if (En(35)) { RS(130); RS(131); } else RR(29); break;
00101$:
	ld	a, #0x23
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00103$
	ld	hl, #0x0082
	call	_RS
	ld	hl, #0x0083
	call	_RS
	jr	00120$
00103$:
	ld	hl, #0x001d
	call	_RR
	jr	00120$
;parser.c:265: case 34: if (En(30)) { RS(81); RS(82); } else RR(34); break;
00105$:
	ld	a, #0x1e
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00107$
	ld	hl, #0x0051
	call	_RS
	ld	hl, #0x0052
	call	_RS
	jr	00120$
00107$:
	ld	hl, #0x0022
	call	_RR
	jr	00120$
;parser.c:266: case 52: if (En(39)) RS(126); else RR(52); break;
00109$:
	ld	a, #0x27
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00111$
	ld	hl, #0x007e
	call	_RS
	jr	00120$
00111$:
	ld	hl, #0x0034
	call	_RR
	jr	00120$
;parser.c:267: case 91: if (En(51)) { RS(157); RS(158); } else RR(91); break;
00113$:
	ld	a, #0x33
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00115$
	ld	hl, #0x009d
	call	_RS
	ld	hl, #0x009e
	call	_RS
	jr	00120$
00115$:
	ld	hl, #0x005b
	call	_RR
	jr	00120$
;parser.c:268: default: RR(room);
00117$:
	ld	l, -1 (ix)
	ld	h, #0x00
	call	_RR
;parser.c:269: }
00120$:
;parser.c:271: switch (Prm) {
	ld	a, (_Prm)
	dec	a
	jr	z, 00123$
	ld	a, (_Prm)
	cp	a, #0x26
	jr	z, 00129$
	cp	a, #0x29
	jr	z, 00132$
	cp	a, #0x37
	jp	z, 00136$
	cp	a, #0x3f
	jp	z, 00139$
	cp	a, #0x49
	jp	z, 00142$
	cp	a, #0x50
	jp	z, 00145$
	cp	a, #0x5e
	jp	z, 00148$
	sub	a, #0x6b
	jr	z, 00126$
	jp	00153$
;parser.c:272: case 1: if (SetIn(L[1], 16)) RL(150); break;
00123$:
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #(_L + 17)
	call	_SetIn
	or	a, a
	jp	z, 00153$
	ld	hl, #0x0096
	call	_RL
	jp	00153$
;parser.c:273: case 107: if (SetIn(L[107], 19)) RL(518); break;
00126$:
	ld	a, #0x13
	push	af
	inc	sp
	ld	hl, #(_L + 1819)
	call	_SetIn
	or	a, a
	jp	z, 00153$
	ld	hl, #0x0206
	call	_RL
	jp	00153$
;parser.c:274: case 38: if (SetIn(L[38], 17)) RL(260); break;
00129$:
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #(_L + 646)
	call	_SetIn
	or	a, a
	jp	z, 00153$
	ld	hl, #0x0104
	call	_RL
	jp	00153$
;parser.c:275: case 41: if (SetIn(L[41], 18) && !En(34)) RS(96); break;
00132$:
	ld	a, #0x12
	push	af
	inc	sp
	ld	hl, #(_L + 697)
	call	_SetIn
	or	a, a
	jp	z, 00153$
	ld	a, #0x22
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	nz, 00153$
	ld	hl, #0x0060
	call	_RS
	jr	00153$
;parser.c:276: case 55: if (SetIn(L[55], 11)) RL(290); break;
00136$:
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #(_L + 935)
	call	_SetIn
	or	a, a
	jr	z, 00153$
	ld	hl, #0x0122
	call	_RL
	jr	00153$
;parser.c:277: case 63: if (SetIn(L[63], 20)) RL(356); break;
00139$:
	ld	a, #0x14
	push	af
	inc	sp
	ld	hl, #(_L + 1071)
	call	_SetIn
	or	a, a
	jr	z, 00153$
	ld	hl, #0x0164
	call	_RL
	jr	00153$
;parser.c:278: case 73: if (SetIn(L[73], 28)) RL(352); break;
00142$:
	ld	a, #0x1c
	push	af
	inc	sp
	ld	hl, #(_L + 1241)
	call	_SetIn
	or	a, a
	jr	z, 00153$
	ld	hl, #0x0160
	call	_RL
	jr	00153$
;parser.c:279: case 80: if (SetIn(L[80], 17)) RL(395); break;
00145$:
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #(_L + 1360)
	call	_SetIn
	or	a, a
	jr	z, 00153$
	ld	hl, #0x018b
	call	_RL
	jr	00153$
;parser.c:280: case 94: if (SetIn(L[94], 26)) RL(397); if (SetIn(L[94], 2)) RL(398); break;
00148$:
	ld	a, #0x1a
	push	af
	inc	sp
	ld	hl, #(_L + 1598)
	call	_SetIn
	or	a, a
	jr	z, 00150$
	ld	hl, #0x018d
	call	_RL
00150$:
	ld	a, #0x02
	push	af
	inc	sp
	ld	hl, #(_L + 1598)
	call	_SetIn
	or	a, a
	jr	z, 00153$
	ld	hl, #0x018e
	call	_RL
;parser.c:281: }
00153$:
;parser.c:282: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00199$:
;parser.c:283: if (R[o] == Prm) {
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	sub	a, (hl)
	jp	nz, 00200$
;parser.c:284: if (o == 6) { Wr("There is some "); Wr(FN(o)); Wr(" here."); }
	ld	a, (_o)
	sub	a, #0x06
	jr	nz, 00162$
	ld	hl, #___str_45
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_46
	call	_Wr
	jr	00163$
00162$:
;parser.c:286: const char* w = FN(o);
	ld	a, (_o)
	call	_FN
	pop	hl
;parser.c:287: if (w[0] == 'a' || w[0] == 'e' || w[0] == 'i' || w[0] == 'o' || w[0] == 'u')
	ex	de, hl
	push	hl
	ld	a, (hl)
	cp	a, #0x61
	jr	z, 00154$
	cp	a, #0x65
	jr	z, 00154$
	cp	a, #0x69
	jr	z, 00154$
	cp	a, #0x6f
	jr	z, 00154$
	cp	a, #0x75
	jr	nz, 00155$
00154$:
;parser.c:288: { Wr("There is an "); Wr(FN(o)); Wr(" here."); }
	ld	hl, #___str_47
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_46
	call	_Wr
	jr	00163$
00155$:
;parser.c:289: else { Wr("There is a "); Wr(FN(o)); Wr(" here."); }
	ld	hl, #___str_48
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_46
	call	_Wr
00163$:
;parser.c:291: if ((o == 29 && MugCon != 0) || (o == 7 && HolstCon != 0) || (o == 5 && SatchCon != 0)) Wr("  (with something in it)");
	ld	a, (_o)
	sub	a, #0x1d
	jr	nz, 00168$
	ld	a, (_MugCon+0)
	or	a, a
	jr	nz, 00164$
00168$:
	ld	a, (_o)
	sub	a, #0x07
	jr	nz, 00170$
	ld	a, (_HolstCon+0)
	or	a, a
	jr	nz, 00164$
00170$:
	ld	a, (_o)
	sub	a, #0x05
	jr	nz, 00165$
	ld	a, (_SatchCon+0)
	or	a, a
	jr	z, 00165$
00164$:
	ld	hl, #___str_49
	call	_Wr
00165$:
;parser.c:292: if (o == 5 && R[5] == 20) Wr("  (lying in some trash)");
	ld	a, (_o)
	sub	a, #0x05
	jr	nz, 00172$
	ld	a, (#_R + 5)
	cp	a, #0x14
	jr	nz, 00172$
	ld	hl, #___str_50
	call	_Wr
00172$:
;parser.c:293: if (o == 7 && SetIn(L[12], 7) && R[7] == 12) Wr("  (on the shelf)");
	ld	a, (_o)
	sub	a, #0x07
	jr	nz, 00175$
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #(_L + 204)
	call	_SetIn
	or	a, a
	jr	z, 00175$
	ld	a, (#_R + 7)
	cp	a, #0x0c
	jr	nz, 00175$
	ld	hl, #___str_51
	call	_Wr
00175$:
;parser.c:294: if (o == NicheCon) Wr("  (on the niche)");
	ld	a, (_o)
	ld	hl, #_NicheCon
	sub	a, (hl)
	jr	nz, 00179$
	ld	hl, #___str_52
	call	_Wr
00179$:
;parser.c:295: if (En(6) && o == 16) Wr("  (on the seat)");
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00181$
	ld	a, (_o)
	sub	a, #0x10
	jr	nz, 00181$
	ld	hl, #___str_53
	call	_Wr
00181$:
;parser.c:296: if (o == PyraCon) Wr("  (in the pyramid's slot)");
	ld	a, (_o)
	ld	hl, #_PyraCon
	sub	a, (hl)
	jr	nz, 00184$
	ld	hl, #___str_54
	call	_Wr
00184$:
;parser.c:297: if (o == HingeCon) Wr("  (inside the statue's mouth)");
	ld	a, (_o)
	ld	hl, #_HingeCon
	sub	a, (hl)
	jr	nz, 00186$
	ld	hl, #___str_55
	call	_Wr
00186$:
;parser.c:298: if (o == PodumCon) Wr("  (on top of the podium)");
	ld	a, (_o)
	ld	hl, #_PodumCon
	sub	a, (hl)
	jr	nz, 00188$
	ld	hl, #___str_56
	call	_Wr
00188$:
;parser.c:299: if (o == 16 && En(37)) Wr("  (under the crystal)");
	ld	a, (_o)
	sub	a, #0x10
	jr	nz, 00190$
	ld	a, #0x25
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00190$
	ld	hl, #___str_57
	call	_Wr
00190$:
;parser.c:300: if (o == RobotCon) Wr("  (in the robot's panel)");
	ld	a, (_o)
	ld	hl, #_RobotCon
	sub	a, (hl)
	jr	nz, 00193$
	ld	hl, #___str_58
	call	_Wr
00193$:
;parser.c:301: if (SetIn(Socket, o)) Wr("  (in one of the regulator's sockets)");
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Socket
	call	_SetIn
	or	a, a
	jr	z, 00195$
	ld	hl, #___str_59
	call	_Wr
00195$:
;parser.c:302: Wln();
	call	_Wln
00200$:
;parser.c:282: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00199$
;parser.c:304: }
	ld	sp, ix
	pop	ix
	ret
___str_45:
	.ascii "There is some "
	.db 0x00
___str_46:
	.ascii " here."
	.db 0x00
___str_47:
	.ascii "There is an "
	.db 0x00
___str_48:
	.ascii "There is a "
	.db 0x00
___str_49:
	.ascii "  (with something in it)"
	.db 0x00
___str_50:
	.ascii "  (lying in some trash)"
	.db 0x00
___str_51:
	.ascii "  (on the shelf)"
	.db 0x00
___str_52:
	.ascii "  (on the niche)"
	.db 0x00
___str_53:
	.ascii "  (on the seat)"
	.db 0x00
___str_54:
	.ascii "  (in the pyramid's slot)"
	.db 0x00
___str_55:
	.ascii "  (inside the statue's mouth)"
	.db 0x00
___str_56:
	.ascii "  (on top of the podium)"
	.db 0x00
___str_57:
	.ascii "  (under the crystal)"
	.db 0x00
___str_58:
	.ascii "  (in the robot's panel)"
	.db 0x00
___str_59:
	.ascii "  (in one of the regulator's sockets)"
	.db 0x00
;parser.c:306: void MoveTo(u8 New)
;	---------------------------------
; Function MoveTo
; ---------------------------------
_MoveTo::
	call	___sdcc_enter_ix
	push	af
	dec	sp
	ld	-1 (ix), a
;parser.c:308: SFlag = 1;
	ld	hl, #_SFlag
	ld	(hl), #0x01
;parser.c:309: if (En(7)) RL(22);
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00116$
	ld	hl, #0x0016
	call	_RL
	jp	00118$
00116$:
;parser.c:310: else if (En(8)) RL(23);
	ld	a, #0x08
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jr	z, 00113$
	ld	hl, #0x0017
	call	_RL
	jp	00118$
00113$:
;parser.c:312: if (MugCon != 0 && SetIn(Inv, 29)) { if (Prm != 8) SetDel(L[Prm], MugCon); SetAdd(L[New], MugCon); }
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	(sp), hl
	ld	a, (_MugCon+0)
	or	a, a
	jr	z, 00104$
	ld	a, #0x1d
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00104$
	ld	a, (_Prm)
	sub	a, #0x08
	jr	z, 00102$
	ld	bc, #_L+0
	ld	a, (#_Prm + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ex	de, hl
	ld	a, (_MugCon)
	push	af
	inc	sp
	ex	de, hl
	call	_SetDel
00102$:
	ld	bc, #_L+0
	pop	hl
	push	hl
	add	hl, bc
	ex	de, hl
	ld	a, (_MugCon)
	push	af
	inc	sp
	ex	de, hl
	call	_SetAdd
00104$:
;parser.c:313: if (SatchCon != 0 && SetIn(Inv, 5)) { SetDel(L[Prm], SatchCon); SetAdd(L[New], SatchCon); }
	ld	a, (_SatchCon+0)
	or	a, a
	jr	z, 00107$
	ld	a, #0x05
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00107$
	ld	bc, #_L+0
	ld	a, (#_Prm + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	push	bc
	ex	de, hl
	ld	a, (_SatchCon)
	push	af
	inc	sp
	ex	de, hl
	call	_SetDel
	pop	bc
	pop	hl
	push	hl
	add	hl, bc
	ex	de, hl
	ld	a, (_SatchCon)
	push	af
	inc	sp
	ex	de, hl
	call	_SetAdd
00107$:
;parser.c:314: if (HolstCon != 0 && SetIn(Inv, 7)) { SetDel(L[Prm], HolstCon); SetAdd(L[New], HolstCon); }
	ld	a, (_HolstCon+0)
	or	a, a
	jr	z, 00110$
	ld	a, #0x07
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00110$
	ld	bc, #_L+0
	ld	a, (#_Prm + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	push	bc
	ex	de, hl
	ld	a, (_HolstCon)
	push	af
	inc	sp
	ex	de, hl
	call	_SetDel
	pop	bc
	pop	hl
	push	hl
	add	hl, bc
	ex	de, hl
	ld	a, (_HolstCon)
	push	af
	inc	sp
	ex	de, hl
	call	_SetAdd
00110$:
;parser.c:315: Prm = New;
	ld	a, -1 (ix)
	ld	(#_Prm), a
;parser.c:316: Describe(Prm);
	ld	a, (_Prm)
	call	_Describe
00118$:
;parser.c:318: }
	ld	sp, ix
	pop	ix
	ret
;parser.c:320: void Default1(void)
;	---------------------------------
; Function Default1
; ---------------------------------
_Default1::
	call	___sdcc_enter_ix
	push	af
;parser.c:322: switch (Vb) {
	ld	a, (_Vb)
	cp	a, #0x10
	jr	z, 00101$
	cp	a, #0x11
	jp	z, 00144$
	sub	a, #0x12
	jp	z, 00123$
	jp	00161$
;parser.c:323: case 16:
00101$:
;parser.c:324: if (!SetEmpty(Inv, 4)) {
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetEmpty
	or	a, a
	jp	nz, 00121$
;parser.c:325: Wr("You have in your possession..."); Wln();
	ld	hl, #___str_60
	call	_Wr
	call	_Wln
;parser.c:326: for (o = 1; o <= MMax; o++) {
	ld	hl, #_o
	ld	(hl), #0x01
00153$:
;parser.c:327: if (SetIn(Inv, o)) {
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00154$
;parser.c:328: if (o == 6) { Wr("  some "); Wr(FN(o)); } else { Wr("  a "); Wr(FN(o)); }
	ld	a, (_o)
	sub	a, #0x06
	jr	nz, 00103$
	ld	hl, #___str_61
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	jr	00104$
00103$:
	ld	hl, #___str_62
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
00104$:
;parser.c:329: if (SetIn(Wear, o)) Wr("  (being worn)");
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Wear
	call	_SetIn
	or	a, a
	jr	z, 00106$
	ld	hl, #___str_63
	call	_Wr
00106$:
;parser.c:330: switch (o) {
	ld	a, (_o)
	cp	a, #0x05
	jr	z, 00107$
	cp	a, #0x07
	jr	z, 00110$
	sub	a, #0x1d
	jr	z, 00113$
	jr	00116$
;parser.c:331: case 5: if (SatchCon != 0) Wr("  (contains something)"); break;
00107$:
	ld	a, (_SatchCon+0)
	or	a, a
	jr	z, 00116$
	ld	hl, #___str_64
	call	_Wr
	jr	00116$
;parser.c:332: case 7: if (HolstCon != 0) Wr("  (contains something)"); break;
00110$:
	ld	a, (_HolstCon+0)
	or	a, a
	jr	z, 00116$
	ld	hl, #___str_64
	call	_Wr
	jr	00116$
;parser.c:333: case 29: if (MugCon != 0) Wr("  (has something in it)"); break;
00113$:
	ld	a, (_MugCon+0)
	or	a, a
	jr	z, 00116$
	ld	hl, #___str_65
	call	_Wr
;parser.c:334: }
00116$:
;parser.c:335: Wln();
	call	_Wln
00154$:
;parser.c:326: for (o = 1; o <= MMax; o++) {
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00153$
	jp	00161$
00121$:
;parser.c:338: } else RL(28);
	ld	hl, #0x001c
	call	_RL
;parser.c:339: break;
	jp	00161$
;parser.c:340: case 18:
00123$:
;parser.c:341: if (!SetIn(NounSet, 30)) {
	ld	a, #0x1e
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetIn
	or	a, a
	jp	nz, 00142$
;parser.c:342: for (o = 1; o <= NMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00155$:
;parser.c:343: if (SetIn(NounSet, o)) {
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetIn
	or	a, a
	jp	z, 00156$
;parser.c:344: if (SetIn(Inv, o)) {
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00128$
;parser.c:345: Wr(FN(o)); Wr(":  ");
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_66
	call	_Wr
;parser.c:346: if (SetIn(Wear, o)) { Wr("First you must remove the "); Wr(FN(o)); Wr("."); Wln(); }
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Wear
	call	_SetIn
	or	a, a
	jr	z, 00125$
	ld	hl, #___str_67
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_68
	call	_Wr
	call	_Wln
	jr	00156$
00125$:
;parser.c:347: else { Wr("Dropped."); Wln(); SetDel(Inv, o); R[o] = Prm; }
	ld	hl, #___str_69
	call	_Wr
	call	_Wln
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetDel
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	ld	(hl), a
	jr	00156$
00128$:
;parser.c:348: } else { Wr("You don't have the "); Wr(FN(o)); Wr("."); Wln(); }
	ld	hl, #___str_70
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_68
	call	_Wr
	call	_Wln
00156$:
;parser.c:342: for (o = 1; o <= NMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x85
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00155$
	jp	00161$
00142$:
;parser.c:351: Min(17);
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetDel
;parser.c:352: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00157$:
;parser.c:353: if (SetIn(Inv, o)) {
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00158$
;parser.c:354: Wr(FN(o)); Wr(":  "); Add(17);
	ld	a, (_o)
	call	_FN
	pop	hl
	ex	de, hl
	push	hl
	call	_Wr
	ld	hl, #___str_66
	call	_Wr
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetAdd
;parser.c:355: if (SetIn(Wear, o)) { Wr("First you must remove the "); Wr(FN(o)); Wr("."); Wln(); }
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Wear
	call	_SetIn
	or	a, a
	jr	z, 00134$
	ld	hl, #___str_67
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_68
	call	_Wr
	call	_Wln
	jr	00158$
00134$:
;parser.c:356: else { Wr("Dropped."); Wln(); SetDel(Inv, o); R[o] = Prm; }
	ld	hl, #___str_69
	call	_Wr
	call	_Wln
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetDel
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	ld	(hl), a
00158$:
;parser.c:352: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00157$
;parser.c:358: if (!En(17)) RL(303);
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetIn
	or	a, a
	jp	nz, 00161$
	ld	hl, #0x012f
	call	_RL
;parser.c:360: break;
	jp	00161$
;parser.c:361: case 17:
00144$:
;parser.c:362: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00159$:
;parser.c:363: if (SetIn(Inv, o) && !SetIn(NounSet, o)) {
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetIn
	or	a, a
	jr	z, 00160$
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetIn
	or	a, a
	jr	nz, 00160$
;parser.c:364: Wr(FN(o)); Wr(":  ");
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_66
	call	_Wr
;parser.c:365: if (SetIn(Wear, o)) { Wr("First you must remove the "); Wr(FN(o)); Wr("."); Wln(); }
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Wear
	call	_SetIn
	or	a, a
	jr	z, 00146$
	ld	hl, #___str_67
	call	_Wr
	ld	a, (_o)
	call	_FN
	ex	de, hl
	call	_Wr
	ld	hl, #___str_68
	call	_Wr
	call	_Wln
	jr	00160$
00146$:
;parser.c:366: else { Wr("Dropped."); Wln(); SetDel(Inv, o); R[o] = Prm; }
	ld	hl, #___str_69
	call	_Wr
	call	_Wln
	ld	a, (_o)
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetDel
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	ld	(hl), a
00160$:
;parser.c:362: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00159$
;parser.c:369: }
00161$:
;parser.c:370: }
	pop	af
	pop	ix
	ret
___str_60:
	.ascii "You have in your possession..."
	.db 0x00
___str_61:
	.ascii "  some "
	.db 0x00
___str_62:
	.ascii "  a "
	.db 0x00
___str_63:
	.ascii "  (being worn)"
	.db 0x00
___str_64:
	.ascii "  (contains something)"
	.db 0x00
___str_65:
	.ascii "  (has something in it)"
	.db 0x00
___str_66:
	.ascii ":  "
	.db 0x00
___str_67:
	.ascii "First you must remove the "
	.db 0x00
___str_68:
	.ascii "."
	.db 0x00
___str_69:
	.ascii "Dropped."
	.db 0x00
___str_70:
	.ascii "You don't have the "
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
