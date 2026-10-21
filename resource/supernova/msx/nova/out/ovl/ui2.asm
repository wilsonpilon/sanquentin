;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module ui2
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Call13
	.globl _SetNoun
	.globl _ChopSeven
	.globl _LowerCase
	.globl _Up
	.globl _RegionSoundOn
	.globl _Tune
	.globl _Pause
	.globl _Cn
	.globl _Min
	.globl _Add
	.globl _En
	.globl _Bor
	.globl _Bak
	.globl _Col
	.globl _Cur
	.globl _SF
	.globl _ListSaveFiles
	.globl _FileRead2
	.globl _FileWrite2
	.globl _ReadLn
	.globl _Randomize
	.globl _Rnd
	.globl _KeyPressed
	.globl _GetKey
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _InsLine
	.globl _ClrScr
	.globl _Window
	.globl _Gotoxy
	.globl _TextColor
	.globl _Wln
	.globl _WrC
	.globl _Wr
	.globl _UpCase
	.globl _StrCat
	.globl _StrCpy
	.globl _Delete
	.globl _Pos
	.globl _Len
	.globl _SetClear
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
	.globl _Won
	.globl _Title
	.globl _Init1
	.globl _Init2
	.globl _Init3
	.globl _Save
	.globl _Restore
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
;E:\supernova\msx\game\ui2.c:5: void Won(void)
;	---------------------------------
; Function Won
; ---------------------------------
_Won::
;E:\supernova\msx\game\ui2.c:8: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:9: Gotoxy(1, 20); for (x = 1; x <= 5; x++) { Wln(); Delay(99); Sound(x * 50); Bor(x, 7); }
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
	ld	hl, #_x
	ld	(hl), #0x01
00115$:
	call	_Wln
	ld	hl, #0x0063
	call	_Delay
	ld	a, (_x)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	call	_Sound
	ld	l, #0x07
	ld	a, (_x)
	call	_Bor
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x05
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00115$
;E:\supernova\msx\game\ui2.c:10: Gotoxy(1, 15); Col(4, 15); Bak(1, 7);
	ld	l, #0x0f
	ld	a, #0x01
	call	_Gotoxy
	ld	l, #0x0f
	ld	a, #0x04
	call	_Col
	ld	l, #0x07
	ld	a, #0x01
	call	_Bak
;E:\supernova\msx\game\ui2.c:11: Wr("#######################################"); Wr("#######################################"); Wln();
	ld	hl, #___str_1
	call	_Wr
	ld	hl, #___str_1
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:12: Delay(99); Sound(300); Bor(6, 0);
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x012c
	call	_Sound
	ld	l, #0x00
	ld	a, #0x06
	call	_Bor
;E:\supernova\msx\game\ui2.c:13: Gotoxy(1, 16);
	ld	l, #0x10
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:14: for (x = 1; x <= 3; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00117$:
;E:\supernova\msx\game\ui2.c:16: Wr("#                                      "); Wr("                                      #");
	ld	hl, #___str_2
	call	_Wr
	ld	hl, #___str_3
	call	_Wr
;E:\supernova\msx\game\ui2.c:17: Delay(99); Sound(300 + (x * 50)); Bor(x + 8, 15);
	ld	hl, #0x0063
	call	_Delay
	ld	a, (_x)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc, #0x012c
	add	hl, bc
	call	_Sound
	ld	a, (_x)
	add	a, #0x08
	ld	l, #0x0f
	call	_Bor
;E:\supernova\msx\game\ui2.c:14: for (x = 1; x <= 3; x++)
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x03
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00117$
;E:\supernova\msx\game\ui2.c:19: Gotoxy(1, 19);
	ld	l, #0x13
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:20: Wr("#######################################"); Wr("#######################################");
	ld	hl, #___str_1
	call	_Wr
	ld	hl, #___str_1
	call	_Wr
;E:\supernova\msx\game\ui2.c:21: Delay(99); Sound(500); Bor(14, 0);
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x01f4
	call	_Sound
	ld	l, #0x00
	ld	a, #0x0e
	call	_Bor
;E:\supernova\msx\game\ui2.c:22: Gotoxy(26, 17); Col(31, 31);
	ld	l, #0x11
	ld	a, #0x1a
	call	_Gotoxy
	ld	a,#0x1f
	ld	l,a
	call	_Col
;E:\supernova\msx\game\ui2.c:23: Wr("Y O U   H A V E   W O N ! !"); Delay(99); Sound(550);
	ld	hl, #___str_4
	call	_Wr
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x0226
	call	_Sound
;E:\supernova\msx\game\ui2.c:24: Gotoxy(1, 20); Bak(0, 0); Bor(2, 7); Wln(); Delay(99); NoSound();
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
	xor	a, a
	ld	l, a
	call	_Bak
	ld	l, #0x07
	ld	a, #0x02
	call	_Bor
	call	_Wln
	ld	hl, #0x0063
	call	_Delay
	call	_NoSound
;E:\supernova\msx\game\ui2.c:25: for (x = 1; x <= 12; x++) { Wln(); Delay(80); }
	ld	hl, #_x
	ld	(hl), #0x01
00119$:
	call	_Wln
	ld	hl, #0x0050
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x0c
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00119$
;E:\supernova\msx\game\ui2.c:26: Gotoxy(1, 9); Col(9, 9);
	ld	l, #0x09
	ld	a, #0x01
	call	_Gotoxy
	ld	a,#0x09
	ld	l,a
	call	_Col
;E:\supernova\msx\game\ui2.c:27: Wr("                              S U P E R N O V A"); Wln(); Wln(); Col(11, 7);
	ld	hl, #___str_5
	call	_Wr
	call	_Wln
	call	_Wln
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\ui2.c:28: Wr("     Programmed by . . . . . . . . . . . . . . . . . . . . . Scott Miller"); Wln();
	ld	hl, #___str_6
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:29: Wr("     Story by  . . . . . . . . . . . . . . . . . . . . . . . Scott Miller"); Wln();
	ld	hl, #___str_7
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:30: Wr("     Additional story development. . . . . . . . . . . . . . . Terry Nagy"); Wln();
	ld	hl, #___str_8
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:31: Wln(); Wln();
	call	_Wln
	call	_Wln
;E:\supernova\msx\game\ui2.c:32: Vb = 78; Call13(); Wln(); Wln(); Col(3, 7);
	ld	hl, #_Vb
	ld	(hl), #0x4e
	call	_Call13
	call	_Wln
	call	_Wln
	ld	l, #0x07
	ld	a, #0x03
	call	_Col
;E:\supernova\msx\game\ui2.c:33: Wr("Press any key to quit...");
	ld	hl, #___str_9
	call	_Wr
;E:\supernova\msx\game\ui2.c:34: Tune(2, 8, Q); Tune(2, 8, Q); Tune(3, 1, W);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0320
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
;E:\supernova\msx\game\ui2.c:35: do
00110$:
;E:\supernova\msx\game\ui2.c:37: Tune(2, 8, Q); Tune(2, 8, Q);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:38: Tune(3, 1, H); Tune(2, 12, H); Tune(2, 10, H); Tune(2, 8, Q); Tune(2, 8, Q);
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x000c
	ld	hl, #0x0002
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x000a
	ld	hl, #0x0002
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:39: Tune(3, 1, W); Tune(2, 8, Tt); Tune(2, 8, Tt); Tune(2, 8, Tt);
	ld	hl, #0x0320
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:40: if (KeyPressed()) goto JUMP;
	call	_KeyPressed
	or	a, a
	jp	nz, 00113$
;E:\supernova\msx\game\ui2.c:41: Tune(3, 1, H); Tune(2, 12, H); Tune(2, 10, H); Tune(2, 8, Tt); Tune(2, 8, Tt); Tune(2, 8, Tt);
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x000c
	ld	hl, #0x0002
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x000a
	ld	hl, #0x0002
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x0008
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:42: Tune(3, 3, W);
	ld	hl, #0x0320
	push	hl
	ld	de, #0x0003
	ld	h, d
	ld	l, e
	call	_Tune
;E:\supernova\msx\game\ui2.c:43: if (KeyPressed()) goto JUMP;
	call	_KeyPressed
	or	a, a
	jp	nz, 00113$
;E:\supernova\msx\game\ui2.c:44: Tune(2, 10, Q); Tune(2, 10, Q);
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:45: Tune(3, 3, H); Tune(3, 1, H); Tune(2, 12, H); Tune(2, 10, Q); Tune(2, 10, Q);
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0003
	ld	h, d
	ld	l, e
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x000c
	ld	hl, #0x0002
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:46: if (KeyPressed()) goto JUMP;
	call	_KeyPressed
	or	a, a
	jp	nz, 00113$
;E:\supernova\msx\game\ui2.c:47: Tune(3, 3, W); Tune(2, 10, Tt); Tune(2, 10, Tt); Tune(2, 10, Tt);
	ld	hl, #0x0320
	push	hl
	ld	de, #0x0003
	ld	h, d
	ld	l, e
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:48: Tune(3, 3, H); Tune(3, 1, H); Tune(2, 12, H); Tune(2, 10, Tt); Tune(2, 10, Tt); Tune(2, 10, Tt);
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0003
	ld	h, d
	ld	l, e
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x000c
	ld	hl, #0x0002
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
	ld	hl, #0x0083
	push	hl
	ld	de, #0x000a
	ld	l, #0x02
	call	_Tune
;E:\supernova\msx\game\ui2.c:49: Tune(3, 1, W);
	ld	hl, #0x0320
	push	hl
	ld	de, #0x0001
	ld	hl, #0x0003
	call	_Tune
;E:\supernova\msx\game\ui2.c:50: } while (!KeyPressed());
	call	_KeyPressed
	or	a, a
	jp	z, 00110$
;E:\supernova\msx\game\ui2.c:51: JUMP:
00113$:
;E:\supernova\msx\game\ui2.c:52: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;E:\supernova\msx\game\ui2.c:53: Window(1, 1, 80, 25); ClrScr(); Gotoxy(2, 2); Col(31, 31); Bor(0, 0); Cur(1); Bak(2, 0);
	ld	hl, #0x1950
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
	call	_ClrScr
	ld	a,#0x02
	ld	l,a
	call	_Gotoxy
	ld	a,#0x1f
	ld	l,a
	call	_Col
	xor	a, a
	ld	l, a
	call	_Bor
	ld	a, #0x01
	call	_Cur
	ld	l, #0x00
	ld	a, #0x02
	call	_Bak
