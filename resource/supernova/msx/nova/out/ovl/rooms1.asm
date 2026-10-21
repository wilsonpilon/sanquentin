;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rooms1
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEAD
	.globl _MoveTo
	.globl _SetR
	.globl _SetNoun
	.globl _Say
	.globl _Crazy
	.globl _Van
	.globl _RB2
	.globl _RB
	.globl _RS
	.globl _RL
	.globl _Here
	.globl _WrFN
	.globl _Door
	.globl _Explode
	.globl _Play
	.globl _Pause
	.globl _Score
	.globl _Min
	.globl _Add
	.globl _En
	.globl _Col
	.globl _Rnd
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _Wln
	.globl _Wr
	.globl _StrEq
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
	.globl _Room1
	.globl _Room2
	.globl _Room3
	.globl _Room4
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
;E:\supernova\msx\game\rooms1.c:4: void Room1(void)    // The Player's Ship
;	---------------------------------
; Function Room1
; ---------------------------------
_Room1::
	call	___sdcc_enter_ix
	dec	sp
;E:\supernova\msx\game\rooms1.c:7: switch (Prm)
	ld	a, (_Prm)
	dec	a
	jp	nz, 00206$
;E:\supernova\msx\game\rooms1.c:10: switch (Vb)
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
	jp	00206$
;E:\supernova\msx\game\rooms1.c:12: case 2: case 13: Door(2, 50); break;
00103$:
	ld	l, #0x32
	ld	a, #0x02
	call	_Door
	jp	00206$
;E:\supernova\msx\game\rooms1.c:13: case 11: RL(199); break;
00104$:
	ld	hl, #0x00c7
	call	_RL
	jp	00206$
;E:\supernova\msx\game\rooms1.c:14: case 22: case 24: case 28:
00107$:
;E:\supernova\msx\game\rooms1.c:15: switch (N1)
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
	jp	00206$
;E:\supernova\msx\game\rooms1.c:17: case 37: case 38: case 55: case 44: if (Md != Null) RL(534); else RB(3, 11); break;
00111$:
	ld	a, (_Md+0)
	or	a, a
	jr	z, 00113$
	ld	hl, #0x0216
	call	_RL
	jp	00206$
00113$:
	ld	l, #0x0b
	ld	a, #0x03
	call	_RB
	jp	00206$
;E:\supernova\msx\game\rooms1.c:18: case 103: RL(317); break;
00115$:
	ld	hl, #0x013d
	call	_RL
	jp	00206$
;E:\supernova\msx\game\rooms1.c:19: case 35: if (En(6)) RL(542); else RL(543); break;
00116$:
	ld	a, #0x06
	call	_En
	or	a, a
	jr	z, 00118$
	ld	hl, #0x021e
	call	_RL
	jp	00206$
00118$:
	ld	hl, #0x021f
	call	_RL
	jp	00206$
;E:\supernova\msx\game\rooms1.c:20: case 59:
00120$:
;E:\supernova\msx\game\rooms1.c:21: switch (Region) { case 1: RS(46); break; case 2: RS(63); break; case 4: RS(T[9] + 46); break; }
	ld	a, (_Region)
	dec	a
	jr	z, 00121$
	ld	a, (_Region)
	cp	a, #0x02
	jr	z, 00122$
	sub	a, #0x04
	jr	z, 00123$
	jp	00206$
00121$:
	ld	hl, #0x002e
	call	_RS
	jp	00206$
00122$:
	ld	hl, #0x003f
	call	_RS
	jp	00206$
