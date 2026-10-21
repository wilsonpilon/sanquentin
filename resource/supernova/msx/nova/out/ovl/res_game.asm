;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module game
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEAD
	.globl _Default14
	.globl _Default13
	.globl _Default12
	.globl _Default11
	.globl _Default10
	.globl _Default9
	.globl _Default8
	.globl _Default7
	.globl _Default6
	.globl _Default5
	.globl _Default4
	.globl _Default3
	.globl _Default2
	.globl _Default1
	.globl _Default0
	.globl _Room23
	.globl _Room22
	.globl _Room21
	.globl _Room20
	.globl _Room19
	.globl _Room18
	.globl _Room17
	.globl _Room16
	.globl _Room15
	.globl _Room14
	.globl _Room13
	.globl _Room12
	.globl _Room11
	.globl _Room10
	.globl _Room9
	.globl _Room8
	.globl _Room7
	.globl _Room6
	.globl _Room5
	.globl _Room4
	.globl _Room3
	.globl _Room2
	.globl _Room1
	.globl _Parser_Syntax
	.globl _MoreThanOne
	.globl _Init3
	.globl _Init2
	.globl _Init1
	.globl _Title
	.globl _PlayerInput
	.globl _RR
	.globl _RS
	.globl _RL
	.globl _Present
	.globl _WrFN
	.globl _FN
	.globl _Time2D
	.globl _Time2C
	.globl _Time2B
	.globl _Time2A
	.globl _Time1
	.globl _Min
	.globl _En
	.globl _Col
	.globl _SF
	.globl _ScreenBegin
	.globl _OvlLoadAll
	.globl _Wln
	.globl _Wr
	.globl _Len
	.globl _Vocab_Init
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
	.globl _Describe
	.globl _MoveTo
	.globl _SetR
	.globl _RestartGame
	.globl _GameMain
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
;E:\supernova\msx\game\game.c:4: void Describe(u8 room)
;	---------------------------------
; Function Describe
; ---------------------------------
_Describe::
	call	___sdcc_enter_ix
	ld	hl, #-31
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\supernova\msx\game\game.c:7: Col(9, 9); Wr(g_RN[Prm]); Col(11, 7); Wln();
	ld	a,#0x09
	ld	l,a
	call	_Col
	ld	bc, #_g_RN+0
	ld	a, (_Prm)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_Wr
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	call	_Wln
;E:\supernova\msx\game\game.c:8: if (En(1) || (!En(1) && !SET_IN(Brief, Prm)))
	ld	a, #0x01
	call	_En
	or	a, a
	jr	nz, 00119$
	ld	a, #0x01
	call	_En
	or	a, a
	jp	nz, 00120$
	ld	de, #_Brief+0
	ld	a, (_Prm)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00661$:
	sra	h
	rr	l
	djnz	00661$
	add	hl, de
	ld	c, (hl)
	ld	a, (_Prm)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00663$
00662$:
	srl	a
00663$:
	djnz	00662$
	rrca
	jp	c, 00120$
00119$:
;E:\supernova\msx\game\game.c:10: SET_ADD(Brief, Prm);
	ld	de, #_Brief+0
	ld	a, (_Prm)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00666$:
	sra	h
	rr	l
	djnz	00666$
	add	hl, de
	ld	c, (hl)
	ld	a, (_Prm+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00668$
00667$:
	add	a, a
00668$:
	djnz	00667$
	or	a, c
	ld	(hl), a
;E:\supernova\msx\game\game.c:11: switch (Prm)    // alternate room descriptions
	ld	a, (_Prm)
	cp	a, #0x1d
	jr	z, 00101$
	cp	a, #0x22
	jr	z, 00105$
	cp	a, #0x34
	jr	z, 00109$
	sub	a, #0x5b
	jr	z, 00113$
	jr	00117$
;E:\supernova\msx\game\game.c:13: case 29: if (En(35)) { RS(130); RS(131); } else RR(29); break;
00101$:
	ld	a, #0x23
	call	_En
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
;E:\supernova\msx\game\game.c:14: case 34: if (En(30)) { RS(81); RS(82); } else RR(34); break;
00105$:
	ld	a, #0x1e
	call	_En
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
;E:\supernova\msx\game\game.c:15: case 52: if (En(39)) RS(126); else RR(52); break;
00109$:
	ld	a, #0x27
	call	_En
	or	a, a
	jr	z, 00111$
	ld	hl, #0x007e
	call	_RS
	jr	00120$
00111$:
	ld	hl, #0x0034
	call	_RR
	jr	00120$
;E:\supernova\msx\game\game.c:16: case 91: if (En(51)) { RS(157); RS(158); } else RR(91); break;
00113$:
	ld	a, #0x33
	call	_En
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
;E:\supernova\msx\game\game.c:17: default: RR(room);
00117$:
	ld	l, -1 (ix)
	ld	h, #0x00
	call	_RR
;E:\supernova\msx\game\game.c:18: }
00120$:
;E:\supernova\msx\game\game.c:20: switch (Prm)    // for initial object's description
	ld	a, (_Prm)
	dec	a
	jr	z, 00123$
	ld	a, (_Prm)
	cp	a, #0x26
	jr	z, 00129$
	cp	a, #0x29
	jr	z, 00132$
	cp	a, #0x37
	jr	z, 00136$
	cp	a, #0x3f
	jr	z, 00139$
	cp	a, #0x49
	jr	z, 00142$
	cp	a, #0x50
	jp	z, 00145$
	cp	a, #0x5e
	jp	z, 00148$
	sub	a, #0x6b
	jr	z, 00126$
	jp	00153$