;E:\supernova\msx\game\ui2.c:54: Wr("Congratulations!"); Wln();
	ld	hl, #___str_10
	call	_Wr
	call	_Wln
;E:\supernova\MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;E:\supernova\msx\game\ui2.c:55: Halt();
;E:\supernova\msx\game\ui2.c:56: }
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
	.ascii "#######################################"
	.db 0x00
___str_2:
	.ascii "#                                      "
	.db 0x00
___str_3:
	.ascii "                                      #"
	.db 0x00
___str_4:
	.ascii "Y O U   H A V E   W O N ! !"
	.db 0x00
___str_5:
	.ascii "                              S U P E R N O V A"
	.db 0x00
___str_6:
	.ascii "     Programmed by . . . . . . . . . . . . . . . . . . . . ."
	.ascii " Scott Miller"
	.db 0x00
___str_7:
	.ascii "     Story by  . . . . . . . . . . . . . . . . . . . . . . ."
	.ascii " Scott Miller"
	.db 0x00
___str_8:
	.ascii "     Additional story development. . . . . . . . . . . . . ."
	.ascii " . Terry Nagy"
	.db 0x00
___str_9:
	.ascii "Press any key to quit..."
	.db 0x00
___str_10:
	.ascii "Congratulations!"
	.db 0x00
;E:\supernova\msx\game\ui2.c:58: void Title(void)
;	---------------------------------
; Function Title
; ---------------------------------
_Title::
;E:\supernova\msx\game\ui2.c:60: ClrScr(); TextColor(7); Color = 1;
	call	_ClrScr
	ld	a, #0x07
	call	_TextColor
	ld	hl, #_Color
	ld	(hl), #0x01
;E:\supernova\msx\game\ui2.c:61: Col(9, 9); Gotoxy(1, 1);
	ld	a,#0x09
	ld	l,a
	call	_Col
	ld	a,#0x01
	ld	l,a
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:62: Cn("S U P E R N O V A");
	ld	hl, #___str_11
	call	_Cn
;E:\supernova\msx\game\ui2.c:63: Col(9, 7); Gotoxy(1, 3);
	ld	l, #0x07
	ld	a, #0x09
	call	_Col
	ld	l, #0x03
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:64: Cn("Published by");
	ld	hl, #___str_12
	call	_Cn
;E:\supernova\msx\game\ui2.c:65: Gotoxy(1, 5);
	ld	l, #0x05
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:66: Cn("APOGEE SOFTWARE PRODUCTIONS");
	ld	hl, #___str_13
	call	_Cn
;E:\supernova\msx\game\ui2.c:67: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:68: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\ui2.c:69: Cn("This game is placed in the public domain for your enjoyment.   Please do");
	ld	hl, #___str_14
	call	_Cn
;E:\supernova\msx\game\ui2.c:70: Cn("not abuse this product or the author's rights.");
	ld	hl, #___str_15
	call	_Cn
;E:\supernova\msx\game\ui2.c:71: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:72: Cn("If you enjoy this game the author asks that you contribute $10 (by check).");
	ld	hl, #___str_16
	call	_Cn
;E:\supernova\msx\game\ui2.c:73: Cn("This payment  will encourage the author  to create similar games  and will");
	ld	hl, #___str_17
	call	_Cn
;E:\supernova\msx\game\ui2.c:74: Cn("help compensate him  for the several years work that went into  Supernova.");
	ld	hl, #___str_18
	call	_Cn
;E:\supernova\msx\game\ui2.c:75: Cn("This fee will also register the payer for telephone support and clues.");
	ld	hl, #___str_19
	call	_Cn
;E:\supernova\msx\game\ui2.c:76: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:77: Col(14, 15);
	ld	l, #0x0f
	ld	a, #0x0e
	call	_Col
;E:\supernova\msx\game\ui2.c:78: Wr("Please make checks payable to:  Scott Miller"); Wln();
	ld	hl, #___str_20
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:79: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:80: Wr("Scott Miller      (214) 240-0614"); Wln();
	ld	hl, #___str_21
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:81: Wr("4206 Mayflower Drive"); Wln();
	ld	hl, #___str_22
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:82: Wr("Garland, TX 75043"); Wln();
	ld	hl, #___str_23
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:83: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:84: Wr("Also call for help:  Terry Nagy  (214) 271-3065"); Wln();
	ld	hl, #___str_24
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:85: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:86: Col(11, 7); Delay(7000);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	ld	hl, #0x1b58
	call	_Delay
;E:\supernova\msx\game\ui2.c:87: Cn("Thanks, enjoy the game...");
	ld	hl, #___str_25
	call	_Cn
;E:\supernova\msx\game\ui2.c:89: Col(7, 7); Gotoxy(27, 25); Delay(999);
	ld	a,#0x07
	ld	l,a
	call	_Col
	ld	l, #0x19
	ld	a, #0x1b
	call	_Gotoxy
	ld	hl, #0x03e7
	call	_Delay
;E:\supernova\msx\game\ui2.c:90: Wr("Press any key to continue.");
	ld	hl, #___str_26
	call	_Wr
;E:\supernova\msx\game\ui2.c:91: while (!KeyPressed()) { }
00101$:
	call	_KeyPressed
	or	a, a
	jr	z, 00101$
;E:\supernova\msx\game\ui2.c:92: CFlag = (char)(GetKey() & 0xFF); Bak(1, 0); ClrScr();
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
	ld	l, #0x00
	ld	a, #0x01
	call	_Bak
	call	_ClrScr
;E:\supernova\msx\game\ui2.c:94: Bor(1, 0); Col(15, 15); Bak(4, 0);
	ld	l, #0x00
	ld	a, #0x01
	call	_Bor
	ld	a,#0x0f
	ld	l,a
	call	_Col
	ld	l, #0x00
	ld	a, #0x04
	call	_Bak
;E:\supernova\msx\game\ui2.c:95: for (x = 1; x <= 80; x++) { Gotoxy(x, 1); WrC((char)205); Gotoxy(x, 24); WrC((char)205); }
	ld	hl, #_x
	ld	(hl), #0x01
00109$:
	ld	l, #0x01
	ld	a, (_x)
	call	_Gotoxy
	ld	a, #0xcd
	call	_WrC
	ld	l, #0x18
	ld	a, (_x)
	call	_Gotoxy
	ld	a, #0xcd
	call	_WrC
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x50
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00109$
;E:\supernova\msx\game\ui2.c:96: for (y = 1; y <= 24; y++) { Gotoxy(1, y); WrC((char)186); Gotoxy(80, y); WrC((char)186); }
	ld	hl, #_y
	ld	(hl), #0x01
00111$:
	ld	a, (_y)
	ld	l, a
	ld	a, #0x01
	call	_Gotoxy
	ld	a, #0xba
	call	_WrC
	ld	a, (_y)
	ld	l, a
	ld	a, #0x50
	call	_Gotoxy
	ld	a, #0xba
	call	_WrC
	ld	hl, #_y
	inc	(hl)
	ld	a, #0x18
	ld	hl, #_y
	sub	a, (hl)
	jr	nc, 00111$
;E:\supernova\msx\game\ui2.c:97: Gotoxy(1, 1); WrC((char)201); Gotoxy(80, 1); WrC((char)187);
	ld	a,#0x01
	ld	l,a
	call	_Gotoxy
	ld	a, #0xc9
	call	_WrC
	ld	l, #0x01
	ld	a, #0x50
	call	_Gotoxy
	ld	a, #0xbb
	call	_WrC
;E:\supernova\msx\game\ui2.c:98: Gotoxy(1, 24); WrC((char)200); Gotoxy(80, 24); WrC((char)188);
	ld	l, #0x18
	ld	a, #0x01
	call	_Gotoxy
	ld	a, #0xc8
	call	_WrC
	ld	l, #0x18
	ld	a, #0x50
	call	_Gotoxy
	ld	a, #0xbc
	call	_WrC
;E:\supernova\msx\game\ui2.c:99: Bak(1, 0);
	ld	l, #0x00
	ld	a, #0x01
	call	_Bak
;E:\supernova\msx\game\ui2.c:100: Col(2, 7); Gotoxy(1, 10); Cn("Copyright 1987 Scott Miller");
	ld	l, #0x07
	ld	a, #0x02
	call	_Col
	ld	l, #0x0a
	ld	a, #0x01
	call	_Gotoxy
	ld	hl, #___str_27
	call	_Cn
;E:\supernova\msx\game\ui2.c:101: Col(14, 7); Gotoxy(1, 12); Cn("Version B");
	ld	l, #0x07
	ld	a, #0x0e
	call	_Col
	ld	l, #0x0c
	ld	a, #0x01
	call	_Gotoxy
	ld	hl, #___str_28
	call	_Cn
;E:\supernova\msx\game\ui2.c:102: Col(7, 7); Gotoxy(1, 15);
	ld	a,#0x07
	ld	l,a
	call	_Col
	ld	l, #0x0f
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:103: Cn("Programmed by Scott Miller");
	ld	hl, #___str_29
	call	_Cn
;E:\supernova\msx\game\ui2.c:104: Cn("Story by Scott Miller and Terry Nagy");
	ld	hl, #___str_30
	call	_Cn
;E:\supernova\msx\game\ui2.c:105: Gotoxy(1, 23); Col(3, 7);
	ld	l, #0x17
	ld	a, #0x01
	call	_Gotoxy
	ld	l, #0x07
	ld	a, #0x03
	call	_Col
;E:\supernova\msx\game\ui2.c:106: Cn("Press any key to continue.");
	ld	hl, #___str_26
	call	_Cn
;E:\supernova\msx\game\ui2.c:107: do
00106$:
;E:\supernova\msx\game\ui2.c:109: Gotoxy(32, 8);
	ld	l, #0x08
	ld	a, #0x20
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:110: TextColor((u8)Rnd(16));
	ld	hl, #0x0010
	call	_Rnd
	ld	a, e
	call	_TextColor
;E:\supernova\msx\game\ui2.c:111: Wr("S U P E R N O V A");
	ld	hl, #___str_11
	call	_Wr