00123$:
	ld	hl, (#(_T + 18) + 0)
	ld	bc, #0x002e
	add	hl, bc
	call	_RS
;E:\supernova\msx\game\rooms1.c:24: break;
	jp	00206$
;E:\supernova\msx\game\rooms1.c:25: case 35:
00126$:
;E:\supernova\msx\game\rooms1.c:26: if (N1 == 16 || N1 == 35)
	ld	a, (_N1)
	cp	a, #0x10
	jr	z, 00136$
	sub	a, #0x23
	jp	nz, 00206$
00136$:
;E:\supernova\msx\game\rooms1.c:28: if (Here(16) && En(6))
	ld	a, #0x10
	call	_Here
	or	a, a
	jp	z, 00133$
	ld	a, #0x06
	call	_En
	or	a, a
	jp	z, 00133$
;E:\supernova\msx\game\rooms1.c:30: if (!En(4))
	ld	a, #0x04
	call	_En
	or	a, a
	jr	nz, 00130$
;E:\supernova\msx\game\rooms1.c:32: Add(7); Sound(440); RS(19); T[6] = 4;
	ld	a, #0x07
	call	_Add
	ld	hl, #0x01b8
	call	_Sound
	ld	hl, #0x0013
	call	_RS
	ld	hl, #0x0004
	ld	((_T + 12)), hl
;E:\supernova\msx\game\rooms1.c:33: n = Rnd(30) + 9;
	ld	l, #0x1e
	call	_Rnd
	ld	a, e
	add	a, #0x09
	ld	-1 (ix), a
;E:\supernova\msx\game\rooms1.c:34: for (x = 1; x <= n; x++) { y = Rnd(6000) + 60; Play(y, y, 70); Delay(9); }
	ld	hl, #_x
	ld	(hl), #0x01
00197$:
	ld	a, -1 (ix)
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00127$
	ld	hl, #0x1770
	call	_Rnd
	ld	a, e
	add	a, #0x3c
	ld	(#_y), a
	ld	a, (_y)
	ld	h, #0x00
	ld	de, #0x0046
	push	de
	ld	e, a
	ld	d, h
	ld	l, a
	call	_Play
	ld	hl, #0x0009
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	jr	00197$
00127$:
;E:\supernova\msx\game\rooms1.c:35: Score(10, 67);
	ld	de, #0x0043
	ld	hl, #0x000a
	call	_Score
	jp	00206$
00130$:
;E:\supernova\msx\game\rooms1.c:39: Add(7); RL(149);
	ld	a, #0x07
	call	_Add
	ld	hl, #0x0095
	call	_RL
;E:\supernova\msx\game\rooms1.c:40: n = Rnd(9) + 9;
	ld	hl, #0x0009
	call	_Rnd
	ld	a, e
	add	a, #0x09
	ld	-1 (ix), a
;E:\supernova\msx\game\rooms1.c:41: for (x = 1; x <= n; x++) { y = Rnd(9999); Play(y, y, 30); Delay(55); }
	ld	hl, #_x
	ld	(hl), #0x01
00200$:
	ld	a, -1 (ix)
	ld	hl, #_x
	sub	a, (hl)
	jp	c, 00206$
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
	call	_Play
	ld	hl, #0x0037
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	jr	00200$
00133$:
;E:\supernova\msx\game\rooms1.c:44: else RL(141);
	ld	hl, #0x008d
	call	_RL
;E:\supernova\msx\game\rooms1.c:46: break;
	jp	00206$
;E:\supernova\msx\game\rooms1.c:47: case 56:
00139$:
;E:\supernova\msx\game\rooms1.c:48: if (En(7) && En(6))
	ld	a, #0x07
	call	_En
	or	a, a
	jp	z, 00154$
	ld	a, #0x06
	call	_En
	or	a, a
	jp	z, 00154$
;E:\supernova\msx\game\rooms1.c:50: if (T[6] > 0)
	ld	hl, (#(_T + 12) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00689$
	xor	a, #0x80
00689$:
	jp	p, 00151$
;E:\supernova\msx\game\rooms1.c:52: if (StrEq(Input, Identity)) { RS(21); T[6] = Null; Score(15, 4); Play(400, 400, 200); }
	ld	de, #_Identity
	ld	hl, #_Input
	call	_StrEq
	or	a, a
	jr	z, 00141$
	ld	hl, #0x0015
	call	_RS
	ld	hl, #0x0000
	ld	((_T + 12)), hl
	ld	de, #0x0004
	ld	l, #0x0f
	call	_Score
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0190
	ld	h, d
	ld	l, e
	call	_Play
	jp	00206$
00141$:
;E:\supernova\msx\game\rooms1.c:53: else RL(142);
	ld	hl, #0x008e
	call	_RL
	jp	00206$
00151$:
;E:\supernova\msx\game\rooms1.c:55: else if (StrEq(Input, "r2/20-8 d2/vega"))
	ld	de, #___str_1
	ld	hl, #_Input
	call	_StrEq
	or	a, a
	jr	z, 00148$
;E:\supernova\msx\game\rooms1.c:57: if (!(Region == 2 || Region == 4)) { RS(28); Add(26); Min(27); Play(600, 600, 99); }
	ld	a, (_Region)
	cp	a, #0x02
	jr	z, 00144$
	sub	a, #0x04
	jr	z, 00144$
	ld	hl, #0x001c
	call	_RS
	ld	a, #0x1a
	call	_Add
	ld	a, #0x1b
	call	_Min
	ld	hl, #0x0063
	push	hl
	ld	de, #0x0258
	ld	h, d
	ld	l, e
	call	_Play
	jp	00206$
00144$:
;E:\supernova\msx\game\rooms1.c:58: else RL(154);
	ld	hl, #0x009a
	call	_RL
	jp	00206$
00148$:
;E:\supernova\msx\game\rooms1.c:60: else { Min(26); RS(39); Min(27); Play(600, 600, 99); }
	ld	a, #0x1a
	call	_Min
	ld	hl, #0x0027
	call	_RS
	ld	a, #0x1b
	call	_Min
	ld	hl, #0x0063
	push	hl
	ld	de, #0x0258
	ld	h, d
	ld	l, e
	call	_Play
	jp	00206$
00154$:
;E:\supernova\msx\game\rooms1.c:62: else RL(179);
	ld	hl, #0x00b3
	call	_RL
;E:\supernova\msx\game\rooms1.c:63: break;
	jp	00206$
;E:\supernova\msx\game\rooms1.c:64: case 44:
00157$:
;E:\supernova\msx\game\rooms1.c:65: if (En(7) && En(6))
	ld	a, #0x07
	call	_En
	or	a, a
	jp	z, 00184$
	ld	a, #0x06
	call	_En
	or	a, a
	jp	z, 00184$
;E:\supernova\msx\game\rooms1.c:66: switch (N1)
	ld	a, (_N1)
	cp	a, #0x28
	jr	z, 00165$
	cp	a, #0x29
	jp	z, 00169$
	sub	a, #0x2b
	jp	nz, 00206$
;E:\supernova\msx\game\rooms1.c:69: Play(750, 750, 200);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x02ee
	ld	h, d
	ld	l, e
	call	_Play
;E:\supernova\msx\game\rooms1.c:70: if (Region == 4)
	ld	a, (_Region)
	sub	a, #0x04
	jr	nz, 00163$
;E:\supernova\msx\game\rooms1.c:72: if (T[9] == 11)
	ld	hl, (#_T + 18)
	ld	a, l
	sub	a, #0x0b
	or	a, h
	jr	nz, 00160$
;E:\supernova\msx\game\rooms1.c:74: Score(5, 68); Region = 2; T[13] = 3; TFlag = 2;
	ld	de, #0x0044
	ld	hl, #0x0005
	call	_Score
	ld	hl, #_Region
	ld	(hl), #0x02
	ld	hl, #0x0003
	ld	((_T + 26)), hl
	ld	hl, #_TFlag
	ld	(hl), #0x02
;E:\supernova\msx\game\rooms1.c:75: SetNoun(126, 1);
	ld	l, #0x01
	ld	a, #0x7e
	call	_SetNoun
;E:\supernova\msx\game\rooms1.c:76: RB(9, 11); Explode(30);
	ld	l, #0x0b
	ld	a, #0x09
	call	_RB
	ld	a, #0x1e
	call	_Explode
	jp	00206$
00160$:
;E:\supernova\msx\game\rooms1.c:78: else RS(64);
	ld	hl, #0x0040
	call	_RS
	jp	00206$
00163$:
;E:\supernova\msx\game\rooms1.c:80: else RL(198);
	ld	hl, #0x00c6
	call	_RL
;E:\supernova\msx\game\rooms1.c:81: break;
	jp	00206$
;E:\supernova\msx\game\rooms1.c:82: case 40:    // cyan
00165$:
;E:\supernova\msx\game\rooms1.c:83: Play(900, 900, 200);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0384
	ld	h, d
	ld	l, e
	call	_Play
;E:\supernova\msx\game\rooms1.c:84: if (En(26)) { RS(37); Add(27); }
	ld	a, #0x1a
	call	_En
	or	a, a
	jr	z, 00167$
	ld	hl, #0x0025
	call	_RS
	ld	a, #0x1b
	call	_Add
	jp	00206$
00167$:
;E:\supernova\msx\game\rooms1.c:85: else RL(195);
	ld	hl, #0x00c3
	call	_RL
;E:\supernova\msx\game\rooms1.c:86: break;
	jp	00206$
;E:\supernova\msx\game\rooms1.c:87: case 41:    // tan
00169$:
;E:\supernova\msx\game\rooms1.c:88: Play(600, 600, 200);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0258
	ld	h, d
	ld	l, e
	call	_Play
;E:\supernova\msx\game\rooms1.c:89: if (En(27))
	ld	a, #0x1b
	call	_En
	or	a, a
	jp	z, 00180$
;E:\supernova\msx\game\rooms1.c:91: if (!En(22) && !En(23))
	ld	a, #0x16
	call	_En
	or	a, a
	jr	nz, 00173$
	ld	a, #0x17
	call	_En
	or	a, a
	jr	nz, 00173$
;E:\supernova\msx\game\rooms1.c:93: Col(28, 23); RL(180); Col(11, 7);
	ld	l, #0x17
	ld	a, #0x1c
	call	_Col
	ld	hl, #0x00b4
	call	_RL
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\rooms1.c:94: RS(38); T[8] = 7;
	ld	hl, #0x0026
	call	_RS
	ld	hl, #0x0007
	ld	((_T + 16)), hl
;E:\supernova\msx\game\rooms1.c:95: for (x = 1; x <= 6; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00204$:
;E:\supernova\msx\game\rooms1.c:96: for (y = 30; y <= 200; y++) { Sound(y); Delay(5); }
	ld	hl, #_y
	ld	(hl), #0x1e
00202$:
	ld	a, (_y)
	ld	h, #0x00
	ld	l, a
	call	_Sound
	ld	hl, #0x0005
	call	_Delay
	ld	hl, #_y
	inc	(hl)
	ld	a, #0xc8
	ld	hl, #_y
	sub	a, (hl)
	jr	nc, 00202$
;E:\supernova\msx\game\rooms1.c:95: for (x = 1; x <= 6; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x06
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00204$
;E:\supernova\msx\game\rooms1.c:97: NoSound();
	call	_NoSound
	jr	00206$
00173$:
;E:\supernova\msx\game\rooms1.c:99: else { RS(40); Play(500, 999, 3); Min(26); Min(27); }
	ld	hl, #0x0028
	call	_RS
	ld	hl, #0x0003
	push	hl
	ld	de, #0x03e7
	ld	hl, #0x01f4
	call	_Play
	ld	a, #0x1a
	call	_Min
	ld	a, #0x1b
	call	_Min
	jr	00206$
00180$:
;E:\supernova\msx\game\rooms1.c:101: else if (En(26)) RL(184);
	ld	a, #0x1a
	call	_En
	or	a, a
	jr	z, 00177$
	ld	hl, #0x00b8
	call	_RL
	jr	00206$
00177$:
;E:\supernova\msx\game\rooms1.c:102: else RL(185);
	ld	hl, #0x00b9
	call	_RL
;E:\supernova\msx\game\rooms1.c:104: }
	jr	00206$
00184$:
;E:\supernova\msx\game\rooms1.c:105: else RL(179);
	ld	hl, #0x00b3
	call	_RL
;E:\supernova\msx\game\rooms1.c:106: break;
	jr	00206$
;E:\supernova\msx\game\rooms1.c:107: case 39:
00187$:
;E:\supernova\msx\game\rooms1.c:108: if (SET_IN(NounSet, 16) && En(6))
	ld	a, (#(_NounSet + 1) + 0)
	rlca
	jr	nc, 00206$
	ld	a, #0x06
	call	_En
	or	a, a
	jr	z, 00206$
;E:\supernova\msx\game\rooms1.c:110: if (En(7)) RL(575);
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00189$
	ld	hl, #0x023f
	call	_RL
	jr	00206$
00189$:
;E:\supernova\msx\game\rooms1.c:111: else { Min(6); RL(145); SFlag = 0; }
	ld	a, #0x06
	call	_Min
	ld	hl, #0x0091
	call	_RL
	xor	a, a
	ld	(#_SFlag), a
;E:\supernova\msx\game\rooms1.c:116: }
00206$:
;E:\supernova\msx\game\rooms1.c:117: }
	inc	sp
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
	.ascii "r2/20-8 d2/vega"
	.db 0x00
;E:\supernova\msx\game\rooms1.c:119: void Room2(void)    // The Player's Ship
;	---------------------------------
; Function Room2
; ---------------------------------
_Room2::
;E:\supernova\msx\game\rooms1.c:121: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x02
	jr	z, 00101$
	sub	a, #0x03
	jp	z, 00157$
	ret
;E:\supernova\msx\game\rooms1.c:123: case 2:    // Forward Corridor
00101$:
;E:\supernova\msx\game\rooms1.c:124: switch (Vb)
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
	jr	z, 00127$
	cp	a, #0x33
	jr	z, 00104$
	sub	a, #0x35
	jp	z, 00150$
	ret
;E:\supernova\msx\game\rooms1.c:126: case 9: case 13: case 51:
00104$:
;E:\supernova\msx\game\rooms1.c:127: if (N1 == 0 || N1 == 62 || N1 == 64 || N1 == 71)
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
;E:\supernova\msx\game\rooms1.c:129: if (En(23))
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00109$
;E:\supernova\msx\game\rooms1.c:131: RL(237);
	ld	hl, #0x00ed
	call	_RL
;E:\supernova\msx\game\rooms1.c:132: switch (Region) { case 1: MoveTo(22); break; case 2: MoveTo(24); break; }
	ld	a, (_Region)
	dec	a
	jr	z, 00105$
	ld	a, (_Region)
	sub	a, #0x02
	jr	z, 00106$
	ret
00105$:
	ld	a, #0x16
	jp	_MoveTo
00106$:
	ld	a, #0x18
	jp	_MoveTo
00109$:
;E:\supernova\msx\game\rooms1.c:134: else RL(99);
;E:\supernova\msx\game\rooms1.c:136: break;
	ld	hl, #0x0063
	jp	_RL
;E:\supernova\msx\game\rooms1.c:137: case 1: case 11: Door(1, 50); break;
00117$:
	ld	l, #0x32
	ld	a, #0x01
	jp	_Door
;E:\supernova\msx\game\rooms1.c:138: case 2: MoveTo(3); break;
00118$:
	ld	a, #0x03
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:139: case 4: MoveTo(4); break;
00119$:
	ld	a, #0x04
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:140: case 24: case 28:
00121$:
;E:\supernova\msx\game\rooms1.c:141: if (StrEq(NStr, "hatch")) { if (En(23)) RL(163); else RL(99); }
	ld	de, #___str_2
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	ret	z
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00123$
	ld	hl, #0x00a3
	jp	_RL
00123$:
;E:\supernova\msx\game\rooms1.c:142: break;
	ld	hl, #0x0063
	jp	_RL
;E:\supernova\msx\game\rooms1.c:143: case 50:
00127$:
;E:\supernova\msx\game\rooms1.c:144: if (N1 == 78)
	ld	a, (_N1)
	sub	a, #0x4e
	ret	nz
;E:\supernova\msx\game\rooms1.c:146: if (En(22)) { RL(160); Min(22); }
	ld	a, #0x16
	call	_En
	or	a, a
	jr	z, 00131$
	ld	hl, #0x00a0
	call	_RL
	ld	a, #0x16
	jp	_Min
00131$:
;E:\supernova\msx\game\rooms1.c:149: RL(161); Add(22);
	ld	hl, #0x00a1
	call	_RL
	ld	a, #0x16
	call	_Add
;E:\supernova\msx\game\rooms1.c:150: if (T[8] > 0) { RS(40); Play(500, 999, 3); T[8] = 0; Min(27); }
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
	call	_Play
	ld	hl, #0x0000
	ld	((_T + 16)), hl
;E:\supernova\msx\game\rooms1.c:153: break;
	ld	a, #0x1b
	jp	_Min
;E:\supernova\msx\game\rooms1.c:154: case 41:
00135$:
;E:\supernova\msx\game\rooms1.c:155: if (StrEq(NStr, "hatch"))
	ld	de, #___str_2
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	ret	z
;E:\supernova\msx\game\rooms1.c:157: if (Region != 4)
	ld	a, (_Region)
	sub	a, #0x04
	jp	z, 00146$
;E:\supernova\msx\game\rooms1.c:159: if (En(22))
	ld	a, #0x16
	call	_En
	or	a, a
	jp	z, 00143$
;E:\supernova\msx\game\rooms1.c:161: RL(96); Add(23);
	ld	hl, #0x0060
	call	_RL
	ld	a, #0x17
	call	_Add
;E:\supernova\msx\game\rooms1.c:162: if (!En(44) && Region == 2)
	ld	a, #0x2c
	call	_En
	or	a, a
	ret	nz
	ld	a, (_Region)
	sub	a, #0x02
	ret	nz
;E:\supernova\msx\game\rooms1.c:164: Add(44); RL(327);
	ld	a, #0x2c
	call	_Add
	ld	hl, #0x0147
	call	_RL
;E:\supernova\msx\game\rooms1.c:165: for (i = 1; i <= 400; i++) Sound(Rnd(3500) + 999);
	ld	hl, #0x0001
	ld	(_i), hl
00178$:
	ld	hl, #0x0dac
	call	_Rnd
	ld	hl, #0x03e7
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0x90
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	po, 00612$
	xor	a, #0x80
00612$:
	jp	p, 00178$
;E:\supernova\msx\game\rooms1.c:166: for (i = 7500; i >= 500; i--) { Sound(Rnd(i) + i); Sound(Rnd(3500) + 2000); }
	ld	hl, #0x1d4c
	ld	(_i), hl
00180$:
	ld	hl, (_i)
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, #0x0dac
	call	_Rnd
	ld	hl, #0x07d0
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	ld	bc, (_i)
	ld	a, c
	sub	a, #0xf4
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	nc, 00180$
;E:\supernova\msx\game\rooms1.c:167: for (i = 1; i <= 300; i++) Sound(Rnd(3500) + 2500);
	ld	hl, #0x0001
	ld	(_i), hl
00182$:
	ld	hl, #0x0dac
	call	_Rnd
	ld	hl, #0x09c4
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0x2c
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	po, 00613$
	xor	a, #0x80
00613$:
	jp	p, 00182$
;E:\supernova\msx\game\rooms1.c:168: NoSound();
	jp	_NoSound
00143$:
;E:\supernova\msx\game\rooms1.c:171: else RL(97);
	ld	hl, #0x0061
	jp	_RL
00146$:
;E:\supernova\msx\game\rooms1.c:173: else { RS(45); DEAD(); }
	ld	hl, #0x002d
	call	_RS
;E:\supernova\msx\game\rooms1.c:175: break;
	jp	_DEAD
;E:\supernova\msx\game\rooms1.c:176: case 53:
00150$:
;E:\supernova\msx\game\rooms1.c:177: if (N1 == 56) { if (En(23)) { RL(98); Min(23); } else Say("hatch", "closed"); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00152$
	ld	hl, #0x0062
	call	_RL
	ld	a, #0x17
	jp	_Min
00152$:
	ld	de, #___str_3
;E:\supernova\msx\game\rooms1.c:180: break;
	ld	hl, #___str_2
	jp	_Say
;E:\supernova\msx\game\rooms1.c:182: case 3:    // Rear Corridor
00157$:
;E:\supernova\msx\game\rooms1.c:183: switch (Vb)
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
;E:\supernova\msx\game\rooms1.c:185: case 1: case 13: MoveTo(2); break;
00159$:
	ld	a, #0x02
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:186: case 3: MoveTo(6); break;
00160$:
	ld	a, #0x06
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:187: case 4: MoveTo(7); break;
00161$:
	ld	a, #0x07
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:188: case 28: case 31: if (N1 == 55 || N1 == 81) { RB2(4, 12); Pause(); } break;
00163$:
	ld	a, (_N1)
	cp	a, #0x37
	jr	z, 00164$
	sub	a, #0x51
	ret	nz
00164$:
	ld	l, #0x0c
	ld	a, #0x04
	call	_RB2
	jp	_Pause
;E:\supernova\msx\game\rooms1.c:189: case 24: case 41: case 76:
00169$:
;E:\supernova\msx\game\rooms1.c:190: if (N1 == 55) { if (Md == 1 || Md == 4) RL(533); else { RS(22); DEAD(); } }
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
;E:\supernova\msx\game\rooms1.c:194: }
;E:\supernova\msx\game\rooms1.c:195: }
	jp	_DEAD
___str_2:
	.ascii "hatch"
	.db 0x00
___str_3:
	.ascii "closed"
	.db 0x00
;E:\supernova\msx\game\rooms1.c:197: void Room3(void)    // The Player's Ship
;	---------------------------------
; Function Room3
; ---------------------------------
_Room3::
;E:\supernova\msx\game\rooms1.c:199: switch (Prm)
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
;E:\supernova\msx\game\rooms1.c:201: case 4:    // Ship's Lab
00101$:
;E:\supernova\msx\game\rooms1.c:202: switch (Vb)
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
;E:\supernova\msx\game\rooms1.c:204: case 3: case 13: MoveTo(2); break;
00103$:
	ld	a, #0x02
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:205: case 28: case 22:
00105$:
;E:\supernova\msx\game\rooms1.c:206: switch (N1)
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
;E:\supernova\msx\game\rooms1.c:208: case 90: RS(23); break;
00106$:
	ld	hl, #0x0017
	jp	_RS
;E:\supernova\msx\game\rooms1.c:209: case 52: RS(26); break;
00107$:
	ld	hl, #0x001a
	jp	_RS
;E:\supernova\msx\game\rooms1.c:210: case 38: RS(27); break;
00108$:
	ld	hl, #0x001b
	jp	_RS
;E:\supernova\msx\game\rooms1.c:211: case 55: RS(31); break;
00109$:
	ld	hl, #0x001f
	jp	_RS
;E:\supernova\msx\game\rooms1.c:212: case 81: case 119: RB(10, 14); Pause(); break;
00111$:
	ld	l, #0x0e
	ld	a, #0x0a
	call	_RB
	jp	_Pause
;E:\supernova\msx\game\rooms1.c:213: case 64:
00112$:
;E:\supernova\msx\game\rooms1.c:214: if (NicheCon != Null) { Wr("There is a "); WrFN(NicheCon); Wr(" sitting on the niche."); Wln(); }
	ld	a, (_NicheCon+0)
	or	a, a
	jr	z, 00114$
	ld	hl, #___str_4
	call	_Wr
	ld	a, (_NicheCon)
	call	_WrFN
	ld	hl, #___str_5
	call	_Wr
	jp	_Wln
00114$:
;E:\supernova\msx\game\rooms1.c:215: else RL(152);
;E:\supernova\msx\game\rooms1.c:218: break;
	ld	hl, #0x0098
	jp	_RL
;E:\supernova\msx\game\rooms1.c:219: case 31: if (N1 == 81 || N1 == 119) { RB(10, 14); Pause(); } break;
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
;E:\supernova\msx\game\rooms1.c:220: case 41: case 42: case 43: case 44: case 88: if (N1 == 55) RL(174); break;
00125$:
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
	ld	hl, #0x00ae
	jp	_RL
;E:\supernova\msx\game\rooms1.c:221: case 33:
00128$:
;E:\supernova\msx\game\rooms1.c:222: if (N2 == 64)
	ld	a, (_N2)
	sub	a, #0x40
	ret	nz
;E:\supernova\msx\game\rooms1.c:224: if (N1 == 3 || N1 == 4 || N1 == 8 || N1 == 9 || N1 == 12 || N1 == 17 || N1 == 29)
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
;E:\supernova\msx\game\rooms1.c:226: if (Pr == 1 || Pr == 5 || Pr == 10)
	ld	a, (_Pr)
	dec	a
	jr	z, 00132$
	ld	a, (_Pr)
	cp	a, #0x05
	jr	z, 00132$
	sub	a, #0x0a
	jp	nz, _Crazy
00132$:
;E:\supernova\msx\game\rooms1.c:228: if (NicheCon == Null) { Van(N1); SetR(N1, 4); NicheCon = N1; RL(147); }
	ld	a, (_NicheCon+0)
	or	a, a
	jr	nz, 00130$
	ld	a, (_N1)
	call	_Van
	ld	l, #0x04
	ld	a, (_N1)
	call	_SetR
	ld	a, (_N1+0)
	ld	(#_NicheCon), a
	ld	hl, #0x0093
	jp	_RL
00130$:
;E:\supernova\msx\game\rooms1.c:229: else RL(148);
;E:\supernova\msx\game\rooms1.c:231: else Crazy();
	ld	hl, #0x0094
	jp	_RL
00138$:
;E:\supernova\msx\game\rooms1.c:233: else RL(146);
;E:\supernova\msx\game\rooms1.c:235: break;
	ld	hl, #0x0092
	jp	_RL
;E:\supernova\msx\game\rooms1.c:236: case 54: if (N1 == 38 || N1 == 90) { RL(321); Serum = 1; } break;
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
;E:\supernova\msx\game\rooms1.c:237: case 56:
00152$:
;E:\supernova\msx\game\rooms1.c:238: Serum++;
	ld	hl, #_Serum
	inc	(hl)
;E:\supernova\msx\game\rooms1.c:239: if (Serum < 3)
	ld	a, (_Serum+0)
	sub	a, #0x03
	jp	nc, 00171$
;E:\supernova\msx\game\rooms1.c:241: if (NicheCon == Null) RS(24);
	ld	a, (_NicheCon+0)
	or	a, a
	jr	nz, 00168$
	ld	hl, #0x0018
	jp	_RS
00168$:
;E:\supernova\msx\game\rooms1.c:242: else if (NicheCon != 29)
	ld	a, (_NicheCon)
	sub	a, #0x1d
	jr	z, 00165$
;E:\supernova\msx\game\rooms1.c:243: { Wr("A small amount of serum drips onto the "); WrFN(NicheCon); Wr(" and dries up."); Wln(); }
	ld	hl, #___str_6
	call	_Wr
	ld	a, (_NicheCon)
	call	_WrFN
	ld	hl, #___str_7
	call	_Wr
	jp	_Wln
00165$:
;E:\supernova\msx\game\rooms1.c:244: else if (MugCon == Null)
	ld	a, (_MugCon+0)
	or	a, a
	jr	nz, 00162$
;E:\supernova\msx\game\rooms1.c:246: MugCon = 92; RS(25); LOC_ADD(4, 92);
	ld	hl, #_MugCon
	ld	(hl), #0x5c
	ld	hl, #0x0019
	call	_RS
	ld	bc, #_g_Loc+79
	ld	a, (bc)
	set	3, a
	ld	(bc), a
;E:\supernova\msx\game\rooms1.c:247: if (StrEq(Input, "6")) Add(42); else Min(42);
	ld	de, #___str_8
	ld	hl, #_Input
	call	_StrEq
	or	a, a
	jr	z, 00154$
	ld	a, #0x2a
	jp	_Add
00154$:
	ld	a, #0x2a
	jp	_Min
00162$:
;E:\supernova\msx\game\rooms1.c:249: else if (MugCon == 79 || MugCon == 92 || MugCon == 99)
	ld	a, (_MugCon)
	cp	a, #0x4f
	jr	z, 00156$
	cp	a, #0x5c
	jr	z, 00156$
	sub	a, #0x63
	jr	nz, 00157$
00156$:
;E:\supernova\msx\game\rooms1.c:250: { Wr("The serum mixes with the "); WrFN(MugCon); Wr(" inside the mug."); Wln(); }
	ld	hl, #___str_9
	call	_Wr
	ld	a, (_MugCon)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	jp	_Wln
00157$:
;E:\supernova\msx\game\rooms1.c:252: { Wr("The serum drips on the "); WrFN(MugCon); Wr(" inside the mug and quickly evaporates."); Wln(); }
	ld	hl, #___str_11
	call	_Wr
	ld	a, (_MugCon)
	call	_WrFN
	ld	hl, #___str_12
	call	_Wr
	jp	_Wln
00171$:
;E:\supernova\msx\game\rooms1.c:254: else RS(135);
;E:\supernova\msx\game\rooms1.c:257: break;
	ld	hl, #0x0087
	jp	_RS
;E:\supernova\msx\game\rooms1.c:259: case 5:    // Sanitary Facilities
00174$:
;E:\supernova\msx\game\rooms1.c:260: switch (Vb)
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
;E:\supernova\msx\game\rooms1.c:262: case 2: case 13: MoveTo(6); break;
00176$:
	ld	a, #0x06
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:263: case 22: case 28: if (N1 == 98) RL(122); break;
00178$:
	ld	a, (_N1)
	sub	a, #0x62
	ret	nz
;E:\supernova\msx\game\rooms1.c:265: break;
	ld	hl, #0x007a
	jp	_RL
;E:\supernova\msx\game\rooms1.c:267: case 6:    // Sleep Chamber
00182$:
;E:\supernova\msx\game\rooms1.c:268: switch (Vb)
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
;E:\supernova\msx\game\rooms1.c:270: case 1: case 11: MoveTo(5); break;
00184$:
	ld	a, #0x05
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:271: case 4: case 13: MoveTo(3); break;
00186$:
	ld	a, #0x03
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:272: case 28: switch (N1) { case 80: RL(159); break; case 69: RS(29); break; } break;
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
;E:\supernova\msx\game\rooms1.c:273: case 51: if (N1 == 69) Vb = 35; break;
00191$:
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
	ld	hl, #_Vb
	ld	(hl), #0x23
;E:\supernova\msx\game\rooms1.c:275: break;
	ret
;E:\supernova\msx\game\rooms1.c:277: case 7:    // Cargo Area
00195$:
;E:\supernova\msx\game\rooms1.c:278: switch (Vb)
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
;E:\supernova\msx\game\rooms1.c:280: case 3: case 13: MoveTo(3); break;
00197$:
	ld	a, #0x03
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:281: case 22: case 28: if (N1 == 32) RL(155); break;
00199$:
	ld	a, (_N1)
	sub	a, #0x20
	ret	nz
	ld	hl, #0x009b
	jp	_RL
;E:\supernova\msx\game\rooms1.c:282: case 24: if (N1 == 32) RL(156); break;
00202$:
	ld	a, (_N1)
	sub	a, #0x20
	ret	nz
	ld	hl, #0x009c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:283: case 41: case 53: if (N1 == 32) RL(157); break;
00206$:
	ld	a, (_N1)
	sub	a, #0x20
	ret	nz
	ld	hl, #0x009d
	jp	_RL
;E:\supernova\msx\game\rooms1.c:284: case 39: if (SET_IN(NounSet, 32)) RL(158); break;
00209$:
	ld	a, (#(_NounSet + 3) + 0)
	rlca
	ret	nc
	ld	hl, #0x009e
;E:\supernova\msx\game\rooms1.c:287: }
;E:\supernova\msx\game\rooms1.c:288: }
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
	.ascii " and dries up."
	.db 0x00
___str_8:
	.ascii "6"
	.db 0x00
___str_9:
	.ascii "The serum mixes with the "
	.db 0x00
___str_10:
	.ascii " inside the mug."
	.db 0x00
___str_11:
	.ascii "The serum drips on the "
	.db 0x00
___str_12:
	.ascii " inside the mug and quickly evaporates."
	.db 0x00
;E:\supernova\msx\game\rooms1.c:290: void Room4(void)    // The Tavern
;	---------------------------------
; Function Room4
; ---------------------------------
_Room4::
;E:\supernova\msx\game\rooms1.c:292: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x08
	jr	z, 00101$
	cp	a, #0x09
	jp	z, 00187$
	cp	a, #0x0a
	jp	z, 00216$
	cp	a, #0x0b
	jp	z, 00244$
	sub	a, #0x0c
	jp	z, 00267$
	ret
;E:\supernova\msx\game\rooms1.c:294: case 8:    // Tavern
00101$:
;E:\supernova\msx\game\rooms1.c:295: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x03
	jr	z, 00110$
	cp	a, #0x09
	jr	z, 00110$
	cp	a, #0x0b
	jr	z, 00110$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x14
	jp	z, 00183$
	cp	a, #0x1c
	jp	z, 00158$
	cp	a, #0x1f
	jp	z, 00120$
	cp	a, #0x23
	jp	z, 00124$
	cp	a, #0x27
	jp	z, 00167$
	cp	a, #0x29
	jp	z, 00164$
	cp	a, #0x2a
	jp	z, 00177$
	cp	a, #0x2c
	jp	z, 00177$
	cp	a, #0x33
	jr	z, 00110$
	cp	a, #0x36
	jp	z, 00172$
	cp	a, #0x3b
	jp	z, 00180$
	cp	a, #0x41
	jp	z, 00140$
	cp	a, #0x4b
	jp	z, 00177$
	sub	a, #0x5d
	jp	z, 00172$
	ret
;E:\supernova\msx\game\rooms1.c:297: case 2: case 13:
00103$:
;E:\supernova\msx\game\rooms1.c:298: if (En(7)) RL(22); else { RL(93); MoveTo(13); }
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00105$
	ld	hl, #0x0016
	jp	_RL
00105$:
	ld	hl, #0x005d
	call	_RL
;E:\supernova\msx\game\rooms1.c:299: break;
	ld	a, #0x0d
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:300: case 3: case 9: case 11: case 51:
00110$:
;E:\supernova\msx\game\rooms1.c:301: if (En(7)) RL(22);
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00118$
	ld	hl, #0x0016
	jp	_RL
00118$:
;E:\supernova\msx\game\rooms1.c:302: else if (N1 == Null || N1 == 71) { RL(283); MoveTo(9); }
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00113$
	ld	a, (_N1)
	sub	a, #0x47
	jr	nz, 00114$
00113$:
	ld	hl, #0x011b
	call	_RL
	ld	a, #0x09
	jp	_MoveTo
00114$:
;E:\supernova\msx\game\rooms1.c:303: else if (N1 == 126) RL(473);
	ld	a, (_N1)
	sub	a, #0x7e
	ret	nz
;E:\supernova\msx\game\rooms1.c:304: break;
	ld	hl, #0x01d9
	jp	_RL
;E:\supernova\msx\game\rooms1.c:305: case 31: if (N1 == 81 || N1 == 119) RB(2, 9); break;
00120$:
	ld	a, (_N1)
	cp	a, #0x51
	jr	z, 00121$
	sub	a, #0x77
	ret	nz
00121$:
	ld	l, #0x09
	ld	a, #0x02
	jp	_RB
;E:\supernova\msx\game\rooms1.c:306: case 35:
00124$:
;E:\supernova\msx\game\rooms1.c:307: switch (N1)
	ld	a, (_N1)
	cp	a, #0x23
	jr	z, 00134$
	cp	a, #0x53
	jr	z, 00125$
	cp	a, #0x54
	jr	z, 00134$
	sub	a, #0x55
	jr	z, 00134$
	ret
;E:\supernova\msx\game\rooms1.c:309: case 83:
00125$:
;E:\supernova\msx\game\rooms1.c:310: if (IN_RANGE(T[1], 4, 7) || IN_RANGE(T[1], 11, 17)) RS(8);
	ld	hl, (#(_T + 2) + 0)
	ld	a, l
	sub	a, #0x04
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00131$
	ld	a, #0x07
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00126$
00131$:
	ld	a, l
	sub	a, #0x0b
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00127$
	ld	a, #0x11
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00127$
00126$:
	ld	hl, #0x0008
	jp	_RS
00127$:
;E:\supernova\msx\game\rooms1.c:311: else { Add(19); Add(7); RL(30); }
	ld	a, #0x13
	call	_Add
	ld	a, #0x07
	call	_Add
;E:\supernova\msx\game\rooms1.c:312: break;
	ld	hl, #0x001e
	jp	_RL
;E:\supernova\msx\game\rooms1.c:313: case 35: case 84: case 85:
00134$:
;E:\supernova\msx\game\rooms1.c:314: Add(7); RL(30);
	ld	a, #0x07
	call	_Add
	ld	hl, #0x001e
	call	_RL
;E:\supernova\msx\game\rooms1.c:315: if (N1 == 35 || N1 == 84) Add(2); else Min(2);
	ld	a, (_N1)
	cp	a, #0x23
	jr	z, 00135$
	sub	a, #0x54
	jr	nz, 00136$
00135$:
	ld	a, #0x02
	jp	_Add
00136$:
;E:\supernova\msx\game\rooms1.c:318: break;
	ld	a, #0x02
	jp	_Min
;E:\supernova\msx\game\rooms1.c:319: case 65:
00140$:
;E:\supernova\msx\game\rooms1.c:320: if (N1 == 124)
	ld	a, (_N1)
	sub	a, #0x7c
	ret	nz
;E:\supernova\msx\game\rooms1.c:322: if (En(2))
	ld	a, #0x02
	call	_En
	or	a, a
	jr	z, 00154$
;E:\supernova\msx\game\rooms1.c:324: if (IN_RANGE(T[1], 5, 7) || IN_RANGE(T[1], 11, 18))
	ld	hl, (#(_T + 2) + 0)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00152$
	ld	a, #0x07
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00147$
00152$:
	ld	a, l
	sub	a, #0x0b
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00148$
	ld	a, #0x12
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00148$
00147$:
;E:\supernova\msx\game\rooms1.c:326: if (Md == 1 || En(18))
	ld	a, (_Md)
	dec	a
	jr	z, 00143$
	ld	a, #0x12
	call	_En
	or	a, a
	jr	z, 00144$
00143$:
;E:\supernova\msx\game\rooms1.c:328: RL(31); Score(20, 3);
	ld	hl, #0x001f
	call	_RL
	ld	de, #0x0003
	ld	hl, #0x0014
	call	_Score
;E:\supernova\msx\game\rooms1.c:329: if (!En(18)) { Add(18); T[1] = 8; }
	ld	a, #0x12
	call	_En
	or	a, a
	ret	nz
	ld	a, #0x12
	call	_Add
	ld	hl, #0x0008
	ld	((_T + 2)), hl
	ret
00144$:
;E:\supernova\msx\game\rooms1.c:331: else RL(32);
	ld	hl, #0x0020
	jp	_RL
00148$:
;E:\supernova\msx\game\rooms1.c:333: else RL(41);
	ld	hl, #0x0029
	jp	_RL
00154$:
;E:\supernova\msx\game\rooms1.c:335: else RL(33);
;E:\supernova\msx\game\rooms1.c:337: break;
	ld	hl, #0x0021
	jp	_RL
;E:\supernova\msx\game\rooms1.c:338: case 28:
00158$:
;E:\supernova\msx\game\rooms1.c:339: switch (N1) { case 56: RL(371); break; case 81: case 119: RB(2, 9); break; case 111: RL(44); break; }
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00159$
	cp	a, #0x51
	jr	z, 00161$
	cp	a, #0x6f
	jr	z, 00162$
	sub	a, #0x77
	jr	z, 00161$
	ret
00159$:
	ld	hl, #0x0173
	jp	_RL
00161$:
	ld	l, #0x09
	ld	a, #0x02
	jp	_RB
00162$:
;E:\supernova\msx\game\rooms1.c:340: break;
	ld	hl, #0x002c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:341: case 41: if (N1 == 56) RL(394); break;
00164$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x018a
	jp	_RL
;E:\supernova\msx\game\rooms1.c:342: case 39: if (SET_IN(NounSet, 29) && !En(21)) RL(86); break;
00167$:
	ld	a, (#(_NounSet + 3) + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	ret	z
	ld	a, #0x15
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x0056
	jp	_RL
;E:\supernova\msx\game\rooms1.c:343: case 54: case 93: if (N1 == 111) { RS(32); DEAD(); } break;
00172$:
	ld	a, (_N1)
	sub	a, #0x6f
	ret	nz
	ld	hl, #0x0020
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms1.c:344: case 42: case 44: case 75: if (N1 == 111) RL(474); break;
00177$:
	ld	a, (_N1)
	sub	a, #0x6f
	ret	nz
	ld	hl, #0x01da
	jp	_RL
;E:\supernova\msx\game\rooms1.c:345: case 59: if (N1 == 126) RL(473); break;
00180$:
	ld	a, (_N1)
	sub	a, #0x7e
	ret	nz
	ld	hl, #0x01d9
	jp	_RL
;E:\supernova\msx\game\rooms1.c:346: case 20: if (N1 == 126) RL(178); break;
00183$:
	ld	a, (_N1)
	sub	a, #0x7e
	ret	nz
;E:\supernova\msx\game\rooms1.c:348: break;
	ld	hl, #0x00b2
	jp	_RL
;E:\supernova\msx\game\rooms1.c:350: case 9:    // West Hallway
00187$:
;E:\supernova\msx\game\rooms1.c:351: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00189$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00189$
	cp	a, #0x03
	jr	z, 00191$
	cp	a, #0x04
	jr	z, 00198$
	cp	a, #0x0a
	jr	z, 00198$
	cp	a, #0x0b
	jr	z, 00191$
	cp	a, #0x0d
	jr	z, 00198$
	cp	a, #0x1c
	jr	z, 00192$
	cp	a, #0x29
	jr	z, 00208$
	cp	a, #0x33
	jr	z, 00198$
	cp	a, #0x36
	jr	z, 00202$
	sub	a, #0x58
	jr	z, 00208$
	ret
;E:\supernova\msx\game\rooms1.c:353: case 1: case 2: RL(89); break;
00189$:
	ld	hl, #0x0059
	jp	_RL
;E:\supernova\msx\game\rooms1.c:354: case 3: case 11: MoveTo(10); break;
00191$:
	ld	a, #0x0a
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:355: case 28: if (N1 == 56) RL(92); break;
00192$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:356: case 4: case 10: case 13: case 51:
00198$:
;E:\supernova\msx\game\rooms1.c:357: if (N1 == Null || N1 == 71) { RL(284); MoveTo(8); }
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00199$
	ld	a, (_N1)
	sub	a, #0x47
	ret	nz
00199$:
	ld	hl, #0x011c
	call	_RL
;E:\supernova\msx\game\rooms1.c:358: break;
	ld	a, #0x08
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:359: case 54: if (N1 == 56 && T[1] < 1) RS(13); else RL(123); break;
00202$:
	ld	a, (_N1)
	sub	a, #0x38
	jr	nz, 00204$
	ld	bc, (#(_T + 2) + 0)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00204$
	ld	hl, #0x000d
	jp	_RS
00204$:
	ld	hl, #0x007b
	jp	_RL
;E:\supernova\msx\game\rooms1.c:360: case 41: case 88:
00208$:
;E:\supernova\msx\game\rooms1.c:361: if (N1 == 56) switch (N2) { case 0: RL(107); break; case 3: RL(101); break; default: RL(137); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00209$
	ld	a, (_N2)
	sub	a, #0x03
	jr	z, 00210$
	jr	00211$
00209$:
	ld	hl, #0x006b
	jp	_RL
00210$:
	ld	hl, #0x0065
	jp	_RL
00211$:
;E:\supernova\msx\game\rooms1.c:364: break;
	ld	hl, #0x0089
	jp	_RL
;E:\supernova\msx\game\rooms1.c:366: case 10:    // Central Hallway
00216$:
;E:\supernova\msx\game\rooms1.c:367: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00217$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00228$
	cp	a, #0x03
	jr	z, 00220$
	cp	a, #0x04
	jr	z, 00219$
	cp	a, #0x0b
	jr	z, 00228$
	cp	a, #0x0d
	jr	z, 00219$
	cp	a, #0x1c
	jr	z, 00221$
	cp	a, #0x29
	jr	z, 00233$
	cp	a, #0x36
	jr	z, 00240$
	sub	a, #0x58
	jr	z, 00233$
	ret
;E:\supernova\msx\game\rooms1.c:369: case 1: RL(89); break;
00217$:
	ld	hl, #0x0059
	jp	_RL
;E:\supernova\msx\game\rooms1.c:370: case 4: case 13: MoveTo(9); break;
00219$:
	ld	a, #0x09
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:371: case 3: MoveTo(11); break;
00220$:
	ld	a, #0x0b
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:372: case 28: if (N1 == 56) { if (En(11)) RL(370); else RL(92); } break;
00221$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x0b
	call	_En
	or	a, a
	jr	z, 00223$
	ld	hl, #0x0172
	jp	_RL
00223$:
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:373: case 2: case 11:
00228$:
;E:\supernova\msx\game\rooms1.c:374: if (En(11)) { RL(90); Score(5, 69); MoveTo(12); Min(11); }
	ld	a, #0x0b
	call	_En
	or	a, a
	jr	z, 00230$
	ld	hl, #0x005a
	call	_RL
	ld	de, #0x0045
	ld	hl, #0x0005
	call	_Score
	ld	a, #0x0c
	call	_MoveTo
	ld	a, #0x0b
	jp	_Min
00230$:
;E:\supernova\msx\game\rooms1.c:375: else RL(89);
;E:\supernova\msx\game\rooms1.c:376: break;
	ld	hl, #0x0059
	jp	_RL
;E:\supernova\msx\game\rooms1.c:377: case 41: case 88:
00233$:
;E:\supernova\msx\game\rooms1.c:378: if (N1 == 56) switch (N2) { case 0: RL(107); break; case 3: break; default: RL(137); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00234$
	ld	a, (_N2)
	sub	a, #0x03
	ret	z
	jr	00236$
00234$:
	ld	hl, #0x006b
	jp	_RL
00236$:
;E:\supernova\msx\game\rooms1.c:379: break;
	ld	hl, #0x0089
	jp	_RL
;E:\supernova\msx\game\rooms1.c:380: case 54: if (N1 == 56) RL(123); break;
00240$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
;E:\supernova\msx\game\rooms1.c:382: break;
	ld	hl, #0x007b
	jp	_RL
;E:\supernova\msx\game\rooms1.c:384: case 11:    // East Hallway
00244$:
;E:\supernova\msx\game\rooms1.c:385: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00246$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00246$
	cp	a, #0x04
	jr	z, 00248$
	cp	a, #0x0d
	jr	z, 00248$
	cp	a, #0x1c
	jr	z, 00249$
	cp	a, #0x29
	jr	z, 00253$
	cp	a, #0x35
	jr	z, 00263$
	cp	a, #0x36
	jr	z, 00260$
	sub	a, #0x58
	jr	z, 00253$
	ret
;E:\supernova\msx\game\rooms1.c:387: case 1: case 2: RL(89); break;
00246$:
	ld	hl, #0x0059
	jp	_RL
;E:\supernova\msx\game\rooms1.c:388: case 4: case 13: MoveTo(10); break;
00248$:
	ld	a, #0x0a
	jp	_MoveTo
;E:\supernova\msx\game\rooms1.c:389: case 28: if (N1 == 56) RL(92); break;
00249$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:390: case 41: case 88:
00253$:
;E:\supernova\msx\game\rooms1.c:391: if (N1 == 56) switch (N2) { case 0: RL(107); break; case 3: RL(101); break; default: RL(137); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00254$
	ld	a, (_N2)
	sub	a, #0x03
	jr	z, 00255$
	jr	00256$
00254$:
	ld	hl, #0x006b
	jp	_RL
00255$:
	ld	hl, #0x0065
	jp	_RL
00256$:
;E:\supernova\msx\game\rooms1.c:392: break;
	ld	hl, #0x0089
	jp	_RL
;E:\supernova\msx\game\rooms1.c:393: case 54: if (N1 == 56) RL(123); break;
00260$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x007b
	jp	_RL
;E:\supernova\msx\game\rooms1.c:394: case 53: if (N1 == 56) { RL(92); Min(11); } break;
00263$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x005c
	call	_RL
;E:\supernova\msx\game\rooms1.c:396: break;
	ld	a, #0x0b
	jp	_Min
;E:\supernova\msx\game\rooms1.c:398: case 12:    // Suite #4
00267$:
;E:\supernova\msx\game\rooms1.c:399: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00269$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00269$
	cp	a, #0x16
	jr	z, 00282$
	cp	a, #0x1c
	jr	z, 00282$
	cp	a, #0x27
	jp	z, 00299$
	cp	a, #0x29
	jr	z, 00277$
	cp	a, #0x35
	jp	z, 00296$
	cp	a, #0x4c
	jr	z, 00282$
	sub	a, #0x58
	jr	z, 00277$
	ret
;E:\supernova\msx\game\rooms1.c:401: case 1: case 13:
00269$:
;E:\supernova\msx\game\rooms1.c:402: if (En(7)) RL(22);
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00274$
	ld	hl, #0x0016
	jp	_RL
00274$:
;E:\supernova\msx\game\rooms1.c:403: else if (En(11)) { RL(91); MoveTo(10); Min(11); }
	ld	a, #0x0b
	call	_En
	or	a, a
	jr	z, 00271$
	ld	hl, #0x005b
	call	_RL
	ld	a, #0x0a
	call	_MoveTo
	ld	a, #0x0b
	jp	_Min
00271$:
;E:\supernova\msx\game\rooms1.c:404: else RL(92);
;E:\supernova\msx\game\rooms1.c:405: break;
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:406: case 41: case 88: if (N1 == 56) { RL(104); Add(11); } break;
00277$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x0068
	call	_RL
	ld	a, #0x0b
	jp	_Add
;E:\supernova\msx\game\rooms1.c:407: case 22: case 28: case 76:
00282$:
;E:\supernova\msx\game\rooms1.c:408: switch (N1)
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00283$
	cp	a, #0x50
	jr	z, 00287$
	cp	a, #0x57
	jr	z, 00291$
	sub	a, #0x62
	jr	z, 00294$
	ret
;E:\supernova\msx\game\rooms1.c:410: case 56: if (En(11)) RL(370); else RL(92); break;
00283$:
	ld	a, #0x0b
	call	_En
	or	a, a
	jr	z, 00285$
	ld	hl, #0x0172
	jp	_RL
00285$:
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms1.c:411: case 80: if (Md != Null) RL(535); else RL(536); break;
00287$:
	ld	a, (_Md+0)
	or	a, a
	jr	z, 00289$
	ld	hl, #0x0217
	jp	_RL
00289$:
	ld	hl, #0x0218
	jp	_RL
;E:\supernova\msx\game\rooms1.c:412: case 87: if (LOC_HAS(12, 7)) { RL(106); R[7] = 12; Score(5, 24); } break;
00291$:
	ld	a, (#(_g_Loc + 204) + 0)
	bit	6, a
	ret	z
	ld	hl, #0x006a
	call	_RL
	ld	hl, #_R+7
	ld	(hl), #0x0c
	ld	de, #0x0018
	ld	hl, #0x0005
	jp	_Score
;E:\supernova\msx\game\rooms1.c:413: case 98: RL(121); break;
00294$:
;E:\supernova\msx\game\rooms1.c:415: break;
	ld	hl, #0x0079
	jp	_RL
;E:\supernova\msx\game\rooms1.c:416: case 53: if (N1 == 56) { RL(92); Min(11); } break;
00296$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x005c
	call	_RL
	ld	a, #0x0b
	jp	_Min
;E:\supernova\msx\game\rooms1.c:417: case 39: if (SET_IN(NounSet, 7) || SET_IN(NounSet, 30)) Score(5, 24); break;
00299$:
	ld	a, (#_NounSet + 0)
	rlca
	rlca
	jr	c, 00300$
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	ret	nc
00300$:
	ld	de, #0x0018
	ld	hl, #0x0005
;E:\supernova\msx\game\rooms1.c:420: }
;E:\supernova\msx\game\rooms1.c:421: }
	jp	_Score
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
