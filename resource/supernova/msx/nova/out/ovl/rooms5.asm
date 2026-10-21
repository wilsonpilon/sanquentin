;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rooms5
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEAD
	.globl _MoveTo
	.globl _Van
	.globl _PlayerInput
	.globl _Won
	.globl _RB2
	.globl _RS
	.globl _RL
	.globl _WrFN
	.globl _Door
	.globl _Blast
	.globl _Static
	.globl _Explode
	.globl _Play
	.globl _Pause
	.globl _Score
	.globl _Add
	.globl _En
	.globl _Bor
	.globl _Col
	.globl _Delay
	.globl _Sound
	.globl _Wln
	.globl _Wr
	.globl _StrEq
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
	.globl _Room21
	.globl _Room22
	.globl _Room23
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
;E:\supernova\msx\game\rooms5.c:4: void Room21(void)    // Planetship
;	---------------------------------
; Function Room21
; ---------------------------------
_Room21::
;E:\supernova\msx\game\rooms5.c:6: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x5e
	jr	z, 00101$
	cp	a, #0x61
	jp	z, 00125$
	cp	a, #0x62
	jp	z, 00134$
	cp	a, #0x63
	jp	z, 00152$
	sub	a, #0x64
	jp	z, 00176$
	ret
;E:\supernova\msx\game\rooms5.c:8: case 94:    // Maintenance
00101$:
;E:\supernova\msx\game\rooms5.c:9: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00103$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x1c
	jr	z, 00104$
	sub	a, #0x27
	jr	z, 00113$
	ret
;E:\supernova\msx\game\rooms5.c:11: case 1: case 13: Door(84, 65); break;
00103$:
	ld	l, #0x41
	ld	a, #0x54
	jp	_Door
;E:\supernova\msx\game\rooms5.c:12: case 28:
00104$:
;E:\supernova\msx\game\rooms5.c:13: switch (N1)
	ld	a, (_N1)
	cp	a, #0x33
	jr	z, 00105$
	sub	a, #0x57
	jr	z, 00106$
	ret
;E:\supernova\msx\game\rooms5.c:15: case 51: RL(489); break;
00105$:
	ld	hl, #0x01e9
	jp	_RL
;E:\supernova\msx\game\rooms5.c:16: case 87:
00106$:
;E:\supernova\msx\game\rooms5.c:17: RL(490); Score(15, 110);
	ld	hl, #0x01ea
	call	_RL
	ld	de, #0x006e
	ld	hl, #0x000f
	call	_Score
;E:\supernova\msx\game\rooms5.c:18: if (!En(49)) { Score(10, 49); RL(396); LOC_ADD(94, 26); }
	ld	a, #0x31
	call	_En
	or	a, a
	jr	nz, 00110$
	ld	de, #0x0031
	ld	hl, #0x000a
	call	_Score
	ld	hl, #0x018c
	call	_RL
	ld	bc, #_g_Loc+1601
	ld	a, (bc)
	set	1, a
	ld	(bc), a
	ret
