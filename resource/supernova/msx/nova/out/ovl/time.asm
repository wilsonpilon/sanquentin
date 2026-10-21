;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module time
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEAD
	.globl _SetNoun
	.globl _Van
	.globl _MC
	.globl _RB2
	.globl _RB
	.globl _RS
	.globl _RL
	.globl _Here
	.globl _WrFN
	.globl _DClose
	.globl _DOpen
	.globl _Blast
	.globl _Static
	.globl _Walls
	.globl _Explode
	.globl _Play
	.globl _Tune
	.globl _Pause
	.globl _Score
	.globl _Min
	.globl _Add
	.globl _En
	.globl _Bor
	.globl _Col
	.globl _Rnd
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _Wln
	.globl _Wr
	.globl _SetClear
	.globl _SetEmpty
	.globl _DOS_TPAUpperAddr
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _Time1
	.globl _Time2A
	.globl _Time2B
	.globl _Time2C
	.globl _Time2D
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_Printer_ControlPort	=	0x0090
_g_Printer_DataPort	=	0x0091
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_VDP_PalPort	=	0x009a
_g_VDP_IRegPort	=	0x009b
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_Kanji_Level1LowPort	=	0x00d8
_g_Kanji_Level1HighPort	=	0x00d9
_g_Kanji_Level2LowPort	=	0x00da
_g_Kanji_Level2HighPort	=	0x00db
_g_TimerLowPort	=	0x00e6
_g_TimerHighPort	=	0x00e7
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_DOS_TPAUpperAddr	=	0x0006
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
;E:\supernova\msx\game\time.c:4: void Time1(void)
;	---------------------------------
; Function Time1
; ---------------------------------
_Time1::
	call	___sdcc_enter_ix
	push	af
;E:\supernova\msx\game\time.c:6: Tic++; Min(128); Col(13, 15);
	ld	hl, (_Tic)
	inc	hl
	ld	(_Tic), hl
	ld	a, #0x80
	call	_Min
	ld	l, #0x0f
	ld	a, #0x0d
	call	_Col
;E:\supernova\msx\game\time.c:7: for (x = 1; x <= TMax; x++) T[x]--;
	ld	hl, #_x
	ld	(hl), #0x01