;E:\supernova\msx\game\ui2.c:112: } while (!KeyPressed());
	call	_KeyPressed
	or	a, a
	jr	z, 00106$
;E:\supernova\msx\game\ui2.c:113: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;E:\supernova\msx\game\ui2.c:114: }
	ret
___str_11:
	.ascii "S U P E R N O V A"
	.db 0x00
___str_12:
	.ascii "Published by"
	.db 0x00
___str_13:
	.ascii "APOGEE SOFTWARE PRODUCTIONS"
	.db 0x00
___str_14:
	.ascii "This game is placed in the public domain for your enjoyment."
	.ascii "   Please do"
	.db 0x00
___str_15:
	.ascii "not abuse this product or the author's rights."
	.db 0x00
___str_16:
	.ascii "If you enjoy this game the author asks that you contribute $"
	.ascii "10 (by check)."
	.db 0x00
___str_17:
	.ascii "This payment  will encourage the author  to create similar g"
	.ascii "ames  and will"
	.db 0x00
___str_18:
	.ascii "help compensate him  for the several years work that went in"
	.ascii "to  Supernova."
	.db 0x00
___str_19:
	.ascii "This fee will also register the payer for telephone support "
	.ascii "and clues."
	.db 0x00
___str_20:
	.ascii "Please make checks payable to:  Scott Miller"
	.db 0x00
___str_21:
	.ascii "Scott Miller      (214) 240-0614"
	.db 0x00
___str_22:
	.ascii "4206 Mayflower Drive"
	.db 0x00
___str_23:
	.ascii "Garland, TX 75043"
	.db 0x00
___str_24:
	.ascii "Also call for help:  Terry Nagy  (214) 271-3065"
	.db 0x00
___str_25:
	.ascii "Thanks, enjoy the game..."
	.db 0x00
___str_26:
	.ascii "Press any key to continue."
	.db 0x00
___str_27:
	.ascii "Copyright 1987 Scott Miller"
	.db 0x00
___str_28:
	.ascii "Version B"
	.db 0x00
___str_29:
	.ascii "Programmed by Scott Miller"
	.db 0x00
___str_30:
	.ascii "Story by Scott Miller and Terry Nagy"
	.db 0x00
;E:\supernova\msx\game\ui2.c:116: void Init1(void)
;	---------------------------------
; Function Init1
; ---------------------------------
_Init1::
	call	___sdcc_enter_ix
	ld	hl, #-80
	add	hl, sp
	ld	sp, hl
00123$:
;E:\supernova\msx\game\ui2.c:121: Bor(0, 0); Bak(0, 0); ClrScr(); NoSound();
	xor	a, a
	ld	l, a
	call	_Bor
	xor	a, a
	ld	l, a
	call	_Bak
	call	_ClrScr
	call	_NoSound
;E:\supernova\msx\game\ui2.c:122: Cur(3); Randomize();
	ld	a, #0x03
	call	_Cur
	call	_Randomize
;E:\supernova\msx\game\ui2.c:123: for (x = 1; x <= 20; x++) { Sound(x * 9); Delay(x * 2); }
	ld	hl, #_x
	ld	(hl), #0x01
00121$:
	ld	a, (_x)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	call	_Sound
	ld	a, (_x)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x14
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00121$
;E:\supernova\msx\game\ui2.c:124: NoSound();
	call	_NoSound
;E:\supernova\msx\game\ui2.c:125: Gotoxy(1, 9); y = 0; Col(14, 7); StrCpy(Identity, "");
	ld	l, #0x09
	ld	a, #0x01
	call	_Gotoxy
	xor	a, a
	ld	(#_y), a
	ld	l, #0x07
	ld	a, #0x0e
	call	_Col
	ld	de, #___str_31
	ld	hl, #_Identity
	call	_StrCpy
;E:\supernova\msx\game\ui2.c:126: Cn("Please enter your identity code name:"); Col(12, 15);
	ld	hl, #___str_32
	call	_Cn
	ld	l, #0x0f
	ld	a, #0x0c
	call	_Col
;E:\supernova\msx\game\ui2.c:127: do i = Rnd(32767); while (!KeyPressed());
00102$:
	ld	hl, #0x7fff
	call	_Rnd
	ld	(_i), de
	call	_KeyPressed
	or	a, a
	jr	z, 00102$
;E:\supernova\msx\game\ui2.c:128: do
00112$:
;E:\supernova\msx\game\ui2.c:130: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;E:\supernova\msx\game\ui2.c:131: if (CFlag != 13)
;E:\supernova\msx\game\ui2.c:133: if (CFlag != 8) { if (Len(Identity) < 29) { l = Len(Identity); Identity[l] = UpCase(CFlag); Identity[l + 1] = 0; } }
	ld	a, (_CFlag)
	cp	a, #0x0d
	jr	z, 00111$
	sub	a, #0x08
	jr	z, 00108$
	ld	hl, #_Identity
	call	_Len
	sub	a, #0x1d
	jr	nc, 00111$
	ld	hl, #_Identity
	call	_Len
	ld	c, a
	ld	l, c
	ld	h, #0x00
	ld	de, #_Identity
	add	hl, de
	push	hl
	push	bc
	ld	a, (_CFlag)
	call	_UpCase
	pop	bc
	pop	hl
	ld	(hl), a
	inc	c
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	ld	hl, #_Identity
	add	hl, bc
	ld	(hl), #0x00
	jr	00111$
00108$:
;E:\supernova\msx\game\ui2.c:134: else Delete(Identity, Len(Identity), 2);
	ld	hl, #_Identity
	call	_Len
	ld	h, #0x02
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #_Identity
	call	_Delete
00111$:
;E:\supernova\msx\game\ui2.c:138: Gotoxy(1, 11);
	ld	l, #0x0b
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:139: StrCpy(b, " "); StrCat(b, Identity, 33); StrCat(b, " ", 34);
	ld	hl, #44
	add	hl, sp
	push	hl
	ld	de, #___str_33
	call	_StrCpy
	pop	hl
	push	hl
	ld	a, #0x21
	push	af
	inc	sp
	ld	de, #_Identity
	call	_StrCat
	pop	hl
	push	hl
	ld	a, #0x22
	push	af
	inc	sp
	ld	de, #___str_33
	call	_StrCat
	pop	hl
;E:\supernova\msx\game\ui2.c:140: Cn(b);
	call	_Cn
;E:\supernova\msx\game\ui2.c:142: Sound(50); Delay(50); NoSound();
	ld	hl, #0x0032
	call	_Sound
	ld	hl, #0x0032
	call	_Delay
	call	_NoSound
;E:\supernova\msx\game\ui2.c:143: } while (CFlag != 13);
	ld	a, (_CFlag)
	sub	a, #0x0d
	jp	nz, 00112$