00110$:
;E:\supernova\msx\game\rooms5.c:19: else if (LOC_HAS(94, 26)) RL(397);
	ld	a, (#(_g_Loc + 1601) + 0)
	bit	1, a
	ret	z
;E:\supernova\msx\game\rooms5.c:22: break;
	ld	hl, #0x018d
	jp	_RL
;E:\supernova\msx\game\rooms5.c:23: case 39:
00113$:
;E:\supernova\msx\game\rooms5.c:24: if (SET_IN(NounSet, 30))
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	jr	nc, 00119$
;E:\supernova\msx\game\rooms5.c:26: if (LOC_HAS(94, 2)) R[2] = 94;
	ld	a, (#_g_Loc + 1598)
	bit	1, a
	jr	z, 00115$
	ld	hl, #_R+2
	ld	(hl), #0x5e
00115$:
;E:\supernova\msx\game\rooms5.c:27: if (LOC_HAS(94, 26)) R[26] = 94;
	ld	a, (#_g_Loc + 1601)
	bit	1, a
	jr	z, 00119$
	ld	hl, #_R+26
	ld	(hl), #0x5e
00119$:
;E:\supernova\msx\game\rooms5.c:29: if (SET_IN(NounSet, 51))
	ld	hl, #_NounSet + 6
	ld	a, (hl)
	rrca
	rrca
	and	a, #0x01
	ret	z
;E:\supernova\msx\game\rooms5.c:31: RL(491); SET_DEL(NounSet, 51);
	push	hl
	ld	hl, #0x01eb
	call	_RL
	pop	hl
	res	2, (hl)
;E:\supernova\msx\game\rooms5.c:32: if (!SetEmpty(NounSet, 17)) SFlag = 0;
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetEmpty
	or	a,a
	ret	nz
	ld	(#_SFlag), a
;E:\supernova\msx\game\rooms5.c:36: break;
	ret
;E:\supernova\msx\game\rooms5.c:38: case 97:    // Cryogenic Chamber
00125$:
;E:\supernova\msx\game\rooms5.c:39: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00128$
	cp	a, #0x0b
	jr	z, 00128$
	cp	a, #0x0d
	jr	z, 00128$
	cp	a, #0x12
	jr	z, 00132$
	sub	a, #0x1c
	jr	z, 00129$
	ret
;E:\supernova\msx\game\rooms5.c:41: case 4: case 11: case 13: Door(93, 5); break;
00128$:
	ld	l, #0x05
	ld	a, #0x5d
	jp	_Door
;E:\supernova\msx\game\rooms5.c:42: case 28: if (N1 == 69) RS(193); break;
00129$:
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
	ld	hl, #0x00c1
	jp	_RS
;E:\supernova\msx\game\rooms5.c:43: case 18: RS(194); Van(N1); break;
00132$:
	ld	hl, #0x00c2
	call	_RS
;E:\supernova\msx\game\rooms5.c:45: break;
	ld	a, (_N1)
	jp	_Van
;E:\supernova\msx\game\rooms5.c:47: case 98:    // Identity Booth
00134$:
;E:\supernova\msx\game\rooms5.c:48: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00136$
	cp	a, #0x04
	jr	z, 00141$
	cp	a, #0x0b
	jr	z, 00136$
	cp	a, #0x0d
	jr	z, 00141$
	cp	a, #0x1c
	jr	z, 00143$
	sub	a, #0x1f
	jr	z, 00143$
	ret
;E:\supernova\msx\game\rooms5.c:50: case 2: case 11:
00136$:
;E:\supernova\msx\game\rooms5.c:51: Door(99, 0);
	ld	l, #0x00
	ld	a, #0x63
	call	_Door
;E:\supernova\msx\game\rooms5.c:52: if (T[27] > 1) { Col(10, 7); RS(208); Delay(999); Blast(); DEAD(); }
	ld	hl, (#(_T + 54) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00699$
	xor	a, #0x80
00699$:
	jp	p, 00138$
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x00d0
	call	_RS
	ld	hl, #0x03e7
	call	_Delay
	call	_Blast
	jp	_DEAD
00138$:
;E:\supernova\msx\game\rooms5.c:55: T[27] = 2000; Col(10, 7); RL(504); Play(22, 22, 999); RS(210);
	ld	hl, #0x07d0
	ld	((_T + 54)), hl
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x01f8
	call	_RL
	ld	hl, #0x03e7
	push	hl
	ld	de, #0x0016
	ld	h, d
	ld	l, e
	call	_Play
	ld	hl, #0x00d2
	call	_RS
;E:\supernova\msx\game\rooms5.c:56: Delay(999); Blast(); RL(505);
	ld	hl, #0x03e7
	call	_Delay
	call	_Blast
;E:\supernova\msx\game\rooms5.c:58: break;
	ld	hl, #0x01f9
	jp	_RL
;E:\supernova\msx\game\rooms5.c:59: case 4: case 13: Door(93, 5); break;
00141$:
	ld	l, #0x05
	ld	a, #0x5d
	jp	_Door
;E:\supernova\msx\game\rooms5.c:60: case 28: case 31:
00143$:
;E:\supernova\msx\game\rooms5.c:61: switch (N1)
	ld	a, (_N1)
	cp	a, #0x3b
	jr	z, 00149$
	cp	a, #0x51
	jr	z, 00145$
	sub	a, #0x77
	ret	nz
;E:\supernova\msx\game\rooms5.c:63: case 81: case 119: if (StrEq(NStr, "message")) RL(517); else RB2(13, 13); break;
00145$:
	ld	de, #___str_1
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00147$
	ld	hl, #0x0205
	jp	_RL
00147$:
	ld	a,#0x0d
	ld	l,a
	jp	_RB2
;E:\supernova\msx\game\rooms5.c:64: case 59: RL(517); break;
00149$:
;E:\supernova\msx\game\rooms5.c:68: break;
	ld	hl, #0x0205
	jp	_RL
;E:\supernova\msx\game\rooms5.c:70: case 99:    // Security Tunnel #1
00152$:
;E:\supernova\msx\game\rooms5.c:71: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00154$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00156$
	cp	a, #0x04
	jr	z, 00157$
	cp	a, #0x0b
	jr	z, 00156$
	cp	a, #0x0d
	jr	z, 00154$
	cp	a, #0x1c
	jr	z, 00162$
	cp	a, #0x27
	jr	z, 00172$
	cp	a, #0x29
	jr	z, 00159$
	cp	a, #0x2a
	jr	z, 00169$
	cp	a, #0x2c
	jr	z, 00169$
	cp	a, #0x4b
	jr	z, 00169$
	sub	a, #0x58
	jr	z, 00159$
	ret
;E:\supernova\msx\game\rooms5.c:73: case 1: case 13: Door(98, 0); break;
00154$:
	ld	l, #0x00
	ld	a, #0x62
	jp	_Door
;E:\supernova\msx\game\rooms5.c:74: case 2: case 11: Score(15, 111); Door(100, 0); break;
00156$:
	ld	de, #0x006f
	ld	hl, #0x000f
	call	_Score
	ld	l, #0x00
	ld	a, #0x64
	jp	_Door
;E:\supernova\msx\game\rooms5.c:75: case 4: RL(506); break;
00157$:
	ld	hl, #0x01fa
	jp	_RL
;E:\supernova\msx\game\rooms5.c:76: case 41: case 88: if (N1 == 55) RL(509); break;
00159$:
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
	ld	hl, #0x01fd
	jp	_RL
;E:\supernova\msx\game\rooms5.c:77: case 28: switch (N1) { case 46: RS(216); break; case 55: RL(510); break; case 88: RL(511); break; } break;
00162$:
	ld	a, (_N1)
	cp	a, #0x2e
	jr	z, 00163$
	cp	a, #0x37
	jr	z, 00164$
	sub	a, #0x58
	jr	z, 00165$
	ret
00163$:
	ld	hl, #0x00d8
	jp	_RS
00164$:
	ld	hl, #0x01fe
	jp	_RL
00165$:
	ld	hl, #0x01ff
	jp	_RL
;E:\supernova\msx\game\rooms5.c:78: case 42: case 44: case 75: if (N1 == 46) { RL(513); T[27] = 2000; Add(7); } break;
00169$:
	ld	a, (_N1)
	sub	a, #0x2e
	ret	nz
	ld	hl, #0x0201
	call	_RL
	ld	hl, #0x07d0
	ld	((_T + 54)), hl
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\rooms5.c:79: case 39: if (SET_IN(NounSet, 88)) { RL(513); T[27] = 2000; Add(7); } break;
00172$:
	ld	a, (#(_NounSet + 10) + 0)
	rlca
	ret	nc
	ld	hl, #0x0201
	call	_RL
	ld	hl, #0x07d0
	ld	((_T + 54)), hl
;E:\supernova\msx\game\rooms5.c:81: break;
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\rooms5.c:83: case 100:    // Security Tunnel #2
00176$:
;E:\supernova\msx\game\rooms5.c:84: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00178$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00180$
	cp	a, #0x0b
	jr	z, 00180$
	cp	a, #0x0d
	jr	z, 00178$
	cp	a, #0x29
	jp	z, 00185$
	sub	a, #0x58
	jp	z, 00185$
	ret
;E:\supernova\msx\game\rooms5.c:86: case 1: case 13: Door(99, 0); Col(10, 7); RS(208); Delay(999); Blast(); DEAD(); break;
00178$:
	ld	l, #0x00
	ld	a, #0x63
	call	_Door
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x00d0
	call	_RS
	ld	hl, #0x03e7
	call	_Delay
	call	_Blast
	jp	_DEAD
;E:\supernova\msx\game\rooms5.c:87: case 2: case 11:
00180$:
;E:\supernova\msx\game\rooms5.c:88: Door(101, 0);
	ld	l, #0x00
	ld	a, #0x65
	call	_Door
;E:\supernova\msx\game\rooms5.c:89: if (T[28] > 1) { Col(10, 7); RS(209); Delay(999); Blast(); DEAD(); }
	ld	hl, (#(_T + 56) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00729$
	xor	a, #0x80
00729$:
	jp	p, 00182$
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x00d1
	call	_RS
	ld	hl, #0x03e7
	call	_Delay
	call	_Blast
	jp	_DEAD
00182$:
;E:\supernova\msx\game\rooms5.c:92: T[28] = 2000; Col(10, 7); RL(504); Play(22, 22, 999); RS(211);
	ld	hl, #0x07d0
	ld	((_T + 56)), hl
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x01f8
	call	_RL
	ld	hl, #0x03e7
	push	hl
	ld	de, #0x0016
	ld	h, d
	ld	l, e
	call	_Play
	ld	hl, #0x00d3
	call	_RS
;E:\supernova\msx\game\rooms5.c:93: Delay(999); Blast(); RS(212); SET_ADD(PStat, 4); T[29] = 14;
	ld	hl, #0x03e7
	call	_Delay
	call	_Blast
	ld	hl, #0x00d4
	call	_RS
	ld	bc, #_PStat+0
	ld	a, (bc)
	set	3, a
	ld	(bc), a
	ld	hl, #0x000e
	ld	((_T + 58)), hl
;E:\supernova\msx\game\rooms5.c:95: break;
	ret
;E:\supernova\msx\game\rooms5.c:96: case 41: case 88: if (N1 == 55) RL(512); break;
00185$:
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
	ld	hl, #0x0200
;E:\supernova\msx\game\rooms5.c:99: }
;E:\supernova\msx\game\rooms5.c:100: }
	jp	_RL
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
	.ascii "message"
	.db 0x00
;E:\supernova\msx\game\rooms5.c:103: static u8 CatwalkBlocked(void)
;	---------------------------------
; Function CatwalkBlocked
; ---------------------------------
_CatwalkBlocked:
;E:\supernova\msx\game\rooms5.c:105: if ((IN_RANGE(Vb, 1, 14) || Vb == 16 || IN_RANGE(Vb, 20, 31) || IN_RANGE(Vb, 33, 44) || IN_RANGE(Vb, 48, 64) ||
	ld	a, (_Vb+0)
	sub	a, #0x01
	jr	c, 00104$
	ld	a, #0x0e
	ld	hl, #_Vb
	sub	a, (hl)
	jr	nc, 00117$
00104$:
	ld	a, (_Vb)
	sub	a, #0x10
	jr	z, 00117$
	ld	a, (_Vb+0)
	sub	a, #0x14
	jr	c, 00108$
	ld	a, #0x1f
	ld	hl, #_Vb
	sub	a, (hl)
	jr	nc, 00117$
00108$:
	ld	a, (_Vb+0)
	sub	a, #0x21
	jr	c, 00110$
	ld	a, #0x2c
	ld	hl, #_Vb
	sub	a, (hl)
	jr	nc, 00117$
00110$:
	ld	a, (_Vb+0)
	sub	a, #0x30
	jr	c, 00112$
	ld	a, #0x40
	ld	hl, #_Vb
	sub	a, (hl)
	jr	nc, 00117$
00112$:
;E:\supernova\msx\game\rooms5.c:106: IN_RANGE(Vb, 73, 76) || IN_RANGE(Vb, 83, 85) || IN_RANGE(Vb, 88, 94)) && !IN29(Wear, 20))
	ld	a, (_Vb+0)
	sub	a, #0x49
	jr	c, 00114$
	ld	a, #0x4c
	ld	hl, #_Vb
	sub	a, (hl)
	jr	nc, 00117$
00114$:
	ld	a, (_Vb+0)
	sub	a, #0x53
	jr	c, 00116$
	ld	a, #0x55
	ld	hl, #_Vb
	sub	a, (hl)
	jr	nc, 00117$
00116$:
	ld	a, (_Vb+0)
	sub	a, #0x58
	jr	c, 00102$
	ld	a, #0x5e
	ld	hl, #_Vb
	sub	a, (hl)
	jr	c, 00102$
00117$:
	ld	a, (#(_Wear + 2) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00102$
;E:\supernova\msx\game\rooms5.c:108: RL(491);
	ld	hl, #0x01eb
	call	_RL
;E:\supernova\msx\game\rooms5.c:109: return 1;
	ld	a, #0x01
	ret
00102$:
;E:\supernova\msx\game\rooms5.c:111: return 0;
	xor	a, a
;E:\supernova\msx\game\rooms5.c:112: }
	ret
;E:\supernova\msx\game\rooms5.c:114: static void CatwalkCommon(void)
;	---------------------------------
; Function CatwalkCommon
; ---------------------------------
_CatwalkCommon:
;E:\supernova\msx\game\rooms5.c:119: switch (N1)
	ld	a, (_N1)
	sub	a, #0x83
	ld	a, #0x01
	jr	z, 00237$
	xor	a, a
00237$:
	ld	c, a
;E:\supernova\msx\game\rooms5.c:116: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x18
	jr	z, 00103$
	cp	a, #0x19
	jr	z, 00103$
	sub	a, #0x1c
	jr	z, 00103$
;E:\supernova\msx\game\rooms5.c:125: case 75: case 76: if (N1 == 42) RL(495); break;
	ld	a, (_N1)
	sub	a, #0x2a
	ld	a, #0x01
	jr	z, 00242$
	xor	a, a
00242$:
	ld	e, a
;E:\supernova\msx\game\rooms5.c:116: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x33
	jr	z, 00116$
	cp	a, #0x3b
	jr	z, 00116$
	cp	a, #0x4b
	jr	z, 00112$
	sub	a, #0x4c
	jr	z, 00112$
	ret
;E:\supernova\msx\game\rooms5.c:118: case 24: case 25: case 28:
00103$:
;E:\supernova\msx\game\rooms5.c:119: switch (N1)
	ld	a, (_N1)
	cp	a, #0x22
	jr	z, 00105$
	sub	a, #0x31
	jr	z, 00105$
	ld	a, c
	or	a, a
	jr	nz, 00106$
	ret
;E:\supernova\msx\game\rooms5.c:121: case 34: case 49: RL(493); break;
00105$:
	ld	hl, #0x01ed
	jp	_RL
;E:\supernova\msx\game\rooms5.c:122: case 131: if (StrEq(NStr, "catwalk")) RL(494); else { RS(195); RS(196); } break;
00106$:
	ld	de, #___str_2
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00108$
	ld	hl, #0x01ee
	jp	_RL
00108$:
	ld	hl, #0x00c3
	call	_RS
;E:\supernova\msx\game\rooms5.c:124: break;
	ld	hl, #0x00c4
	jp	_RS
;E:\supernova\msx\game\rooms5.c:125: case 75: case 76: if (N1 == 42) RL(495); break;
00112$:
	ld	a, e
	or	a, a
	ret	z
	ld	hl, #0x01ef
	jp	_RL
;E:\supernova\msx\game\rooms5.c:126: case 51: case 59: if (N1 == 42 || N1 == 54 || N1 == 131) { RL(496); DEAD(); } break;
00116$:
	ld	a, e
	or	a, a
	jr	nz, 00117$
	ld	a, (_N1)
	sub	a, #0x36
	jr	z, 00117$
	ld	a, c
	or	a, a
	ret	z
00117$:
	ld	hl, #0x01f0
	call	_RL
;E:\supernova\msx\game\rooms5.c:127: }
;E:\supernova\msx\game\rooms5.c:128: }
	jp	_DEAD
___str_2:
	.ascii "catwalk"
	.db 0x00
;E:\supernova\msx\game\rooms5.c:130: void Room22(void)    // Planetship (Lower Level)
;	---------------------------------
; Function Room22
; ---------------------------------
_Room22::
;E:\supernova\msx\game\rooms5.c:132: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x65
	jr	z, 00101$
	cp	a, #0x66
	jp	z, 00128$
	cp	a, #0x67
	jp	z, 00138$
	cp	a, #0x68
	jp	z, 00145$
	sub	a, #0x69
	jp	z, 00154$
	ret
;E:\supernova\msx\game\rooms5.c:134: case 101:    // Security Tunnel #3
00101$:
;E:\supernova\msx\game\rooms5.c:135: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00103$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00105$
	cp	a, #0x0b
	jr	z, 00105$
	sub	a, #0x0d
	jr	z, 00103$
;E:\supernova\msx\game\rooms5.c:142: case 41: case 88: if (N1 == 55) RL(509); break;
	ld	a, (_N1)
	sub	a, #0x37
	ld	a, #0x01
	jr	z, 00478$
	xor	a, a
00478$:
	ld	b, a
;E:\supernova\msx\game\rooms5.c:143: case 28: switch (N1) { case 46: RS(216); break; case 55: RL(510); break; case 88: RL(511); break; } break;
	ld	a, (_N1)
	sub	a, #0x2e
	ld	a, #0x01
	jr	z, 00480$
	xor	a, a
00480$:
	ld	c, a
;E:\supernova\msx\game\rooms5.c:135: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x1c
	jr	z, 00114$
	cp	a, #0x27
	jp	z, 00124$
	cp	a, #0x29
	jr	z, 00111$
	cp	a, #0x2a
	jr	z, 00121$
	cp	a, #0x2c
	jr	z, 00121$
	cp	a, #0x4b
	jr	z, 00121$
	sub	a, #0x58
	jr	z, 00111$
	ret
;E:\supernova\msx\game\rooms5.c:137: case 1: case 13: Door(100, 0); break;
00103$:
	ld	l, #0x00
	ld	a, #0x64
	jp	_Door
;E:\supernova\msx\game\rooms5.c:138: case 2: case 11:
00105$:
;E:\supernova\msx\game\rooms5.c:139: Region = 5; Door(102, 0); Score(20, 112);
	ld	hl, #_Region
	ld	(hl), #0x05
	ld	l, #0x00
	ld	a, #0x66
	call	_Door
	ld	de, #0x0070
	ld	hl, #0x0014
	call	_Score
;E:\supernova\msx\game\rooms5.c:140: if (!IN29(Wear, 20)) RL(492);
	ld	a, (#(_Wear + 2) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	ret	nz
;E:\supernova\msx\game\rooms5.c:141: break;
	ld	hl, #0x01ec
	jp	_RL
;E:\supernova\msx\game\rooms5.c:142: case 41: case 88: if (N1 == 55) RL(509); break;
00111$:
	ld	a, b
	or	a, a
	ret	z
	ld	hl, #0x01fd
	jp	_RL
;E:\supernova\msx\game\rooms5.c:143: case 28: switch (N1) { case 46: RS(216); break; case 55: RL(510); break; case 88: RL(511); break; } break;
00114$:
	ld	a, c
	or	a, a
	jr	nz, 00115$
	or	a, b
	jr	nz, 00116$
	ld	a, (_N1)
	sub	a, #0x58
	jr	z, 00117$
	ret
00115$:
	ld	hl, #0x00d8
	jp	_RS
00116$:
	ld	hl, #0x01fe
	jp	_RL
00117$:
	ld	hl, #0x01ff
	jp	_RL
;E:\supernova\msx\game\rooms5.c:144: case 42: case 44: case 75: if (N1 == 46) { RL(513); T[28] = 2000; Add(7); } break;
00121$:
	ld	a, c
	or	a, a
	ret	z
	ld	hl, #0x0201
	call	_RL
	ld	hl, #0x07d0
	ld	((_T + 56)), hl
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\rooms5.c:145: case 39: if (SET_IN(NounSet, 88)) { RL(513); T[28] = 2000; Add(7); } break;
00124$:
	ld	a, (#(_NounSet + 10) + 0)
	rlca
	ret	nc
	ld	hl, #0x0201
	call	_RL
	ld	hl, #0x07d0
	ld	((_T + 56)), hl
;E:\supernova\msx\game\rooms5.c:147: break;
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\rooms5.c:149: case 102:    // North Catwalk
00128$:
;E:\supernova\msx\game\rooms5.c:150: if (CatwalkBlocked()) break;
	call	_CatwalkBlocked
	or	a, a
	ret	nz
;E:\supernova\msx\game\rooms5.c:151: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00133$
	ld	a, (_Vb)
	cp	a, #0x07
	jr	z, 00134$
	cp	a, #0x08
	jr	z, 00135$
	cp	a, #0x0b
	jr	z, 00133$
	sub	a, #0x0d
	jp	nz, _CatwalkCommon
;E:\supernova\msx\game\rooms5.c:153: case 1: case 11: case 13: Region = Null; Door(101, 0); Col(10, 7); RS(209); Delay(999); Blast(); DEAD(); break;
00133$:
	xor	a, a
	ld	(#_Region), a
	ld	l, #0x00
	ld	a, #0x65
	call	_Door
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x00d1
	call	_RS
	ld	hl, #0x03e7
	call	_Delay
	call	_Blast
	jp	_DEAD
;E:\supernova\msx\game\rooms5.c:154: case 7: MoveTo(103); break;
00134$:
	ld	a, #0x67
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:155: case 8: MoveTo(105); break;
00135$:
;E:\supernova\msx\game\rooms5.c:156: default: CatwalkCommon();
;E:\supernova\msx\game\rooms5.c:158: break;
	ld	a, #0x69
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:160: case 103:    // East Catwalk
00138$:
;E:\supernova\msx\game\rooms5.c:161: if (CatwalkBlocked()) break;
	call	_CatwalkBlocked
	or	a, a
	ret	nz
;E:\supernova\msx\game\rooms5.c:162: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x06
	jr	z, 00141$
	sub	a, #0x08
	jr	z, 00142$
	jp	_CatwalkCommon
;E:\supernova\msx\game\rooms5.c:164: case 6: MoveTo(102); break;
00141$:
	ld	a, #0x66
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:165: case 8: MoveTo(104); break;
00142$:
;E:\supernova\msx\game\rooms5.c:166: default: CatwalkCommon();
;E:\supernova\msx\game\rooms5.c:168: break;
	ld	a, #0x68
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:170: case 104:    // South Catwalk
00145$:
;E:\supernova\msx\game\rooms5.c:171: if (CatwalkBlocked()) break;
	call	_CatwalkBlocked
	or	a, a
	ret	nz
;E:\supernova\msx\game\rooms5.c:172: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00149$
	cp	a, #0x05
	jr	z, 00150$
	cp	a, #0x06
	jr	z, 00151$
	sub	a, #0x0d
	jp	nz, _CatwalkCommon
;E:\supernova\msx\game\rooms5.c:174: case 2: case 13: Region = Null; Door(106, 5); Score(20, 113); break;
00149$:
	xor	a, a
	ld	(#_Region), a
	ld	l, #0x05
	ld	a, #0x6a
	call	_Door
	ld	de, #0x0071
	ld	hl, #0x0014
	jp	_Score
;E:\supernova\msx\game\rooms5.c:175: case 5: MoveTo(103); break;
00150$:
	ld	a, #0x67
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:176: case 6: MoveTo(105); break;
00151$:
;E:\supernova\msx\game\rooms5.c:177: default: CatwalkCommon();
;E:\supernova\msx\game\rooms5.c:179: break;
	ld	a, #0x69
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:181: case 105:    // West Catwalk
00154$:
;E:\supernova\msx\game\rooms5.c:182: if (CatwalkBlocked()) break;
	call	_CatwalkBlocked
	or	a, a
	ret	nz
;E:\supernova\msx\game\rooms5.c:183: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x05
	jr	z, 00157$
	sub	a, #0x07
	jr	z, 00158$
	jp	_CatwalkCommon
;E:\supernova\msx\game\rooms5.c:185: case 5: MoveTo(102); break;
00157$:
	ld	a, #0x66
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:186: case 7: MoveTo(104); break;
00158$:
	ld	a, #0x68
;E:\supernova\msx\game\rooms5.c:187: default: CatwalkCommon();
;E:\supernova\msx\game\rooms5.c:190: }
;E:\supernova\msx\game\rooms5.c:191: }
	jp	_MoveTo
;E:\supernova\msx\game\rooms5.c:193: static void RegulatorSockets(void)
;	---------------------------------
; Function RegulatorSockets
; ---------------------------------
_RegulatorSockets:
;E:\supernova\msx\game\rooms5.c:195: RL(525);
	ld	hl, #0x020d
	call	_RL
;E:\supernova\msx\game\rooms5.c:196: for (x = 1; x <= 25; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00109$:
;E:\supernova\msx\game\rooms5.c:197: if (IN29(Socket, x))
	ld	a, (_x+0)
	sub	a, #0x01
	jr	c, 00110$
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00110$
	ld	a, (_x+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00153$:
	sra	d
	rr	e
	djnz	00153$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00155$
00154$:
	srl	a
00155$:
	djnz	00154$
	rrca
	jr	nc, 00110$
;E:\supernova\msx\game\rooms5.c:199: if (x == 22) { Wr("  An "); WrFN(x); Wr(" is in one of the sockets."); Wln(); }
	ld	a, (_x)
	sub	a, #0x16
	jr	nz, 00102$
	ld	hl, #___str_3
	call	_Wr
	ld	a, (_x)
	call	_WrFN
	ld	hl, #___str_4
	call	_Wr
	call	_Wln
	jr	00110$
00102$:
;E:\supernova\msx\game\rooms5.c:200: else { Wr("  A "); WrFN(x); Wr(" is in one of the sockets."); Wln(); }
	ld	hl, #___str_5
	call	_Wr
	ld	a, (_x)
	call	_WrFN
	ld	hl, #___str_4
	call	_Wr
	call	_Wln
00110$:
;E:\supernova\msx\game\rooms5.c:196: for (x = 1; x <= 25; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x19
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00109$
;E:\supernova\msx\game\rooms5.c:202: }
	ret
___str_3:
	.ascii "  An "
	.db 0x00
___str_4:
	.ascii " is in one of the sockets."
	.db 0x00
___str_5:
	.ascii "  A "
	.db 0x00
;E:\supernova\msx\game\rooms5.c:204: void Room23(void)    // Planetship (Lower Level)
;	---------------------------------
; Function Room23
; ---------------------------------
_Room23::
	call	___sdcc_enter_ix
	push	af
	push	af
;E:\supernova\msx\game\rooms5.c:209: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x03
	ld	a, #0x01
	jr	z, 00672$
	xor	a, a
00672$:
	ld	-4 (ix), a
	ld	a, (_Vb)
	sub	a, #0x04
	ld	a, #0x01
	jr	z, 00674$
	xor	a, a
00674$:
	ld	-3 (ix), a
	ld	a, (_Vb)
	sub	a, #0x0d
	ld	a, #0x01
	jr	z, 00676$
	xor	a, a
00676$:
	ld	-2 (ix), a
	ld	a, (_Vb)
	sub	a, #0x29
	ld	a, #0x01
	jr	z, 00678$
	xor	a, a
00678$:
	ld	-1 (ix), a
;E:\supernova\msx\game\rooms5.c:206: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x6a
	jr	z, 00101$
	cp	a, #0x6b
	jp	z, 00120$
	sub	a, #0x6c
	jp	z, 00128$
	jp	00197$
;E:\supernova\msx\game\rooms5.c:208: case 106:    // Junction
00101$:
;E:\supernova\msx\game\rooms5.c:209: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00102$
	ld	a, (_Vb)
	sub	a, #0x02
	jr	z, 00107$
	ld	a, -4 (ix)
	or	a, a
	jr	nz, 00108$
	ld	a, -3 (ix)
	or	a, a
	jr	nz, 00111$
	ld	a, (_Vb)
	sub	a, #0x0b
	jr	z, 00111$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00111$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00116$
	ld	a, (_Vb)
	cp	a, #0x2a
	jr	z, 00116$
	cp	a, #0x2b
	jr	z, 00116$
	cp	a, #0x2c
	jr	z, 00116$
	sub	a, #0x58
	jr	z, 00116$
	jp	00197$
;E:\supernova\msx\game\rooms5.c:211: case 1: Region = 5; Door(104, 5); if (!IN29(Wear, 20)) RL(492); break;
00102$:
	ld	hl, #_Region
	ld	(hl), #0x05
	ld	l, #0x05
	ld	a, #0x68
	call	_Door
	ld	a, (#(_Wear + 2) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jp	nz, 00197$
	ld	hl, #0x01ec
	call	_RL
	jp	00197$
;E:\supernova\msx\game\rooms5.c:212: case 2: RL(328); break;
00107$:
	ld	hl, #0x0148
	call	_RL
	jp	00197$
;E:\supernova\msx\game\rooms5.c:213: case 3: Door(108, 5); break;
00108$:
	ld	l, #0x05
	ld	a, #0x6c
	call	_Door
	jp	00197$
;E:\supernova\msx\game\rooms5.c:214: case 4: case 11: case 13: Door(107, 20); break;
00111$:
	ld	l, #0x14
	ld	a, #0x6b
	call	_Door
	jp	00197$
;E:\supernova\msx\game\rooms5.c:215: case 41: case 42: case 43: case 44: case 88: if (N1 == 56) RL(532); break;
00116$:
	ld	a, (_N1)
	sub	a, #0x38
	jp	nz, 00197$
	ld	hl, #0x0214
	call	_RL
;E:\supernova\msx\game\rooms5.c:217: break;
	jp	00197$
;E:\supernova\msx\game\rooms5.c:219: case 107:    // Conference Room
00120$:
;E:\supernova\msx\game\rooms5.c:220: switch (Vb)
	ld	a, -4 (ix)
	or	a, a
	jr	nz, 00122$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00122$
	ld	a, (_Vb)
	sub	a, #0x27
	jr	z, 00123$
	jp	00197$
;E:\supernova\msx\game\rooms5.c:222: case 3: case 13: Door(106, 20); break;
00122$:
	ld	l, #0x14
	ld	a, #0x6a
	call	_Door
	jp	00197$
;E:\supernova\msx\game\rooms5.c:223: case 39: if (SET_IN(NounSet, 30) && LOC_HAS(107, 19)) R[19] = 107; break;
00123$:
	ld	a, (#(_NounSet + 3) + 0)
	rlca
	rlca
	rlca
	jp	nc, 00197$
	ld	a, (#(_g_Loc + 1821) + 0)
	bit	2, a
	jp	z, 00197$
	ld	hl, #_R+19
	ld	(hl), #0x6b
;E:\supernova\msx\game\rooms5.c:225: break;
	jp	00197$
;E:\supernova\msx\game\rooms5.c:227: case 108:    // Reactor Regulators
00128$:
;E:\supernova\msx\game\rooms5.c:228: switch (Vb)
	ld	a, -3 (ix)
	or	a, a
	jr	nz, 00130$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00130$
;E:\supernova\msx\game\rooms5.c:232: if (N1 == 55)
	ld	a, (_N1)
	sub	a, #0x37
	ld	a, #0x01
	jr	z, 00694$
	xor	a, a
00694$:
	ld	c, a
;E:\supernova\msx\game\rooms5.c:228: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x18
	jp	z, 00143$
	cp	a, #0x1c
	jp	z, 00143$
	sub	a, #0x21
	jp	z, 00150$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00131$
	ld	a, (_Vb)
	sub	a, #0x35
	jr	z, 00138$
	jp	00197$
;E:\supernova\msx\game\rooms5.c:230: case 4: case 13: Door(106, 5); break;
00130$:
	ld	l, #0x05
	ld	a, #0x6a
	call	_Door
	jp	00197$
;E:\supernova\msx\game\rooms5.c:231: case 41:
00131$:
;E:\supernova\msx\game\rooms5.c:232: if (N1 == 55)
	ld	a, c
	or	a, a
	jp	z, 00197$
;E:\supernova\msx\game\rooms5.c:234: if (!En(65))
	ld	a, #0x41
	call	_En
	or	a, a
	jr	nz, 00134$
;E:\supernova\msx\game\rooms5.c:236: Add(65); LOC_ADD(108, 40); Score(5, 114);
	ld	a, #0x41
	call	_Add
	ld	bc, #_g_Loc+1840
	ld	a, (bc)
	set	7, a
	ld	(bc), a
	ld	de, #0x0072
	ld	hl, #0x0005
	call	_Score
;E:\supernova\msx\game\rooms5.c:237: for (x = 22; x <= 25; x++) R[x] = 108;
	ld	hl, #_x
	ld	(hl), #0x16
00189$:
	ld	hl, #_R
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x6c
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x19
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00189$
;E:\supernova\msx\game\rooms5.c:238: RL(519); RL(520);
	ld	hl, #0x0207
	call	_RL
	ld	hl, #0x0208
	call	_RL
	jp	00197$
00134$:
;E:\supernova\msx\game\rooms5.c:240: else RL(521);
	ld	hl, #0x0209
	call	_RL
;E:\supernova\msx\game\rooms5.c:242: break;
	jp	00197$
;E:\supernova\msx\game\rooms5.c:243: case 53: if (En(65)) RL(522); else RL(523); break;
00138$:
	ld	a, #0x41
	call	_En
	or	a, a
	jr	z, 00140$
	ld	hl, #0x020a
	call	_RL
	jp	00197$
00140$:
	ld	hl, #0x020b
	call	_RL
	jp	00197$
;E:\supernova\msx\game\rooms5.c:244: case 28: case 24:
00143$:
;E:\supernova\msx\game\rooms5.c:245: switch (N1)
	ld	a, (_N1)
	sub	a, #0x28
	jr	z, 00148$
	ld	a, c
	or	a, a
	jp	z, 00197$
;E:\supernova\msx\game\rooms5.c:247: case 55: if (En(65)) RegulatorSockets(); else RL(523); break;
	ld	a, #0x41
	call	_En
	or	a, a
	jr	z, 00146$
	call	_RegulatorSockets
	jp	00197$
00146$:
	ld	hl, #0x020b
	call	_RL
	jp	00197$
;E:\supernova\msx\game\rooms5.c:248: case 40: RegulatorSockets(); break;
00148$:
	call	_RegulatorSockets
;E:\supernova\msx\game\rooms5.c:250: break;
	jp	00197$
;E:\supernova\msx\game\rooms5.c:251: case 33:
00150$:
;E:\supernova\msx\game\rooms5.c:252: if ((N2 == 40 || N2 == 55) && En(65))
	ld	a, (_N2)
	cp	a, #0x28
	jr	z, 00186$
	sub	a, #0x37
	jp	nz, 00197$
00186$:
	ld	a, #0x41
	call	_En
	or	a, a
	jp	z, 00197$
;E:\supernova\msx\game\rooms5.c:254: i = 0; for (x = 1; x <= 25; x++) if (IN29(Socket, x)) i++;
	ld	hl, #0x0000
	ld	(_i), hl
	ld	hl, #_x
	ld	(hl), #0x01
00191$:
	ld	a, (_x+0)
	sub	a, #0x01
	jr	c, 00192$
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00192$
	ld	a, (_x+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00703$:
	sra	d
	rr	e
	djnz	00703$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00705$
00704$:
	srl	a
00705$:
	djnz	00704$
	rrca
	jr	nc, 00192$
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
00192$:
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x19
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00191$
;E:\supernova\msx\game\rooms5.c:255: if (i < 4)
	ld	bc, (_i)
	ld	a, c
	sub	a, #0x04
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	nc, 00181$
;E:\supernova\msx\game\rooms5.c:257: if (IN29(Inv, N1))
	ld	a, (_N1+0)
	sub	a, #0x01
	jp	c, 00176$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jp	c, 00176$
	ld	de, #_Inv+0
	ld	a, (_N1+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00707$:
	sra	h
	rr	l
	djnz	00707$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00709$
00708$:
	srl	a
00709$:
	djnz	00708$
	rrca
	jp	nc, 00176$
;E:\supernova\msx\game\rooms5.c:259: if (N1 == 1 || IN_RANGE(N1, 22, 25))
	ld	a, (_N1)
	dec	a
	jr	z, 00170$
	ld	a, (_N1+0)
	sub	a, #0x16
	jp	c, 00171$
	ld	a, #0x19
	ld	hl, #_N1
	sub	a, (hl)
	jp	c, 00171$
00170$:
;E:\supernova\msx\game\rooms5.c:261: Wr("The "); WrFN(N1); Wr(" fits perfectly in an open socket."); Wln();
	ld	hl, #___str_6
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_7
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\rooms5.c:262: Van(N1); SET_ADD(Socket, N1); R[N1] = 108;
	ld	a, (_N1)
	call	_Van
	ld	a, (_N1)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00712$:
	sra	d
	rr	e
	djnz	00712$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00714$
00713$:
	add	a, a
00714$:
	djnz	00713$
	or	a, c
	ld	(hl), a
	ld	bc, #_R+0
	ld	a, (_N1)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0x6c
;E:\supernova\msx\game\rooms5.c:263: i = 0; for (x = 1; x <= 25; x++) if (IN29(Socket, x)) i++;
	ld	hl, #0x0000
	ld	(_i), hl
	ld	hl, #_x
	ld	(hl), #0x01
00193$:
	ld	a, (_x+0)
	sub	a, #0x01
	jr	c, 00194$
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00194$
	ld	a, (_x+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00715$:
	sra	d
	rr	e
	djnz	00715$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00717$
00716$:
	srl	a
00717$:
	djnz	00716$
	rrca
	jr	nc, 00194$
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
00194$:
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x19
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00193$
;E:\supernova\msx\game\rooms5.c:264: if (i > 3 && IN29(Socket, 1) && !IN29(Socket, 25))
	ld	hl, (_i)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00719$
	xor	a, #0x80
00719$:
	jp	p, 00197$
	ld	a, (#_Socket + 0)
	and	a, #0x01
	jp	z, 00197$
	ld	a, (#_Socket + 3)
	and	a, #0x01
	jp	nz, 00197$
;E:\supernova\msx\game\rooms5.c:266: Col(10, 7); Delay(999); Static(); Static(); RS(221); Static(); Static();
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x03e7
	call	_Delay
	call	_Static
	call	_Static
	ld	hl, #0x00dd
	call	_RS
	call	_Static
	call	_Static
;E:\supernova\msx\game\rooms5.c:267: Delay(999); Explode(1); Sound(20); RS(222); Delay(999); RS(223);
	ld	hl, #0x03e7
	call	_Delay
	ld	a, #0x01
	call	_Explode
	ld	hl, #0x0014
	call	_Sound
	ld	hl, #0x00de
	call	_RS
	ld	hl, #0x03e7
	call	_Delay
	ld	hl, #0x00df
	call	_RS
;E:\supernova\msx\game\rooms5.c:268: Pause(); Bor(0, 0); Wln(); Score(55, 115);
	call	_Pause
	xor	a, a
	ld	l, a
	call	_Bor
	call	_Wln
	ld	de, #0x0073
	ld	hl, #0x0037
	call	_Score
;E:\supernova\msx\game\rooms5.c:269: Add(66); Prm = 109; SetClear(PStat, 1); PlayerInput(Line);
	ld	a, #0x42
	call	_Add
	ld	hl, #_Prm
	ld	(hl), #0x6d
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_PStat
	call	_SetClear
	ld	hl, #_Line
	call	_PlayerInput
;E:\supernova\msx\game\rooms5.c:270: Col(10, 15); for (x = 224; x <= 229; x++) RS(x);
	ld	l, #0x0f
	ld	a, #0x0a
	call	_Col
	ld	hl, #_x
	ld	(hl), #0xe0
00195$:
	ld	a, (_x)
	ld	h, #0x00
	ld	l, a
	call	_RS
	ld	hl, #_x
	inc	(hl)
	ld	a, #0xe5
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00195$
;E:\supernova\msx\game\rooms5.c:271: Wln(); Wln(); Pause(); Wln();
	call	_Wln
	call	_Wln
	call	_Pause
	call	_Wln
;E:\supernova\msx\game\rooms5.c:272: Won();    // <<<-----  END OF GAME !!!
	call	_Won
	jr	00197$
00171$:
;E:\supernova\msx\game\rooms5.c:275: else { Wr("The "); WrFN(N1); Wr(" won't fit in any of the sockets."); Wln(); }
	ld	hl, #___str_6
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_8
	call	_Wr
	call	_Wln
	jr	00197$
00176$:
;E:\supernova\msx\game\rooms5.c:277: else { Wr("First you must have the "); WrFN(N1); Wr("."); Wln(); }
	ld	hl, #___str_9
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	call	_Wln
	jr	00197$
00181$:
;E:\supernova\msx\game\rooms5.c:279: else RL(526);
	ld	hl, #0x020e
	call	_RL
;E:\supernova\msx\game\rooms5.c:284: }
00197$:
;E:\supernova\msx\game\rooms5.c:285: }
	ld	sp, ix
	pop	ix
	ret
___str_6:
	.ascii "The "
	.db 0x00
___str_7:
	.ascii " fits perfectly in an open socket."
	.db 0x00
___str_8:
	.ascii " won't fit in any of the sockets."
	.db 0x00
___str_9:
	.ascii "First you must have the "
	.db 0x00
___str_10:
	.ascii "."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