00206$:
	ld	a, (_x)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	ld	de, #_T
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1e
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00206$
;E:\supernova\msx\game\time.c:8: if (T[2] == 1) { SET_DEL(PStat, 5); RL(1); }
	ld	hl, (#_T + 4)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00103$
	ld	hl, #_PStat+0
	res	4, (hl)
	ld	hl, #0x0001
	call	_RL
00103$:
;E:\supernova\msx\game\time.c:9: switch (T[3])    // Hunger
	ld	hl, (#_T + 6)
	ex	(sp), hl
	ld	a, -2 (ix)
	dec	a
	or	a, -1 (ix)
	jr	z, 00107$
	ld	a, -2 (ix)
	sub	a, #0x04
	or	a, -1 (ix)
	jr	z, 00106$
	ld	a, -2 (ix)
	sub	a, #0x0c
	or	a, -1 (ix)
	jr	z, 00105$
	ld	a, -2 (ix)
	sub	a, #0x19
	or	a, -1 (ix)
	jr	nz, 00108$
;E:\supernova\msx\game\time.c:11: case 25: SET_ADD(PStat, 2); RL(2); break;
	ld	hl, #_PStat+0
	set	1, (hl)
	ld	hl, #0x0002
	call	_RL
	jr	00108$
;E:\supernova\msx\game\time.c:12: case 12: RL(3); break;
00105$:
	ld	hl, #0x0003
	call	_RL
	jr	00108$
;E:\supernova\msx\game\time.c:13: case 4: Bor(4, 7); RL(4); break;
00106$:
	ld	l, #0x07
	ld	a, #0x04
	call	_Bor
	ld	hl, #0x0004
	call	_RL
	jr	00108$
;E:\supernova\msx\game\time.c:14: case 1: RL(124); DEAD(); break;
00107$:
	ld	hl, #0x007c
	call	_RL
	call	_DEAD
;E:\supernova\msx\game\time.c:15: }
00108$:
;E:\supernova\msx\game\time.c:16: switch (T[4])    // Thirst
	ld	hl, (#_T + 8)
	ld	a, l
	dec	a
	or	a, h
	jr	z, 00112$
	ld	a, l
	sub	a, #0x04
	or	a, h
	jr	z, 00111$
	ld	a, l
	sub	a, #0x0b
	or	a, h
	jr	z, 00110$
	ld	a, l
	sub	a, #0x16
	or	a, h
	jr	nz, 00113$
;E:\supernova\msx\game\time.c:18: case 22: SET_ADD(PStat, 6); RL(5); break;
	ld	hl, #_PStat+0
	set	5, (hl)
	ld	hl, #0x0005
	call	_RL
	jr	00113$
;E:\supernova\msx\game\time.c:19: case 11: RL(6); break;
00110$:
	ld	hl, #0x0006
	call	_RL
	jr	00113$
;E:\supernova\msx\game\time.c:20: case 4: Bor(4, 7); RL(7); break;
00111$:
	ld	l, #0x07
	ld	a, #0x04
	call	_Bor
	ld	hl, #0x0007
	call	_RL
	jr	00113$
;E:\supernova\msx\game\time.c:21: case 1: RL(125); DEAD(); break;
00112$:
	ld	hl, #0x007d
	call	_RL
	call	_DEAD
;E:\supernova\msx\game\time.c:22: }
00113$:
;E:\supernova\msx\game\time.c:23: switch (T[5])    // Sleep
	ld	hl, (#_T + 10)
	ld	a, l
	dec	a
	or	a, h
	jr	z, 00117$
	ld	a, l
	sub	a, #0x05
	or	a, h
	jr	z, 00116$
	ld	a, l
	sub	a, #0x0e
	or	a, h
	jr	z, 00115$
	ld	a, l
	sub	a, #0x20
	or	a, h
	jr	nz, 00118$
;E:\supernova\msx\game\time.c:25: case 32: SET_ADD(PStat, 5); RL(8); break;
	ld	hl, #_PStat+0
	set	4, (hl)
	ld	hl, #0x0008
	call	_RL
	jp	00129$
;E:\supernova\msx\game\time.c:26: case 14: RL(9); break;
00115$:
	ld	hl, #0x0009
	call	_RL
	jp	00129$
;E:\supernova\msx\game\time.c:27: case 5: Bor(4, 7); RL(10); break;
00116$:
	ld	l, #0x07
	ld	a, #0x04
	call	_Bor
	ld	hl, #0x000a
	call	_RL
	jp	00129$
;E:\supernova\msx\game\time.c:28: case 1: RL(126); DEAD(); break;
00117$:
	ld	hl, #0x007e
	call	_RL
	call	_DEAD
	jp	00129$
;E:\supernova\msx\game\time.c:29: default:
00118$:
;E:\supernova\msx\game\time.c:30: if (T[5] >= 2 && T[5] <= 13)
	ld	a, l
	sub	a, #0x02
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00129$
	ld	a, #0x0d
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00129$
;E:\supernova\msx\game\time.c:32: x = Rnd(29) + 1;
	ld	hl, #0x001d
	call	_Rnd
	ld	a, e
	inc	a
	ld	(#_x), a
;E:\supernova\msx\game\time.c:33: if (IN29(Inv, x) && !IN29(Wear, x))
	ld	a, (_x+0)
	sub	a, #0x01
	jr	c, 00129$
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00129$
	ld	hl, #_Inv+0
	ld	a, (_x+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00772$:
	sra	d
	rr	e
	djnz	00772$
	add	hl, de
	ld	l, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	c, a
	ld	b, c
	inc	b
	jr	00774$
00773$:
	srl	l
00774$:
	djnz	00773$
	bit	0, l
	jr	z, 00129$
	ld	hl, #_Wear+0
	add	hl, de
	ld	a, (hl)
	inc	c
	jr	00777$
00776$:
	srl	a
00777$:
	dec	c
	jr	nz, 00776$
	rrca
	jr	c, 00129$
;E:\supernova\msx\game\time.c:35: Van(x); R[x] = Prm;
	ld	a, (_x)
	call	_Van
	ld	bc, #_R+0
	ld	a, (_x)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (_Prm)
	ld	(hl), a
;E:\supernova\msx\game\time.c:36: Wr("A bout of weariness causes you to loose your grip on the ");
	ld	hl, #___str_1
	call	_Wr
;E:\supernova\msx\game\time.c:37: WrFN(x); Wr("!"); Wln();
	ld	a, (_x)
	call	_WrFN
	ld	hl, #___str_2
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:40: }
00129$:
;E:\supernova\msx\game\time.c:41: switch (T[29])   // Laser Injury
	ld	hl, (#_T + 58)
	ex	(sp), hl
	ld	a, -2 (ix)
	dec	a
	or	a, -1 (ix)
	jr	z, 00132$
	ld	a, -2 (ix)
	sub	a, #0x04
	or	a, -1 (ix)
	jr	z, 00131$
	ld	a, -2 (ix)
	sub	a, #0x09
	or	a, -1 (ix)
	jr	nz, 00133$
;E:\supernova\msx\game\time.c:43: case 9: RS(214); break;
	ld	hl, #0x00d6
	call	_RS
	jp	00156$
;E:\supernova\msx\game\time.c:44: case 4: RL(507); Bor(4, 7); break;
00131$:
	ld	hl, #0x01fb
	call	_RL
	ld	l, #0x07
	ld	a, #0x04
	call	_Bor
	jp	00156$
;E:\supernova\msx\game\time.c:45: case 1: RS(215); DEAD(); break;
00132$:
	ld	hl, #0x00d7
	call	_RS
	call	_DEAD
	jp	00156$
;E:\supernova\msx\game\time.c:46: default:
00133$:
;E:\supernova\msx\game\time.c:47: if (T[29] >= 2 && T[29] <= 11)
	ld	a, -2 (ix)
	sub	a, #0x02
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00156$
	ld	a, #0x0b
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	c, 00156$
;E:\supernova\msx\game\time.c:49: do x = Rnd(27) + 1; while (!(IN_RANGE(x, 1, 12) || IN_RANGE(x, 16, 20) || IN_RANGE(x, 22, 26) || x == 28));
00140$:
	ld	hl, #0x001b
	call	_Rnd
	pop	hl
	push	de
	ld	a, -2 (ix)
	ld	-1 (ix), a
	inc	a
	ld	(#_x), a
	ld	a, (_x+0)
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	c, a
	bit	0, c
	jr	nz, 00136$
	ld	a, #0x0c
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00142$
00136$:
	ld	a, (_x+0)
	sub	a, #0x10
	jr	c, 00138$
	ld	a, #0x14
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00142$
00138$:
	ld	a, (_x+0)
	sub	a, #0x16
	jr	c, 00139$
	ld	a, #0x1a
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00142$
00139$:
	ld	a, (_x)
	sub	a, #0x1c
	jr	nz, 00140$
00142$:
;E:\supernova\msx\game\time.c:50: if (IN29(Inv, x) && !IN29(Wear, x))
	bit	0, c
	jp	nz, 00156$
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jp	c, 00156$
	ld	hl, #_Inv+0
	ld	a, (_x+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00786$:
	sra	d
	rr	e
	djnz	00786$
	add	hl, de
	ld	l, (hl)
;E:\supernova\msx\game\time.c:33: if (IN29(Inv, x) && !IN29(Wear, x))
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	c, a
;E:\supernova\msx\game\time.c:50: if (IN29(Inv, x) && !IN29(Wear, x))
	ld	b, c
	ld	a, l
	inc	b
	jr	00788$
00787$:
	srl	a
00788$:
	djnz	00787$
	rrca
	jr	nc, 00156$
	ld	hl, #_Wear
	add	hl, de
	ld	a, (hl)
	inc	c
	jr	00791$
00790$:
	srl	a
00791$:
	dec	c
	jr	nz, 00790$
	rrca
	jr	c, 00156$
;E:\supernova\msx\game\time.c:52: Van(x); R[x] = Prm;
	ld	a, (_x)
	call	_Van
	ld	bc, #_R+0
	ld	a, (_x)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (_Prm)
	ld	(hl), a
;E:\supernova\msx\game\time.c:53: if (Rnd(2) == 0)
	ld	hl, #0x0002
	call	_Rnd
	ld	a, d
	or	a, e
	jr	nz, 00144$
;E:\supernova\msx\game\time.c:55: Wr("A sudden stab of pain shoots up your side, you drop the ");
	ld	hl, #___str_3
	call	_Wr
;E:\supernova\msx\game\time.c:56: WrFN(x); Wr("."); Wln();
	ld	a, (_x)
	call	_WrFN
	ld	hl, #___str_4
	call	_Wr
	call	_Wln
	jr	00156$
00144$:
;E:\supernova\msx\game\time.c:60: Wr("The "); WrFN(x); Wr(" falls from your grip as you almost collapse from the"); Wln();
	ld	hl, #___str_5
	call	_Wr
	ld	a, (_x)
	call	_WrFN
	ld	hl, #___str_6
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:61: Wr("extreme pain."); Wln();
	ld	hl, #___str_7
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:65: }
00156$:
;E:\supernova\msx\game\time.c:66: switch (T[12])   // Sickness
	ld	hl, (#_T + 24)
	ld	a, l
	dec	a
	or	a, h
	jr	z, 00166$
	ld	a, l
	sub	a, #0x04
	or	a, h
	jr	z, 00165$
	ld	a, l
	sub	a, #0x0f
	or	a, h
	jr	z, 00164$
	ld	a, l
	sub	a, #0x1e
	or	a, h
	jr	z, 00163$
	ld	a, l
	sub	a, #0x2f
	or	a, h
	jr	z, 00162$
	ld	a, l
	sub	a, #0x37
	or	a, h
	jr	z, 00160$
	ld	a, l
	sub	a, #0x41
	or	a, h
	jr	z, 00161$
	ld	a, l
	sub	a, #0x53
	or	a, h
	jr	z, 00160$
	ld	a, l
	sub	a, #0x63
	or	a, h
	jr	z, 00160$
	ld	a, l
	sub	a, #0x78
	or	a, h
	jr	nz, 00167$
;E:\supernova\msx\game\time.c:68: case 120: case 99: case 83: case 55: RL(207); break;
00160$:
	ld	hl, #0x00cf
	call	_RL
	jp	00183$
;E:\supernova\msx\game\time.c:69: case 65: SET_ADD(PStat, 3); RL(208); break;
00161$:
	ld	hl, #_PStat+0
	set	2, (hl)
	ld	hl, #0x00d0
	call	_RL
	jp	00183$
;E:\supernova\msx\game\time.c:70: case 47: RL(209); break;
00162$:
	ld	hl, #0x00d1
	call	_RL
	jp	00183$
;E:\supernova\msx\game\time.c:71: case 30: RS(73); break;
00163$:
	ld	hl, #0x0049
	call	_RS
	jp	00183$
;E:\supernova\msx\game\time.c:72: case 15: RS(74); break;
00164$:
	ld	hl, #0x004a
	call	_RS
	jp	00183$
;E:\supernova\msx\game\time.c:73: case 4: Bor(4, 7); RS(75); break;
00165$:
	ld	l, #0x07
	ld	a, #0x04
	call	_Bor
	ld	hl, #0x004b
	call	_RS
	jp	00183$
;E:\supernova\msx\game\time.c:74: case 1: RS(76); DEAD(); break;
00166$:
	ld	hl, #0x004c
	call	_RS
	call	_DEAD
	jp	00183$
;E:\supernova\msx\game\time.c:75: default:
00167$:
;E:\supernova\msx\game\time.c:76: if (T[12] >= 2 && T[12] <= 29)
	ld	a, l
	sub	a, #0x02
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00183$
	ld	a, #0x1d
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	c, 00183$
;E:\supernova\msx\game\time.c:77: if (Rnd(25) == 0 && !SetEmpty(Inv, 4) && !En(125))
	ld	hl, #0x0019
	call	_Rnd
	ld	a, d
	or	a, e
	jp	nz, 00183$
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetEmpty
	or	a, a
	jr	nz, 00183$
	ld	a, #0x7d
	call	_En
	or	a, a
	jr	nz, 00183$
;E:\supernova\msx\game\time.c:79: RS(232);
	ld	hl, #0x00e8
	call	_RS
;E:\supernova\msx\game\time.c:80: for (x = 1; x <= 29; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00208$:
;E:\supernova\msx\game\time.c:81: if (IN29(Inv, x) && !IN29(Wear, x)) { Van(x); R[x] = Prm; }
	ld	a, (_x+0)
	sub	a, #0x01
	jr	c, 00209$
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00209$
	ld	a, (_x+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00805$:
	sra	d
	rr	e
	djnz	00805$
	ld	hl, #_Inv
	add	hl, de
	ld	l, (hl)
;E:\supernova\msx\game\time.c:33: if (IN29(Inv, x) && !IN29(Wear, x))
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	c, a
;E:\supernova\msx\game\time.c:81: if (IN29(Inv, x) && !IN29(Wear, x)) { Van(x); R[x] = Prm; }
	ld	b, c
	ld	a, l
	inc	b
	jr	00807$
00806$:
	srl	a
00807$:
	djnz	00806$
	rrca
	jr	nc, 00209$
	ld	hl, #_Wear
	add	hl, de
	ld	a, (hl)
	inc	c
	jr	00810$
00809$:
	srl	a
00810$:
	dec	c
	jr	nz, 00809$
	rrca
	jr	c, 00209$
	ld	a, (_x)
	call	_Van
	ld	hl, #_R
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	ld	(hl), a
00209$:
;E:\supernova\msx\game\time.c:80: for (x = 1; x <= 29; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00208$
;E:\supernova\msx\game\time.c:83: }
00183$:
;E:\supernova\msx\game\time.c:84: Col(10, 7);
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
;E:\supernova\msx\game\time.c:85: if (IN_RANGE(Prm, 81, 88) && T[30] < 1 && Rnd(4) == 0)
	ld	a, (_Prm+0)
	sub	a, #0x51
	jp	c, 00216$
	ld	a, #0x58
	ld	hl, #_Prm
	sub	a, (hl)
	jp	c, 00216$
	ld	bc, (#(_T + 60) + 0)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	nc, 00216$
	ld	hl, #0x0004
	call	_Rnd
	ld	a, d
	or	a, e
	jp	nz, 00216$
;E:\supernova\msx\game\time.c:87: if (IN29(Wear, 28))
	ld	a, (#(_Wear + 3) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00197$
;E:\supernova\msx\game\time.c:89: T[30] = 9; RS(153 + Prm);
	ld	hl, #0x0009
	ld	((_T + 60)), hl
	ld	a, (_Prm)
	ld	h, #0x00
	ld	l, a
	ld	de, #0x0099
	add	hl, de
	call	_RS
;E:\supernova\msx\game\time.c:90: for (i = 999; i <= 2300; i++) Sound(Rnd(i * 3) + i);
	ld	hl, #0x03e7
	ld	(_i), hl
00210$:
	ld	hl, (_i)
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0xfc
	cp	a, l
	ld	a, #0x08
	sbc	a, h
	jp	po, 00813$
	xor	a, #0x80
00813$:
	jp	p, 00210$
;E:\supernova\msx\game\time.c:91: for (i = 3000; i >= 20; i--) Sound(Rnd(i * 4) + i * 2);
	ld	hl, #0x0bb8
	ld	(_i), hl
00212$:
	ld	hl, (_i)
	add	hl, hl
	add	hl, hl
	call	_Rnd
	ld	hl, (_i)
	add	hl, hl
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	ld	bc, (_i)
	ld	a, c
	sub	a, #0x14
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00212$
;E:\supernova\msx\game\time.c:92: NoSound();
	call	_NoSound
	jp	00216$
00197$:
;E:\supernova\msx\game\time.c:96: Wr("A small droid appears from the ");
	ld	hl, #___str_8
	call	_Wr
;E:\supernova\msx\game\time.c:97: switch (Prm)
	ld	a, (_Prm+0)
	sub	a, #0x51
	jr	c, 00194$
	ld	a, #0x58
	ld	iy, #_Prm
	sub	a, 0 (iy)
	jr	c, 00194$
	ld	a, (_Prm+0)
	add	a, #0xaf
	ld	c, a
	ld	b, #0x00
	ld	hl, #00814$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00814$:
	.dw	00186$
	.dw	00187$
	.dw	00188$
	.dw	00189$
	.dw	00190$
	.dw	00191$
	.dw	00192$
	.dw	00193$
;E:\supernova\msx\game\time.c:99: case 81: Wr("south"); break;     case 82: Wr("southwest"); break;
00186$:
	ld	hl, #___str_9
	call	_Wr
	jr	00194$
00187$:
	ld	hl, #___str_10
	call	_Wr
	jr	00194$
;E:\supernova\msx\game\time.c:100: case 83: Wr("west"); break;      case 84: Wr("northwest"); break;
00188$:
	ld	hl, #___str_11
	call	_Wr
	jr	00194$
00189$:
	ld	hl, #___str_12
	call	_Wr
	jr	00194$
;E:\supernova\msx\game\time.c:101: case 85: Wr("north"); break;     case 86: Wr("northeast"); break;
00190$:
	ld	hl, #___str_13
	call	_Wr
	jr	00194$
00191$:
	ld	hl, #___str_14
	call	_Wr
	jr	00194$
;E:\supernova\msx\game\time.c:102: case 87: Wr("east"); break;      case 88: Wr("southeast"); break;
00192$:
	ld	hl, #___str_15
	call	_Wr
	jr	00194$
00193$:
	ld	hl, #___str_16
	call	_Wr
;E:\supernova\msx\game\time.c:103: }
00194$:
;E:\supernova\msx\game\time.c:104: Wr(" section of the corridor and flies"); Wln();
	ld	hl, #___str_17
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:105: RS(242); RS(243);
	ld	hl, #0x00f2
	call	_RS
	ld	hl, #0x00f3
	call	_RS
;E:\supernova\msx\game\time.c:106: for (i = 20; i <= 3000; i++) Sound(Rnd(i * 3) + i);
	ld	hl, #0x0014
	ld	(_i), hl
00214$:
	ld	hl, (_i)
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0xb8
	cp	a, l
	ld	a, #0x0b
	sbc	a, h
	jp	po, 00815$
	xor	a, #0x80
00815$:
	jp	p, 00214$
;E:\supernova\msx\game\time.c:107: NoSound();
	call	_NoSound
;E:\supernova\msx\game\time.c:108: Delay(1500); DEAD();
	ld	hl, #0x05dc
	call	_Delay
	call	_DEAD
00216$:
;E:\supernova\msx\game\time.c:111: }
	pop	af
	pop	ix
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "$"
	.db 0x00
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
___str_1:
	.ascii "A bout of weariness causes you to loose your grip on the "
	.db 0x00
___str_2:
	.ascii "!"
	.db 0x00
___str_3:
	.ascii "A sudden stab of pain shoots up your side, you drop the "
	.db 0x00
___str_4:
	.ascii "."
	.db 0x00
___str_5:
	.ascii "The "
	.db 0x00
___str_6:
	.ascii " falls from your grip as you almost collapse from the"
	.db 0x00
___str_7:
	.ascii "extreme pain."
	.db 0x00
___str_8:
	.ascii "A small droid appears from the "
	.db 0x00
___str_9:
	.ascii "south"
	.db 0x00
___str_10:
	.ascii "southwest"
	.db 0x00
___str_11:
	.ascii "west"
	.db 0x00
___str_12:
	.ascii "northwest"
	.db 0x00
___str_13:
	.ascii "north"
	.db 0x00
___str_14:
	.ascii "northeast"
	.db 0x00
___str_15:
	.ascii "east"
	.db 0x00
___str_16:
	.ascii "southeast"
	.db 0x00
___str_17:
	.ascii " section of the corridor and flies"
	.db 0x00
;E:\supernova\msx\game\time.c:113: void Time2A(void)
;	---------------------------------
; Function Time2A
; ---------------------------------
_Time2A::
;E:\supernova\msx\game\time.c:115: Col(10, 7);   // Pre-Jungle Planet
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
;E:\supernova\msx\game\time.c:116: switch (T[1])
	ld	hl, (#(_T + 2) + 0)
	ld	a, l
	sub	a, #0x04
	or	a, h
	jp	z, 00108$
	ld	a, l
	sub	a, #0x09
	or	a, h
	jr	z, 00107$
	ld	a, l
	sub	a, #0x0a
	or	a, h
	jr	z, 00106$
	ld	a, l
	sub	a, #0x11
	or	a, h
	jr	z, 00103$
	ld	a, l
	sub	a, #0x12
	or	a, h
	jr	z, 00102$
	ld	a, l
	sub	a, #0x13
	or	a, h
	jp	nz, 00111$
;E:\supernova\msx\game\time.c:118: case 19: MC(1, 13, 13, 0); break;
	ld	hl, #0x0000
	push	hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	l, #0x0d
	ld	a, #0x01
	call	_MC
	jp	00126$
;E:\supernova\msx\game\time.c:119: case 18: MC(1, 8, 8, 1); MC(1, 13, 8, 2); break;
00102$:
	ld	hl, #0x0001
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	ld	l, #0x08
	ld	a, #0x01
	call	_MC
	ld	hl, #0x0002
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	ld	l, #0x0d
	ld	a, #0x01
	call	_MC
	jp	00126$
;E:\supernova\msx\game\time.c:120: case 17: if (En(19)) { RS(9); T[1] = 11; } break;
00103$:
	ld	a, #0x13
	call	_En
	or	a, a
	jp	z, 00126$
	ld	hl, #0x0009
	call	_RS
	ld	hl, #0x000b
	ld	((_T + 2)), hl
	jp	00126$
;E:\supernova\msx\game\time.c:121: case 10: MC(1, 8, 9, 3); break;
00106$:
	ld	hl, #0x0003
	push	hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	l, #0x08
	ld	a, #0x01
	call	_MC
	jp	00126$
;E:\supernova\msx\game\time.c:122: case 9: MC(1, 9, 0, 4); T[1] = Null; break;
00107$:
	ld	hl, #0x0004
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x09
	ld	a, #0x01
	call	_MC
	ld	hl, #0x0000
	ld	((_T + 2)), hl
	jp	00126$
;E:\supernova\msx\game\time.c:123: case 4: if (Prm == 8) { T[1] = 11; RS(5); } break;
00108$:
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00126$
	ld	hl, #0x000b
	ld	((_T + 2)), hl
	ld	l, #0x05
	call	_RS
	jr	00126$
;E:\supernova\msx\game\time.c:124: default:
00111$:
;E:\supernova\msx\game\time.c:125: if (T[1] >= 11 && T[1] <= 16) { if (!En(19) && Prm == 8 && Rnd(2) == 1) RL(0); }
	ld	a, l
	sub	a, #0x0b
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00123$
	ld	a, #0x10
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00123$
	ld	a, #0x13
	call	_En
	or	a, a
	jr	nz, 00126$
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00126$
	ld	hl, #0x0002
	call	_Rnd
	ld	a, e
	dec	a
	or	a, d
	jr	nz, 00126$
	ld	hl, #0x0000
	call	_RL
	jr	00126$
00123$:
;E:\supernova\msx\game\time.c:126: else if (T[1] >= 5 && T[1] <= 7)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00126$
	ld	a, #0x07
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00126$
;E:\supernova\msx\game\time.c:127: if (En(2) && En(3)) { RB2(5 - (T[1] - 3), 10); Col(10, 7); }
	ld	a, #0x02
	call	_En
	or	a, a
	jr	z, 00126$
	ld	a, #0x03
	call	_En
	or	a, a
	jr	z, 00126$
	ld	a, (#(_T + 2) + 0)
	add	a, #0xfd
	ld	c, a
	ld	a, #0x05
	sub	a, c
	ld	l, #0x0a
	call	_RB2
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
;E:\supernova\msx\game\time.c:128: }
00126$:
;E:\supernova\msx\game\time.c:129: if (T[7] == 1) { RS(35); DEAD(); }
	ld	hl, (#_T + 14)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00128$
	ld	hl, #0x0023
	call	_RS
	call	_DEAD
00128$:
;E:\supernova\msx\game\time.c:130: if (T[6] == 2 && En(7)) RL(140);
	ld	hl, (#(_T + 12) + 0)
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	nz, 00130$
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00130$
	ld	hl, #0x008c
	call	_RL
00130$:
;E:\supernova\msx\game\time.c:131: if (T[6] == 1 && En(7)) { RS(20); DEAD(); }
	ld	hl, (#(_T + 12) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00133$
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00133$
	ld	hl, #0x0014
	call	_RS
	call	_DEAD
00133$:
;E:\supernova\msx\game\time.c:132: switch (T[8])    // Lift-off countdown
	ld	hl, (#(_T + 16) + 0)
;E:\supernova\msx\game\time.c:146: Region = 4; T[3] = 150; T[4] = 125; T[5] = 230; T[8] = 0; T[9] = 1; T[10] = 5;
;E:\supernova\msx\game\time.c:132: switch (T[8])    // Lift-off countdown
	ld	a, l
	dec	a
	or	a, h
	jr	z, 00139$
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	z, 00138$
	ld	a, l
	sub	a, #0x03
	or	a, h
	jr	z, 00137$
	ld	a, l
	sub	a, #0x04
	or	a, h
	jr	z, 00136$
	ld	a, l
	sub	a, #0x05
	or	a, h
	jp	nz, 00143$
;E:\supernova\msx\game\time.c:134: case 5: RL(181); break;
	ld	hl, #0x00b5
	call	_RL
	jp	00143$
;E:\supernova\msx\game\time.c:135: case 4: RL(182); break;
00136$:
	ld	hl, #0x00b6
	call	_RL
	jp	00143$
;E:\supernova\msx\game\time.c:136: case 3: RL(191); break;
00137$:
	ld	hl, #0x00bf
	call	_RL
	jp	00143$
;E:\supernova\msx\game\time.c:137: case 2: RL(192); break;
00138$:
	ld	hl, #0x00c0
	call	_RL
	jp	00143$
;E:\supernova\msx\game\time.c:138: case 1:
00139$:
;E:\supernova\msx\game\time.c:139: if (En(10))
	ld	a, #0x0a
	call	_En
	or	a, a
	jr	z, 00141$
;E:\supernova\msx\game\time.c:141: Min(10); Min(26); Min(27); Explode(32);
	ld	a, #0x0a
	call	_Min
	ld	a, #0x1a
	call	_Min
	ld	a, #0x1b
	call	_Min
	ld	a, #0x20
	call	_Explode
;E:\supernova\msx\game\time.c:142: Sound(20); Bor(0, 0); Score(10, 122);
	ld	hl, #0x0014
	call	_Sound
	xor	a, a
	ld	l, a
	call	_Bor
	ld	de, #0x007a
	ld	hl, #0x000a
	call	_Score
;E:\supernova\msx\game\time.c:143: SetNoun(84, 0);
	ld	l, #0x00
	ld	a, #0x54
	call	_SetNoun
;E:\supernova\msx\game\time.c:144: RB(7, 10); Delay(9999); Pause(); Col(10, 7); RS(43);
	ld	l, #0x0a
	ld	a, #0x07
	call	_RB
	ld	hl, #0x270f
	call	_Delay
	call	_Pause
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x002b
	call	_RS
;E:\supernova\msx\game\time.c:145: SET_DEL(PStat, 2); SET_DEL(PStat, 5); SET_DEL(PStat, 6);
	ld	hl, #_PStat+0
	res	1, (hl)
	res	4, (hl)
	res	5, (hl)
;E:\supernova\msx\game\time.c:146: Region = 4; T[3] = 150; T[4] = 125; T[5] = 230; T[8] = 0; T[9] = 1; T[10] = 5;
	ld	hl, #_Region
	ld	(hl), #0x04
	ld	hl, #0x0096
	ld	((_T + 6)), hl
	ld	l, #0x7d
	ld	((_T + 8)), hl
	ld	l, #0xe6
	ld	((_T + 10)), hl
	ld	l, h
	ld	((_T + 16)), hl
	ld	l, #0x01
	ld	((_T + 18)), hl
	ld	l, #0x05
	ld	((_T + 20)), hl
	jr	00143$
00141$:
;E:\supernova\msx\game\time.c:148: else { RS(44); Explode(32); DEAD(); }
	ld	hl, #0x002c
	call	_RS
	ld	a, #0x20
	call	_Explode
	call	_DEAD
;E:\supernova\msx\game\time.c:150: }
00143$:
;E:\supernova\msx\game\time.c:151: if (T[9] < 1) T[9] = 15;
	ld	bc, (#(_T + 18) + 0)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00145$
	ld	hl, #0x000f
	ld	((_T + 18)), hl
00145$:
;E:\supernova\msx\game\time.c:152: if (Region == 4 && Prm == 1 && T[9] == 12) RS(62);
	ld	a, (_Region)
	sub	a, #0x04
	jr	nz, 00147$
	ld	a, (_Prm)
	dec	a
	jr	nz, 00147$
	ld	hl, (#(_T + 18) + 0)
	ld	a, l
	sub	a, #0x0c
	or	a, h
	jr	nz, 00147$
	ld	hl, #0x003e
	call	_RS
00147$:
;E:\supernova\msx\game\time.c:153: if (IN_RANGE(T[10], 1, 4)) RL(194);
	ld	hl, (#(_T + 20) + 0)
	ld	a, l
	sub	a, #0x01
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00151$
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00151$
	ld	hl, #0x00c2
	call	_RL
00151$:
;E:\supernova\msx\game\time.c:154: if (Tic > 3 && Prm == 8 && !En(9) && !En(7)) { RS(6); Add(9); }
	ld	hl, (_Tic)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00780$
	xor	a, #0x80
00780$:
	jp	p, 00160$
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00160$
	ld	a, #0x09
	call	_En
	or	a, a
	jr	nz, 00160$
	ld	a, #0x07
	call	_En
	or	a, a
	jr	nz, 00160$
	ld	hl, #0x0006
	call	_RS
	ld	a, #0x09
	call	_Add
	jr	00161$
00160$:
;E:\supernova\msx\game\time.c:155: else if (Tic > 5 && Prm == 8 && En(9) && !En(16) && !En(7)) { RS(7); Add(16); }
	ld	hl, (_Tic)
	ld	a, #0x05
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00783$
	xor	a, #0x80
00783$:
	jp	p, 00161$
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00161$
	ld	a, #0x09
	call	_En
	or	a, a
	jr	z, 00161$
	ld	a, #0x10
	call	_En
	or	a, a
	jr	nz, 00161$
	ld	a, #0x07
	call	_En
	or	a, a
	jr	nz, 00161$
	ld	hl, #0x0007
	call	_RS
	ld	a, #0x10
	call	_Add
00161$:
;E:\supernova\msx\game\time.c:156: switch (Prm)
	ld	a, (_Prm)
	dec	a
	jr	z, 00165$
	ld	a, (_Prm)
	cp	a, #0x07
	jp	z, 00176$
	cp	a, #0x08
	jp	z, 00179$
	cp	a, #0x0f
	jp	z, 00187$
	cp	a, #0x11
	jp	z, 00187$
	cp	a, #0x13
	jp	z, 00187$
	sub	a, #0x14
	jp	z, 00197$
	jp	00200$
;E:\supernova\msx\game\time.c:158: case 1:
00165$:
;E:\supernova\msx\game\time.c:159: if (Rnd(2) == 0 && T[9] > 12 && T[9] < 15 && Region == 4 && !En(129)) { RL(593); RL(594); Add(129); }
	ld	hl, #0x0002
	call	_Rnd
	ld	a, d
	or	a, e
	jr	nz, 00170$
;E:\supernova\msx\game\time.c:151: if (T[9] < 1) T[9] = 15;
	ld	hl, (#(_T + 18) + 0)
;E:\supernova\msx\game\time.c:159: if (Rnd(2) == 0 && T[9] > 12 && T[9] < 15 && Region == 4 && !En(129)) { RL(593); RL(594); Add(129); }
	ld	a, #0x0c
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00793$
	xor	a, #0x80
00793$:
	jp	p, 00170$
	ld	de, #0x000f
	cp	a, a
	sbc	hl, de
	jr	nc, 00170$
	ld	a, (_Region)
	sub	a, #0x04
	jr	nz, 00170$
	ld	a, #0x81
	call	_En
	or	a, a
	jr	nz, 00170$
	ld	hl, #0x0251
	call	_RL
	ld	hl, #0x0252
	call	_RL
	ld	a, #0x81
	call	_Add
	jp	00200$
00170$:
;E:\supernova\msx\game\time.c:160: else if (Rnd(20) == 0 && Region == 4) RL(592);
	ld	hl, #0x0014
	call	_Rnd
	ld	a, d
	or	a, e
	jp	nz, 00200$
	ld	a, (_Region)
	sub	a, #0x04
	jp	nz, 00200$
	ld	hl, #0x0250
	call	_RL
;E:\supernova\msx\game\time.c:161: break;
	jp	00200$
;E:\supernova\msx\game\time.c:162: case 7: if (Rnd(5) == 0) RL(595); break;
00176$:
	ld	hl, #0x0005
	call	_Rnd
	ld	a, d
	or	a, e
	jp	nz, 00200$
	ld	hl, #0x0253
	call	_RL
	jp	00200$
;E:\supernova\msx\game\time.c:163: case 8: if (Rnd(3) == 1) RL(24); else if (Rnd(3) == 1) RL(178); break;
00179$:
	ld	hl, #0x0003
	call	_Rnd
	ld	a, e
	dec	a
	or	a, d
	jr	nz, 00183$
	ld	hl, #0x0018
	call	_RL
	jp	00200$
00183$:
	ld	hl, #0x0003
	call	_Rnd
	ld	a, e
	dec	a
	or	a, d
	jr	nz, 00200$
	ld	hl, #0x00b2
	call	_RL
	jr	00200$
;E:\supernova\msx\game\time.c:164: case 15: case 17: case 19:
00187$:
;E:\supernova\msx\game\time.c:165: switch (Rnd(60))
	ld	hl, #0x003c
	call	_Rnd
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00188$
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	z, 00189$
	ld	a, e
	sub	a, #0x03
	or	a, d
	jr	z, 00191$
	ld	a, e
	sub	a, #0x04
	or	a, d
	jr	z, 00191$
	jr	00200$
;E:\supernova\msx\game\time.c:167: case 1: RL(596); break;
00188$:
	ld	hl, #0x0254
	call	_RL
	jr	00200$
;E:\supernova\msx\game\time.c:168: case 2: RL(597); break;
00189$:
	ld	hl, #0x0255
	call	_RL
	jr	00200$
;E:\supernova\msx\game\time.c:169: case 3: case 4: if (RC > 40) { if (T[4] > 10) T[4] = 10; RL(598); } break;
00191$:
	ld	hl, (_RC)
	ld	a, #0x28
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00806$
	xor	a, #0x80
00806$:
	jp	p, 00200$
	ld	hl, (#(_T + 8) + 0)
	ld	a, #0x0a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00807$
	xor	a, #0x80
00807$:
	jp	p, 00193$
	ld	hl, #0x000a
	ld	((_T + 8)), hl
00193$:
	ld	hl, #0x0256
	call	_RL
;E:\supernova\msx\game\time.c:171: break;
	jr	00200$
;E:\supernova\msx\game\time.c:172: case 20: if (Rnd(4) == 1) RL(25); break;
00197$:
	ld	hl, #0x0004
	call	_Rnd
	ld	a, e
	dec	a
	or	a, d
	jr	nz, 00200$
	ld	hl, #0x0019
	call	_RL
;E:\supernova\msx\game\time.c:173: }
00200$:
;E:\supernova\msx\game\time.c:174: if (Prm == SinkRm) { RL(85); LOC_ADD(Prm, 79); }
	ld	a, (_Prm)
	ld	hl, #_SinkRm
	sub	a, (hl)
	ret	nz
	ld	hl, #0x0055
	call	_RL
	ld	a, (#_Prm + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Loc
	add	hl, de
	ld	bc, #0x0009
	add	hl, bc
	set	6, (hl)
;E:\supernova\msx\game\time.c:175: }
	ret
;E:\supernova\msx\game\time.c:177: void Time2B(void)
;	---------------------------------
; Function Time2B
; ---------------------------------
_Time2B::
;E:\supernova\msx\game\time.c:179: Col(10, 7);   // Jungle Planet
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
;E:\supernova\msx\game\time.c:180: Maze = !Maze;
	ld	a, (_Maze+0)
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	(#_Maze), a
;E:\supernova\msx\game\time.c:181: if (IN_RANGE(Prm, 42, 49)) { Wr("Some of the walls shift positions."); Wln(); Walls(4); }
	ld	a, (_Prm+0)
	sub	a, #0x2a
	jr	c, 00102$
	ld	a, #0x31
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00102$
	ld	hl, #___str_18
	call	_Wr
	call	_Wln
	ld	a, #0x04
	call	_Walls
00102$:
;E:\supernova\msx\game\time.c:182: if (Prm == 7) { if (Rnd(5) == 0) RL(595); }
	ld	a, (_Prm)
	sub	a, #0x07
	jr	nz, 00133$
	ld	hl, #0x0005
	call	_Rnd
	ld	a, d
	or	a, e
	jp	nz, 00134$
	ld	hl, #0x0253
	call	_RL
	jp	00134$
00133$:
;E:\supernova\msx\game\time.c:183: else if (IN_RANGE(Prm, 26, 29) || IN_RANGE(Prm, 32, 34) || Prm == 59 || Prm == 60)
	ld	a, (_Prm+0)
	sub	a, #0x1a
	jr	c, 00129$
	ld	a, #0x1d
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nc, 00124$
00129$:
	ld	a, (_Prm+0)
	sub	a, #0x20
	jr	c, 00130$
	ld	a, #0x22
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nc, 00124$
00130$:
	ld	a, (_Prm)
	cp	a, #0x3b
	jr	z, 00124$
	sub	a, #0x3c
	jp	nz, 00125$
00124$:
;E:\supernova\msx\game\time.c:185: switch (Rnd(40))
	ld	hl, #0x0028
	call	_Rnd
	ld	a, #0x0b
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	c, 00134$
	ld	hl, #00445$
	add	hl, de
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	jp	(hl)
00445$:
	.dw	00107$
	.dw	00107$
	.dw	00109$
	.dw	00109$
	.dw	00110$
	.dw	00112$
	.dw	00112$
	.dw	00114$
	.dw	00114$
	.dw	00115$
	.dw	00116$
	.dw	00117$
;E:\supernova\msx\game\time.c:187: case 0: case 1: RL(210); break;
00107$:
	ld	hl, #0x00d2
	call	_RL
	jr	00134$
;E:\supernova\msx\game\time.c:188: case 2: case 3: RL(211); break;
00109$:
	ld	hl, #0x00d3
	call	_RL
	jr	00134$
;E:\supernova\msx\game\time.c:189: case 4: RS(77); break;
00110$:
	ld	hl, #0x004d
	call	_RS
	jr	00134$
;E:\supernova\msx\game\time.c:190: case 5: case 6: RS(78); break;
00112$:
	ld	hl, #0x004e
	call	_RS
	jr	00134$
;E:\supernova\msx\game\time.c:191: case 7: case 8: RL(212); break;
00114$:
	ld	hl, #0x00d4
	call	_RL
	jr	00134$
;E:\supernova\msx\game\time.c:192: case 9: RL(213); break;
00115$:
	ld	hl, #0x00d5
	call	_RL
	jr	00134$
;E:\supernova\msx\game\time.c:193: case 10: RL(214); break;
00116$:
	ld	hl, #0x00d6
	call	_RL
	jr	00134$
;E:\supernova\msx\game\time.c:194: case 11: RL(215); Play(6000, 6001, 20); break;
00117$:
	ld	hl, #0x00d7
	call	_RL
	ld	hl, #0x0014
	push	hl
	ld	de, #0x1771
	ld	hl, #0x1770
	call	_Play
;E:\supernova\msx\game\time.c:195: }
	jr	00134$
00125$:
;E:\supernova\msx\game\time.c:197: else if (IN_RANGE(Prm, 42, 50)) { if (Rnd(7) == 0) RL(280); }
	ld	a, (_Prm+0)
	sub	a, #0x2a
	jr	c, 00134$
	ld	a, #0x32
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00134$
	ld	hl, #0x0007
	call	_Rnd
	ld	a, d
	or	a, e
	jr	nz, 00134$
	ld	hl, #0x0118
	call	_RL
00134$:
;E:\supernova\msx\game\time.c:198: if (Prm == 28 && Rnd(2) == 0) RL(233);
	ld	a, (_Prm)
	sub	a, #0x1c
	jr	nz, 00136$
	ld	hl, #0x0002
	call	_Rnd
	ld	a, d
	or	a, e
	jr	nz, 00136$
	ld	hl, #0x00e9
	call	_RL
00136$:
;E:\supernova\msx\game\time.c:199: if (Prm == SinkRm) { RL(85); LOC_ADD(Prm, 79); }
	ld	a, (_Prm)
	ld	hl, #_SinkRm
	sub	a, (hl)
	jr	nz, 00139$
	ld	hl, #0x0055
	call	_RL
	ld	bc, #_g_Loc+0
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
	ld	bc, #0x0009
	add	hl, bc
	set	6, (hl)
00139$:
;E:\supernova\msx\game\time.c:200: if (T[11] == 2) RL(205);
	ld	hl, (#(_T + 22) + 0)
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	nz, 00141$
	ld	hl, #0x00cd
	call	_RL
00141$:
;E:\supernova\msx\game\time.c:201: if (T[11] == 1) { RS(70); DEAD(); }
	ld	hl, (#(_T + 22) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00143$
	ld	hl, #0x0046
	call	_RS
	call	_DEAD
00143$:
;E:\supernova\msx\game\time.c:202: if (T[13] == 1)
	ld	hl, (#_T + 26)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00146$
;E:\supernova\msx\game\time.c:204: RB(11, 10);
	ld	l, #0x0a
	ld	a, #0x0b
	call	_RB
;E:\supernova\msx\game\time.c:205: for (x = 1; x <= 3; x++) { Tune(4, 2, 200); Delay(99); Tune(4, 5, 200); Delay(99); }
	ld	hl, #_x
	ld	(hl), #0x01
00172$:
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0002
	ld	l, #0x04
	call	_Tune
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0005
	ld	l, #0x04
	call	_Tune
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x03
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00172$
;E:\supernova\msx\game\time.c:206: Pause();
	call	_Pause
00146$:
;E:\supernova\msx\game\time.c:208: if (T[14] == 2 && (Prm == 40 || Prm == 41)) RL(251);
	ld	hl, (#(_T + 28) + 0)
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	nz, 00148$
	ld	a, (_Prm)
	cp	a, #0x28
	jr	z, 00147$
	sub	a, #0x29
	jr	nz, 00148$
00147$:
	ld	hl, #0x00fb
	call	_RL
00148$:
;E:\supernova\msx\game\time.c:209: if (T[14] == 1)
	ld	hl, (#(_T + 28) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00155$
;E:\supernova\msx\game\time.c:210: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x28
	jr	z, 00151$
	sub	a, #0x29
	jr	z, 00152$
	jr	00155$
;E:\supernova\msx\game\time.c:212: case 40: RL(249); Walls(8); break;
00151$:
	ld	hl, #0x00f9
	call	_RL
	ld	a, #0x08
	call	_Walls
	jr	00155$
;E:\supernova\msx\game\time.c:213: case 41: RL(250); Walls(8); break;
00152$:
	ld	hl, #0x00fa
	call	_RL
	ld	a, #0x08
	call	_Walls
;E:\supernova\msx\game\time.c:214: }
00155$:
;E:\supernova\msx\game\time.c:215: if (T[15] == 1 && Prm == 39) { RS(94); DEAD(); }
	ld	hl, (#_T + 30)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00157$
	ld	a, (_Prm)
	sub	a, #0x27
	jr	nz, 00157$
	ld	hl, #0x005e
	call	_RS
	call	_DEAD
00157$:
;E:\supernova\msx\game\time.c:216: if (T[17] == 4) { RS(109); DEAD(); }
	ld	hl, (#(_T + 34) + 0)
	ld	a, l
	sub	a, #0x04
	or	a, h
	jr	nz, 00160$
	ld	hl, #0x006d
	call	_RS
	call	_DEAD
00160$:
;E:\supernova\msx\game\time.c:217: if (T[17] == 1) { Add(36); if (Prm == 56) { RS(110); Walls(8); } }
	ld	hl, (#(_T + 34) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00164$
	ld	a, #0x24
	call	_Add
	ld	a, (_Prm)
	sub	a, #0x38
	jr	nz, 00164$
	ld	hl, #0x006e
	call	_RS
	ld	a, #0x08
	call	_Walls
00164$:
;E:\supernova\msx\game\time.c:218: if (T[18] == 2) { RS(123); Walls(12); }
	ld	hl, (#(_T + 36) + 0)
	ld	a, l
	sub	a, #0x02
	or	a, h
	jr	nz, 00166$
	ld	hl, #0x007b
	call	_RS
	ld	a, #0x0c
	call	_Walls
00166$:
;E:\supernova\msx\game\time.c:219: if (T[18] == 1 && Prm == 53) { RS(124); Walls(12); DEAD(); }
	ld	hl, (#(_T + 36) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00168$
	ld	a, (_Prm)
	sub	a, #0x35
	jr	nz, 00168$
	ld	hl, #0x007c
	call	_RS
	ld	a, #0x0c
	call	_Walls
	call	_DEAD
00168$:
;E:\supernova\msx\game\time.c:220: if (T[19] == 1) { RS(128); Walls(12); DEAD(); }
	ld	hl, (#_T + 38)
	ld	a, l
	dec	a
	or	a, h
	ret	nz
	ld	hl, #0x0080
	call	_RS
	ld	a, #0x0c
	call	_Walls
;E:\supernova\msx\game\time.c:221: }
	jp	_DEAD
___str_18:
	.ascii "Some of the walls shift positions."
	.db 0x00
;E:\supernova\msx\game\time.c:223: void Time2C(void)
;	---------------------------------
; Function Time2C
; ---------------------------------
_Time2C::
;E:\supernova\msx\game\time.c:225: Col(11, 7);   // Inner Planet
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\time.c:226: if (T[20] == 1)
	ld	hl, (#(_T + 40) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00105$
;E:\supernova\msx\game\time.c:227: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x42
	jr	z, 00102$
	sub	a, #0x49
	jr	nz, 00105$
;E:\supernova\msx\game\time.c:229: case 73: DClose(20); break;
	ld	a, #0x14
	call	_DClose
	jr	00105$
;E:\supernova\msx\game\time.c:230: case 66: RL(337); Play(105, 50, 20); break;
00102$:
	ld	hl, #0x0151
	call	_RL
	ld	hl, #0x0014
	push	hl
	ld	de, #0x0032
	ld	l, #0x69
	call	_Play
;E:\supernova\msx\game\time.c:231: }
00105$:
;E:\supernova\msx\game\time.c:232: Col(10, 7);
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
;E:\supernova\msx\game\time.c:233: if (Prm == 74 && !En(47)) { Wr("There is something flashing on the computer's screen."); Wln(); }
	ld	a, (_Prm)
	sub	a, #0x4a
	jr	nz, 00107$
	ld	a, #0x2f
	call	_En
	or	a, a
	jr	nz, 00107$
	ld	hl, #___str_19
	call	_Wr
	call	_Wln
00107$:
;E:\supernova\msx\game\time.c:234: if (Prm == 73 && CodeSet != 4)
	ld	a, (_Prm)
	sub	a, #0x49
	jr	nz, 00113$
	ld	a, (_CodeSet)
	sub	a, #0x04
	jr	z, 00113$
;E:\supernova\msx\game\time.c:236: Wr("There's an alarm sound coming over the radio."); Wln();
	ld	hl, #___str_20
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:237: for (x = 1; x <= 23; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00134$:
;E:\supernova\msx\game\time.c:239: for (i = 450; i <= 999; i++) Sound(i);
	ld	hl, #0x01c2
	ld	(_i), hl
00130$:
	ld	hl, (_i)
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0xe7
	cp	a, l
	ld	a, #0x03
	sbc	a, h
	jp	po, 00302$
	xor	a, #0x80
00302$:
	jp	p, 00130$
;E:\supernova\msx\game\time.c:240: for (i = 999; i >= 450; i--) Sound(i);
	ld	hl, #0x03e7
	ld	(_i), hl
00132$:
	ld	hl, (_i)
	call	_Sound
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	ld	bc, (_i)
	ld	a, c
	sub	a, #0xc2
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	nc, 00132$
;E:\supernova\msx\game\time.c:237: for (x = 1; x <= 23; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x17
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00134$
;E:\supernova\msx\game\time.c:242: NoSound();
	call	_NoSound
00113$:
;E:\supernova\msx\game\time.c:244: switch (Rnd(50))
	ld	hl, #0x0032
	call	_Rnd
	ld	a, #0x06
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	c, 00124$
	ld	hl, #00303$
	add	hl, de
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	jp	(hl)
00303$:
	.dw	00124$
	.dw	00117$
	.dw	00117$
	.dw	00117$
	.dw	00121$
	.dw	00121$
	.dw	00122$
;E:\supernova\msx\game\time.c:246: case 1: case 2: case 3: if (Here(38)) RL(588); break;
00117$:
	ld	a, #0x26
	call	_Here
	or	a, a
	ret	z
	ld	hl, #0x024c
	jp	_RL
;E:\supernova\msx\game\time.c:247: case 4: case 5: RL(589); Explode(3); break;
00121$:
	ld	hl, #0x024d
	call	_RL
	ld	a, #0x03
	jp	_Explode
;E:\supernova\msx\game\time.c:248: case 6: RS(244); for (x = 1; x <= 7; x++) Static(); break;
00122$:
	ld	hl, #0x00f4
	call	_RS
	ld	hl, #_x
	ld	(hl), #0x01
00136$:
	call	_Static
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x07
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00136$
	ret
;E:\supernova\msx\game\time.c:249: default: if ((Prm == 64 || Prm == 73) && Rnd(9) == 0) { RL(590); RL(591); }
00124$:
	ld	a, (_Prm)
	cp	a, #0x40
	jr	z, 00128$
	sub	a, #0x49
	ret	nz
00128$:
	ld	hl, #0x0009
	call	_Rnd
	ld	a, d
	or	a, e
	ret	nz
	ld	hl, #0x024e
	call	_RL
	ld	hl, #0x024f
;E:\supernova\msx\game\time.c:250: }
;E:\supernova\msx\game\time.c:251: }
	jp	_RL
___str_19:
	.ascii "There is something flashing on the computer's screen."
	.db 0x00
___str_20:
	.ascii "There's an alarm sound coming over the radio."
	.db 0x00
;E:\supernova\msx\game\time.c:253: static u8 Warn(i16 message, i16 ifTime, i16 said)
;	---------------------------------
; Function Warn
; ---------------------------------
_Warn:
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	dec	sp
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\supernova\msx\game\time.c:255: u8 r = 0;
	ld	-5 (ix), #0x00
;E:\supernova\msx\game\time.c:256: if (!En((u8)said) && ifTime >= T[26])
	ld	a, 4 (ix)
	ld	-4 (ix), a
	push	de
	call	_En
	pop	de
	or	a, a
	jr	nz, 00111$
	ld	hl, (#(_T + 52) + 0)
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00155$
	xor	a, #0x80
00155$:
	jp	m, 00111$
;E:\supernova\msx\game\time.c:258: if (said != 59) { Static(); RS(message); Static(); }
	ld	a, 4 (ix)
	ld	b, 5 (ix)
	sub	a, #0x3b
	or	a, b
	ld	a, #0x01
	jr	z, 00157$
	xor	a, a
00157$:
	ld	-3 (ix), a
	bit	0, -3 (ix)
	jr	nz, 00104$
	call	_Static
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_RS
	call	_Static
	jr	00105$
00104$:
;E:\supernova\msx\game\time.c:259: else if (Prm > 99) { Static(); RS(message); Static(); }
	ld	a, #0x63
	ld	iy, #_Prm
	sub	a, 0 (iy)
	jr	nc, 00105$
	call	_Static
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_RS
	call	_Static
00105$:
;E:\supernova\msx\game\time.c:260: if (said == 59 && Prm < 100) { }
	ld	a, -3 (ix)
	or	a, a
	jr	z, 00107$
	ld	a, (_Prm+0)
	sub	a, #0x64
	jr	c, 00111$
00107$:
;E:\supernova\msx\game\time.c:261: else { r = 1; Add((u8)said); }
	ld	-5 (ix), #0x01
	ld	a, -4 (ix)
	call	_Add
00111$:
;E:\supernova\msx\game\time.c:263: return r;
	ld	a, -5 (ix)
;E:\supernova\msx\game\time.c:264: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	bc
	jp	(hl)
;E:\supernova\msx\game\time.c:266: void Time2D(void)
;	---------------------------------
; Function Time2D
; ---------------------------------
_Time2D::
	call	___sdcc_enter_ix
	push	af
;E:\supernova\msx\game\time.c:268: Col(11, 7);   // Planetship
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\time.c:269: for (x = 0; x <= 2; x++) if (T[23 + x] > 2) Score(20, 118 + x);   // 60 total points
	xor	a, a
	ld	(#_x), a
00247$:
	ld	a, (_x)
	add	a, #0x17
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
	add	hl, hl
	ld	de, #_T
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0x02
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	po, 00765$
	xor	a, #0x80
00765$:
	jp	p, 00248$
	ld	a, (_x)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0076
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0014
	call	_Score
00248$:
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x02
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00247$
;E:\supernova\msx\game\time.c:270: if (En(64)) Score(10, 121);
	ld	a, #0x40
	call	_En
	or	a, a
	jr	z, 00105$
	ld	de, #0x0079
	ld	hl, #0x000a
	call	_Score
00105$:
;E:\supernova\msx\game\time.c:271: if (T[21] == 1)
	ld	hl, (#(_T + 42) + 0)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00110$
;E:\supernova\msx\game\time.c:272: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x56
	jr	z, 00107$
	sub	a, #0x5b
	jr	nz, 00110$
;E:\supernova\msx\game\time.c:274: case 91: DClose(20); break;
	ld	a, #0x14
	call	_DClose
	jr	00110$
;E:\supernova\msx\game\time.c:275: case 86: RL(337); Play(110, 50, 15); break;
00107$:
	ld	hl, #0x0151
	call	_RL
	ld	hl, #0x000f
	push	hl
	ld	de, #0x0032
	ld	l, #0x6e
	call	_Play
;E:\supernova\msx\game\time.c:276: }
00110$:
;E:\supernova\msx\game\time.c:277: Col(10, 7);
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
;E:\supernova\msx\game\time.c:278: if (Prm == 95 && !En(48))
	ld	a, (_Prm)
	sub	a, #0x5f
	jr	nz, 00112$
	ld	a, #0x30
	call	_En
	or	a, a
	jr	nz, 00112$
;E:\supernova\msx\game\time.c:280: Wr("A loud siren is sounding off..."); Wln();
	ld	hl, #___str_21
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:281: Play(300, 530, 6); Delay(200); Play(300, 530, 6);
	ld	hl, #0x0006
	push	hl
	ld	de, #0x0212
	ld	hl, #0x012c
	call	_Play
	ld	hl, #0x00c8
	call	_Delay
	ld	hl, #0x0006
	push	hl
	ld	de, #0x0212
	ld	hl, #0x012c
	call	_Play
00112$:
;E:\supernova\msx\game\time.c:283: if (Prm == 91 && !En(53))
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00116$
	ld	a, #0x35
	call	_En
	or	a, a
	jr	nz, 00116$
;E:\supernova\msx\game\time.c:285: Wr("An alarm is ringing..."); Wln();
	ld	hl, #___str_22
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\time.c:286: for (x = 1; x <= 23; x++) { Sound(400); Delay(99); Sound(940); Delay(60); NoSound(); }
	ld	hl, #_x
	ld	(hl), #0x01
00249$:
	ld	hl, #0x0190
	call	_Sound
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x03ac
	call	_Sound
	ld	hl, #0x003c
	call	_Delay
	call	_NoSound
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x17
	ld	iy, #_x
	sub	a, 0 (iy)
	jr	nc, 00249$
00116$:
;E:\supernova\msx\game\time.c:288: if (T[22] == 1)
	ld	hl, (#_T + 44)
	ld	a, l
	dec	a
	or	a, h
	jp	nz, 00125$
;E:\supernova\msx\game\time.c:290: Wr("The door slides open..."); Play(50, 60, 65);
	ld	hl, #___str_23
	call	_Wr
	ld	hl, #0x0041
	push	hl
	ld	de, #0x003c
	ld	l, #0x32
	call	_Play
;E:\supernova\msx\game\time.c:291: Wr("then closes."); Wln(); Play(60, 50, 60);
	ld	hl, #___str_24
	call	_Wr
	call	_Wln
	ld	hl, #0x003c
	push	hl
	ld	de, #0x0032
	call	_Play
;E:\supernova\msx\game\time.c:292: if (En(50)) RS(153);
	ld	a, #0x32
	call	_En
	or	a, a
	jr	z, 00122$
	ld	hl, #0x0099
	call	_RS
	jr	00123$
00122$:
;E:\supernova\msx\game\time.c:293: else if (SetEmpty(Inv, 4)) { RS(247); RS(248); }
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetEmpty
	or	a, a
	jr	z, 00119$
	ld	hl, #0x00f7
	call	_RS
	ld	hl, #0x00f8
	call	_RS
	jr	00123$
00119$:
;E:\supernova\msx\game\time.c:294: else { RS(154); RS(155); SetClear(Inv, 4); }
	ld	hl, #0x009a
	call	_RS
	ld	hl, #0x009b
	call	_RS
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetClear
00123$:
;E:\supernova\msx\game\time.c:295: Delay(2500); Wr("The door slides open..."); Play(50, 60, 65);
	ld	hl, #0x09c4
	call	_Delay
	ld	hl, #___str_23
	call	_Wr
	ld	hl, #0x0041
	push	hl
	ld	de, #0x003c
	ld	l, #0x32
	call	_Play
;E:\supernova\msx\game\time.c:296: Wr("then closes."); Wln(); Play(60, 50, 65);
	ld	hl, #___str_24
	call	_Wr
	call	_Wln
	ld	hl, #0x0041
	push	hl
	ld	de, #0x0032
	ld	l, #0x3c
	call	_Play
00125$:
;E:\supernova\msx\game\time.c:298: switch (T[23])
	ld	hl, (#(_T + 46) + 0)
	ld	a, l
	sub	a, #0x01
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00175$
	ld	a, #0x0d
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	c, 00175$
	ld	c, l
	dec	c
	ld	b, #0x00
	ld	hl, #00777$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00777$:
	.dw	00171$
	.dw	00175$
	.dw	00175$
	.dw	00157$
	.dw	00156$
	.dw	00149$
	.dw	00146$
	.dw	00146$
	.dw	00138$
	.dw	00137$
	.dw	00130$
	.dw	00129$
	.dw	00126$
;E:\supernova\msx\game\time.c:300: case 13: if (Prm == 91) RL(438); MC(2, 91, 91, 161); Add(53); break;
00126$:
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00128$
	ld	hl, #0x01b6
	call	_RL
00128$:
	ld	hl, #0x00a1
	push	hl
	ld	a, #0x5b
	push	af
	inc	sp
	ld	l, #0x5b
	ld	a, #0x02
	call	_MC
	ld	a, #0x35
	call	_Add
	jp	00175$
;E:\supernova\msx\game\time.c:301: case 12: MC(2, 91, 91, 162); break;
00129$:
	ld	hl, #0x00a2
	push	hl
	ld	a, #0x5b
	push	af
	inc	sp
	ld	l, #0x5b
	ld	a, #0x02
	call	_MC
	jp	00175$
;E:\supernova\msx\game\time.c:302: case 11:
00130$:
;E:\supernova\msx\game\time.c:303: if (Prm == 86 || Prm == 91) DOpen(15);
	ld	a, (_Prm)
	cp	a, #0x56
	jr	z, 00131$
	sub	a, #0x5b
	jr	nz, 00132$
00131$:
	ld	a, #0x0f
	call	_DOpen
00132$:
;E:\supernova\msx\game\time.c:304: MC(2, 91, 86, 163); MC(2, 86, 86, 164);
	ld	hl, #0x00a3
	push	hl
	ld	a, #0x56
	push	af
	inc	sp
	ld	l, #0x5b
	ld	a, #0x02
	call	_MC
	ld	hl, #0x00a4
	push	hl
	ld	a, #0x56
	push	af
	inc	sp
	ld	l, #0x56
	ld	a, #0x02
	call	_MC
;E:\supernova\msx\game\time.c:305: if (Prm == 86 || Prm == 91) DClose(15);
	ld	a, (_Prm)
	cp	a, #0x56
	jr	z, 00134$
	sub	a, #0x5b
	jp	nz, 00175$
00134$:
	ld	a, #0x0f
	call	_DClose
;E:\supernova\msx\game\time.c:306: break;
	jp	00175$
;E:\supernova\msx\game\time.c:307: case 10: MC(2, 86, 87, 165); MC(2, 87, 87, 166); break;
00137$:
	ld	hl, #0x00a5
	push	hl
	ld	a, #0x57
	push	af
	inc	sp
	ld	l, #0x56
	ld	a, #0x02
	call	_MC
	ld	hl, #0x00a6
	push	hl
	ld	a, #0x57
	push	af
	inc	sp
	ld	l, #0x57
	ld	a, #0x02
	call	_MC
	jp	00175$
;E:\supernova\msx\game\time.c:308: case 9:
00138$:
;E:\supernova\msx\game\time.c:309: if (Prm == 87 || Prm == 89) DOpen(65);
	ld	a, (_Prm)
	cp	a, #0x57
	jr	z, 00139$
	sub	a, #0x59
	jr	nz, 00140$
00139$:
	ld	a, #0x41
	call	_DOpen
00140$:
;E:\supernova\msx\game\time.c:310: MC(2, 87, 89, 167); MC(2, 89, 89, 168);
	ld	hl, #0x00a7
	push	hl
	ld	a, #0x59
	push	af
	inc	sp
	ld	l, #0x57
	ld	a, #0x02
	call	_MC
	ld	hl, #0x00a8
	push	hl
	ld	a, #0x59
	push	af
	inc	sp
	ld	l, #0x59
	ld	a, #0x02
	call	_MC
;E:\supernova\msx\game\time.c:311: if (Prm == 87 || Prm == 89) DClose(65);
	ld	a, (_Prm)
	cp	a, #0x57
	jr	z, 00142$
	sub	a, #0x59
	jp	nz, 00175$
00142$:
	ld	a, #0x41
	call	_DClose
;E:\supernova\msx\game\time.c:312: break;
	jp	00175$
;E:\supernova\msx\game\time.c:313: case 7: case 8: if (Prm == 89) { ScrnSet = 4; RL(417); } break;
00146$:
	ld	a, (_Prm)
	sub	a, #0x59
	jp	nz, 00175$
	ld	hl, #_ScrnSet
	ld	(hl), #0x04
	ld	hl, #0x01a1
	call	_RL
	jp	00175$
;E:\supernova\msx\game\time.c:314: case 6:
00149$:
;E:\supernova\msx\game\time.c:315: if (Prm == 87 || Prm == 89) DOpen(65);
	ld	a, (_Prm)
	cp	a, #0x57
	jr	z, 00150$
	sub	a, #0x59
	jr	nz, 00151$
00150$:
	ld	a, #0x41
	call	_DOpen
00151$:
;E:\supernova\msx\game\time.c:316: MC(2, 89, 87, 169); MC(2, 87, 87, 170);
	ld	hl, #0x00a9
	push	hl
	ld	a, #0x57
	push	af
	inc	sp
	ld	l, #0x59
	ld	a, #0x02
	call	_MC
	ld	hl, #0x00aa
	push	hl
	ld	a, #0x57
	push	af
	inc	sp
	ld	l, #0x57
	ld	a, #0x02
	call	_MC
;E:\supernova\msx\game\time.c:317: if (Prm == 87 || Prm == 89) DClose(65);
	ld	a, (_Prm)
	cp	a, #0x57
	jr	z, 00153$
	sub	a, #0x59
	jp	nz, 00175$
00153$:
	ld	a, #0x41
	call	_DClose
;E:\supernova\msx\game\time.c:318: break;
	jp	00175$
;E:\supernova\msx\game\time.c:319: case 5: MC(2, 87, 86, 171); MC(2, 86, 86, 172); break;
00156$:
	ld	hl, #0x00ab
	push	hl
	ld	a, #0x56
	push	af
	inc	sp
	ld	l, #0x57
	ld	a, #0x02
	call	_MC
	ld	hl, #0x00ac
	push	hl
	ld	a, #0x56
	push	af
	inc	sp
	ld	l, #0x56
	ld	a, #0x02
	call	_MC
	jp	00175$
;E:\supernova\msx\game\time.c:320: case 4:
00157$:
;E:\supernova\msx\game\time.c:321: if (T[21] < 2)
	ld	bc, (#(_T + 42) + 0)
	ld	a, c
	sub	a, #0x02
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00169$
;E:\supernova\msx\game\time.c:323: MC(2, 86, 91, 173); if (Prm == 86 || Prm == 91) DOpen(15);
	ld	hl, #0x00ad
	push	hl
	ld	a, #0x5b
	push	af
	inc	sp
	ld	l, #0x56
	ld	a, #0x02
	call	_MC
	ld	a, (_Prm)
	cp	a, #0x56
	jr	z, 00158$
	sub	a, #0x5b
	jr	nz, 00159$
00158$:
	ld	a, #0x0f
	call	_DOpen
00159$:
;E:\supernova\msx\game\time.c:324: if (Prm == 86) RL(418);
	ld	a, (_Prm)
	sub	a, #0x56
	jr	nz, 00162$
	ld	hl, #0x01a2
	call	_RL
00162$:
;E:\supernova\msx\game\time.c:325: MC(2, 91, 91, 174); if (Prm == 86 || Prm == 91) DClose(15);
	ld	hl, #0x00ae
	push	hl
	ld	a, #0x5b
	push	af
	inc	sp
	ld	l, #0x5b
	ld	a, #0x02
	call	_MC
	ld	a, (_Prm)
	cp	a, #0x56
	jr	z, 00163$
	sub	a, #0x5b
	jr	nz, 00175$
00163$:
	ld	a, #0x0f
	call	_DClose
	jr	00175$
00169$:
;E:\supernova\msx\game\time.c:327: else if (Prm == 86) { RL(418); MC(2, 0, 91, 0); }
	ld	a, (_Prm)
	sub	a, #0x56
	jr	nz, 00175$
	ld	hl, #0x01a2
	call	_RL
	ld	hl, #0x0000
	push	hl
	ld	a, #0x5b
	push	af
	inc	sp
	ld	l, #0x00
	ld	a, #0x02
	call	_MC
;E:\supernova\msx\game\time.c:328: break;
	jr	00175$
;E:\supernova\msx\game\time.c:329: case 1:
00171$:
;E:\supernova\msx\game\time.c:330: if (Prm == 91) { RL(419); Van(123); DClose(55); } else Van(123);
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00173$
	ld	hl, #0x01a3
	call	_RL
	ld	a, #0x7b
	call	_Van
	ld	a, #0x37
	call	_DClose
	jr	00175$
00173$:
	ld	a, #0x7b
	call	_Van
;E:\supernova\msx\game\time.c:332: }
00175$:
;E:\supernova\msx\game\time.c:333: if (T[23] > 1 && T[23] < 4 && Prm == 91) { T[24] = 7; T[23] = Null; }
	ld	hl, (#(_T + 46) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00812$
	xor	a, #0x80
00812$:
	jp	p, 00177$
	ld	de, #0x0004
	cp	a, a
	sbc	hl, de
	jr	nc, 00177$
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00177$
	ld	hl, #0x0007
	ld	((_T + 48)), hl
	ld	l, h
	ld	((_T + 46)), hl
00177$:
;E:\supernova\msx\game\time.c:334: switch (T[24])
	ld	bc, (#(_T + 48) + 0)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00206$
	ld	a, #0x07
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	c, 00206$
	ld	e, c
	dec	e
	ld	d, #0x00
	ld	hl, #00815$
	add	hl, de
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	jp	(hl)
00815$:
	.dw	00203$
	.dw	00197$
	.dw	00197$
	.dw	00189$
	.dw	00186$
	.dw	00183$
	.dw	00180$
;E:\supernova\msx\game\time.c:336: case 7: if (Prm == 91) RS(175); break;
00180$:
	ld	a, (_Prm)
	sub	a, #0x5b
	jp	nz, 00206$
	ld	hl, #0x00af
	call	_RS
	jp	00206$
;E:\supernova\msx\game\time.c:337: case 6: if (Prm == 91) { RS(176); RS(177); } break;
00183$:
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00206$
	ld	hl, #0x00b0
	call	_RS
	ld	hl, #0x00b1
	call	_RS
	jr	00206$
;E:\supernova\msx\game\time.c:338: case 5: if (Prm == 91) { RS(178); RS(179); } break;
00186$:
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00206$
	ld	hl, #0x00b2
	call	_RS
	ld	hl, #0x00b3
	call	_RS
	jr	00206$
;E:\supernova\msx\game\time.c:339: case 4: if (Prm == 91) RL(420); if (!IN29(Inv, 1)) T[24] = 2; break;
00189$:
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00194$
	ld	hl, #0x01a4
	call	_RL
00194$:
	ld	a, (#_Inv + 0)
	and	a, #0x01
	jr	nz, 00206$
	ld	hl, #0x0002
	ld	((_T + 48)), hl
	jr	00206$
;E:\supernova\msx\game\time.c:340: case 2: case 3: if (Prm == 91 && IN29(Inv, 1)) RL(419 + T[24]); break;
00197$:
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00206$
	ld	a, (#_Inv + 0)
	and	a, #0x01
	jr	z, 00206$
	ld	hl, #0x01a3
	add	hl, bc
	call	_RL
	jr	00206$
;E:\supernova\msx\game\time.c:341: case 1:
00203$:
;E:\supernova\msx\game\time.c:342: Van(123);
	ld	a, #0x7b
	call	_Van
;E:\supernova\msx\game\time.c:343: if (Prm == 91) { RS(180); DOpen(55); RL(418); DClose(55); }
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00206$
	ld	hl, #0x00b4
	call	_RS
	ld	a, #0x37
	call	_DOpen
	ld	hl, #0x01a2
	call	_RL
	ld	a, #0x37
	call	_DClose
;E:\supernova\msx\game\time.c:345: }
00206$:
;E:\supernova\msx\game\time.c:346: switch (T[25])
	ld	hl, #_T + 50
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	pop	de
	push	de
	ld	a, e
	dec	a
	or	a, d
	jr	nz, 00210$
;E:\supernova\msx\game\time.c:348: case 1: if (Prm == 91) RS(187); T[24] = 2; T[26] = 40; Add(64); break;
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00209$
	ld	hl, #0x00bb
	call	_RS
00209$:
	ld	hl, #0x0002
	ld	((_T + 48)), hl
	ld	l, #0x28
	ld	((_T + 52)), hl
	ld	a, #0x40
	call	_Add
	jr	00216$
;E:\supernova\msx\game\time.c:349: default: if (IN_RANGE(T[25], 2, 5)) if (Prm == 91) RS(188 - T[25]);
00210$:
	ld	a, e
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00216$
	ld	a, #0x05
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	c, 00216$
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00216$
	ld	a, #0xbc
	sub	a, -2 (ix)
	ld	l, a
	sbc	a, a
	sub	a, -1 (ix)
	ld	h, a
	call	_RS
;E:\supernova\msx\game\time.c:350: }
00216$:
;E:\supernova\msx\game\time.c:351: if (En(64))
	ld	a, #0x40
	call	_En
	or	a, a
	jp	z, 00238$
;E:\supernova\msx\game\time.c:352: if (!Warn(198, 38, 54))
	ld	hl, #0x0036
	push	hl
	ld	de, #0x0026
	ld	l, #0xc6
	call	_Warn
	or	a, a
	jp	nz, 00238$
;E:\supernova\msx\game\time.c:353: if (!Warn(199, 33, 55))
	ld	hl, #0x0037
	push	hl
	ld	de, #0x0021
	ld	l, #0xc7
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:354: if (!Warn(203, 30, 59))
	ld	hl, #0x003b
	push	hl
	ld	de, #0x001e
	ld	l, #0xcb
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:355: if (!Warn(200, 25, 57))
	ld	hl, #0x0039
	push	hl
	ld	de, #0x0019
	ld	l, #0xc8
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:356: if (!Warn(201, 20, 58))
	ld	hl, #0x003a
	push	hl
	ld	de, #0x0014
	ld	l, #0xc9
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:357: if (!Warn(202, 15, 56))
	ld	hl, #0x0038
	push	hl
	ld	de, #0x000f
	ld	l, #0xca
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:358: if (!Warn(204, 10, 60))
	ld	hl, #0x003c
	push	hl
	ld	de, #0x000a
	ld	l, #0xcc
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:359: if (!Warn(205, 6, 61))
	ld	hl, #0x003d
	push	hl
	ld	de, #0x0006
	ld	l, #0xcd
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:360: if (!Warn(206, 3, 62))
	ld	hl, #0x003e
	push	hl
	ld	de, #0x0003
	ld	l, #0xce
	call	_Warn
	or	a, a
	jr	nz, 00238$
;E:\supernova\msx\game\time.c:361: if (!Warn(207, 2, 63)) { }
	ld	hl, #0x003f
	push	hl
	ld	de, #0x0002
	ld	l, #0xcf
	call	_Warn
00238$:
;E:\supernova\msx\game\time.c:362: if (T[26] == 1) { RS(197); DEAD(); }
	ld	hl, (#_T + 52)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00240$
	ld	hl, #0x00c5
	call	_RS
	call	_DEAD
00240$:
;E:\supernova\msx\game\time.c:363: if (T[27] == 1998 && Prm == 99) { RS(213); Blast(); DEAD(); }
	ld	hl, (#_T + 54)
	ld	de, #0x07ce
	cp	a, a
	sbc	hl, de
	jr	nz, 00242$
	ld	a, (_Prm)
	sub	a, #0x63
	jr	nz, 00242$
	ld	hl, #0x00d5
	call	_RS
	call	_Blast
	call	_DEAD
00242$:
;E:\supernova\msx\game\time.c:364: if (T[28] == 1998 && Prm == 101) { RS(213); Blast(); DEAD(); }
	ld	hl, (#_T + 56)
	ld	de, #0x07ce
	cp	a, a
	sbc	hl, de
	jr	nz, 00251$
	ld	a, (_Prm)
	sub	a, #0x65
	jr	nz, 00251$
	ld	hl, #0x00d5
	call	_RS
	call	_Blast
	call	_DEAD
00251$:
;E:\supernova\msx\game\time.c:365: }
	pop	af
	pop	ix
	ret
___str_21:
	.ascii "A loud siren is sounding off..."
	.db 0x00
___str_22:
	.ascii "An alarm is ringing..."
	.db 0x00
___str_23:
	.ascii "The door slides open..."
	.db 0x00
___str_24:
	.ascii "then closes."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