;E:\supernova\msx\game\ui2.c:144: Col(10, 7); Gotoxy(1, 7);
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	l, #0x07
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:145: if (Identity[0])
	ld	a, (#_Identity + 0)
	or	a, a
	jr	z, 00116$
;E:\supernova\msx\game\ui2.c:148: StrCpy(b, " IDENTITY CODE ACCEPTED--YOU MAY PROCEED "); StrCat(b, Identity, 79);
	ld	de, #___str_34
	ld	hl, #0
	add	hl, sp
	push	hl
	call	_StrCpy
	pop	hl
	push	hl
	ld	a, #0x4f
	push	af
	inc	sp
	ld	de, #_Identity
	call	_StrCat
	pop	hl
;E:\supernova\msx\game\ui2.c:149: Cn(b);
	call	_Cn
	jr	00117$
00116$:
;E:\supernova\msx\game\ui2.c:151: else { Col(25, 31); Bor(4, 7); Cn("IDENTITY CODE REJECTED--ABORTING SEQUENCE"); }
	ld	l, #0x1f
	ld	a, #0x19
	call	_Col
	ld	l, #0x07
	ld	a, #0x04
	call	_Bor
	ld	hl, #___str_35
	call	_Cn
00117$:
;E:\supernova\msx\game\ui2.c:152: LowerCase(Identity); ChopSeven(Identity);
	ld	hl, #_Identity
	call	_LowerCase
	ld	hl, #_Identity
	call	_ChopSeven
;E:\supernova\msx\game\ui2.c:153: Delay(1500);
	ld	hl, #0x05dc
	call	_Delay
;E:\supernova\msx\game\ui2.c:154: if (Identity[0]) break;
	ld	a, (#_Identity + 0)
	or	a, a
	jp	z, 00123$
;E:\supernova\msx\game\ui2.c:156: }
	ld	sp, ix
	pop	ix
	ret
___str_31:
	.db 0x00
___str_32:
	.ascii "Please enter your identity code name:"
	.db 0x00
___str_33:
	.ascii " "
	.db 0x00
___str_34:
	.ascii " IDENTITY CODE ACCEPTED--YOU MAY PROCEED "
	.db 0x00
___str_35:
	.ascii "IDENTITY CODE REJECTED--ABORTING SEQUENCE"
	.db 0x00
;E:\supernova\msx\game\ui2.c:158: void Init2(void)
;	---------------------------------
; Function Init2
; ---------------------------------
_Init2::
;E:\supernova\msx\game\ui2.c:160: Col(7, 15); Bak(1, 7);
	ld	l, #0x0f
	ld	a, #0x07
	call	_Col
	ld	l, #0x07
	ld	a, #0x01
	call	_Bak
;E:\supernova\msx\game\ui2.c:161: for (x = 1; x <= 80; x++) { Gotoxy(x, 1); WrC((char)205); Gotoxy(x, 24); WrC((char)205); }
	ld	hl, #_x
	ld	(hl), #0x01
00106$:
	ld	l, #0x01
	ld	a, (_x)
	call	_Gotoxy
	ld	a, #0xcd
	call	_WrC
	ld	l, #0x18
	ld	a, (_x)
	call	_Gotoxy
	ld	a, #0xcd
	call	_WrC
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x50
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00106$
;E:\supernova\msx\game\ui2.c:162: Gotoxy(80, 24); WrC((char)190); Gotoxy(1, 24); WrC((char)212);
	ld	l, #0x18
	ld	a, #0x50
	call	_Gotoxy
	ld	a, #0xbe
	call	_WrC
	ld	l, #0x18
	ld	a, #0x01
	call	_Gotoxy
	ld	a, #0xd4
	call	_WrC
;E:\supernova\msx\game\ui2.c:163: Gotoxy(1, 4); InsLine();
	ld	l, #0x04
	ld	a, #0x01
	call	_Gotoxy
	call	_InsLine
;E:\supernova\msx\game\ui2.c:164: for (x = 2; x <= 24; x++) { Gotoxy(1, x); WrC((char)179); Gotoxy(80, x); WrC((char)179); }
	ld	hl, #_x
	ld	(hl), #0x02
00108$:
	ld	a, (_x)
	ld	l, a
	ld	a, #0x01
	call	_Gotoxy
	ld	a, #0xb3
	call	_WrC
	ld	a, (_x)
	ld	l, a
	ld	a, #0x50
	call	_Gotoxy
	ld	a, #0xb3
	call	_WrC
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x18
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00108$
;E:\supernova\msx\game\ui2.c:165: Gotoxy(1, 4); WrC((char)198);
	ld	l, #0x04
	ld	a, #0x01
	call	_Gotoxy
	ld	a, #0xc6
	call	_WrC
;E:\supernova\msx\game\ui2.c:166: for (x = 2; x <= 79; x++) { Gotoxy(x, 4); WrC((char)205); }
	ld	hl, #_x
	ld	(hl), #0x02
00110$:
	ld	l, #0x04
	ld	a, (_x)
	call	_Gotoxy
	ld	a, #0xcd
	call	_WrC
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x4f
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00110$
;E:\supernova\msx\game\ui2.c:167: WrC((char)181);
	ld	a, #0xb5
	call	_WrC
;E:\supernova\msx\game\ui2.c:168: Gotoxy(1, 1); WrC((char)213); Gotoxy(80, 1); WrC((char)184);
	ld	a,#0x01
	ld	l,a
	call	_Gotoxy
	ld	a, #0xd5
	call	_WrC
	ld	l, #0x01
	ld	a, #0x50
	call	_Gotoxy
	ld	a, #0xb8
	call	_WrC
;E:\supernova\msx\game\ui2.c:169: Bak(4, 7); Col(14, 0); Gotoxy(2, 2);
	ld	l, #0x07
	ld	a, #0x04
	call	_Bak
	ld	l, #0x00
	ld	a, #0x0e
	call	_Col
	ld	a,#0x02
	ld	l,a
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:170: for (x = 1; x <= 78; x++) WrC(' ');
	ld	hl, #_x
	ld	(hl), #0x01
00112$:
	ld	a, #0x20
	call	_WrC
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x4e
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00112$
;E:\supernova\msx\game\ui2.c:171: Gotoxy(2, 2); Wr("Move");
	ld	a,#0x02
	ld	l,a
	call	_Gotoxy
	ld	hl, #___str_36
	call	_Wr
;E:\supernova\msx\game\ui2.c:172: Gotoxy(68, 2); Wr("Score");
	ld	l, #0x02
	ld	a, #0x44
	call	_Gotoxy
	ld	hl, #___str_37
	call	_Wr
;E:\supernova\msx\game\ui2.c:173: Bak(7, 7); Gotoxy(2, 3);
	ld	a,#0x07
	ld	l,a
	call	_Bak
	ld	l, #0x03
	ld	a, #0x02
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:174: for (x = 1; x <= 78; x++) WrC(' ');
	ld	hl, #_x
	ld	(hl), #0x01
00114$:
	ld	a, #0x20
	call	_WrC
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x4e
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00114$
;E:\supernova\msx\game\ui2.c:175: Bak(5, 7); Col(15, 0);
	ld	l, #0x07
	ld	a, #0x05
	call	_Bak
	ld	l, #0x00
	ld	a, #0x0f
	call	_Col
;E:\supernova\msx\game\ui2.c:176: Gotoxy(2, 3); Wr("Player Condition:");
	ld	l, #0x03
	ld	a, #0x02
	call	_Gotoxy
	ld	hl, #___str_38
	call	_Wr
;E:\supernova\msx\game\ui2.c:177: Bak(0, 0);
	xor	a, a
	ld	l, a
	call	_Bak
;E:\supernova\msx\game\ui2.c:178: Gotoxy(1, 14); Col(14, 7);
	ld	l, #0x0e
	ld	a, #0x01
	call	_Gotoxy
	ld	l, #0x07
	ld	a, #0x0e
	call	_Col
;E:\supernova\msx\game\ui2.c:179: Cn("Working 14 hours a day in the core of some dusty, smelly mine");
	ld	hl, #___str_39
	call	_Cn
;E:\supernova\msx\game\ui2.c:180: Cn("is not your idea of the perfect lifestyle.");
	ld	hl, #___str_40
	call	_Cn
;E:\supernova\msx\game\ui2.c:181: Cn("Barre-An is a dust ball in space, its only salvation being that it is");
	ld	hl, #___str_41
	call	_Cn
;E:\supernova\msx\game\ui2.c:182: Cn("rich in precious barre-an metal.  Or used to be.  Nowadays the mines");
	ld	hl, #___str_42
	call	_Cn
;E:\supernova\msx\game\ui2.c:183: Cn("don't seem so generous, which is why you're looking for a more");
	ld	hl, #___str_43
	call	_Cn
;E:\supernova\msx\game\ui2.c:184: Cn("profitable venture.");
	ld	hl, #___str_44
	call	_Cn
;E:\supernova\msx\game\ui2.c:185: Cn("A break, that's all you ask for, maybe today you figure...");
	ld	hl, #___str_45
	call	_Cn
;E:\supernova\msx\game\ui2.c:186: Wln();
;E:\supernova\msx\game\ui2.c:187: }
	jp	_Wln
___str_36:
	.ascii "Move"
	.db 0x00
___str_37:
	.ascii "Score"
	.db 0x00
___str_38:
	.ascii "Player Condition:"
	.db 0x00
___str_39:
	.ascii "Working 14 hours a day in the core of some dusty, smelly min"
	.ascii "e"
	.db 0x00
___str_40:
	.ascii "is not your idea of the perfect lifestyle."
	.db 0x00
___str_41:
	.ascii "Barre-An is a dust ball in space, its only salvation being t"
	.ascii "hat it is"
	.db 0x00
___str_42:
	.ascii "rich in precious barre-an metal.  Or used to be.  Nowadays t"
	.ascii "he mines"
	.db 0x00
___str_43:
	.ascii "don't seem so generous, which is why you're looking for a mo"
	.ascii "re"
	.db 0x00
___str_44:
	.ascii "profitable venture."
	.db 0x00
___str_45:
	.ascii "A break, that's all you ask for, maybe today you figure..."
	.db 0x00
;E:\supernova\msx\game\ui2.c:189: void Init3(void)
;	---------------------------------
; Function Init3
; ---------------------------------
_Init3::
;E:\supernova\msx\game\ui2.c:191: StrCpy(Line, "");
	ld	de, #___str_46
	ld	hl, #_Line
	call	_StrCpy
;E:\supernova\msx\game\ui2.c:192: StrCpy(Again, "z");
	ld	de, #___str_47
	ld	hl, #_Again
	call	_StrCpy
;E:\supernova\msx\game\ui2.c:193: StrCpy(LastNoun, "mug");
	ld	de, #___str_48
	ld	hl, #_LastNoun
	call	_StrCpy