;E:\supernova\msx\game\game.c:22: case 1: if (LOC_HAS(1, 16)) RL(150); break;
00123$:
	ld	a, (#(_g_Loc + 18) + 0)
	rlca
	jp	nc, 00153$
	ld	hl, #0x0096
	call	_RL
	jp	00153$
;E:\supernova\msx\game\game.c:23: case 107: if (LOC_HAS(107, 19)) RL(518); break;
00126$:
	ld	a, (#(_g_Loc + 1821) + 0)
	bit	2, a
	jp	z, 00153$
	ld	hl, #0x0206
	call	_RL
	jr	00153$
;E:\supernova\msx\game\game.c:24: case 38: if (LOC_HAS(38, 17)) RL(260); break;
00129$:
	ld	a, (#(_g_Loc + 648) + 0)
	rrca
	jr	nc, 00153$
	ld	hl, #0x0104
	call	_RL
	jr	00153$
;E:\supernova\msx\game\game.c:25: case 41: if (LOC_HAS(41, 18) && !En(34)) RS(96); break;
00132$:
	ld	a, (#(_g_Loc + 699) + 0)
	bit	1, a
	jr	z, 00153$
	ld	a, #0x22
	call	_En
	or	a, a
	jr	nz, 00153$
	ld	hl, #0x0060
	call	_RS
	jr	00153$
;E:\supernova\msx\game\game.c:26: case 55: if (LOC_HAS(55, 11)) RL(290); break;
00136$:
	ld	a, (#(_g_Loc + 936) + 0)
	bit	2, a
	jr	z, 00153$
	ld	hl, #0x0122
	call	_RL
	jr	00153$
;E:\supernova\msx\game\game.c:27: case 63: if (LOC_HAS(63, 20)) RL(356); break;
00139$:
	ld	a, (#(_g_Loc + 1073) + 0)
	bit	3, a
	jr	z, 00153$
	ld	hl, #0x0164
	call	_RL
	jr	00153$
;E:\supernova\msx\game\game.c:28: case 73: if (LOC_HAS(73, 28)) RL(352); break;
00142$:
	ld	a, (#(_g_Loc + 1244) + 0)
	bit	3, a
	jr	z, 00153$
	ld	hl, #0x0160
	call	_RL
	jr	00153$
;E:\supernova\msx\game\game.c:29: case 80: if (LOC_HAS(80, 17)) RL(395); break;
00145$:
	ld	a, (#(_g_Loc + 1362) + 0)
	rrca
	jr	nc, 00153$
	ld	hl, #0x018b
	call	_RL
	jr	00153$
;E:\supernova\msx\game\game.c:30: case 94: if (LOC_HAS(94, 26)) RL(397); if (LOC_HAS(94, 2)) RL(398); break;
00148$:
	ld	a, (#_g_Loc + 1601)
	bit	1, a
	jr	z, 00150$
	ld	hl, #0x018d
	call	_RL
00150$:
	ld	a, (#_g_Loc + 1598)
	bit	1, a
	jr	z, 00153$
	ld	hl, #0x018e
	call	_RL
;E:\supernova\msx\game\game.c:31: }
00153$:
;E:\supernova\msx\game\game.c:32: for (o = 1; o <= MMax; o++)    // print the objects that are lying in the room
	ld	hl, #_o
	ld	(hl), #0x01
00201$:
;E:\supernova\msx\game\game.c:33: if (R[o] == Prm)
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	sub	a, (hl)
	jp	nz, 00202$
;E:\supernova\msx\game\game.c:35: if (o == 6) { Wr("There is some "); WrFN(o); Wr(" here."); }
	ld	a, (_o)
	sub	a, #0x06
	jr	nz, 00162$
	ld	hl, #___str_1
	call	_Wr
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_2
	call	_Wr
	jr	00163$
00162$:
;E:\supernova\msx\game\game.c:38: FN(o, w);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	a, (_o)
	call	_FN
;E:\supernova\msx\game\game.c:39: if (w[0] == 'a' || w[0] == 'e' || w[0] == 'i' || w[0] == 'o' || w[0] == 'u')
	ld	a, -31 (ix)
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
;E:\supernova\msx\game\game.c:40: { Wr("There is an "); WrFN(o); Wr(" here."); }
	ld	hl, #___str_3
	call	_Wr
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_2
	call	_Wr
	jr	00163$
00155$:
;E:\supernova\msx\game\game.c:41: else { Wr("There is a "); WrFN(o); Wr(" here."); }
	ld	hl, #___str_4
	call	_Wr
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_2
	call	_Wr
00163$:
;E:\supernova\msx\game\game.c:43: if ((o == 29 && MugCon != Null) || (o == 7 && HolstCon != Null) || (o == 5 && SatchCon != Null))
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
;E:\supernova\msx\game\game.c:44: Wr("  (with something in it)");
	ld	hl, #___str_5
	call	_Wr
00165$:
;E:\supernova\msx\game\game.c:45: if (o == 5 && R[5] == 20) Wr("  (lying in some trash)");
	ld	a, (_o)
	sub	a, #0x05
	jr	nz, 00172$
	ld	a, (#_R + 5)
	cp	a, #0x14
	jr	nz, 00172$
	ld	hl, #___str_6
	call	_Wr
00172$:
;E:\supernova\msx\game\game.c:46: if (o == 7 && LOC_HAS(12, 7) && R[7] == 12) Wr("  (on the shelf)");
	ld	a, (_o)
	sub	a, #0x07
	jr	nz, 00175$
	ld	a, (#(_g_Loc + 204) + 0)
	bit	6, a
	jr	z, 00175$
	ld	a, (#_R + 7)
	cp	a, #0x0c
	jr	nz, 00175$
	ld	hl, #___str_7
	call	_Wr
00175$:
;E:\supernova\msx\game\game.c:47: if (o == NicheCon) Wr("  (on the niche)");
	ld	a, (_o)
	ld	hl, #_NicheCon
	sub	a, (hl)
	jr	nz, 00179$
	ld	hl, #___str_8
	call	_Wr
00179$:
;E:\supernova\msx\game\game.c:48: if (En(6) && o == 16) Wr("  (on the seat)");
	ld	a, #0x06
	call	_En
	or	a, a
	jr	z, 00181$
	ld	a, (_o)
	sub	a, #0x10
	jr	nz, 00181$
	ld	hl, #___str_9
	call	_Wr
00181$:
;E:\supernova\msx\game\game.c:49: if (o == PyraCon) Wr("  (in the pyramid's slot)");
	ld	a, (_o)
	ld	hl, #_PyraCon
	sub	a, (hl)
	jr	nz, 00184$
	ld	hl, #___str_10
	call	_Wr
00184$:
;E:\supernova\msx\game\game.c:50: if (o == HingeCon) Wr("  (inside the statue's mouth)");
	ld	a, (_o)
	ld	hl, #_HingeCon
	sub	a, (hl)
	jr	nz, 00186$
	ld	hl, #___str_11
	call	_Wr
00186$:
;E:\supernova\msx\game\game.c:51: if (o == PodumCon) Wr("  (on top of the podium)");
	ld	a, (_o)
	ld	hl, #_PodumCon
	sub	a, (hl)
	jr	nz, 00188$
	ld	hl, #___str_12
	call	_Wr
00188$:
;E:\supernova\msx\game\game.c:52: if (o == 16 && En(37)) Wr("  (under the crystal)");
	ld	a, (_o)
	sub	a, #0x10
	jr	nz, 00190$
	ld	a, #0x25
	call	_En
	or	a, a
	jr	z, 00190$
	ld	hl, #___str_13
	call	_Wr
00190$:
;E:\supernova\msx\game\game.c:53: if (o == RobotCon) Wr("  (in the robot's panel)");
	ld	a, (_o)
	ld	hl, #_RobotCon
	sub	a, (hl)
	jr	nz, 00193$
	ld	hl, #___str_14
	call	_Wr
00193$:
;E:\supernova\msx\game\game.c:54: if (IN29(Socket, o)) Wr("  (in one of the regulator's sockets)");
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00195$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00195$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00731$:
	sra	d
	rr	e
	djnz	00731$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00733$
00732$:
	srl	a
00733$:
	djnz	00732$
	rrca
	jr	nc, 00195$
	ld	hl, #___str_15
	call	_Wr
00195$:
;E:\supernova\msx\game\game.c:55: Wln();
	call	_Wln
00202$:
;E:\supernova\msx\game\game.c:32: for (o = 1; o <= MMax; o++)    // print the objects that are lying in the room
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00201$
;E:\supernova\msx\game\game.c:57: }
	ld	sp, ix
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
	.ascii "There is some "
	.db 0x00
___str_2:
	.ascii " here."
	.db 0x00
___str_3:
	.ascii "There is an "
	.db 0x00
___str_4:
	.ascii "There is a "
	.db 0x00
___str_5:
	.ascii "  (with something in it)"
	.db 0x00
___str_6:
	.ascii "  (lying in some trash)"
	.db 0x00
___str_7:
	.ascii "  (on the shelf)"
	.db 0x00
___str_8:
	.ascii "  (on the niche)"
	.db 0x00
___str_9:
	.ascii "  (on the seat)"
	.db 0x00
___str_10:
	.ascii "  (in the pyramid's slot)"
	.db 0x00
___str_11:
	.ascii "  (inside the statue's mouth)"
	.db 0x00
___str_12:
	.ascii "  (on top of the podium)"
	.db 0x00
___str_13:
	.ascii "  (under the crystal)"
	.db 0x00
___str_14:
	.ascii "  (in the robot's panel)"
	.db 0x00
___str_15:
	.ascii "  (in one of the regulator's sockets)"
	.db 0x00
;E:\supernova\msx\game\game.c:59: void MoveTo(u8 New)
;	---------------------------------
; Function MoveTo
; ---------------------------------
_MoveTo::
	call	___sdcc_enter_ix
	dec	sp
	ld	-1 (ix), a
;E:\supernova\msx\game\game.c:61: SF();
	call	_SF
;E:\supernova\msx\game\game.c:62: if (En(7)) RL(22); else
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00122$
	ld	hl, #0x0016
	call	_RL
	jp	00124$
00122$:
;E:\supernova\msx\game\game.c:63: if (En(8)) RL(23); else
	ld	a, #0x08
	call	_En
	or	a, a
	jr	z, 00119$
	ld	hl, #0x0017
	call	_RL
	jp	00124$
00119$:
;E:\supernova\msx\game\game.c:66: { if (Prm != 8) LOC_DEL(Prm, MugCon); LOC_ADD(New, MugCon); }
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
;E:\supernova\msx\game\game.c:65: if (MugCon != Null && IN29(Inv, 29))
	ld	a, (_MugCon+0)
	or	a, a
	jr	z, 00104$
	ld	a, (#(_Inv + 3) + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00104$
;E:\supernova\msx\game\game.c:66: { if (Prm != 8) LOC_DEL(Prm, MugCon); LOC_ADD(New, MugCon); }
	ld	a, (_Prm)
	sub	a, #0x08
	jr	z, 00102$
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
	ld	bc, #_g_Loc
	add	hl, bc
	ld	a, (_MugCon+0)
	ld	c, a
	ld	b, #0x00
	dec	bc
	ld	a, #0x03
00199$:
	sra	b
	rr	c
	dec	a
	jr	nz, 00199$
	add	hl, bc
	ld	a, (_MugCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00201$
00200$:
	add	a, a
00201$:
	djnz	00200$
	cpl
	and	a, (hl)
	ld	(hl), a
00102$:
	ld	hl, #_g_Loc
	add	hl, de
	ld	a, (_MugCon+0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ld	a, #0x03
00202$:
	sra	b
	rr	c
	dec	a
	jr	nz, 00202$
	add	hl, bc
	ld	a, (_MugCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00204$
00203$:
	add	a, a
00204$:
	djnz	00203$
	or	a, (hl)
	ld	(hl), a
00104$:
;E:\supernova\msx\game\game.c:67: if (SatchCon != Null && IN29(Inv, 5)) { LOC_DEL(Prm, SatchCon); LOC_ADD(New, SatchCon); }
	ld	a, (_SatchCon+0)
	or	a, a
	jr	z, 00109$
	ld	a, (#_Inv + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00109$
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
	ld	bc, #_g_Loc
	add	hl, bc
	ld	a, (_SatchCon+0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ld	a, #0x03
00205$:
	sra	b
	rr	c
	dec	a
	jr	nz, 00205$
	add	hl, bc
	ld	a, (_SatchCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00207$
00206$:
	add	a, a
00207$:
	djnz	00206$
	cpl
	and	a, (hl)
	ld	(hl), a
	ld	hl, #_g_Loc
	add	hl, de
	ld	a, (_SatchCon+0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ld	a, #0x03
00208$:
	sra	b
	rr	c
	dec	a
	jr	nz, 00208$
	add	hl, bc
	ld	a, (_SatchCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00210$
00209$:
	add	a, a
00210$:
	djnz	00209$
	or	a, (hl)
	ld	(hl), a
00109$:
;E:\supernova\msx\game\game.c:68: if (HolstCon != Null && IN29(Inv, 7)) { LOC_DEL(Prm, HolstCon); LOC_ADD(New, HolstCon); }
	ld	a, (_HolstCon+0)
	or	a, a
	jr	z, 00114$
	ld	a, (#_Inv + 0)
	rlca
	rlca
	jr	nc, 00114$
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
	ld	bc, #_g_Loc
	add	hl, bc
	ld	a, (_HolstCon+0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ld	a, #0x03
00211$:
	sra	b
	rr	c
	dec	a
	jr	nz, 00211$
	add	hl, bc
	ld	a, (_HolstCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00213$
00212$:
	add	a, a
00213$:
	djnz	00212$
	cpl
	and	a, (hl)
	ld	(hl), a
	ld	hl, #_g_Loc
	add	hl, de
	ld	a, (_HolstCon+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00214$:
	sra	d
	rr	e
	djnz	00214$
	add	hl, de
	ld	a, (_HolstCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00216$
00215$:
	add	a, a
00216$:
	djnz	00215$
	or	a, (hl)
	ld	(hl), a
00114$:
;E:\supernova\msx\game\game.c:69: Prm = New;
	ld	a, -1 (ix)
	ld	(#_Prm), a
;E:\supernova\msx\game\game.c:70: Describe(Prm);
	ld	a, (_Prm)
	call	_Describe
00124$:
;E:\supernova\msx\game\game.c:72: }
	inc	sp
	pop	ix
	ret
;E:\supernova\msx\game\game.c:74: static void TimeEvents(void)
;	---------------------------------
; Function TimeEvents
; ---------------------------------
_TimeEvents:
;E:\supernova\msx\game\game.c:76: Time1();
	call	_Time1
;E:\supernova\msx\game\game.c:77: switch (TFlag)
	ld	a, (_TFlag)
	dec	a
	jp	z, _Time2A
	ld	a, (_TFlag)
	sub	a, #0x02
	jp	z, _Time2B
	ld	a, (_TFlag)
	sub	a, #0x03
	jp	z, _Time2C
	ld	a, (_TFlag)
	sub	a, #0x04
	jp	z, _Time2D
;E:\supernova\msx\game\game.c:79: case 1: Time2A(); break;
;E:\supernova\msx\game\game.c:80: case 2: Time2B(); break;
;E:\supernova\msx\game\game.c:81: case 3: Time2C(); break;
;E:\supernova\msx\game\game.c:82: case 4: Time2D(); break;
;E:\supernova\msx\game\game.c:83: }
;E:\supernova\msx\game\game.c:84: }
	ret
;E:\supernova\msx\game\game.c:86: static void RoomRoutine(void)
;	---------------------------------
; Function RoomRoutine
; ---------------------------------
_RoomRoutine:
;E:\supernova\msx\game\game.c:88: if (Prm == 1) Room1();
	ld	a, (_Prm)
	dec	a
	jp	z, _Room1
;E:\supernova\msx\game\game.c:89: else if (Prm == 2 || Prm == 3) Room2();
	ld	a, (_Prm)
	sub	a, #0x02
	jp	z, _Room2
	ld	a, (_Prm)
	sub	a, #0x03
	jp	z, _Room2
;E:\supernova\msx\game\game.c:90: else if (IN_RANGE(Prm, 4, 7)) Room3();
	ld	a, (_Prm+0)
	sub	a, #0x04
	jr	c, 00186$
	ld	a, #0x07
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room3
00186$:
;E:\supernova\msx\game\game.c:91: else if (IN_RANGE(Prm, 8, 12)) Room4();
	ld	a, (_Prm+0)
	sub	a, #0x08
	jr	c, 00182$
	ld	a, #0x0c
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room4
00182$:
;E:\supernova\msx\game\game.c:92: else if (IN_RANGE(Prm, 13, 22)) Room5();
	ld	a, (_Prm+0)
	sub	a, #0x0d
	jr	c, 00178$
	ld	a, #0x16
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room5
00178$:
;E:\supernova\msx\game\game.c:93: else if (IN_RANGE(Prm, 23, 29)) Room6();
	ld	a, (_Prm+0)
	sub	a, #0x17
	jr	c, 00174$
	ld	a, #0x1d
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room6
00174$:
;E:\supernova\msx\game\game.c:94: else if (IN_RANGE(Prm, 30, 34)) Room7();
	ld	a, (_Prm+0)
	sub	a, #0x1e
	jr	c, 00170$
	ld	a, #0x22
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room7
00170$:
;E:\supernova\msx\game\game.c:95: else if (IN_RANGE(Prm, 35, 38)) Room8();
	ld	a, (_Prm+0)
	sub	a, #0x23
	jr	c, 00166$
	ld	a, #0x26
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room8
00166$:
;E:\supernova\msx\game\game.c:96: else if (IN_RANGE(Prm, 39, 41)) Room9();
	ld	a, (_Prm+0)
	sub	a, #0x27
	jr	c, 00162$
	ld	a, #0x29
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room9
00162$:
;E:\supernova\msx\game\game.c:97: else if (IN_RANGE(Prm, 42, 50)) Room10();
	ld	a, (_Prm+0)
	sub	a, #0x2a
	jr	c, 00158$
	ld	a, #0x32
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room10
00158$:
;E:\supernova\msx\game\game.c:98: else if (IN_RANGE(Prm, 51, 55)) Room11();
	ld	a, (_Prm+0)
	sub	a, #0x33
	jr	c, 00154$
	ld	a, #0x37
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room11
00154$:
;E:\supernova\msx\game\game.c:99: else if (Prm == 56) Room12();
	ld	a, (_Prm)
	sub	a, #0x38
	jp	z, _Room12
;E:\supernova\msx\game\game.c:100: else if (IN_RANGE(Prm, 57, 63)) Room13();
	ld	a, (_Prm+0)
	sub	a, #0x39
	jr	c, 00147$
	ld	a, #0x3f
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room13
00147$:
;E:\supernova\msx\game\game.c:101: else if (IN_RANGE(Prm, 64, 67) || Prm == 71 || Prm == 72) Room14();
	ld	a, (_Prm+0)
	sub	a, #0x40
	jr	c, 00144$
	ld	a, #0x43
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room14
00144$:
	ld	a, (_Prm)
	sub	a, #0x47
	jp	z, _Room14
	ld	a, (_Prm)
	sub	a, #0x48
	jp	z, _Room14
;E:\supernova\msx\game\game.c:102: else if (IN_RANGE(Prm, 68, 70)) Room15();
	ld	a, (_Prm+0)
	sub	a, #0x44
	jr	c, 00137$
	ld	a, #0x46
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room15
00137$:
;E:\supernova\msx\game\game.c:103: else if (IN_RANGE(Prm, 73, 77)) Room16();
	ld	a, (_Prm+0)
	sub	a, #0x49
	jr	c, 00133$
	ld	a, #0x4d
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room16
00133$:
;E:\supernova\msx\game\game.c:104: else if (IN_RANGE(Prm, 78, 80)) Room17();
	ld	a, (_Prm+0)
	sub	a, #0x4e
	jr	c, 00129$
	ld	a, #0x50
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room17
00129$:
;E:\supernova\msx\game\game.c:105: else if (IN_RANGE(Prm, 81, 83) || Prm == 93 || Prm == 95 || Prm == 96) Room18();
	ld	a, (_Prm+0)
	sub	a, #0x51
	jr	c, 00125$
	ld	a, #0x53
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room18
00125$:
	ld	a, (_Prm)
	sub	a, #0x5d
	jp	z, _Room18
	ld	a, (_Prm)
	sub	a, #0x5f
	jp	z, _Room18
	ld	a, (_Prm)
	sub	a, #0x60
	jp	z, _Room18
;E:\supernova\msx\game\game.c:106: else if (IN_RANGE(Prm, 84, 89)) Room19();
	ld	a, (_Prm+0)
	sub	a, #0x54
	jr	c, 00118$
	ld	a, #0x59
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room19
00118$:
;E:\supernova\msx\game\game.c:107: else if (IN_RANGE(Prm, 90, 92)) Room20();
	ld	a, (_Prm+0)
	sub	a, #0x5a
	jr	c, 00114$
	ld	a, #0x5c
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room20
00114$:
;E:\supernova\msx\game\game.c:108: else if (Prm == 94 || IN_RANGE(Prm, 97, 100)) Room21();
	ld	a, (_Prm)
	sub	a, #0x5e
	jp	z, _Room21
	ld	a, (_Prm+0)
	sub	a, #0x61
	jr	c, 00109$
	ld	a, #0x64
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room21
00109$:
;E:\supernova\msx\game\game.c:109: else if (IN_RANGE(Prm, 101, 105)) Room22();
	ld	a, (_Prm+0)
	sub	a, #0x65
	jr	c, 00105$
	ld	a, #0x69
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room22
00105$:
;E:\supernova\msx\game\game.c:110: else if (IN_RANGE(Prm, 106, 108)) Room23();
	ld	a, (_Prm+0)
	sub	a, #0x6a
	ret	c
	ld	a, #0x6c
	ld	hl, #_Prm
	sub	a, (hl)
	jp	nc, _Room23
;E:\supernova\msx\game\game.c:111: }
	ret
;E:\supernova\msx\game\game.c:113: static void DefaultRoutine(void)
;	---------------------------------
; Function DefaultRoutine
; ---------------------------------
_DefaultRoutine:
;E:\supernova\msx\game\game.c:115: switch (Vb)
	ld	a, #0x5f
	ld	iy, #_Vb
	sub	a, 0 (iy)
	ret	c
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	hl, #00190$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00190$:
	.dw	00180$
	.dw	00111$
	.dw	00111$
	.dw	00111$
	.dw	00111$
	.dw	00111$
	.dw	00111$
	.dw	00111$
	.dw	00111$
	.dw	00127$
	.dw	00127$
	.dw	00127$
	.dw	00127$
	.dw	00127$
	.dw	00127$
	.dw	00127$
	.dw	00114$
	.dw	00114$
	.dw	00114$
	.dw	00173$
	.dw	00156$
	.dw	00178$
	.dw	00156$
	.dw	00180$
	.dw	00156$
	.dw	00178$
	.dw	00156$
	.dw	00180$
	.dw	00129$
	.dw	00180$
	.dw	00111$
	.dw	00147$
	.dw	00127$
	.dw	00157$
	.dw	00180$
	.dw	00127$
	.dw	00180$
	.dw	00131$
	.dw	00180$
	.dw	00131$
	.dw	00180$
	.dw	00150$
	.dw	00164$
	.dw	00180$
	.dw	00164$
	.dw	00180$
	.dw	00133$
	.dw	00129$
	.dw	00166$
	.dw	00178$
	.dw	00150$
	.dw	00127$
	.dw	00180$
	.dw	00173$
	.dw	00166$
	.dw	00180$
	.dw	00173$
	.dw	00180$
	.dw	00180$
	.dw	00178$
	.dw	00180$
	.dw	00180$
	.dw	00127$
	.dw	00180$
	.dw	00133$
	.dw	00147$
	.dw	00138$
	.dw	00138$
	.dw	00138$
	.dw	00138$
	.dw	00156$
	.dw	00138$
	.dw	00173$
	.dw	00164$
	.dw	00173$
	.dw	00147$
	.dw	00156$
	.dw	00127$
	.dw	00173$
	.dw	00127$
	.dw	00147$
	.dw	00147$
	.dw	00111$
	.dw	00147$
	.dw	00147$
	.dw	00180$
	.dw	00164$
	.dw	00111$
	.dw	00150$
	.dw	00164$
	.dw	00164$
	.dw	00173$
	.dw	00178$
	.dw	00147$
	.dw	00164$
	.dw	00147$
;E:\supernova\msx\game\game.c:117: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 30: case 82: case 87: Default0(); break;
00111$:
	jp	_Default0
;E:\supernova\msx\game\game.c:118: case 16: case 17: case 18: Default1(); break;
00114$:
	jp	_Default1
;E:\supernova\msx\game\game.c:119: case 9: case 10: case 11: case 12: case 13: case 14: case 15: case 32: case 35: case 51: case 77: case 79: case 62: Default2(); break;
00127$:
	jp	_Default2
;E:\supernova\msx\game\game.c:120: case 28: case 47: Default3(); break;
00129$:
	jp	_Default3
;E:\supernova\msx\game\game.c:121: case 37: case 39: Default4(); break;
00131$:
	jp	_Default4
;E:\supernova\msx\game\game.c:122: case 46: case 64: Default5(); break;
00133$:
	jp	_Default5
;E:\supernova\msx\game\game.c:123: case 66: case 67: case 68: case 69: case 71: Default6(); break;
00138$:
	jp	_Default6
;E:\supernova\msx\game\game.c:124: case 31: case 65: case 75: case 80: case 81: case 83: case 84: case 93: case 95: Default7(); break;
00147$:
	jp	_Default7
;E:\supernova\msx\game\game.c:125: case 41: case 50: case 88: Default8(); break;
00150$:
	jp	_Default8
;E:\supernova\msx\game\game.c:126: case 20: case 22: case 24: case 26: case 70: case 76: Default9(); break;
00156$:
	jp	_Default9
;E:\supernova\msx\game\game.c:127: case 33: Default10(); break;
00157$:
	jp	_Default10
;E:\supernova\msx\game\game.c:128: case 42: case 44: case 73: case 86: case 89: case 90: case 94: Default11(); break;
00164$:
	jp	_Default11
;E:\supernova\msx\game\game.c:129: case 48: case 54: Default12(); break;
00166$:
	jp	_Default12
;E:\supernova\msx\game\game.c:130: case 19: case 53: case 56: case 72: case 74: case 78: case 91: Default13(); break;
00173$:
	jp	_Default13
;E:\supernova\msx\game\game.c:131: case 21: case 25: case 49: case 59: case 92: Default14(); break;
00178$:
	jp	_Default14
;E:\supernova\msx\game\game.c:132: }
00180$:
;E:\supernova\msx\game\game.c:133: }
	ret
;E:\supernova\msx\game\game.c:135: void SetR(u8 obj, u8 room)
;	---------------------------------
; Function SetR
; ---------------------------------
_SetR::
	ld	c, a
	ld	e, l
;E:\supernova\msx\game\game.c:137: if (obj >= 1 && obj <= MMax) R[obj] = room;
	ld	a, c
	sub	a, #0x01
	ret	c
	ld	a, #0x1d
	sub	a, c
	ret	c
	ld	hl, #_R+0
	ld	b, #0x00
	add	hl, bc
	ld	(hl), e
;E:\supernova\msx\game\game.c:138: }
	ret
;E:\supernova\msx\game\game.c:140: static void GameRun(void)
;	---------------------------------
; Function GameRun
; ---------------------------------
_GameRun:
;E:\supernova\msx\game\game.c:142: Title();
	call	_Title
;E:\supernova\msx\game\game.c:143: Init1(); Init2(); Init3();
	call	_Init1
	call	_Init2
	call	_Init3
;E:\supernova\msx\game\game.c:144: Describe(Prm);
	ld	a, (_Prm)
	call	_Describe
00126$:
;E:\supernova\msx\game\game.c:147: PlayerInput(Line);
	ld	hl, #_Line
	call	_PlayerInput
;E:\supernova\msx\game\game.c:148: if (Len(Input) > 0) Parser_Syntax(Input);
	ld	hl, #_Input
	call	_Len
	or	a, a
	jr	z, 00102$
	ld	hl, #_Input
	call	_Parser_Syntax
00102$:
;E:\supernova\msx\game\game.c:149: if (EFlag == Legal)
	ld	a, (_EFlag)
	inc	a
	jr	nz, 00126$
;E:\supernova\msx\game\game.c:151: MoreThanOne();
	call	_MoreThanOne
;E:\supernova\msx\game\game.c:152: if (Present())
	call	_Present
	or	a, a
	jr	z, 00126$
;E:\supernova\msx\game\game.c:154: if (T[2] > 1)
	ld	hl, (#(_T + 4) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00252$
	xor	a, #0x80
00252$:
	jp	p, 00119$
;E:\supernova\msx\game\game.c:156: RL(11); TimeEvents();
	ld	hl, #0x000b
	call	_RL
	call	_TimeEvents
	jr	00126$
00119$:
;E:\supernova\msx\game\game.c:160: SFlag = 0;
	xor	a, a
	ld	(#_SFlag), a
;E:\supernova\msx\game\game.c:161: if (Vb == 71 && Prm == 55 && !En(35)) Vb = 1;
	ld	a, (_Vb)
	sub	a, #0x47
	jr	nz, 00104$
	ld	a, (_Prm)
	sub	a, #0x37
	jr	nz, 00104$
	ld	a, #0x23
	call	_En
	or	a, a
	jr	nz, 00104$
	ld	hl, #_Vb
	ld	(hl), #0x01
00104$:
;E:\supernova\msx\game\game.c:162: RoomRoutine();
	call	_RoomRoutine
;E:\supernova\msx\game\game.c:163: if (!SFlag) DefaultRoutine();
	ld	a, (_SFlag+0)
	or	a, a
	jr	nz, 00108$
	call	_DefaultRoutine
00108$:
;E:\supernova\msx\game\game.c:164: if (En(128)) DEAD();
	ld	a, #0x80
	call	_En
	or	a, a
	jr	z, 00110$
	call	_DEAD
00110$:
;E:\supernova\msx\game\game.c:165: Min(128);
	ld	a, #0x80
	call	_Min
;E:\supernova\msx\game\game.c:166: if (!(IN_RANGE(Vb, 77, 79) || Vb == 82 || Vb == 86 || Vb == 87 || Vb == 95)) TimeEvents();
	ld	a, (_Vb+0)
	sub	a, #0x4d
	jr	c, 00114$
	ld	a, #0x4f
	ld	hl, #_Vb
	sub	a, (hl)
	jp	nc, 00126$
00114$:
	ld	a, (_Vb)
	cp	a, #0x52
	jp	z, 00126$
	cp	a, #0x56
	jp	z, 00126$
	cp	a, #0x57
	jp	z, 00126$
	sub	a, #0x5f
	jp	z, 00126$
	call	_TimeEvents
;E:\supernova\msx\game\game.c:171: }
	jp	00126$
;E:\supernova\msx\game\game.c:173: void RestartGame(void)
;	---------------------------------
; Function RestartGame
; ---------------------------------
_RestartGame::
;E:\supernova\msx\game\game.c:175: Vocab_Init();
	call	_Vocab_Init
;E:\supernova\msx\game\game.c:176: GameRun();
;E:\supernova\msx\game\game.c:177: }
	jp	_GameRun
;E:\supernova\msx\game\game.c:179: void GameMain(void)
;	---------------------------------
; Function GameMain
; ---------------------------------
_GameMain::
;E:\supernova\msx\game\game.c:181: Vocab_Init();
	call	_Vocab_Init
;E:\supernova\msx\game\game.c:182: ScreenBegin();
	call	_ScreenBegin
;E:\supernova\msx\game\game.c:184: if (!OvlLoadAll())
	call	_OvlLoadAll
	or	a, a
	jp	nz, _GameRun
;E:\supernova\MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;E:\supernova\msx\game\game.c:186: Halt();
;E:\supernova\msx\game\game.c:189: GameRun();
;E:\supernova\msx\game\game.c:190: }
	jp	_GameRun
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