;E:\supernova\msx\game\ui2.c:194: Vb = Null;
	xor	a, a
	ld	(#_Vb), a
;E:\supernova\msx\game\ui2.c:195: Prm = 8;
	ld	hl, #_Prm
	ld	(hl), #0x08
;E:\supernova\msx\game\ui2.c:196: Sc = 0;
	ld	hl, #0x0000
	ld	(_Sc), hl
;E:\supernova\msx\game\ui2.c:197: Tic = 0;
	ld	(_Tic), hl
;E:\supernova\msx\game\ui2.c:198: SetClear(PStat, 1); SET_ADD(PStat, 6);
	ld	bc, #_PStat+0
	ld	l, c
	ld	h, b
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	call	_SetClear
	pop	bc
	ld	a, (bc)
	set	5, a
	ld	(bc), a
;E:\supernova\msx\game\ui2.c:199: SetClear(Events, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #_Events
	call	_SetClear
;E:\supernova\msx\game\ui2.c:200: for (o = 1; o <= MMax; o++) R[o] = Null;
	ld	hl, #_o
	ld	(hl), #0x01
	ld	bc, #_R+0
00111$:
	ld	a, (_o)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0x00
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00111$
;E:\supernova\msx\game\ui2.c:201: SetClear(Inv, 4); SET_ADD(Inv, 3); SET_ADD(Inv, 8);
	ld	bc, #_Inv+0
	ld	l, c
	ld	h, b
	push	bc
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetClear
	pop	bc
	ld	a, (bc)
	set	2, a
	ld	(bc), a
	set	7, a
	ld	(bc), a
;E:\supernova\msx\game\ui2.c:202: SetClear(Mov, 4); for (o = 1; o <= MMax; o++) SET_ADD(Mov, o);
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Mov
	call	_SetClear
	ld	hl, #_o
	ld	(hl), #0x01
00113$:
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00293$:
	sra	d
	rr	e
	djnz	00293$
	ld	hl, #_Mov
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00295$
00294$:
	add	a, a
00295$:
	djnz	00294$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00113$
;E:\supernova\msx\game\ui2.c:203: AlienRm = Null;
	xor	a, a
	ld	(#_AlienRm), a
;E:\supernova\msx\game\ui2.c:204: FriendRm = 91;
	ld	hl, #_FriendRm
	ld	(hl), #0x5b
;E:\supernova\msx\game\ui2.c:205: SetClear(Brief, 14);
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #_Brief
	call	_SetClear
;E:\supernova\msx\game\ui2.c:206: SetClear(Wear, 4);
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Wear
	call	_SetClear
;E:\supernova\msx\game\ui2.c:207: MugCon = 99;
	ld	hl, #_MugCon
	ld	(hl), #0x63
;E:\supernova\msx\game\ui2.c:208: FoodCon = 4;
	ld	hl, #_FoodCon
	ld	(hl), #0x04
;E:\supernova\msx\game\ui2.c:209: SatchCon = 6;
	ld	hl, #_SatchCon
	ld	(hl), #0x06
;E:\supernova\msx\game\ui2.c:210: HolstCon = Null;
;E:\supernova\msx\game\ui2.c:211: NicheCon = Null;
	xor	a, a
	ld	(#_HolstCon), a
	ld	(#_NicheCon), a
;E:\supernova\msx\game\ui2.c:212: SinkRm = Null;
;E:\supernova\msx\game\ui2.c:213: PyraCon = Null;
	xor	a, a
	ld	(#_SinkRm), a
	ld	(#_PyraCon), a
;E:\supernova\msx\game\ui2.c:214: Serum = Null;
	xor	a, a
	ld	(#_Serum), a
;E:\supernova\msx\game\ui2.c:215: HingeCon = 9;
	ld	hl, #_HingeCon
	ld	(hl), #0x09
;E:\supernova\msx\game\ui2.c:216: PodumCon = 18;
	ld	hl, #_PodumCon
	ld	(hl), #0x12
;E:\supernova\msx\game\ui2.c:217: RobotCon = 12;
	ld	hl, #_RobotCon
	ld	(hl), #0x0c
;E:\supernova\msx\game\ui2.c:218: SetClear(Socket, 4); for (o = 22; o <= 25; o++) SET_ADD(Socket, o);
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Socket
	call	_SetClear
	ld	hl, #_o
	ld	(hl), #0x16
00115$:
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00296$:
	sra	d
	rr	e
	djnz	00296$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00298$
00297$:
	add	a, a
00298$:
	djnz	00297$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x19
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00115$
;E:\supernova\msx\game\ui2.c:219: CodeSet = 7;
	ld	hl, #_CodeSet
	ld	(hl), #0x07
;E:\supernova\msx\game\ui2.c:220: ScrnSet = 1;
	ld	hl, #_ScrnSet
	ld	(hl), #0x01
;E:\supernova\msx\game\ui2.c:221: Floor = 1;
	ld	hl, #0x0001
	ld	(_Floor), hl
;E:\supernova\msx\game\ui2.c:222: Region = 1;
	ld	hl, #_Region
	ld	(hl), #0x01
;E:\supernova\msx\game\ui2.c:223: TFlag = 1;
	ld	hl, #_TFlag
	ld	(hl), #0x01
;E:\supernova\msx\game\ui2.c:224: Old = 250;
	ld	hl, #_Old
	ld	(hl), #0xfa
;E:\supernova\msx\game\ui2.c:225: Old2 = Old;
	ld	hl, #_Old2
	ld	(hl), #0xfa
;E:\supernova\msx\game\ui2.c:226: Maze = 1;
	ld	hl, #_Maze
	ld	(hl), #0x01
;E:\supernova\msx\game\ui2.c:227: Drive = 'A';
	ld	hl, #_Drive
	ld	(hl), #0x41
;E:\supernova\msx\game\ui2.c:228: StoreR = -1; StoreS = -1; StoreL = -1; StoreC = -1;
	ld	hl, #0xffff
	ld	(_StoreR), hl
	ld	(_StoreS), hl
	ld	(_StoreL), hl
	ld	(_StoreC), hl
;E:\supernova\msx\game\ui2.c:229: Mx[1] = VMax; Mx[2] = NMax; Mx[3] = PMax;
	ld	hl, #_Mx + 1
	ld	(hl), #0x5f
	ld	hl, #_Mx + 2
	ld	(hl), #0x85
	ld	hl, #_Mx + 3
	ld	(hl), #0x0b
;E:\supernova\msx\game\ui2.c:230: for (x = 1; x <= TMax; x++) T[x] = Null;
	ld	hl, #_x
	ld	(hl), #0x01
	ld	bc, #_T+0
00117$:
	ld	a, (_x)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1e
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00117$
;E:\supernova\msx\game\ui2.c:231: T[2] = 0;
	ld	hl, #0x0000
	ld	((_T + 4)), hl
;E:\supernova\msx\game\ui2.c:232: T[3] = 70;    // Hunger
	ld	l, #0x46
	ld	((_T + 6)), hl
;E:\supernova\msx\game\ui2.c:233: T[4] = 26;    // Thirst
	ld	l, #0x1a
	ld	((_T + 8)), hl
;E:\supernova\msx\game\ui2.c:234: T[5] = 85;    // Sleep (no relation to the T[2] sleep timer!)
	ld	l, #0x55
	ld	((_T + 10)), hl
;E:\supernova\msx\game\ui2.c:235: SetClear(NoNounOnly, 12); SetClear(OneNounMaybe, 12); SetClear(ToNounOnly, 12); SetClear(ToNounMaybe, 12);
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #_NoNounOnly
	call	_SetClear
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #_OneNounMaybe
	call	_SetClear
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #_ToNounOnly
	call	_SetClear
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #_ToNounMaybe
	call	_SetClear
;E:\supernova\msx\game\ui2.c:236: for (o = 1; o <= 8; o++) SET_ADD(NoNounOnly, o);
	ld	hl, #_o
	ld	(hl), #0x01
00119$:
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00299$:
	sra	d
	rr	e
	djnz	00299$
	ld	hl, #_NoNounOnly
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00301$
00300$:
	add	a, a
00301$:
	djnz	00300$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x08
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00119$
;E:\supernova\msx\game\ui2.c:237: SET_ADD(NoNounOnly, 15); SET_ADD(NoNounOnly, 16); SET_ADD(NoNounOnly, 30);
	ld	hl, #_NoNounOnly + 1
	set	6, (hl)
	set	7, (hl)
	ld	hl, #_NoNounOnly + 3
	set	5, (hl)
;E:\supernova\msx\game\ui2.c:238: for (o = 77; o <= 79; o++) SET_ADD(NoNounOnly, o);
	ld	hl, #_o
	ld	(hl), #0x4d
00121$:
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00302$:
	sra	d
	rr	e
	djnz	00302$
	ld	hl, #_NoNounOnly
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00304$
00303$:
	add	a, a
00304$:
	djnz	00303$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x4f
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00121$
;E:\supernova\msx\game\ui2.c:239: SET_ADD(NoNounOnly, 82); SET_ADD(NoNounOnly, 85); SET_ADD(NoNounOnly, 86); SET_ADD(NoNounOnly, 87); SET_ADD(NoNounOnly, 95);
	ld	hl, #_NoNounOnly + 10
	set	1, (hl)
	set	4, (hl)
	set	5, (hl)
	set	6, (hl)
	ld	hl, #_NoNounOnly + 11
	set	6, (hl)
;E:\supernova\msx\game\ui2.c:240: for (o = 9; o <= 14; o++) SET_ADD(OneNounMaybe, o);
	ld	hl, #_o
	ld	(hl), #0x09
00123$:
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00305$:
	sra	d
	rr	e
	djnz	00305$
	ld	hl, #_OneNounMaybe
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00307$
00306$:
	add	a, a
00307$:
	djnz	00306$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x0e
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00123$
;E:\supernova\msx\game\ui2.c:241: SET_ADD(OneNounMaybe, 25); SET_ADD(OneNounMaybe, 32); SET_ADD(OneNounMaybe, 46);
	ld	hl, #_OneNounMaybe + 3
	set	0, (hl)
	set	7, (hl)
	ld	hl, #_OneNounMaybe + 5
	set	5, (hl)
;E:\supernova\msx\game\ui2.c:242: SET_ADD(OneNounMaybe, 59); SET_ADD(OneNounMaybe, 60);
	ld	hl, #_OneNounMaybe + 7
	set	2, (hl)
	set	3, (hl)
;E:\supernova\msx\game\ui2.c:243: for (o = 66; o <= 71; o++) SET_ADD(OneNounMaybe, o);
	ld	hl, #_o
	ld	(hl), #0x42
00125$:
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00308$:
	sra	d
	rr	e
	djnz	00308$
	ld	hl, #_OneNounMaybe
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00310$
00309$:
	add	a, a
00310$:
	djnz	00309$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x47
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00125$
;E:\supernova\msx\game\ui2.c:244: SET_ADD(OneNounMaybe, 80); SET_ADD(OneNounMaybe, 81); SET_ADD(OneNounMaybe, 90); SET_ADD(OneNounMaybe, 91);
	ld	hl, #_OneNounMaybe + 9
	set	7, (hl)
	ld	hl, #_OneNounMaybe + 10
	set	0, (hl)
	ld	hl, #_OneNounMaybe + 11
	set	1, (hl)
	set	2, (hl)
;E:\supernova\msx\game\ui2.c:245: SET_ADD(ToNounOnly, 33); SET_ADD(ToNounOnly, 49); SET_ADD(ToNounOnly, 64); SET_ADD(ToNounOnly, 88); SET_ADD(ToNounOnly, 93);
	ld	hl, #_ToNounOnly + 4
	set	0, (hl)
	ld	hl, #_ToNounOnly + 6
	set	0, (hl)
	ld	hl, #_ToNounOnly + 7
	set	7, (hl)
	ld	hl, #_ToNounOnly + 10
	set	7, (hl)
	ld	hl, #_ToNounOnly + 11
	set	4, (hl)
;E:\supernova\msx\game\ui2.c:246: SET_ADD(ToNounMaybe, 19);
	ld	hl, #_ToNounMaybe + 2
	set	2, (hl)
;E:\supernova\msx\game\ui2.c:247: for (o = 41; o <= 44; o++) SET_ADD(ToNounMaybe, o);
	ld	hl, #_o
	ld	(hl), #0x29
00127$:
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00311$:
	sra	d
	rr	e
	djnz	00311$
	ld	hl, #_ToNounMaybe
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00313$
00312$:
	add	a, a
00313$:
	djnz	00312$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x2c
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00127$
;E:\supernova\msx\game\ui2.c:248: SET_ADD(ToNounMaybe, 48); SET_ADD(ToNounMaybe, 50); SET_ADD(ToNounMaybe, 53); SET_ADD(ToNounMaybe, 54);
	ld	hl, #_ToNounMaybe + 5
	set	7, (hl)
	ld	hl, #_ToNounMaybe + 6
	set	1, (hl)
	set	4, (hl)
	set	5, (hl)
	ld	a, (hl)
;E:\supernova\msx\game\ui2.c:249: for (o = 74; o <= 76; o++) SET_ADD(ToNounMaybe, o);
	ld	hl, #_o
	ld	(hl), #0x4a
00129$:
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00314$:
	sra	d
	rr	e
	djnz	00314$
	ld	hl, #_ToNounMaybe
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00316$
00315$:
	add	a, a
00316$:
	djnz	00315$
	or	a, c
	ld	(hl), a
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x4c
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00129$
;E:\supernova\msx\game\ui2.c:250: SET_ADD(ToNounMaybe, 89); SET_ADD(ToNounMaybe, 90); SET_ADD(ToNounMaybe, 92); SET_ADD(ToNounMaybe, 94);
	ld	hl, #_ToNounMaybe + 11
	set	0, (hl)
	set	1, (hl)
	set	3, (hl)
	set	5, (hl)
;E:\supernova\msx\game\ui2.c:252: Window(2, 5, 79, 24); Gotoxy(1, 19);
	ld	hl, #0x184f
	push	hl
	ld	l, #0x05
	ld	a, #0x02
	call	_Window
	ld	l, #0x13
	ld	a, #0x01
;E:\supernova\msx\game\ui2.c:253: }
	jp	_Gotoxy
___str_46:
	.db 0x00
___str_47:
	.ascii "z"
	.db 0x00
___str_48:
	.ascii "mug"
	.db 0x00
;E:\supernova\msx\game\ui2.c:259: static u8* Put8(u8* p, u8 v) { *p++ = v; return p; }
;	---------------------------------
; Function Put8
; ---------------------------------
_Put8:
	ex	de, hl
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(de), a
	inc	de
	pop	hl
	inc	sp
	jp	(hl)
;E:\supernova\msx\game\ui2.c:260: static u8* Put16(u8* p, i16 v) { *p++ = (u8)v; *p++ = (u8)((u16)v >> 8); return p; }
;	---------------------------------
; Function Put16
; ---------------------------------
_Put16:
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ex	de, hl
	inc	de
	ret
;E:\supernova\msx\game\ui2.c:261: static const u8* Get8(const u8* p, u8* v) { *v = *p++; return p; }
;	---------------------------------
; Function Get8
; ---------------------------------
_Get8:
	ld	a, (hl)
	inc	hl
	ld	(de), a
	ex	de, hl
	ret
;E:\supernova\msx\game\ui2.c:262: static const u8* Get16(const u8* p, i16* v) { *v = (i16)(p[0] | (p[1] << 8)); return p + 2; }
;	---------------------------------
; Function Get16
; ---------------------------------
_Get16:
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	l, c
	ld	h, b
	inc	hl
	ld	h, (hl)
	ld	l, #0x00
	push	iy
	ex	(sp), hl
	ld	h, #0x00
	ex	(sp), hl
	pop	iy
	ld	(de), a
	inc	de
	ld	a, h
	ld	(de), a
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ret
;E:\supernova\msx\game\ui2.c:264: static void SaveName(const char* base, char* dst)
;	---------------------------------
; Function SaveName
; ---------------------------------
_SaveName:
	ld	a, l
	ld	c, h
	ex	de, hl
;E:\supernova\msx\game\ui2.c:266: StrCpy(dst, base); StrCat(dst, ".SAV", 12);
	push	hl
	ld	e, a
	ld	d, c
	call	_StrCpy
	pop	hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	de, #___str_49
	call	_StrCat
;E:\supernova\msx\game\ui2.c:267: }
	ret
___str_49:
	.ascii ".SAV"
	.db 0x00
;E:\supernova\msx\game\ui2.c:269: static void AskName(const char* prompt, const char* abort_)
;	---------------------------------
; Function AskName
; ---------------------------------
_AskName:
;E:\supernova\msx\game\ui2.c:271: Wr(prompt); Wr(" ('"); Up("/"); Wr("' aborts "); Wr(abort_); Wr(")? ");
	push	de
	call	_Wr
	ld	hl, #___str_50
	call	_Wr
	ld	hl, #___str_51
	call	_Up
	ld	hl, #___str_52
	call	_Wr
	pop	de
	ex	de, hl
	call	_Wr
	ld	hl, #___str_53
;E:\supernova\msx\game\ui2.c:272: }
	jp	_Wr
___str_50:
	.ascii " ('"
	.db 0x00
___str_51:
	.ascii "/"
	.db 0x00
___str_52:
	.ascii "' aborts "
	.db 0x00
___str_53:
	.ascii ")? "
	.db 0x00
;E:\supernova\msx\game\ui2.c:274: static u8 NameDialog(void)   // returns 0 if the user aborted; Input holds the base name (upper case)
;	---------------------------------
; Function NameDialog
; ---------------------------------
_NameDialog:
00124$:
;E:\supernova\msx\game\ui2.c:278: Col(14, 15); ReadLn(Input, 8); Col(11, 7);
	ld	l, #0x0f
	ld	a, #0x0e
	call	_Col
	ld	a, #0x08
	push	af
	inc	sp
	ld	hl, #_Input
	call	_ReadLn
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\ui2.c:279: Cur(3);
	ld	a, #0x03
	call	_Cur
;E:\supernova\msx\game\ui2.c:280: while (Pos(" ", Input) > 0) Delete(Input, Pos(" ", Input), 1);
00101$:
	ld	hl, #___str_54
	push	hl
	ld	de, #_Input
	call	_Pos
	pop	hl
	or	a, a
	jr	z, 00104$
	ld	de, #_Input
	call	_Pos
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #_Input
	call	_Delete
	jr	00101$
;E:\supernova\msx\game\ui2.c:281: while (Pos(".", Input) > 0) Delete(Input, Pos(".", Input), 1);
00104$:
	ld	de, #_Input
	ld	hl, #___str_55
	call	_Pos
	or	a, a
	jr	z, 00107$
	ld	de, #_Input
	ld	hl, #___str_55
	call	_Pos
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #_Input
	call	_Delete
	jr	00104$
;E:\supernova\msx\game\ui2.c:282: while (Pos(":", Input) > 0) Delete(Input, Pos(":", Input), 1);
00107$:
	ld	hl, #___str_56
	push	hl
	ld	de, #_Input
	call	_Pos
	pop	hl
	or	a, a
	jr	z, 00109$
	ld	de, #_Input
	call	_Pos
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #_Input
	call	_Delete
	jr	00107$
00109$:
;E:\supernova\msx\game\ui2.c:283: if (Pos("/", Input) > 0) return 0;
	ld	de, #_Input
	ld	hl, #___str_57
	call	_Pos
	or	a, a
	jr	z, 00111$
	xor	a, a
	ret
00111$:
;E:\supernova\msx\game\ui2.c:284: LowerCase(Input);
	ld	hl, #_Input
	call	_LowerCase
;E:\supernova\msx\game\ui2.c:285: if (Pos("list", Input) > 0 || Pos("dir", Input) > 0 || Pos("file", Input) > 0)
	ld	de, #_Input
	ld	hl, #___str_58
	call	_Pos
	or	a, a
	jr	nz, 00112$
	ld	de, #_Input
	ld	hl, #___str_59
	call	_Pos
	or	a, a
	jr	nz, 00112$
	ld	de, #_Input
	ld	hl, #___str_60
	call	_Pos
	or	a, a
	jr	z, 00113$
00112$:
;E:\supernova\msx\game\ui2.c:287: Wln(); ListSaveFiles(); Wln(); Pause();
	call	_Wln
	call	_ListSaveFiles
	call	_Wln
	call	_Pause
;E:\supernova\msx\game\ui2.c:288: Wr("Which file name? ");
	ld	hl, #___str_61
	call	_Wr
;E:\supernova\msx\game\ui2.c:289: continue;
	jp	00124$
00113$:
;E:\supernova\msx\game\ui2.c:291: if (Len(Input) == 0) StrCpy(Input, "lastsave");
	ld	hl, #_Input
	call	_Len
	or	a, a
	jr	nz, 00117$
	ld	de, #___str_62
	ld	hl, #_Input
	call	_StrCpy
00117$:
;E:\supernova\msx\game\ui2.c:292: for (x = 0; Input[x]; x++) Input[x] = UpCase(Input[x]);
	xor	a, a
	ld	(#_x), a
00122$:
	ld	hl, #_Input
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	z, 00118$
	push	hl
	call	_UpCase
	pop	hl
	ld	(hl), a
	ld	hl, #_x
	inc	(hl)
	jr	00122$
00118$:
;E:\supernova\msx\game\ui2.c:293: return 1;
	ld	a, #0x01
;E:\supernova\msx\game\ui2.c:295: }
	ret
___str_54:
	.ascii " "
	.db 0x00
___str_55:
	.ascii "."
	.db 0x00
___str_56:
	.ascii ":"
	.db 0x00
___str_57:
	.ascii "/"
	.db 0x00
___str_58:
	.ascii "list"
	.db 0x00
___str_59:
	.ascii "dir"
	.db 0x00
___str_60:
	.ascii "file"
	.db 0x00
___str_61:
	.ascii "Which file name? "
	.db 0x00
___str_62:
	.ascii "lastsave"
	.db 0x00
;E:\supernova\msx\game\ui2.c:297: void Save(void)
;	---------------------------------
; Function Save
; ---------------------------------
_Save::
	call	___sdcc_enter_ix
	ld	hl, #-181
	add	hl, sp
	ld	sp, hl
;E:\supernova\msx\game\ui2.c:301: u8* p = st;
;E:\supernova\msx\game\ui2.c:302: SF(); NoSound();
	call	_SF
	call	_NoSound
;E:\supernova\msx\game\ui2.c:303: for (x = 1; x <= 20; x++) Wln();
	ld	hl, #_x
	ld	(hl), #0x01
00114$:
	call	_Wln
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x14
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00114$
;E:\supernova\msx\game\ui2.c:304: Bor(2, 7); Cur(2);
	ld	l, #0x07
	ld	a, #0x02
	call	_Bor
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\ui2.c:305: Gotoxy(1, 2);
	ld	l, #0x02
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:306: AskName("SAVE under what file name", "SAVE");
	ld	de, #___str_64
	ld	hl, #___str_63
	call	_AskName
;E:\supernova\msx\game\ui2.c:307: if (!NameDialog())
	call	_NameDialog
	ld	-1 (ix), a
	or	a, a
	jr	nz, 00112$
;E:\supernova\msx\game\ui2.c:309: Wln(); Up("SAVE ABORTED"); Wln();
	call	_Wln
	ld	hl, #___str_65
	call	_Up
	call	_Wln
	jp	00113$
00112$:
;E:\supernova\msx\game\ui2.c:313: Wln(); Wln();
	call	_Wln
	call	_Wln
;E:\supernova\msx\game\ui2.c:314: Wr("The game file "); Up(Input); Wr(" is now being saved..."); Wln();
	ld	hl, #___str_66
	call	_Wr
	ld	hl, #_Input
	call	_Up
	ld	hl, #___str_67
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:315: p = Put8(p, Prm); p = Put8(p, Region); p = Put8(p, MugCon); p = Put8(p, FoodCon); p = Put8(p, SatchCon);
	ld	a, (_Prm)
	push	af
	inc	sp
	ld	hl, #19
	add	hl, sp
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_Region)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_MugCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_FoodCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_SatchCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\supernova\msx\game\ui2.c:316: p = Put8(p, NicheCon); p = Put8(p, PyraCon); p = Put8(p, HingeCon); p = Put8(p, PodumCon);
	ld	a, (_NicheCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_PyraCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_HingeCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_PodumCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\supernova\msx\game\ui2.c:317: p = Put8(p, AlienRm); p = Put8(p, FriendRm); p = Put8(p, SinkRm); p = Put8(p, Serum); p = Put8(p, TFlag);
	ld	a, (_AlienRm)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_FriendRm)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_SinkRm)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_Serum)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_TFlag)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\supernova\msx\game\ui2.c:318: p = Put8(p, RobotCon); p = Put8(p, CodeSet); p = Put8(p, ScrnSet); p = Put8(p, HolstCon);
	ld	a, (_RobotCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_CodeSet)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_ScrnSet)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_HolstCon)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	pop	hl
	push	de
;E:\supernova\msx\game\ui2.c:319: for (x = 1; x <= MMax; x++) p = Put8(p, R[x]);
	ld	hl, #_x
	ld	(hl), #0x01
00116$:
	ld	a, #<(_R)
	ld	hl, #_x
	add	a, (hl)
	ld	-2 (ix), a
	ld	a, #>(_R)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #1
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_Put8
	pop	hl
	push	de
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00116$
;E:\supernova\msx\game\ui2.c:320: p = Put16(p, Tic); p = Put16(p, Sc); p = Put16(p, RC); p = Put16(p, Floor);
	ld	de, (_Tic)
	pop	hl
	push	hl
	call	_Put16
	ex	de, hl
	ld	de, (_Sc)
	call	_Put16
	ex	de, hl
	ld	de, (_RC)
	call	_Put16
	ex	de, hl
	ld	de, (_Floor)
	call	_Put16
	ld	-3 (ix), e
	ld	-2 (ix), d
;E:\supernova\msx\game\ui2.c:321: for (x = 1; x <= TMax; x++) p = Put16(p, T[x]);
	ld	hl, #_x
	ld	(hl), #0x01
00118$:
	ld	a, (_x)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	ld	de, #_T
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Put16
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1e
	ld	iy, #_x
	sub	a, 0 (iy)
	jr	nc, 00118$
;E:\supernova\msx\game\ui2.c:322: for (x = 0; x < 4; x++) p = Put8(p, Inv[x]);
	ld	(hl), #0x00
00120$:
	ld	a, #<(_Inv)
	ld	hl, #_x
	ld	iy, #0
	add	iy, sp
	add	a, (hl)
	ld	0 (iy), a
	ld	a, #>(_Inv)
	adc	a, #0x00
	ld	1 (iy), a
	pop	hl
	push	hl
	ld	a, (hl)
	push	af
	inc	sp
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Put8
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x04
	jr	c, 00120$
;E:\supernova\msx\game\ui2.c:323: p = Put8(p, PStat[0]);
	ld	a, (#_PStat + 0)
	ld	-1 (ix), a
	push	af
	inc	sp
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\supernova\msx\game\ui2.c:324: for (x = 0; x < 32; x++) p = Put8(p, Events[x]);
	xor	a, a
	ld	(#_x), a
00122$:
	ld	hl, #_Events
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x20
	jr	c, 00122$
;E:\supernova\msx\game\ui2.c:325: for (x = 0; x < 4; x++) p = Put8(p, Socket[x]);
	ld	(hl), #0x00
00124$:
	ld	hl, #_Socket
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x04
	jr	c, 00124$
;E:\supernova\msx\game\ui2.c:326: for (x = 0; x < 4; x++) p = Put8(p, Wear[x]);
	ld	(hl), #0x00
00126$:
	ld	hl, #_Wear
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_Put8
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x04
	jr	c, 00126$
;E:\supernova\msx\game\ui2.c:327: SaveName(Input, fn);
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #_Input
	call	_SaveName
;E:\supernova\msx\game\ui2.c:328: Wln();
	call	_Wln
;E:\supernova\msx\game\ui2.c:329: if (FileWrite2(fn, (const u8*)g_Loc, sizeof(g_Loc), st, (u16)(p - st)))
	ld	a, -2 (ix)
	ld	hl, #18
	add	hl, sp
	sub	a, l
	ld	c, a
	ld	a, -1 (ix)
	sbc	a, h
	ld	b, a
	push	bc
	push	hl
	ld	hl, #0x074e
	push	hl
	ld	de, #_g_Loc
	ld	hl, #8
	add	hl, sp
	call	_FileWrite2
	or	a, a
	jr	z, 00109$
;E:\supernova\msx\game\ui2.c:331: Wr("Your present game location is now SAVED under the name "); Up(Input); Wr("."); Wln();
	ld	hl, #___str_68
	call	_Wr
	ld	hl, #_Input
	call	_Up
	ld	hl, #___str_69
	call	_Wr
	call	_Wln
	jr	00113$
00109$:
;E:\supernova\msx\game\ui2.c:333: else { Col(12, 15); Wr("The game could not be saved!"); Wln(); Col(11, 7); }
	ld	l, #0x0f
	ld	a, #0x0c
	call	_Col
	ld	hl, #___str_70
	call	_Wr
	call	_Wln
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
00113$:
;E:\supernova\msx\game\ui2.c:335: Wln(); Wln(); Pause();
	call	_Wln
	call	_Wln
	call	_Pause
;E:\supernova\msx\game\ui2.c:336: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\ui2.c:337: Bor(0, 0); StrCpy(Line, "l");
	xor	a, a
	ld	l, a
	call	_Bor
	ld	de, #___str_71
	ld	hl, #_Line
	call	_StrCpy
;E:\supernova\msx\game\ui2.c:338: RegionSoundOn();
	call	_RegionSoundOn
;E:\supernova\msx\game\ui2.c:339: }
	ld	sp, ix
	pop	ix
	ret
___str_63:
	.ascii "SAVE under what file name"
	.db 0x00
___str_64:
	.ascii "SAVE"
	.db 0x00
___str_65:
	.ascii "SAVE ABORTED"
	.db 0x00
___str_66:
	.ascii "The game file "
	.db 0x00
___str_67:
	.ascii " is now being saved..."
	.db 0x00
___str_68:
	.ascii "Your present game location is now SAVED under the name "
	.db 0x00
___str_69:
	.ascii "."
	.db 0x00
___str_70:
	.ascii "The game could not be saved!"
	.db 0x00
___str_71:
	.ascii "l"
	.db 0x00
;E:\supernova\msx\game\ui2.c:341: void Restore(void)
;	---------------------------------
; Function Restore
; ---------------------------------
_Restore::
	call	___sdcc_enter_ix
	ld	hl, #-242
	add	hl, sp
	ld	sp, hl
;E:\supernova\msx\game\ui2.c:345: const u8* p = st;
;E:\supernova\msx\game\ui2.c:346: SF(); NoSound();
	call	_SF
	call	_NoSound
;E:\supernova\msx\game\ui2.c:347: for (x = 1; x <= 25; x++) Wln();
	ld	hl, #_x
	ld	(hl), #0x01
00121$:
	call	_Wln
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x19
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00121$
;E:\supernova\msx\game\ui2.c:348: Bor(6, 7); Cur(2);
	ld	l, #0x07
	ld	a, #0x06
	call	_Bor
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\ui2.c:349: Gotoxy(1, 2);
	ld	l, #0x02
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\ui2.c:350: AskName("RESTORE from what file name", "RESTORE");
	ld	de, #___str_73
	ld	hl, #___str_72
	call	_AskName
;E:\supernova\msx\game\ui2.c:351: if (!NameDialog())
	call	_NameDialog
	or	a, a
	jr	nz, 00103$
;E:\supernova\msx\game\ui2.c:353: Wln(); Up("RESTORE ABORTED"); Wln(); Wln(); Pause(); Col(11, 7); Bor(0, 0); return;
	call	_Wln
	ld	hl, #___str_74
	call	_Up
	call	_Wln
	call	_Wln
	call	_Pause
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	xor	a, a
	ld	l, a
	call	_Bor
	jp	00135$
00103$:
;E:\supernova\msx\game\ui2.c:355: Wln(); Wln();
	call	_Wln
	call	_Wln
;E:\supernova\msx\game\ui2.c:356: Wr("The game file "); Up(Input); Wr(" is now being restored..."); Wln();
	ld	hl, #___str_75
	call	_Wr
	ld	hl, #_Input
	call	_Up
	ld	hl, #___str_76
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:357: SaveName(Input, fn);
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #_Input
	call	_SaveName
;E:\supernova\msx\game\ui2.c:358: if (FileRead2(fn, (u8*)g_Loc, sizeof(g_Loc), st, STATE_SIZE) != sizeof(g_Loc) + STATE_SIZE)
	ld	hl, #0x00a0
	push	hl
	ld	hl, #20
	add	hl, sp
	push	hl
	ld	hl, #0x074e
	push	hl
	ld	de, #_g_Loc
	ld	hl, #8
	add	hl, sp
	call	_FileRead2
	ex	de, hl
	ld	de, #0x07ee
	cp	a, a
	sbc	hl, de
	jr	z, 00105$
;E:\supernova\msx\game\ui2.c:360: Col(12, 15); Wln(); Wln();
	ld	l, #0x0f
	ld	a, #0x0c
	call	_Col
	call	_Wln
	call	_Wln
;E:\supernova\msx\game\ui2.c:363: StrCpy(b, "The file "); StrCat(b, Input, 20); StrCat(b, " does not exist!", 40);
	ld	de, #___str_77+0
	ld	hl, #178
	add	hl, sp
	push	hl
	call	_StrCpy
	pop	hl
	push	hl
	ld	a, #0x14
	push	af
	inc	sp
	ld	de, #_Input
	call	_StrCat
	pop	hl
	push	hl
	ld	a, #0x28
	push	af
	inc	sp
	ld	de, #___str_78
	call	_StrCat
	pop	hl
;E:\supernova\msx\game\ui2.c:364: Cn(b);
	call	_Cn
;E:\supernova\msx\game\ui2.c:366: Wr("\a"); Wln(); Delay(2000); Col(11, 7);
	ld	hl, #___str_79
	call	_Wr
	call	_Wln
	ld	hl, #0x07d0
	call	_Delay
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\ui2.c:367: Pause(); Bor(0, 0);
	call	_Pause
	xor	a, a
	ld	l, a
	call	_Bor
;E:\supernova\msx\game\ui2.c:368: return;
	jp	00135$
00105$:
;E:\supernova\msx\game\ui2.c:370: p = Get8(p, &Prm); p = Get8(p, &Region); p = Get8(p, &MugCon); p = Get8(p, &FoodCon); p = Get8(p, &SatchCon);
	ld	de, #_Prm
	ld	hl, #18
	add	hl, sp
	call	_Get8
	ex	de, hl
	ld	de, #_Region
	call	_Get8
	ex	de, hl
	ld	de, #_MugCon
	call	_Get8
	ex	de, hl
	ld	de, #_FoodCon
	call	_Get8
	ex	de, hl
	ld	de, #_SatchCon
	call	_Get8
	ex	de, hl
;E:\supernova\msx\game\ui2.c:371: p = Get8(p, &NicheCon); p = Get8(p, &PyraCon); p = Get8(p, &HingeCon); p = Get8(p, &PodumCon);
	ld	de, #_NicheCon
	call	_Get8
	ex	de, hl
	ld	de, #_PyraCon
	call	_Get8
	ex	de, hl
	ld	de, #_HingeCon
	call	_Get8
	ex	de, hl
	ld	de, #_PodumCon
	call	_Get8
	ex	de, hl
;E:\supernova\msx\game\ui2.c:372: p = Get8(p, &AlienRm); p = Get8(p, &FriendRm); p = Get8(p, &SinkRm); p = Get8(p, &Serum); p = Get8(p, &TFlag);
	ld	de, #_AlienRm
	call	_Get8
	ex	de, hl
	ld	de, #_FriendRm
	call	_Get8
	ex	de, hl
	ld	de, #_SinkRm
	call	_Get8
	ex	de, hl
	ld	de, #_Serum
	call	_Get8
	ex	de, hl
	ld	de, #_TFlag
	call	_Get8
	ex	de, hl
;E:\supernova\msx\game\ui2.c:373: p = Get8(p, &RobotCon); p = Get8(p, &CodeSet); p = Get8(p, &ScrnSet); p = Get8(p, &HolstCon);
	ld	de, #_RobotCon
	call	_Get8
	ex	de, hl
	ld	de, #_CodeSet
	call	_Get8
	ex	de, hl
	ld	de, #_ScrnSet
	call	_Get8
	ex	de, hl
	ld	de, #_HolstCon
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\supernova\msx\game\ui2.c:374: for (x = 1; x <= MMax; x++) p = Get8(p, &R[x]);
	ld	hl, #_x
	ld	(hl), #0x01
00123$:
	ld	a, #<(_R)
	ld	hl, #_x
	add	a, (hl)
	ld	-2 (ix), a
	ld	a, #>(_R)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00123$
;E:\supernova\msx\game\ui2.c:375: p = Get16(p, &Tic); p = Get16(p, &Sc); p = Get16(p, &RC); p = Get16(p, &Floor);
	ld	de, #_Tic
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get16
	ex	de, hl
	ld	de, #_Sc
	call	_Get16
	ex	de, hl
	ld	de, #_RC
	call	_Get16
	ex	de, hl
	ld	de, #_Floor
	call	_Get16
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\supernova\msx\game\ui2.c:376: for (x = 1; x <= TMax; x++) p = Get16(p, &T[x]);
	ld	hl, #_x
	ld	(hl), #0x01
00125$:
	ld	a, (_x+0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), #0x00
	sla	0 (iy)
	rl	1 (iy)
	ld	a, 0 (iy)
	add	a, #<(_T)
	ld	-2 (ix), a
	ld	a, 1 (iy)
	adc	a, #>(_T)
	ld	-1 (ix), a
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get16
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1e
	ld	iy, #_x
	sub	a, 0 (iy)
	jr	nc, 00125$
;E:\supernova\msx\game\ui2.c:377: for (x = 0; x < 4; x++) p = Get8(p, &Inv[x]);
	ld	(hl), #0x00
00127$:
	ld	hl, #_Inv
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x04
	jr	c, 00127$
;E:\supernova\msx\game\ui2.c:378: p = Get8(p, &PStat[0]);
	ld	de, #_PStat
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\supernova\msx\game\ui2.c:379: for (x = 0; x < 32; x++) p = Get8(p, &Events[x]);
	xor	a, a
	ld	(#_x), a
00129$:
	ld	a, #<(_Events)
	ld	hl, #_x
	add	a, (hl)
	ld	-2 (ix), a
	ld	a, #>(_Events)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x20
	jr	c, 00129$
;E:\supernova\msx\game\ui2.c:380: for (x = 0; x < 4; x++) p = Get8(p, &Socket[x]);
	ld	(hl), #0x00
00131$:
	ld	hl, #_Socket
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x04
	jr	c, 00131$
;E:\supernova\msx\game\ui2.c:381: for (x = 0; x < 4; x++) p = Get8(p, &Wear[x]);
	ld	(hl), #0x00
00133$:
	ld	hl, #_Wear
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Get8
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	hl, #_x
	inc	(hl)
	ld	a, (_x+0)
	sub	a, #0x04
	jr	c, 00133$
;E:\supernova\msx\game\ui2.c:382: Add(126);
	ld	a, #0x7e
	call	_Add
;E:\supernova\msx\game\ui2.c:383: Wln(); Wr("Your present game location is now RESTORED from the name "); Up(Input); Wr("."); Wln();
	call	_Wln
	ld	hl, #___str_80
	call	_Wr
	ld	hl, #_Input
	call	_Up
	ld	hl, #___str_81
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\ui2.c:384: Wln(); Wln(); Pause();
	call	_Wln
	call	_Wln
	call	_Pause
;E:\supernova\msx\game\ui2.c:385: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\ui2.c:386: Bor(0, 0);
	xor	a, a
	ld	l, a
	call	_Bor
;E:\supernova\msx\game\ui2.c:387: RegionSoundOn();
	call	_RegionSoundOn
;E:\supernova\msx\game\ui2.c:388: if (Region > 1)
	ld	a, #0x01
	ld	hl, #_Region
	sub	a, (hl)
	jr	nc, 00113$
;E:\supernova\msx\game\ui2.c:390: SetNoun(84, 0);
	ld	l, #0x00
	ld	a, #0x54
	call	_SetNoun
;E:\supernova\msx\game\ui2.c:391: SetNoun(126, 1);
	ld	l, #0x01
	ld	a, #0x7e
	call	_SetNoun
	jr	00114$
00113$:
;E:\supernova\msx\game\ui2.c:395: SetNoun(84, 2);
	ld	l, #0x02
	ld	a, #0x54
	call	_SetNoun
;E:\supernova\msx\game\ui2.c:396: SetNoun(126, 3);
	ld	l, #0x03
	ld	a, #0x7e
	call	_SetNoun
00114$:
;E:\supernova\msx\game\ui2.c:398: if (En(34)) SetNoun(18, 4);
	ld	a, #0x22
	call	_En
	or	a, a
	jr	z, 00116$
	ld	l, #0x04
	ld	a, #0x12
	call	_SetNoun
	jr	00117$
00116$:
;E:\supernova\msx\game\ui2.c:399: else SetNoun(18, 5);
	ld	l, #0x05
	ld	a, #0x12
	call	_SetNoun
00117$:
;E:\supernova\msx\game\ui2.c:400: if (Prm > 79)
	ld	a, #0x4f
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nc, 00119$
;E:\supernova\msx\game\ui2.c:402: SetNoun(40, 6);
	ld	l, #0x06
	ld	a, #0x28
	call	_SetNoun
;E:\supernova\msx\game\ui2.c:403: SetNoun(82, 7);
	ld	l, #0x07
	ld	a, #0x52
	call	_SetNoun
;E:\supernova\msx\game\ui2.c:404: SetNoun(110, 8);
	ld	l, #0x08
	ld	a, #0x6e
	call	_SetNoun
	jr	00120$
00119$:
;E:\supernova\msx\game\ui2.c:408: SetNoun(40, 9);
	ld	l, #0x09
	ld	a, #0x28
	call	_SetNoun
;E:\supernova\msx\game\ui2.c:409: SetNoun(82, 10);
	ld	l, #0x0a
	ld	a, #0x52
	call	_SetNoun
;E:\supernova\msx\game\ui2.c:410: SetNoun(110, 11);
	ld	l, #0x0b
	ld	a, #0x6e
	call	_SetNoun
00120$:
;E:\supernova\msx\game\ui2.c:412: Min(128); StrCpy(Line, "l");
	ld	a, #0x80
	call	_Min
	ld	de, #___str_82
	ld	hl, #_Line
	call	_StrCpy
00135$:
;E:\supernova\msx\game\ui2.c:413: }
	ld	sp, ix
	pop	ix
	ret
___str_72:
	.ascii "RESTORE from what file name"
	.db 0x00
___str_73:
	.ascii "RESTORE"
	.db 0x00
___str_74:
	.ascii "RESTORE ABORTED"
	.db 0x00
___str_75:
	.ascii "The game file "
	.db 0x00
___str_76:
	.ascii " is now being restored..."
	.db 0x00
___str_77:
	.ascii "The file "
	.db 0x00
___str_78:
	.ascii " does not exist!"
	.db 0x00
___str_79:
	.db 0x07
	.db 0x00
___str_80:
	.ascii "Your present game location is now RESTORED from the name "
	.db 0x00
___str_81:
	.ascii "."
	.db 0x00
___str_82:
	.ascii "l"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
