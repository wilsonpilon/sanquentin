;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module parser
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Val
	.globl _RR
	.globl _RL
	.globl _Here
	.globl _WrFN
	.globl _FN
	.globl _LowerCase
	.globl _QFormat
	.globl _Spaces
	.globl _Up
	.globl _RegionSoundOn
	.globl _Play
	.globl _En
	.globl _Bak
	.globl _Col
	.globl _Cur
	.globl _GetKey
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _Window
	.globl _Wherey
	.globl _Wherex
	.globl _Gotoxy
	.globl _Wln
	.globl _WrNum
	.globl _WrC
	.globl _Wr
	.globl _UpCase
	.globl _StrEq
	.globl _StrCat
	.globl _StrCpy
	.globl _Copy
	.globl _Insert
	.globl _Delete
	.globl _Pos
	.globl _Len
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
	.globl _PreFormat
	.globl _ChopSeven
	.globl _FindMood
	.globl _Present
	.globl _FindWord
	.globl _Dictionary
	.globl _MoreThanOne
	.globl _PrintWord
	.globl _Parser_Syntax
	.globl _PlayerInput
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
_s_I:
	.ds 2
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
;E:\supernova\msx\game\parser.c:7: static void D(const char* A, u8 B)
;	---------------------------------
; Function D
; ---------------------------------
_D:
;E:\supernova\msx\game\parser.c:10: while ((p = Pos(A, s_I)) != 0) Delete(s_I, p, B);
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
;E:\supernova\msx\game\parser.c:11: }
	pop	hl
	inc	sp
	jp	(hl)
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
;E:\supernova\msx\game\parser.c:13: static void Strip(const char* what, u8 off, u8 cnt)
;	---------------------------------
; Function Strip
; ---------------------------------
_Strip:
	ld	c, l
	ld	b, h
;E:\supernova\msx\game\parser.c:16: while ((p = Pos(what, s_I)) != 0) Delete(s_I, p + off, cnt);
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
;E:\supernova\msx\game\parser.c:17: }
	pop	hl
	pop	af
	jp	(hl)
;E:\supernova\msx\game\parser.c:19: void PreFormat(char* I)
;	---------------------------------
; Function PreFormat
; ---------------------------------
_PreFormat::
	push	ix
	ld	ix,	#0
	add	ix, sp
;E:\supernova\msx\game\parser.c:22: s_I = I;
	push	hl
	ld	(_s_I), hl
;E:\supernova\msx\game\parser.c:23: D("  ", 1); QFormat(I);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_1
	call	_D
	pop	hl
	push	hl
	call	_QFormat
;E:\supernova\msx\game\parser.c:24: FFlag = 0; if (I[0]) FFlag = 1;
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
;E:\supernova\msx\game\parser.c:25: Spaces(I);
	pop	hl
	push	hl
	call	_Spaces
;E:\supernova\msx\game\parser.c:26: Crawl = Pos(" crawl ", I) > 0; D(" crawl ", 6);
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
;E:\supernova\msx\game\parser.c:27: D(" walk ", 5); D(" run ", 4); D(" go ", 3); D(" travel ", 7);
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
;E:\supernova\msx\game\parser.c:28: QFormat(I); if (!I[0] && FFlag == 1) FFlag = 2; Spaces(I);
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
;E:\supernova\msx\game\parser.c:29: D(" of ", 3); D(" the ", 4); D(" very ", 5); D(" more ", 5); D(" and ", 4);
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
;E:\supernova\msx\game\parser.c:30: D(" large ", 6); D(" big ", 4); D(" huge ", 5); D(" please ", 7);
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
;E:\supernova\msx\game\parser.c:31: D(" small ", 6); D(" little ", 7); D(" tiny ", 5);
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
;E:\supernova\msx\game\parser.c:32: D("'", 1); D("#", 1); D("!", 1); D("?", 1); D(" number ", 7);
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
;E:\supernova\msx\game\parser.c:33: QFormat(I); if (!I[0] && FFlag == 1) FFlag = 3; Spaces(I);
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
;E:\supernova\msx\game\parser.c:34: Strip("examine ", 2, 5);
	ld	hl, #0x502
	push	hl
	ld	hl, #___str_24
	call	_Strip
;E:\supernova\msx\game\parser.c:35: Strip(" into ", 3, 2);
	ld	hl, #0x203
	push	hl
	ld	hl, #___str_25
	call	_Strip
;E:\supernova\msx\game\parser.c:36: Strip(" onto ", 3, 2);
	ld	hl, #0x203
	push	hl
	ld	hl, #___str_26
	call	_Strip
;E:\supernova\msx\game\parser.c:37: Strip(" inside ", 3, 4);
	ld	hl, #0x403
	push	hl
	ld	hl, #___str_27
	call	_Strip
;E:\supernova\msx\game\parser.c:38: Strip(" within ", 1, 4);
	ld	hl, #0x401
	push	hl
	ld	hl, #___str_28
	call	_Strip
;E:\supernova\msx\game\parser.c:39: Strip("look ", 1, 3);
	ld	hl, #0x301
	push	hl
	ld	hl, #___str_29
	call	_Strip
;E:\supernova\msx\game\parser.c:40: Strip(". ", 1, 1);
	ld	hl, #0x101
	push	hl
	ld	hl, #___str_30
	call	_Strip
;E:\supernova\msx\game\parser.c:41: while ((p = Pos(",", I)) != 0) { Insert(" ", I, p, 131); Delete(I, Pos(",", I), 1); }
00109$:
	pop	de
	push	de
	ld	hl, #___str_31
	call	_Pos
	ld	b, a
	or	a, a
	jr	z, 00111$
	ld	a, #0x83
	push	af
	inc	sp
	push	bc
	inc	sp
	pop	hl
	pop	de
	push	de
	push	hl
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
;E:\supernova\msx\game\parser.c:42: D("..", 1); D(" .", 1); D("  ", 1);
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
;E:\supernova\msx\game\parser.c:43: QFormat(I);
	pop	hl
	push	hl
	call	_QFormat
;E:\supernova\msx\game\parser.c:44: if (!I[0])
	pop	hl
	push	hl
	ld	a, (hl)
;E:\supernova\msx\game\parser.c:46: EFlag = Null;
	or	a,a
	jr	nz, 00118$
	ld	(#_EFlag), a
;E:\supernova\msx\game\parser.c:47: switch (FFlag)
	ld	a, (_FFlag)
	cp	a, #0x02
	jr	z, 00112$
	sub	a, #0x03
	jr	z, 00113$
	jr	00114$
;E:\supernova\msx\game\parser.c:49: case 2: RL(193); break;
00112$:
	ld	hl, #0x00c1
	call	_RL
	jr	00118$
;E:\supernova\msx\game\parser.c:50: case 3: RL(186); break;
00113$:
	ld	hl, #0x00ba
	call	_RL
	jr	00118$
;E:\supernova\msx\game\parser.c:51: default: Wr("Pardon me?"); Wln();
00114$:
	ld	hl, #___str_35
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\parser.c:52: }
00118$:
;E:\supernova\msx\game\parser.c:54: }
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
;E:\supernova\msx\game\parser.c:56: void ChopSeven(char* I)
;	---------------------------------
; Function ChopSeven
; ---------------------------------
_ChopSeven::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-137
	add	iy, sp
	ld	sp, iy
	ld	c, l
	ld	b, h
;E:\supernova\msx\game\parser.c:60: if (Len(I) > 0)
	push	bc
	ld	l, c
	ld	h, b
	call	_Len
	pop	bc
	or	a, a
	jp	z, 00113$
;E:\supernova\msx\game\parser.c:62: StrCat(I, " ", 131); x = 1;
	push	bc
	ld	a, #0x83
	push	af
	inc	sp
	ld	de, #___str_36
	ld	l, c
	ld	h, b
	call	_StrCat
	pop	bc
	ld	hl, #_x
	ld	(hl), #0x01
;E:\supernova\msx\game\parser.c:63: do
;E:\supernova\msx\game\parser.c:66: while (CH(I, x) != ' ' && CH(I, x) != '.' && CH(I, x) != ',') { w[wl++] = CH(I, x); x++; }
00127$:
	ld	-1 (ix), #0x00
00103$:
	ld	a, (_x)
	ld	h, #0x00
	ld	l, a
	dec	hl
	add	hl, bc
	ld	e, (hl)
	ld	a, e
	cp	a, #0x20
	jr	z, 00105$
	cp	a, #0x2e
	jr	z, 00105$
	sub	a, #0x2c
	jr	z, 00105$
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
	jr	00103$
00105$:
;E:\supernova\msx\game\parser.c:67: w[wl] = 0;
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	(hl), #0x00
;E:\supernova\msx\game\parser.c:68: if (wl > 7)
	ld	a, #0x07
	sub	a, -1 (ix)
	jr	nc, 00107$
;E:\supernova\msx\game\parser.c:70: y = Pos(w, I); x = x + (7 - wl);
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
;E:\supernova\msx\game\parser.c:71: Delete(I, y, wl); Delete(w, 8, 130);
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
;E:\supernova\msx\game\parser.c:72: Insert(w, I, y, 131);
	push	bc
	ld	a, #0x83
	push	af
	inc	sp
	ld	a, (_y)
	push	af
	inc	sp
	ld	e, c
	ld	d, b
	ld	hl, #4
	add	hl, sp
	call	_Insert
	pop	bc
00107$:
;E:\supernova\msx\game\parser.c:74: x++;
	ld	hl, #_x
	inc	(hl)
;E:\supernova\msx\game\parser.c:75: } while ((u8)(x - 1) != Len(I));
	ld	a, (_x)
	ld	e, a
	dec	e
	push	bc
	push	de
	ld	l, c
	ld	h, b
	call	_Len
	pop	de
	pop	bc
	sub	a, e
	jp	nz, 00127$
;E:\supernova\msx\game\parser.c:76: Delete(I, Len(I), 1);
	push	bc
	ld	l, c
	ld	h, b
	call	_Len
	pop	bc
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	l, c
	ld	h, b
	call	_Delete
00113$:
;E:\supernova\msx\game\parser.c:78: }
	ld	sp, ix
	pop	ix
	ret
___str_36:
	.ascii " "
	.db 0x00
;E:\supernova\msx\game\parser.c:80: void FindMood(char* input, char* word, u8* md)
;	---------------------------------
; Function FindMood
; ---------------------------------
_FindMood::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-131
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\supernova\msx\game\parser.c:85: Spaces(input); x = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Spaces
	xor	a, a
	ld	(#_x), a
;E:\supernova\msx\game\parser.c:86: while (x < AMax)
00108$:
	ld	a, (_x+0)
	sub	a, #0x04
	jp	nc, 00110$
;E:\supernova\msx\game\parser.c:88: x++;
	ld	hl, #_x
	inc	(hl)
;E:\supernova\msx\game\parser.c:89: counter = '1';
	ld	-1 (ix), #0x31
;E:\supernova\msx\game\parser.c:90: StrCpy(t1, g_A[x]);
	ld	a, (_x+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -7 (ix)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), #0x00
	sla	0 (iy)
	rl	1 (iy)
	ld	a, 0 (iy)
	add	a, #<(_g_A)
	ld	-7 (ix), a
	ld	a, 1 (iy)
	adc	a, #>(_g_A)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #2
	add	hl, sp
	call	_StrCpy
;E:\supernova\msx\game\parser.c:91: pat[0] = counter; pat[1] = 0;
	ld	-41 (ix), #0x31
	ld	-40 (ix), #0x00
;E:\supernova\msx\game\parser.c:92: while ((p = Pos(pat, t1)) > 0)
00105$:
	ld	hl, #90
	add	hl, sp
	ld	c, l
	ld	b, h
	push	bc
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	l, c
	ld	h, b
	call	_Pos
	pop	bc
	ld	d, a
	or	a, a
	jr	z, 00108$
;E:\supernova\msx\game\parser.c:94: Copy(t2, t1, 1, p - 1);
	dec	d
	push	bc
	push	de
	inc	sp
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #6
	add	hl, sp
	ex	de, hl
	ld	hl, #62
	add	hl, sp
	call	_Copy
	pop	bc
;E:\supernova\msx\game\parser.c:95: StrCpy(pat, " "); StrCat(pat, t2, 31); StrCat(pat, " ", 33);
	push	bc
	ld	de, #___str_37
	ld	l, c
	ld	h, b
	call	_StrCpy
	pop	bc
	push	bc
	ld	a, #0x1f
	push	af
	inc	sp
	ld	hl, #61
	add	hl, sp
	ex	de, hl
	ld	l, c
	ld	h, b
	call	_StrCat
	pop	bc
	push	bc
	ld	a, #0x21
	push	af
	inc	sp
	ld	de, #___str_37
	ld	l, c
	ld	h, b
	call	_StrCat
	pop	bc
;E:\supernova\msx\game\parser.c:96: if (Pos(pat, input) > 0)
	push	bc
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	l, c
	ld	h, b
	call	_Pos
	pop	bc
	or	a, a
	jr	z, 00104$
;E:\supernova\msx\game\parser.c:98: StrCpy(word, t2);
	push	bc
	ld	hl, #60
	add	hl, sp
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	call	_StrCpy
	pop	bc
;E:\supernova\msx\game\parser.c:99: *md = x; if (*md == 2) *md = 1;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	a, (_x+0)
	ld	(hl), a
	ld	a, (_x+0)
	cp	a, #0x02
	jr	nz, 00102$
	ld	(hl), #0x01
00102$:
;E:\supernova\msx\game\parser.c:100: x = AMax; counter = '8';
	ld	hl, #_x
	ld	(hl), #0x04
	ld	-1 (ix), #0x38
;E:\supernova\msx\game\parser.c:101: Delete(input, Pos(t2, input), Len(t2) + 1);
	push	bc
	ld	hl, #60
	add	hl, sp
	call	_Len
	pop	bc
	ld	h, a
	inc	h
	push	hl
	push	bc
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #62
	add	hl, sp
	call	_Pos
	pop	bc
	pop	hl
	push	bc
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_Delete
	pop	bc
00104$:
;E:\supernova\msx\game\parser.c:103: pat[0] = counter; pat[1] = 0;
	ld	a, -1 (ix)
	ld	-41 (ix), a
	ld	-40 (ix), #0x00
;E:\supernova\msx\game\parser.c:104: Delete(t1, 1, Pos(pat, t1));
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	l, c
	ld	h, b
	call	_Pos
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #4
	add	hl, sp
	call	_Delete
;E:\supernova\msx\game\parser.c:105: counter++;
	inc	-1 (ix)
;E:\supernova\msx\game\parser.c:106: pat[0] = counter; pat[1] = 0;
	ld	a, -1 (ix)
	ld	-41 (ix), a
	ld	-40 (ix), #0x00
	jp	00105$
00110$:
;E:\supernova\msx\game\parser.c:109: QFormat(input);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	call	_QFormat
;E:\supernova\msx\game\parser.c:110: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
___str_37:
	.ascii " "
	.db 0x00
;E:\supernova\msx\game\parser.c:112: static void CantSee(u8 n)
;	---------------------------------
; Function CantSee
; ---------------------------------
_CantSee:
	ld	c, a
;E:\supernova\msx\game\parser.c:114: Wr("You can't see any "); WrFN(n); Wr(" here."); Wln();
	push	bc
	ld	hl, #___str_38
	call	_Wr
	pop	bc
	ld	a, c
	call	_WrFN
	ld	hl, #___str_39
	call	_Wr
;E:\supernova\msx\game\parser.c:115: }
	jp	_Wln
___str_38:
	.ascii "You can't see any "
	.db 0x00
___str_39:
	.ascii " here."
	.db 0x00
;E:\supernova\msx\game\parser.c:117: u8 Present(void)
;	---------------------------------
; Function Present
; ---------------------------------
_Present::
;E:\supernova\msx\game\parser.c:119: x = 0;
	xor	a, a
	ld	(#_x), a
;E:\supernova\msx\game\parser.c:120: if (!(Vb == 17 || Vb == 18 || Vb == 37 || Vb == 39))
	ld	a, (_Vb)
	cp	a, #0x11
	jr	z, 00146$
	cp	a, #0x12
	jr	z, 00146$
	cp	a, #0x25
	jr	z, 00146$
	sub	a, #0x27
	jr	z, 00146$
;E:\supernova\msx\game\parser.c:122: if (N1 != Null)
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00108$
;E:\supernova\msx\game\parser.c:124: if (Here(N1))
	ld	a, (_N1)
	call	_Here
	or	a, a
	jr	z, 00106$
;E:\supernova\msx\game\parser.c:126: if (N2 != Null)
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00104$
;E:\supernova\msx\game\parser.c:128: if (Here(N2)) return 1;
	ld	a, (_N2)
	call	_Here
	or	a, a
	jr	z, 00102$
	ld	a, #0x01
	ret
00102$:
;E:\supernova\msx\game\parser.c:129: CantSee(N2);
	ld	a, (_N2)
	call	_CantSee
;E:\supernova\msx\game\parser.c:130: return 0;
	xor	a, a
	ret
00104$:
;E:\supernova\msx\game\parser.c:132: return 1;
	ld	a, #0x01
	ret
00106$:
;E:\supernova\msx\game\parser.c:134: CantSee(N1);
	ld	a, (_N1)
	call	_CantSee
;E:\supernova\msx\game\parser.c:135: return 0;
	xor	a, a
	ret
00108$:
;E:\supernova\msx\game\parser.c:137: return 1;
	ld	a, #0x01
	ret
00146$:
00121$:
;E:\supernova\msx\game\parser.c:141: x++;
	ld	hl, #_x
	inc	(hl)
;E:\supernova\msx\game\parser.c:142: if (x > NMax) return 1;
	ld	a, #0x85
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00115$
	ld	a, #0x01
	ret
00115$:
;E:\supernova\msx\game\parser.c:143: if (SET_IN(NounSet, x))
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00225$:
	sra	d
	rr	e
	djnz	00225$
	ld	hl, #_NounSet
	add	hl, de
	ld	c, (hl)
	ld	a, (_x)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00227$
00226$:
	srl	a
00227$:
	djnz	00226$
	rrca
	jr	nc, 00121$
;E:\supernova\msx\game\parser.c:144: if (!Here(x)) { CantSee(x); return 0; }
	ld	a, (_x)
	call	_Here
	or	a, a
	jr	nz, 00121$
	ld	a, (_x)
	call	_CantSee
	xor	a, a
;E:\supernova\msx\game\parser.c:146: }
	ret
;E:\supernova\msx\game\parser.c:148: static void Convert(u8* n, u8 max)
;	---------------------------------
; Function Convert
; ---------------------------------
_Convert:
;E:\supernova\msx\game\parser.c:150: switch (max)
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
;E:\supernova\msx\game\parser.c:152: case 1:     // Verbs
00101$:
;E:\supernova\msx\game\parser.c:153: switch (*n)
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
;E:\supernova\msx\game\parser.c:155: case 12: *n = 11; break; case 14: *n = 13; break; case 23: *n = 22; break; case 27: *n = 26; break;
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
;E:\supernova\msx\game\parser.c:156: case 29: *n = 28; break; case 34: *n = 33; break; case 36: *n = 35; break; case 38: *n = 37; break;
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
;E:\supernova\msx\game\parser.c:157: case 40: *n = 39; break; case 43: *n = 42; break; case 45: *n = 44; break;
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
;E:\supernova\msx\game\parser.c:158: case 52: *n = 51; break; case 55: *n = 54; break; case 57: case 58: *n = 56; break;
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
;E:\supernova\msx\game\parser.c:159: case 60: case 61: *n = 59; break; case 63: *n = 62; break;
00118$:
	ld	a, #0x3b
	ld	(de), a
	jp	00169$
00119$:
	ld	a, #0x3e
	ld	(de), a
;E:\supernova\msx\game\parser.c:161: break;
	jp	00169$
;E:\supernova\msx\game\parser.c:162: case 2:     // Nouns
00121$:
;E:\supernova\msx\game\parser.c:163: switch (*n)
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
;E:\supernova\msx\game\parser.c:165: case 13: case 14: case 15: *n = 12; break; case 21: *n = 20; break; case 33: *n = 32; break;
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
;E:\supernova\msx\game\parser.c:166: case 36: *n = 35; break; case 39: *n = 38; break; case 45: *n = 44; break;
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
;E:\supernova\msx\game\parser.c:167: case 50: *n = 49; break; case 53: *n = 52; break; case 65: *n = 64; break; case 67: *n = 66; break;
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
00133$:
	ld	a, #0x42
	ld	(de), a
	jp	00169$
;E:\supernova\msx\game\parser.c:168: case 70: *n = 69; break; case 76: case 77: *n = 75; break;
00134$:
	ld	a, #0x45
	ld	(de), a
	jp	00169$
00136$:
	ld	a, #0x4b
	ld	(de), a
	jp	00169$
;E:\supernova\msx\game\parser.c:169: case 97: *n = 96; break; case 101: case 102: *n = 100; break; case 114: *n = 113; break;
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
;E:\supernova\msx\game\parser.c:170: case 117: *n = 116; break; case 63: *n = 62; break;
00141$:
	ld	a, #0x74
	ld	(de), a
	jr	00169$
00142$:
	ld	a, #0x3e
	ld	(de), a
	jr	00169$
;E:\supernova\msx\game\parser.c:171: case 27: *n = 26; break; case 57: *n = 56; break; case 61: *n = 60; break; case 91: *n = 90; break;
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
00146$:
	ld	a, #0x5a
	ld	(de), a
	jr	00169$
;E:\supernova\msx\game\parser.c:172: case 105: case 106: case 107: case 108: *n = 109; break; case 31: *n = 28; break;
00150$:
	ld	a, #0x6d
	ld	(de), a
	jr	00169$
00151$:
	ld	a, #0x1c
	ld	(de), a
	jr	00169$
;E:\supernova\msx\game\parser.c:173: case 133: *n = 46; break; case 84: if (Prm > 21) *n = 128; break;
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
;E:\supernova\msx\game\parser.c:174: case 115: if (Prm == 28) *n = 112; break;
00156$:
	ld	a, (_Prm)
	sub	a, #0x1c
	jr	nz, 00169$
	ld	a, #0x70
	ld	(de), a
	jr	00169$
;E:\supernova\msx\game\parser.c:175: case 58: if (Prm == 52) *n = 64; break;
00159$:
	ld	a, (_Prm)
	sub	a, #0x34
	jr	nz, 00169$
	ld	a, #0x40
	ld	(de), a
;E:\supernova\msx\game\parser.c:177: break;
	jr	00169$
;E:\supernova\msx\game\parser.c:178: case 3:     // Prepositions
00163$:
;E:\supernova\msx\game\parser.c:179: switch (*n)
	ld	a, (de)
	cp	a, #0x02
	jr	z, 00164$
	cp	a, #0x04
	jr	z, 00165$
	cp	a, #0x08
	jr	z, 00166$
	jr	00169$
;E:\supernova\msx\game\parser.c:181: case 2: *n = 1; break; case 4: *n = 3; break; case 8: *n = 7; break;
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
;E:\supernova\msx\game\parser.c:184: }
00169$:
;E:\supernova\msx\game\parser.c:185: }
	pop	hl
	inc	sp
	jp	(hl)
;E:\supernova\msx\game\parser.c:189: void FindWord(char* I, u8* vnp, char* word, u8 max)
;	---------------------------------
; Function FindWord
; ---------------------------------
_FindWord::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-14
	add	iy, sp
	ld	sp, iy
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	-6 (ix), e
	ld	-5 (ix), d
;E:\supernova\msx\game\parser.c:191: u8 j2 = 0, lim, n, k;
	ld	-2 (ix), #0x00
;E:\supernova\msx\game\parser.c:193: QFormat(I); Spaces(I);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_QFormat
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Spaces
;E:\supernova\msx\game\parser.c:194: lim = Mx[max];
	ld	bc, #_Mx+0
	ld	l, 6 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	-12 (ix), a
;E:\supernova\msx\game\parser.c:195: while (j2 < lim)
	ld	a, 6 (ix)
	dec	a
	ld	a, #0x01
	jr	z, 00284$
	xor	a, a
00284$:
	ld	-11 (ix), a
	ld	a, 6 (ix)
	sub	a, #0x02
	ld	a, #0x01
	jr	z, 00286$
	xor	a, a
00286$:
	ld	-10 (ix), a
	ld	-9 (ix), a
00117$:
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	jp	nc, 00119$
;E:\supernova\msx\game\parser.c:197: j2++;
	inc	-2 (ix)
;E:\supernova\msx\game\parser.c:198: e = max == 1 ? g_V[j2] : (max == 2 ? g_N[j2] : g_P[j2]);
	ld	l, -2 (ix)
	ld	h, #0x00
	add	hl, hl
	ex	(sp), hl
	ld	a, -11 (ix)
	or	a, a
	jr	z, 00132$
	ld	a, -14 (ix)
	add	a, #<(_g_V)
	ld	l, a
	ld	a, -13 (ix)
	adc	a, #>(_g_V)
	ld	h, a
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	jr	00133$
00132$:
	ld	a, -10 (ix)
	or	a, a
	jr	z, 00134$
	ld	a, -14 (ix)
	add	a, #<(_g_N)
	ld	l, a
	ld	a, -13 (ix)
	adc	a, #>(_g_N)
	ld	h, a
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	jr	00135$
00134$:
	ld	a, #<(_g_P)
	add	a, -14 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_P)
	adc	a, -13 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
00135$:
00133$:
;E:\supernova\msx\game\parser.c:199: while (*e)
00114$:
	ld	a, (bc)
	or	a, a
	jr	z, 00117$
;E:\supernova\msx\game\parser.c:201: for (n = 0; e[n] != '\\'; n++) { }
	ld	d, #0x00
00121$:
	ld	l, d
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	cp	a, #0x5c
	jr	z, 00172$
	inc	d
	jr	00121$
00172$:
	ld	-8 (ix), d
;E:\supernova\msx\game\parser.c:202: if (I[0] == ' ')
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;E:\supernova\msx\game\parser.c:205: if (k == n && I[1 + n] == ' ')
	ld	e, -8 (ix)
	ld	d, #0x00
	inc	de
;E:\supernova\msx\game\parser.c:202: if (I[0] == ' ')
	cp	a, #0x20
	jp	nz, 00113$
;E:\supernova\msx\game\parser.c:204: for (k = 0; k < n && I[1 + k] == e[k]; k++) { }
	ld	-1 (ix), #0x00
00125$:
	ld	a, -1 (ix)
	sub	a, -8 (ix)
	jr	nc, 00102$
	ld	l, -1 (ix)
	ld	h, #0x00
	inc	hl
	ld	a, l
	add	a, -4 (ix)
	ld	l, a
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	sub	a, -7 (ix)
	jr	nz, 00102$
	inc	-1 (ix)
	jr	00125$
00102$:
;E:\supernova\msx\game\parser.c:205: if (k == n && I[1 + n] == ' ')
	ld	a, -8 (ix)
	sub	a, -1 (ix)
	jp	nz, 00113$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	a, (hl)
	cp	a, #0x20
	jp	nz, 00113$
;E:\supernova\msx\game\parser.c:207: *vnp = j2;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
;E:\supernova\msx\game\parser.c:208: Convert(vnp, max);
	push	bc
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	call	_Convert
	pop	bc
;E:\supernova\msx\game\parser.c:209: for (k = 0; k < n; k++) word[k] = e[k];
	ld	-1 (ix), #0x00
00128$:
	ld	a, -1 (ix)
	sub	a, -8 (ix)
	jr	nc, 00103$
	ld	a, 4 (ix)
	add	a, -1 (ix)
	ld	e, a
	ld	a, 5 (ix)
	adc	a, #0x00
	ld	d, a
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	(de), a
	inc	-1 (ix)
	jr	00128$
00103$:
;E:\supernova\msx\game\parser.c:210: word[n] = 0;
	ld	a, -8 (ix)
	add	a, 4 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, 5 (ix)
	ld	h, a
	ld	(hl), #0x00
;E:\supernova\msx\game\parser.c:211: Delete(I, 1, n + 1);
	ld	a, -8 (ix)
	inc	a
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Delete
;E:\supernova\msx\game\parser.c:212: if (max == 1) StrCpy(VStr, word);
	ld	a, -11 (ix)
	or	a, a
	jr	z, 00107$
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #_VStr
	call	_StrCpy
	jr	00108$
00107$:
;E:\supernova\msx\game\parser.c:213: else if (max == 2) StrCpy(NStr, word);
	ld	a, -9 (ix)
	or	a, a
	jr	z, 00108$
	ld	hl, #_NStr
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	call	_StrCpy
00108$:
;E:\supernova\msx\game\parser.c:214: j2 = lim;
	ld	a, -12 (ix)
	ld	-2 (ix), a
;E:\supernova\msx\game\parser.c:215: break;
	jp	00117$
00113$:
;E:\supernova\msx\game\parser.c:218: e += n + 1;
	ld	a, c
	add	a, e
	ld	c, a
	ld	a, b
	adc	a, d
	ld	b, a
	jp	00114$
00119$:
;E:\supernova\msx\game\parser.c:221: QFormat(I);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_QFormat
;E:\supernova\msx\game\parser.c:222: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;E:\supernova\msx\game\parser.c:224: void Dictionary(u8 ifFound, u8 skipList)
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
;E:\supernova\msx\game\parser.c:228: VNP = Null; list = 1; stopLoopFlag = 1;
	xor	a, a
	ld	(#_VNP), a
	ld	hl, #_list
	ld	(hl), #0x01
	ld	b, #0x01
;E:\supernova\msx\game\parser.c:229: while (list < 4 && stopLoopFlag == 1)
00107$:
	ld	a, (_list+0)
	sub	a, #0x04
	jr	nc, 00109$
	ld	a, b
	dec	a
	jr	nz, 00109$
;E:\supernova\msx\game\parser.c:231: if (list == skipList) list++;
	ld	a, (_list)
	sub	a, c
	jr	nz, 00104$
	ld	hl, #_list
	inc	(hl)
	jr	00107$
00104$:
;E:\supernova\msx\game\parser.c:234: FindWord(Input, &VNP, Word, list);
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
;E:\supernova\msx\game\parser.c:235: if (VNP != Null) { EFlag = ifFound; list--; stopLoopFlag = 0; }
	ld	a, (_VNP+0)
	or	a, a
	jr	z, 00102$
	ld	a, -1 (ix)
	ld	(#_EFlag), a
	ld	hl, #_list
	dec	(hl)
	ld	b, #0x00
00102$:
;E:\supernova\msx\game\parser.c:236: list++;
	ld	hl, #_list
	inc	(hl)
	jr	00107$
00109$:
;E:\supernova\msx\game\parser.c:239: if (EFlag != ifFound)
	ld	a, (_EFlag)
	sub	a, -1 (ix)
	jp	z, 00120$
;E:\supernova\msx\game\parser.c:241: EFlag = 5; StrCat(Input, " ", 131);
	ld	hl, #_EFlag
	ld	(hl), #0x05
	ld	a, #0x83
	push	af
	inc	sp
	ld	de, #___str_40
	ld	hl, #_Input
	call	_StrCat
;E:\supernova\msx\game\parser.c:242: p = Pos(" ", Input);
	ld	de, #_Input
	ld	hl, #___str_40
	call	_Pos
;E:\supernova\msx\game\parser.c:243: Copy(Word, Input, 1, p - 1);
	dec	a
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	de, #_Input
	ld	hl, #_Word
	call	_Copy
;E:\supernova\msx\game\parser.c:244: StrCpy(w, " "); StrCat(w, Word, 38); StrCat(w, " ", 39);
	ld	hl, #0
	add	hl, sp
	push	hl
	ld	de, #___str_40
	call	_StrCpy
	pop	hl
	push	hl
	ld	a, #0x26
	push	af
	inc	sp
	ld	de, #_Word
	call	_StrCat
	pop	hl
	push	hl
	ld	a, #0x27
	push	af
	inc	sp
	ld	de, #___str_40
	call	_StrCat
	pop	hl
;E:\supernova\msx\game\parser.c:245: if (Pos(w, " top directi next some from is under underne leaning but speak pay ") > 0) EFlag = ifFound;
	ld	de, #___str_41
	call	_Pos
	or	a, a
	jr	z, 00114$
	ld	a, -1 (ix)
	ld	(#_EFlag), a
	jr	00115$
00114$:
;E:\supernova\msx\game\parser.c:246: else if (Word[0] >= '0' && Word[0] <= '9') EFlag = 17;
	ld	a, (#_Word + 0)
	cp	a, #0x30
	jr	c, 00115$
	cp	a, #0x3a
	jr	nc, 00115$
	ld	hl, #_EFlag
	ld	(hl), #0x11
00115$:
;E:\supernova\msx\game\parser.c:247: if (ifFound == 14) EFlag = 14;
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	nz, 00117$
	ld	hl, #_EFlag
	ld	(hl), #0x0e
00117$:
;E:\supernova\msx\game\parser.c:248: QFormat(Input);
	ld	hl, #_Input
	call	_QFormat
00120$:
;E:\supernova\msx\game\parser.c:250: }
	ld	sp, ix
	pop	ix
	ret
___str_40:
	.ascii " "
	.db 0x00
___str_41:
	.ascii " top directi next some from is under underne leaning but spe"
	.ascii "ak pay "
	.db 0x00
;E:\supernova\msx\game\parser.c:253: static u8 AskKey(const char* prompt, const char* valid)
;	---------------------------------
; Function AskKey
; ---------------------------------
_AskKey:
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	hl
	push	de
00108$:
;E:\supernova\msx\game\parser.c:258: Wr(prompt);
	pop	de
	pop	hl
	push	hl
	push	de
	call	_Wr
;E:\supernova\msx\game\parser.c:259: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;E:\supernova\msx\game\parser.c:260: WrC(CFlag); Wln(); Wln();
	ld	a, (_CFlag)
	call	_WrC
	call	_Wln
	call	_Wln
;E:\supernova\msx\game\parser.c:261: k = UpCase(CFlag);
	ld	a, (_CFlag)
	call	_UpCase
	ld	e, a
;E:\supernova\msx\game\parser.c:262: for (x = 0; valid[x]; x++) if (valid[x] == k) return k;
	xor	a, a
	ld	(#_x), a
00106$:
	ld	a, -4 (ix)
	ld	hl, #_x
	add	a, (hl)
	ld	c, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jr	z, 00108$
	sub	a, e
	jr	nz, 00107$
	ld	a, e
	jr	00110$
00107$:
	ld	hl, #_x
	inc	(hl)
	jr	00106$
00110$:
;E:\supernova\msx\game\parser.c:264: }
	ld	sp, ix
	pop	ix
	ret
;E:\supernova\msx\game\parser.c:266: void MoreThanOne(void)
;	---------------------------------
; Function MoreThanOne
; ---------------------------------
_MoreThanOne::
;E:\supernova\msx\game\parser.c:269: if ((N1 == 58 || SET_IN(NounSet, 58) || N2 == 58) && Here(3) && Here(4))
	ld	a, (_N1)
	sub	a, #0x3a
	jr	z, 00111$
	ld	a, (#(_NounSet + 7) + 0)
	rrca
	and	a, #0x01
	jr	nz, 00111$
	ld	a, (_N2)
	sub	a, #0x3a
	jr	nz, 00108$
00111$:
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	z, 00108$
	ld	a, #0x04
	call	_Here
	or	a, a
	jr	z, 00108$
;E:\supernova\msx\game\parser.c:271: Cur(2);
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\parser.c:272: k = AskKey("Which one, the R)usty or S)hiney key? ", "RS");
	ld	de, #___str_43
	ld	hl, #___str_42
	call	_AskKey
;E:\supernova\msx\game\parser.c:273: x = (k == 'R') ? 3 : 4;
	cp	a, #0x52
	ld	a, #0x03
	jr	z, 00164$
	ld	a, #0x04
00164$:
	ld	(#_x), a
;E:\supernova\msx\game\parser.c:274: if (N1 == 58) N1 = x;
	ld	a, (_x)
	ld	c, a
	ld	a, (_N1)
	sub	a, #0x3a
	jr	nz, 00102$
	ld	hl, #_N1
	ld	(hl), c
00102$:
;E:\supernova\msx\game\parser.c:275: if (N2 == 58) N2 = x;
	ld	a, (_N2)
	sub	a, #0x3a
	jr	nz, 00104$
	ld	hl, #_N2
	ld	(hl), c
00104$:
;E:\supernova\msx\game\parser.c:276: if (SET_IN(NounSet, 58)) { SET_DEL(NounSet, 58); SET_ADD(NounSet, x); }
	ld	hl, #_NounSet + 7
	ld	c, (hl)
	ld	a, c
	rrca
	and	a, #0x01
	jr	z, 00108$
	res	1, c
	ld	(hl), c
	ld	a, (_x)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00526$:
	sra	d
	rr	e
	djnz	00526$
	ld	hl, #_NounSet
	add	hl, de
	ld	c, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00528$
00527$:
	add	a, a
00528$:
	djnz	00527$
	or	a, c
	ld	(hl), a
00108$:
;E:\supernova\msx\game\parser.c:278: if ((N1 == 86 || SET_IN(NounSet, 86) || N2 == 86) && Prm == 8)
	ld	a, (_N1)
	sub	a, #0x56
	jr	z, 00123$
	ld	a, (#(_NounSet + 10) + 0)
	rlca
	rlca
	rlca
	jr	c, 00123$
	ld	a, (_N2)
	sub	a, #0x56
	jr	nz, 00120$
00123$:
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00120$
;E:\supernova\msx\game\parser.c:280: Cur(2);
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\parser.c:281: k = AskKey("Which one, the W)estern, M)iddle or E)astern table? ", "WME");
	ld	de, #___str_45
	ld	hl, #___str_44
	call	_AskKey
;E:\supernova\msx\game\parser.c:282: x = (k == 'W') ? 83 : (k == 'M') ? 84 : 85;
	cp	a, #0x57
	jr	nz, 00165$
	ld	a, #0x53
	jr	00166$
00165$:
	cp	a, #0x4d
	ld	a, #0x54
	jr	z, 00168$
	ld	a, #0x55
00168$:
00166$:
	ld	(#_x), a
;E:\supernova\msx\game\parser.c:274: if (N1 == 58) N1 = x;
	ld	a, (_x)
	ld	c, a
;E:\supernova\msx\game\parser.c:283: if (N1 == 86) N1 = x;
	ld	a, (_N1)
	sub	a, #0x56
	jr	nz, 00114$
	ld	hl, #_N1
	ld	(hl), c
00114$:
;E:\supernova\msx\game\parser.c:284: if (N2 == 86) N2 = x;
	ld	a, (_N2)
	sub	a, #0x56
	jr	nz, 00116$
	ld	hl, #_N2
	ld	(hl), c
00116$:
;E:\supernova\msx\game\parser.c:285: if (SET_IN(NounSet, 86)) { SET_DEL(NounSet, 86); SET_ADD(NounSet, x); }
	ld	hl, #_NounSet + 10
	ld	c, (hl)
	ld	a, c
	rlca
	rlca
	rlca
	jr	nc, 00120$
	res	5, c
	ld	(hl), c
	ld	a, (_x)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00542$:
	sra	d
	rr	e
	djnz	00542$
	ld	hl, #_NounSet
	add	hl, de
	ld	c, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00544$
00543$:
	add	a, a
00544$:
	djnz	00543$
	or	a, c
	ld	(hl), a
00120$:
;E:\supernova\msx\game\parser.c:287: if ((N1 == 44 || SET_IN(NounSet, 44) || N2 == 44) && (Prm == 1 || Prm == 70) && Vb != 28)
	ld	a, (_N1)
	sub	a, #0x2c
	jr	z, 00135$
	ld	a, (#(_NounSet + 5) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00135$
	ld	a, (_N2)
	sub	a, #0x2c
	jp	nz, 00131$
00135$:
	ld	a, (_Prm)
	dec	a
	jr	z, 00136$
	ld	a, (_Prm)
	sub	a, #0x46
	jr	nz, 00131$
00136$:
	ld	a, (_Vb)
	sub	a, #0x1c
	jr	z, 00131$
;E:\supernova\msx\game\parser.c:289: Cur(2);
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\parser.c:290: k = AskKey("Which one, the T)an, P)urple or C)yan button? ", "TPC");
	ld	de, #___str_47
	ld	hl, #___str_46
	call	_AskKey
;E:\supernova\msx\game\parser.c:291: x = (k == 'T') ? 41 : (k == 'P') ? 43 : 40;
	cp	a, #0x54
	jr	nz, 00169$
	ld	a, #0x29
	jr	00170$
00169$:
	cp	a, #0x50
	ld	a, #0x2b
	jr	z, 00172$
	ld	a, #0x28
00172$:
00170$:
	ld	(#_x), a
;E:\supernova\msx\game\parser.c:274: if (N1 == 58) N1 = x;
	ld	a, (_x)
	ld	c, a
;E:\supernova\msx\game\parser.c:292: if (N1 == 44) N1 = x;
	ld	a, (_N1)
	sub	a, #0x2c
	jr	nz, 00125$
	ld	hl, #_N1
	ld	(hl), c
00125$:
;E:\supernova\msx\game\parser.c:293: if (N2 == 44) N2 = x;
	ld	a, (_N2)
	sub	a, #0x2c
	jr	nz, 00127$
	ld	hl, #_N2
	ld	(hl), c
00127$:
;E:\supernova\msx\game\parser.c:294: if (SET_IN(NounSet, 44)) { SET_DEL(NounSet, 44); SET_ADD(NounSet, x); }
	ld	hl, #_NounSet + 5
	ld	c, (hl)
	ld	a, c
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00131$
	res	3, c
	ld	(hl), c
	ld	a, (_x)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00560$:
	sra	d
	rr	e
	djnz	00560$
	ld	hl, #_NounSet
	add	hl, de
	ld	c, (hl)
	ld	a, (_x+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00562$
00561$:
	add	a, a
00562$:
	djnz	00561$
	or	a, c
	ld	(hl), a
00131$:
;E:\supernova\msx\game\parser.c:296: if (N1 == 58 && Here(3) && !Here(4)) N1 = 3;
	ld	a, (_N1)
	sub	a, #0x3a
	jr	nz, 00138$
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	z, 00138$
	ld	a, #0x04
	call	_Here
	or	a, a
	jr	nz, 00138$
	ld	hl, #_N1
	ld	(hl), #0x03
00138$:
;E:\supernova\msx\game\parser.c:297: if (N2 == 58 && Here(3) && !Here(4)) N2 = 3;
	ld	a, (_N2)
	sub	a, #0x3a
	jr	nz, 00142$
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	z, 00142$
	ld	a, #0x04
	call	_Here
	or	a, a
	jr	nz, 00142$
	ld	hl, #_N2
	ld	(hl), #0x03
00142$:
;E:\supernova\msx\game\parser.c:298: if (SET_IN(NounSet, 58) && Here(3) && !Here(4)) { SET_DEL(NounSet, 58); SET_ADD(NounSet, 3); }
	ld	a, (#(_NounSet + 7) + 0)
	rrca
	and	a, #0x01
	jr	z, 00146$
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	z, 00146$
	ld	a, #0x04
	call	_Here
	or	a, a
	jr	nz, 00146$
	ld	a, (#(_NounSet + 7) + 0)
	res	1, a
	ld	(#(_NounSet + 7)), a
	ld	a, (#_NounSet + 0)
	set	2, a
	ld	(#_NounSet), a
00146$:
;E:\supernova\msx\game\parser.c:299: if (N1 == 58 && Here(4) && !Here(3)) N1 = 4;
	ld	a, (_N1)
	sub	a, #0x3a
	jr	nz, 00150$
	ld	a, #0x04
	call	_Here
	or	a, a
	jr	z, 00150$
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	nz, 00150$
	ld	hl, #_N1
	ld	(hl), #0x04
00150$:
;E:\supernova\msx\game\parser.c:300: if (N2 == 58 && Here(4) && !Here(3)) N2 = 4;
	ld	a, (_N2)
	sub	a, #0x3a
	jr	nz, 00154$
	ld	a, #0x04
	call	_Here
	or	a, a
	jr	z, 00154$
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	nz, 00154$
	ld	hl, #_N2
	ld	(hl), #0x04
00154$:
;E:\supernova\msx\game\parser.c:301: if (SET_IN(NounSet, 58) && Here(4) && !Here(3)) { SET_DEL(NounSet, 58); SET_ADD(NounSet, 4); }
	ld	a, (#(_NounSet + 7) + 0)
	rrca
	and	a, #0x01
	ret	z
	ld	a, #0x04
	call	_Here
	or	a, a
	ret	z
	ld	a, #0x03
	call	_Here
	or	a, a
	ret	nz
	ld	a, (#(_NounSet + 7) + 0)
	res	1, a
	ld	(#(_NounSet + 7)), a
	ld	a, (#_NounSet + 0)
	set	3, a
	ld	(#_NounSet), a
;E:\supernova\msx\game\parser.c:302: }
	ret
___str_42:
	.ascii "Which one, the R)usty or S)hiney key? "
	.db 0x00
___str_43:
	.ascii "RS"
	.db 0x00
___str_44:
	.ascii "Which one, the W)estern, M)iddle or E)astern table? "
	.db 0x00
___str_45:
	.ascii "WME"
	.db 0x00
___str_46:
	.ascii "Which one, the T)an, P)urple or C)yan button? "
	.db 0x00
___str_47:
	.ascii "TPC"
	.db 0x00
;E:\supernova\msx\game\parser.c:304: void PrintWord(const char* w)
;	---------------------------------
; Function PrintWord
; ---------------------------------
_PrintWord::
;E:\supernova\msx\game\parser.c:306: Wr("--you can't use the word "); Up(w); Wr(" here."); Wln();
	push	hl
	ld	hl, #___str_48
	call	_Wr
	pop	hl
	call	_Up
	ld	hl, #___str_49
	call	_Wr
;E:\supernova\msx\game\parser.c:307: }
	jp	_Wln
___str_48:
	.ascii "--you can't use the word "
	.db 0x00
___str_49:
	.ascii " here."
	.db 0x00
;E:\supernova\msx\game\parser.c:310: static u8 IsNoun(u8 v, const u8* set) { return SET_IN(set, v) != 0; }
;	---------------------------------
; Function IsNoun
; ---------------------------------
_IsNoun:
	ld	c, a
	ld	l, c
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00103$:
	sra	h
	rr	l
	djnz	00103$
	add	hl, de
	ld	e, (hl)
	ld	a, c
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, e
	inc	b
	jr	00105$
00104$:
	srl	a
00105$:
	djnz	00104$
	and	a, #0x01
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	ret
;E:\supernova\msx\game\parser.c:312: void Parser_Syntax(char* input)
;	---------------------------------
; Function Parser_Syntax
; ---------------------------------
_Parser_Syntax::
;E:\supernova\msx\game\parser.c:315: StrCpy(Word, ""); Md = Null; Num = Null; Code = Null;
	ld	de, #___str_50
	ld	hl, #_Word
	call	_StrCpy
	xor	a, a
	ld	(#_Md), a
	ld	(#_Num), a
	ld	hl, #0x0000
	ld	(_Code), hl
;E:\supernova\msx\game\parser.c:316: Vb = Null; N1 = Null; N2 = Null; SetClear(NounSet, 17);
	xor	a, a
	ld	(#_Vb), a
	ld	(#_N1), a
	xor	a, a
	ld	(#_N2), a
	ld	a, #0x11
	push	af
	inc	sp
	ld	hl, #_NounSet
	call	_SetClear
;E:\supernova\msx\game\parser.c:317: JUMP1:   // used if the player forgets the first noun
00101$:
;E:\supernova\msx\game\parser.c:318: FFlag = Null; Pr = Null;
	xor	a, a
	ld	(#_FFlag), a
	ld	(#_Pr), a
;E:\supernova\msx\game\parser.c:319: JUMP2:   // used if the player forgets the second noun or preposition
00102$:
;E:\supernova\msx\game\parser.c:320: EFlag = Null;
	xor	a, a
	ld	(#_EFlag), a
;E:\supernova\msx\game\parser.c:321: FindMood(Input, Word, &Md);
	ld	hl, #_Md
	push	hl
	ld	de, #_Word
	ld	hl, #_Input
	call	_FindMood
;E:\supernova\msx\game\parser.c:322: if (Len(Input) > 0)
	ld	hl, #_Input
	call	_Len
	or	a, a
	jp	z, 00232$
;E:\supernova\msx\game\parser.c:324: FindMood(Input, Word, &Num);
	ld	hl, #_Num
	push	hl
	ld	de, #_Word
	ld	hl, #_Input
	call	_FindMood
;E:\supernova\msx\game\parser.c:325: if (Num == Null)
	ld	a, (_Num+0)
	or	a, a
	jp	nz, 00229$
;E:\supernova\msx\game\parser.c:327: FindWord(Input, &Vb, Word, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_Word
	push	hl
	ld	de, #_Vb
	ld	hl, #_Input
	call	_FindWord
;E:\supernova\msx\game\parser.c:328: if (Vb != Null)
	ld	a, (_Vb+0)
	or	a, a
	jp	z, 00226$
;E:\supernova\msx\game\parser.c:330: if (Len(Input) == 0)
	ld	hl, #_Input
	call	_Len
	or	a, a
	jp	nz, 00223$
;E:\supernova\msx\game\parser.c:332: if (IsNoun(Vb, NoNounOnly) || IsNoun(Vb, OneNounMaybe)) EFlag = Legal;
	ld	de, #_NoNounOnly
	ld	a, (_Vb)
	call	_IsNoun
	or	a, a
	jr	nz, 00103$
	ld	de, #_OneNounMaybe
	ld	a, (_Vb)
	call	_IsNoun
	or	a, a
	jr	z, 00104$
00103$:
	ld	hl, #_EFlag
	ld	(hl), #0xff
00104$:
;E:\supernova\msx\game\parser.c:333: if (EFlag != Legal)
	ld	a, (_EFlag)
	inc	a
	jp	z, 00233$
;E:\supernova\msx\game\parser.c:335: if (Vb == 35 && Here(35)) { EFlag = Legal; N1 = 35; StrCpy(NStr, "seat"); }
	ld	a, (_Vb)
	sub	a, #0x23
	jr	nz, 00107$
	ld	a, #0x23
	call	_Here
	or	a, a
	jr	z, 00107$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	ld	hl, #_N1
	ld	(hl), #0x23
	ld	de, #___str_51
	ld	hl, #_NStr
	call	_StrCpy
00107$:
;E:\supernova\msx\game\parser.c:336: if (Vb == 47 && Here(6)) { EFlag = Legal; N1 = 6; }
	ld	a, (_Vb)
	sub	a, #0x2f
	jr	nz, 00110$
	ld	a, #0x06
	call	_Here
	or	a, a
	jr	z, 00110$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	ld	hl, #_N1
	ld	(hl), #0x06
00110$:
;E:\supernova\msx\game\parser.c:337: if (Vb == 62 && Here(80)) { EFlag = Legal; N1 = 80; }
	ld	a, (_Vb)
	sub	a, #0x3e
	jr	nz, 00113$
	ld	a, #0x50
	call	_Here
	or	a, a
	jr	z, 00113$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	ld	hl, #_N1
	ld	(hl), #0x50
00113$:
;E:\supernova\msx\game\parser.c:338: if (Vb == 65 && Here(124)) { EFlag = Legal; N1 = 124; }
	ld	a, (_Vb)
	sub	a, #0x41
	jr	nz, 00116$
	ld	a, #0x7c
	call	_Here
	or	a, a
	jr	z, 00116$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	ld	hl, #_N1
	ld	(hl), #0x7c
00116$:
;E:\supernova\msx\game\parser.c:339: if (EFlag != Legal) EFlag = 4;
	ld	a, (_EFlag)
	inc	a
	jp	z, 00233$
	ld	hl, #_EFlag
	ld	(hl), #0x04
	jp	00233$
00223$:
;E:\supernova\msx\game\parser.c:342: else if (IsNoun(Vb, NoNounOnly)) Dictionary(3, 9);
	ld	de, #_NoNounOnly
	ld	a, (_Vb)
	call	_IsNoun
	or	a, a
	jr	z, 00220$
	ld	l, #0x09
	ld	a, #0x03
	call	_Dictionary
	jp	00233$
00220$:
;E:\supernova\msx\game\parser.c:343: else if (!(Vb == 17 || Vb == 18 || Vb == 37 || Vb == 39))   // get, drop and but branch off
	ld	a, (_Vb)
	cp	a, #0x11
	jp	z, 00210$
	cp	a, #0x12
	jp	z, 00210$
	cp	a, #0x25
	jp	z, 00210$
;E:\supernova\msx\game\parser.c:345: if (!(Vb == 25 || Vb == 32 || Vb == 56 || IN_RANGE(Vb, 66, 69) || Vb == 71 || Vb == 80 || Vb == 81)) // characters and type
	cp	a, #0x27
	jp	z, 00210$
	cp	a, #0x19
	jp	z, 00191$
	cp	a, #0x20
	jp	z, 00191$
	sub	a, #0x38
	jp	z, 00191$
	ld	a, (_Vb+0)
	sub	a, #0x42
	jr	c, 00197$
	ld	a, #0x45
	ld	hl, #_Vb
	sub	a, (hl)
	jp	nc, 00191$
00197$:
	ld	a, (_Vb)
	cp	a, #0x47
	jp	z, 00191$
;E:\supernova\msx\game\parser.c:347: if (Vb != FFlag) FindWord(Input, &N1, Word, 2);
	cp	a, #0x50
	jp	z, 00191$
	cp	a, #0x51
	jp	z, 00191$
	ld	hl, #_FFlag
	sub	a, (hl)
	jr	z, 00123$
	ld	a, #0x02
	push	af
	inc	sp
	ld	hl, #_Word
	push	hl
	ld	de, #_N1
	ld	hl, #_Input
	call	_FindWord
00123$:
;E:\supernova\msx\game\parser.c:348: if (N1 != Null) FN(N1, LastNoun);
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00125$
	ld	de, #_LastNoun
	ld	a, (_N1)
	call	_FN
00125$:
;E:\supernova\msx\game\parser.c:349: if (N1 != Null)
	ld	a, (_N1+0)
	or	a, a
	jp	z, 00188$
;E:\supernova\msx\game\parser.c:351: if (!StrEq(Word, "all"))
	ld	de, #___str_52
	ld	hl, #_Word
	call	_StrEq
	or	a, a
	jp	nz, 00185$
;E:\supernova\msx\game\parser.c:353: if (Len(Input) == 0)
	ld	hl, #_Input
	call	_Len
	or	a, a
	jp	nz, 00182$
;E:\supernova\msx\game\parser.c:355: if (IsNoun(Vb, ToNounOnly))
	ld	de, #_ToNounOnly
	ld	a, (_Vb)
	call	_IsNoun
	or	a, a
	jp	z, 00147$
;E:\supernova\msx\game\parser.c:357: if (StrEq(VStr, "fill") && Prm == SinkRm && N1 == 29) { N2 = 79; Pr = 6; EFlag = Legal; }
	ld	de, #___str_53
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00142$
	ld	a, (_Prm)
	ld	hl, #_SinkRm
	sub	a, (hl)
	jr	nz, 00142$
	ld	a, (_N1)
	sub	a, #0x1d
	jr	nz, 00142$
	ld	hl, #_N2
	ld	(hl), #0x4f
	ld	hl, #_Pr
	ld	(hl), #0x06
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00142$:
;E:\supernova\msx\game\parser.c:358: else if (Vb == 64 && Prm == 8 && (N1 == 29 || N1 == 99) && !En(21) && Here(8)) { Pr = 6; N2 = 8; EFlag = Legal; }
	ld	a, (_Vb)
	sub	a, #0x40
	jr	nz, 00134$
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00134$
	ld	a, (_N1)
	cp	a, #0x1d
	jr	z, 00139$
	sub	a, #0x63
	jr	nz, 00134$
00139$:
	ld	a, #0x15
	call	_En
	or	a, a
	jr	nz, 00134$
	ld	a, #0x08
	call	_Here
	or	a, a
	jr	z, 00134$
	ld	hl, #_Pr
	ld	(hl), #0x06
	ld	hl, #_N2
	ld	(hl), #0x08
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00134$:
;E:\supernova\msx\game\parser.c:359: else if (Vb == 88 && IN_RANGE(Prm, 9, 11) && N1 == 56 && Here(3)) { Pr = 6; N2 = 3; EFlag = Legal; }
	ld	a, (_Vb)
	sub	a, #0x58
	jr	nz, 00127$
	ld	a, (_Prm+0)
	sub	a, #0x09
	jr	c, 00127$
	ld	a, #0x0b
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00127$
	ld	a, (_N1)
	sub	a, #0x38
	jr	nz, 00127$
	ld	a, #0x03
	call	_Here
	or	a, a
	jr	z, 00127$
	ld	hl, #_Pr
	ld	(hl), #0x06
	ld	hl, #_N2
	ld	(hl), #0x03
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00127$:
;E:\supernova\msx\game\parser.c:360: else EFlag = 15;
	ld	hl, #_EFlag
	ld	(hl), #0x0f
	jp	00233$
00147$:
;E:\supernova\msx\game\parser.c:362: else EFlag = Legal;
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00182$:
;E:\supernova\msx\game\parser.c:364: else if (IsNoun(Vb, ToNounMaybe) || IsNoun(Vb, ToNounOnly))
	ld	de, #_ToNounMaybe
	ld	a, (_Vb)
	call	_IsNoun
	or	a, a
	jr	nz, 00177$
	ld	de, #_ToNounOnly
	ld	a, (_Vb)
	call	_IsNoun
	or	a, a
	jp	z, 00178$
00177$:
;E:\supernova\msx\game\parser.c:366: FindWord(Input, &Pr, Word, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	hl, #_Word
	push	hl
	ld	de, #_Pr
	ld	hl, #_Input
	call	_FindWord
;E:\supernova\msx\game\parser.c:367: if (Pr != Null)
	ld	a, (_Pr+0)
	or	a, a
	jp	z, 00173$
;E:\supernova\msx\game\parser.c:369: if (Len(Input) == 0)
	ld	hl, #_Input
	call	_Len
	or	a, a
	jr	nz, 00170$
;E:\supernova\msx\game\parser.c:371: if (Vb == 50 && (Pr == 1 || Pr == 9)) EFlag = Legal; else EFlag = 6;
	ld	a, (_Vb)
	sub	a, #0x32
	jr	nz, 00150$
	ld	a, (_Pr)
	dec	a
	jr	z, 00149$
	ld	a, (_Pr)
	sub	a, #0x09
	jr	nz, 00150$
00149$:
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00150$:
	ld	hl, #_EFlag
	ld	(hl), #0x06
	jp	00233$
00170$:
;E:\supernova\msx\game\parser.c:373: else if (Vb != 50)
	ld	a, (_Vb)
	sub	a, #0x32
	jr	z, 00167$
;E:\supernova\msx\game\parser.c:375: FindWord(Input, &N2, Word, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	hl, #_Word
	push	hl
	ld	de, #_N2
	ld	hl, #_Input
	call	_FindWord
;E:\supernova\msx\game\parser.c:376: if (N2 != Null)
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00161$
;E:\supernova\msx\game\parser.c:378: if (!StrEq(Word, "all"))
	ld	de, #___str_52
	ld	hl, #_Word
	call	_StrEq
	or	a, a
	jr	nz, 00158$
;E:\supernova\msx\game\parser.c:380: if (Len(Input) == 0) EFlag = Legal; else Dictionary(12, 9);
	ld	hl, #_Input
	call	_Len
	or	a, a
	jr	nz, 00155$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00155$:
	ld	l, #0x09
	ld	a, #0x0c
	call	_Dictionary
	jp	00233$
00158$:
;E:\supernova\msx\game\parser.c:382: else EFlag = 16;
	ld	hl, #_EFlag
	ld	(hl), #0x10
	jp	00233$
00161$:
;E:\supernova\msx\game\parser.c:384: else Dictionary(11, 2);
	ld	l, #0x02
	ld	a, #0x0b
	call	_Dictionary
	jp	00233$
00167$:
;E:\supernova\msx\game\parser.c:388: Val(Input, &Code, &TestC);
	ld	hl, #_TestC
	push	hl
	ld	de, #_Code
	ld	hl, #_Input
	call	_Val
;E:\supernova\msx\game\parser.c:389: if (TestC == 0) EFlag = Legal;
	ld	a, (_TestC+1)
	ld	hl, #_TestC
	or	a, (hl)
	jr	nz, 00164$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
00164$:
;E:\supernova\msx\game\parser.c:390: else { Delete(Input, 1, (u8)(TestC - 1)); Dictionary(14, 9); }
	ld	a, (_TestC)
	dec	a
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #_Input
	call	_Delete
	ld	l, #0x09
	ld	a, #0x0e
	call	_Dictionary
	jp	00233$
00173$:
;E:\supernova\msx\game\parser.c:393: else Dictionary(9, 3);
	ld	l, #0x03
	ld	a, #0x09
	call	_Dictionary
	jp	00233$
00178$:
;E:\supernova\msx\game\parser.c:395: else { Dictionary(3, 9); if (list == 2) EFlag = 8; }
	ld	l, #0x09
	ld	a, #0x03
	call	_Dictionary
	ld	a, (_list)
	sub	a, #0x02
	jp	nz, 00233$
	ld	hl, #_EFlag
	ld	(hl), #0x08
	jp	00233$
00185$:
;E:\supernova\msx\game\parser.c:397: else EFlag = 16;
	ld	hl, #_EFlag
	ld	(hl), #0x10
	jp	00233$
00188$:
;E:\supernova\msx\game\parser.c:399: else Dictionary(10, 2);
	ld	l, #0x02
	ld	a, #0x0a
	call	_Dictionary
	jp	00233$
00191$:
;E:\supernova\msx\game\parser.c:401: else { QFormat(Input); EFlag = Legal; }   // special case for SAY, TYPE, characters
	ld	hl, #_Input
	call	_QFormat
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jp	00233$
;E:\supernova\msx\game\parser.c:404: while (EFlag == Null)
00210$:
	ld	a, (_EFlag+0)
	or	a, a
	jp	nz, 00233$
;E:\supernova\msx\game\parser.c:406: N1 = Null;
	xor	a, a
	ld	(#_N1), a
;E:\supernova\msx\game\parser.c:407: FindWord(Input, &N1, Word, 2);
	ld	bc, #_Word
	ld	de, #_N1+0
	ld	hl, #_Input
	ld	a, #0x02
	push	af
	inc	sp
	push	bc
	call	_FindWord
;E:\supernova\msx\game\parser.c:408: if (N1 != Null) FN(N1, LastNoun);
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00201$
	ld	de, #_LastNoun
	ld	a, (_N1)
	call	_FN
00201$:
;E:\supernova\msx\game\parser.c:409: if (N1 != Null)
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00208$
;E:\supernova\msx\game\parser.c:411: if (!SET_IN(NounSet, N1))
	ld	a, (_N1)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00940$:
	sra	d
	rr	e
	djnz	00940$
	ld	hl, #_NounSet
	add	hl, de
	ld	e, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, e
	inc	b
	jr	00942$
00941$:
	srl	a
00942$:
	djnz	00941$
	rrca
	jr	c, 00205$
;E:\supernova\msx\game\parser.c:413: SET_ADD(NounSet, N1);
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00946$
00945$:
	add	a, a
00946$:
	djnz	00945$
	or	a, e
	ld	(hl), a
;E:\supernova\msx\game\parser.c:414: if (Len(Input) == 0) EFlag = Legal;
	ld	hl, #_Input
	call	_Len
	or	a, a
	jr	nz, 00210$
	ld	hl, #_EFlag
	ld	(hl), #0xff
	jr	00210$
00205$:
;E:\supernova\msx\game\parser.c:416: else EFlag = 13;
	ld	hl, #_EFlag
	ld	(hl), #0x0d
	jp	00210$
00208$:
;E:\supernova\msx\game\parser.c:418: else Dictionary(10, 2);
	ld	l, #0x02
	ld	a, #0x0a
	call	_Dictionary
	jp	00210$
00226$:
;E:\supernova\msx\game\parser.c:421: else Dictionary(7, 1);
	ld	l, #0x01
	ld	a, #0x07
	call	_Dictionary
	jr	00233$
00229$:
;E:\supernova\msx\game\parser.c:423: else EFlag = 2;
	ld	hl, #_EFlag
	ld	(hl), #0x02
	jr	00233$
00232$:
;E:\supernova\msx\game\parser.c:425: else EFlag = 1;
	ld	hl, #_EFlag
	ld	(hl), #0x01
00233$:
;E:\supernova\msx\game\parser.c:426: if (EFlag != Legal) { StrCpy(Line, ""); Play(199, 199, 55); Delay(70); Play(60, 60, 55); }
	ld	a, (_EFlag)
	inc	a
	jr	z, 00235$
	ld	de, #___str_50
	ld	hl, #_Line
	call	_StrCpy
	ld	hl, #0x0037
	push	hl
	ld	de, #0x00c7
	ld	l, #0xc7
	call	_Play
	ld	hl, #0x0046
	call	_Delay
	ld	hl, #0x0037
	push	hl
	ld	de, #0x003c
	ld	l, #0x3c
	call	_Play
00235$:
;E:\supernova\msx\game\parser.c:427: switch (EFlag)
	ld	a, #0x11
	ld	iy, #_EFlag
	sub	a, 0 (iy)
	ret	c
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	hl, #00948$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00948$:
	.dw	00278$
	.dw	00236$
	.dw	00237$
	.dw	00238$
	.dw	00239$
	.dw	00250$
	.dw	00254$
	.dw	00257$
	.dw	00258$
	.dw	00259$
	.dw	00260$
	.dw	00261$
	.dw	00262$
	.dw	00263$
	.dw	00264$
	.dw	00265$
	.dw	00275$
	.dw	00276$
;E:\supernova\msx\game\parser.c:429: case 1: RL(186); break;
00236$:
	ld	hl, #0x00ba
	jp	_RL
;E:\supernova\msx\game\parser.c:430: case 2: Wr("The word "); Up(Word); Wr(" is too many adverbs."); Wln(); break;
00237$:
	ld	hl, #___str_54
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_55
	call	_Wr
	jp	_Wln
;E:\supernova\msx\game\parser.c:431: case 3: Wr("Illegal input"); PrintWord(Word); break;
00238$:
	ld	hl, #___str_56
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:432: case 4:
00239$:
;E:\supernova\msx\game\parser.c:433: if (Vb == 56) RL(187);
	ld	a, (_Vb)
	sub	a, #0x38
	jr	nz, 00248$
	ld	hl, #0x00bb
	jp	_RL
00248$:
;E:\supernova\msx\game\parser.c:436: Wr("Noun missing--");
	ld	hl, #___str_57
	call	_Wr
;E:\supernova\msx\game\parser.c:437: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x23
	jr	z, 00241$
	cp	a, #0x3e
	jr	z, 00241$
	sub	a, #0x41
	jr	z, 00242$
	jr	00243$
;E:\supernova\msx\game\parser.c:439: case 35: case 62: Wr("what do you want to "); Up(Word); Wr(" on?"); Wln(); break;
00241$:
	ld	hl, #___str_58
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_59
	call	_Wr
	call	_Wln
	jr	00244$
;E:\supernova\msx\game\parser.c:440: case 65: Wr("what do you want to "); Up(Word); Wr(" to?"); Wln(); break;
00242$:
	ld	hl, #___str_58
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_60
	call	_Wr
	call	_Wln
	jr	00244$
;E:\supernova\msx\game\parser.c:441: default: Wr("what do you want to "); Up(Word); Wr("?"); Wln();
00243$:
	ld	hl, #___str_58
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_61
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\parser.c:442: }
00244$:
;E:\supernova\msx\game\parser.c:443: PlayerInput(Line);
	ld	hl, #_Line
	call	_PlayerInput
;E:\supernova\msx\game\parser.c:444: if (Len(Input) > 0) goto JUMP1;
	ld	hl, #_Input
	call	_Len
	or	a, a
	jp	nz, 00101$
;E:\supernova\msx\game\parser.c:446: break;
	ret
;E:\supernova\msx\game\parser.c:447: case 5:
00250$:
;E:\supernova\msx\game\parser.c:448: if (Len(Word) > 1) { Wr("The word "); Up(Word); Wr(" is not used in this adventure."); Wln(); }
	ld	hl, #_Word
	call	_Len
	cp	a, #0x02
	jr	c, 00252$
	ld	hl, #___str_54
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_62
	call	_Wr
	jp	_Wln
00252$:
;E:\supernova\msx\game\parser.c:449: else { Wr("The letter "); Up(Word); Wr(" is not used as shorthand in this parser."); Wln(); }
	ld	hl, #___str_63
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_64
	call	_Wr
;E:\supernova\msx\game\parser.c:450: break;
	jp	_Wln
;E:\supernova\msx\game\parser.c:451: case 6:
00254$:
;E:\supernova\msx\game\parser.c:452: Wr("Noun missing--what do you want to "); Up(VStr); Up(" the "); Up(NStr); Wr(" "); Up(PStr); Wr("?"); Wln();
	ld	hl, #___str_65
	call	_Wr
	ld	hl, #_VStr
	call	_Up
	ld	hl, #___str_66
	call	_Up
	ld	hl, #_NStr
	call	_Up
	ld	hl, #___str_67
	call	_Wr
	ld	hl, #_PStr
	call	_Up
	ld	hl, #___str_61
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\parser.c:453: PlayerInput(Line); FFlag = Vb;
	ld	hl, #_Line
	call	_PlayerInput
	ld	a, (_Vb+0)
	ld	(#_FFlag), a
;E:\supernova\msx\game\parser.c:454: if (Len(Input) > 0) goto JUMP2;
	ld	hl, #_Input
	call	_Len
	or	a, a
	ret	z
	jp	00102$
;E:\supernova\msx\game\parser.c:456: case 7: Wr("Verb missing"); PrintWord(Word); break;
00257$:
	ld	hl, #___str_68
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:457: case 8: RL(188); break;
00258$:
	ld	hl, #0x00bc
	jp	_RL
;E:\supernova\msx\game\parser.c:458: case 9: Wr("Preposition expected"); PrintWord(Word); break;
00259$:
	ld	hl, #___str_69
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:459: case 10: Wr("Noun expected"); PrintWord(Word); break;
00260$:
	ld	hl, #___str_70
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:460: case 11: Wr("Indirect noun expected"); PrintWord(Word); break;
00261$:
	ld	hl, #___str_71
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:461: case 12: Wr("No more input expected"); PrintWord(Word); break;
00262$:
	ld	hl, #___str_72
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:462: case 13: Wr("Illegal noun used--"); Up(Word); Wr(" referenced more than once."); Wln(); break;
00263$:
	ld	hl, #___str_73
	call	_Wr
	ld	hl, #_Word
	call	_Up
	ld	hl, #___str_74
	call	_Wr
	jp	_Wln
;E:\supernova\msx\game\parser.c:463: case 14: Wr("Number expected"); PrintWord(Word); break;
00264$:
	ld	hl, #___str_75
	call	_Wr
	ld	hl, #_Word
	jp	_PrintWord
;E:\supernova\msx\game\parser.c:464: case 15:
00265$:
;E:\supernova\msx\game\parser.c:465: Wr("Preposition and noun missing--");
	ld	hl, #___str_76
	call	_Wr
;E:\supernova\msx\game\parser.c:466: if (Vb == 33 || Vb == 48) { Wr("where do you want to "); Up(VStr); Wr(" the "); Up(NStr); Wr("?"); Wln(); }
	ld	a, (_Vb)
	cp	a, #0x21
	jr	z, 00269$
	sub	a, #0x30
	jr	nz, 00270$
00269$:
	ld	hl, #___str_77
	call	_Wr
	ld	hl, #_VStr
	call	_Up
	ld	hl, #___str_66
	call	_Wr
	ld	hl, #_NStr
	call	_Up
	ld	hl, #___str_61
	call	_Wr
	call	_Wln
	jr	00271$
00270$:
;E:\supernova\msx\game\parser.c:467: else if (Vb == 49)
	ld	a, (_Vb)
	sub	a, #0x31
	jr	nz, 00267$
;E:\supernova\msx\game\parser.c:469: Pr = 1;
	ld	hl, #_Pr
	ld	(hl), #0x01
;E:\supernova\msx\game\parser.c:470: Wr("who do you want to "); Up(VStr); Wr(" the "); Up(NStr); Wr(" to?"); Wln();
	ld	hl, #___str_78
	call	_Wr
	ld	hl, #_VStr
	call	_Up
	ld	hl, #___str_66
	call	_Wr
	ld	hl, #_NStr
	call	_Up
	ld	hl, #___str_60
	call	_Wr
	call	_Wln
	jr	00271$
00267$:
;E:\supernova\msx\game\parser.c:474: Pr = 6;
	ld	hl, #_Pr
	ld	(hl), #0x06
;E:\supernova\msx\game\parser.c:475: Wr("what do you want to "); Up(VStr); Wr(" the "); Up(NStr); Wr(" with?"); Wln();
	ld	hl, #___str_58
	call	_Wr
	ld	hl, #_VStr
	call	_Up
	ld	hl, #___str_66
	call	_Wr
	ld	hl, #_NStr
	call	_Up
	ld	hl, #___str_79
	call	_Wr
	call	_Wln
00271$:
;E:\supernova\msx\game\parser.c:477: PlayerInput(Line); FFlag = Vb;
	ld	hl, #_Line
	call	_PlayerInput
	ld	a, (_Vb+0)
	ld	(#_FFlag), a
;E:\supernova\msx\game\parser.c:478: if (Len(Input) > 0) goto JUMP2;
	ld	hl, #_Input
	call	_Len
	or	a, a
	ret	z
	jp	00102$
;E:\supernova\msx\game\parser.c:480: case 16: RL(189); break;
00275$:
	ld	hl, #0x00bd
	jp	_RL
;E:\supernova\msx\game\parser.c:481: case 17: RL(576); break;
00276$:
	ld	hl, #0x0240
	jp	_RL
;E:\supernova\msx\game\parser.c:482: }
00278$:
;E:\supernova\msx\game\parser.c:483: }
	ret
___str_50:
	.db 0x00
___str_51:
	.ascii "seat"
	.db 0x00
___str_52:
	.ascii "all"
	.db 0x00
___str_53:
	.ascii "fill"
	.db 0x00
___str_54:
	.ascii "The word "
	.db 0x00
___str_55:
	.ascii " is too many adverbs."
	.db 0x00
___str_56:
	.ascii "Illegal input"
	.db 0x00
___str_57:
	.ascii "Noun missing--"
	.db 0x00
___str_58:
	.ascii "what do you want to "
	.db 0x00
___str_59:
	.ascii " on?"
	.db 0x00
___str_60:
	.ascii " to?"
	.db 0x00
___str_61:
	.ascii "?"
	.db 0x00
___str_62:
	.ascii " is not used in this adventure."
	.db 0x00
___str_63:
	.ascii "The letter "
	.db 0x00
___str_64:
	.ascii " is not used as shorthand in this parser."
	.db 0x00
___str_65:
	.ascii "Noun missing--what do you want to "
	.db 0x00
___str_66:
	.ascii " the "
	.db 0x00
___str_67:
	.ascii " "
	.db 0x00
___str_68:
	.ascii "Verb missing"
	.db 0x00
___str_69:
	.ascii "Preposition expected"
	.db 0x00
___str_70:
	.ascii "Noun expected"
	.db 0x00
___str_71:
	.ascii "Indirect noun expected"
	.db 0x00
___str_72:
	.ascii "No more input expected"
	.db 0x00
___str_73:
	.ascii "Illegal noun used--"
	.db 0x00
___str_74:
	.ascii " referenced more than once."
	.db 0x00
___str_75:
	.ascii "Number expected"
	.db 0x00
___str_76:
	.ascii "Preposition and noun missing--"
	.db 0x00
___str_77:
	.ascii "where do you want to "
	.db 0x00
___str_78:
	.ascii "who do you want to "
	.db 0x00
___str_79:
	.ascii " with?"
	.db 0x00
;E:\supernova\msx\game\parser.c:485: static void Key(const char* k)
;	---------------------------------
; Function Key
; ---------------------------------
_Key:
	ex	de, hl
;E:\supernova\msx\game\parser.c:487: StrCat(Line, k, 131); QFlag = 1; Wr(k);
	push	de
	ld	a, #0x83
	push	af
	inc	sp
	ld	hl, #_Line
	call	_StrCat
	pop	de
	ld	hl, #_QFlag
	ld	(hl), #0x01
	ex	de, hl
;E:\supernova\msx\game\parser.c:488: }
	jp	_Wr
;E:\supernova\msx\game\parser.c:490: static void ScanKey(u8 hi)
;	---------------------------------
; Function ScanKey
; ---------------------------------
_ScanKey:
;E:\supernova\msx\game\parser.c:492: switch (hi)
	ld	c, a
	sub	a, #0x1e
	jp	z, 00119$
	ld	a, c
	cp	a, #0x2f
	jp	z, 00121$
	cp	a, #0x3b
	jr	z, 00101$
	cp	a, #0x3c
	jr	z, 00103$
	cp	a, #0x3d
	jr	z, 00105$
	cp	a, #0x3e
	jp	z, 00107$
	cp	a, #0x3f
	jp	z, 00109$
	cp	a, #0x40
	jp	z, 00111$
	cp	a, #0x41
	jp	z, 00113$
	cp	a, #0x42
	jp	z, 00115$
	cp	a, #0x43
	jp	z, 00116$
	cp	a, #0x44
	jp	z, 00117$
	cp	a, #0x47
	jr	z, 00102$
	cp	a, #0x49
	jr	z, 00104$
	cp	a, #0x4f
	jr	z, 00106$
	cp	a, #0x51
	jr	z, 00108$
	cp	a, #0x52
	jr	z, 00110$
	cp	a, #0x53
	jp	z, 00112$
	cp	a, #0x5e
	jp	z, 00119$
	cp	a, #0x5f
	jp	z, 00121$
	sub	a, #0x68
	jp	z, 00114$
	jp	00122$
;E:\supernova\msx\game\parser.c:494: case 59: Key("Save"); break;      case 71: Key("Northwest"); break;
00101$:
	push	bc
	ld	hl, #___str_80
	call	_Key
	pop	bc
	jp	00122$
00102$:
	push	bc
	ld	hl, #___str_81
	call	_Key
	pop	bc
	jp	00122$
;E:\supernova\msx\game\parser.c:495: case 60: Key("Restore"); break;   case 73: Key("Northeast"); break;
00103$:
	push	bc
	ld	hl, #___str_82
	call	_Key
	pop	bc
	jp	00122$
00104$:
	push	bc
	ld	hl, #___str_83
	call	_Key
	pop	bc
	jp	00122$
;E:\supernova\msx\game\parser.c:496: case 61: Key("R D"); break;       case 79: Key("Southwest"); break;
00105$:
	push	bc
	ld	hl, #___str_84
	call	_Key
	pop	bc
	jp	00122$
00106$:
	push	bc
	ld	hl, #___str_85
	call	_Key
	pop	bc
	jp	00122$
;E:\supernova\msx\game\parser.c:497: case 62: Key("Look"); break;      case 81: Key("Southeast"); break;
00107$:
	push	bc
	ld	hl, #___str_86
	call	_Key
	pop	bc
	jp	00122$
00108$:
	push	bc
	ld	hl, #___str_87
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:498: case 63: Key("Get all"); break;   case 82: Key("Down"); break;
00109$:
	push	bc
	ld	hl, #___str_88
	call	_Key
	pop	bc
	jr	00122$
00110$:
	push	bc
	ld	hl, #___str_89
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:499: case 64: Key("Drop all"); break;  case 83: Key("Up"); break;
00111$:
	push	bc
	ld	hl, #___str_90
	call	_Key
	pop	bc
	jr	00122$
00112$:
	push	bc
	ld	hl, #___str_91
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:500: case 65: Key("Score"); break;     case 104: QFlag = 1; RR(0); break;
00113$:
	push	bc
	ld	hl, #___str_92
	call	_Key
	pop	bc
	jr	00122$
00114$:
	ld	hl, #_QFlag
	ld	(hl), #0x01
	push	bc
	ld	hl, #0x0000
	call	_RR
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:501: case 66: Key("Inventory"); break;
00115$:
	push	bc
	ld	hl, #___str_93
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:502: case 67: Key("Wait"); break;
00116$:
	push	bc
	ld	hl, #___str_94
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:503: case 68: StrCpy(Line, ""); Key("Repeat"); break;
00117$:
	push	bc
	ld	de, #___str_95
	ld	hl, #_Line
	call	_StrCpy
	ld	hl, #___str_96
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:504: case 94: case 30: Key("by Scott Miller"); break;
00119$:
	push	bc
	ld	hl, #___str_97
	call	_Key
	pop	bc
	jr	00122$
;E:\supernova\msx\game\parser.c:505: case 95: case 47: Key("Version A Dec 9, 85"); break;
00121$:
	push	bc
	ld	hl, #___str_98
	call	_Key
	pop	bc
;E:\supernova\msx\game\parser.c:506: }
00122$:
;E:\supernova\msx\game\parser.c:507: if (IN_RANGE(Prm, 1, 7))
	ld	a, (_Prm+0)
	sub	a, #0x01
	jr	c, 00134$
	ld	a, #0x07
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00134$
;E:\supernova\msx\game\parser.c:508: switch (hi)
	ld	a, c
	cp	a, #0x48
	jr	z, 00123$
	cp	a, #0x4b
	jr	z, 00124$
	cp	a, #0x4d
	jr	z, 00125$
	sub	a, #0x50
	jr	z, 00126$
	ret
;E:\supernova\msx\game\parser.c:510: case 72: Key("Fore"); break; case 75: Key("Port"); break; case 77: Key("Starboard"); break; case 80: Key("Aft"); break;
00123$:
	ld	hl, #___str_99
	jp	_Key
00124$:
	ld	hl, #___str_100
	jp	_Key
00125$:
	ld	hl, #___str_101
	jp	_Key
00126$:
;E:\supernova\msx\game\parser.c:511: }
	ld	hl, #___str_102
	jp	_Key
00134$:
;E:\supernova\msx\game\parser.c:513: switch (hi)
	ld	a, c
	cp	a, #0x48
	jr	z, 00128$
	cp	a, #0x4b
	jr	z, 00129$
	cp	a, #0x4d
	jr	z, 00130$
	sub	a, #0x50
	jr	z, 00131$
	ret
;E:\supernova\msx\game\parser.c:515: case 72: Key("North"); break; case 75: Key("West"); break; case 77: Key("East"); break; case 80: Key("South"); break;
00128$:
	ld	hl, #___str_103
	jp	_Key
00129$:
	ld	hl, #___str_104
	jp	_Key
00130$:
	ld	hl, #___str_105
	jp	_Key
00131$:
	ld	hl, #___str_106
;E:\supernova\msx\game\parser.c:516: }
;E:\supernova\msx\game\parser.c:517: }
	jp	_Key
___str_80:
	.ascii "Save"
	.db 0x00
___str_81:
	.ascii "Northwest"
	.db 0x00
___str_82:
	.ascii "Restore"
	.db 0x00
___str_83:
	.ascii "Northeast"
	.db 0x00
___str_84:
	.ascii "R D"
	.db 0x00
___str_85:
	.ascii "Southwest"
	.db 0x00
___str_86:
	.ascii "Look"
	.db 0x00
___str_87:
	.ascii "Southeast"
	.db 0x00
___str_88:
	.ascii "Get all"
	.db 0x00
___str_89:
	.ascii "Down"
	.db 0x00
___str_90:
	.ascii "Drop all"
	.db 0x00
___str_91:
	.ascii "Up"
	.db 0x00
___str_92:
	.ascii "Score"
	.db 0x00
___str_93:
	.ascii "Inventory"
	.db 0x00
___str_94:
	.ascii "Wait"
	.db 0x00
___str_95:
	.db 0x00
___str_96:
	.ascii "Repeat"
	.db 0x00
___str_97:
	.ascii "by Scott Miller"
	.db 0x00
___str_98:
	.ascii "Version A Dec 9, 85"
	.db 0x00
___str_99:
	.ascii "Fore"
	.db 0x00
___str_100:
	.ascii "Port"
	.db 0x00
___str_101:
	.ascii "Starboard"
	.db 0x00
___str_102:
	.ascii "Aft"
	.db 0x00
___str_103:
	.ascii "North"
	.db 0x00
___str_104:
	.ascii "West"
	.db 0x00
___str_105:
	.ascii "East"
	.db 0x00
___str_106:
	.ascii "South"
	.db 0x00
;E:\supernova\msx\game\parser.c:519: void PlayerInput(char* line)
;	---------------------------------
; Function PlayerInput
; ---------------------------------
_PlayerInput::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
;E:\supernova\msx\game\parser.c:524: Wln();   // main space in game
	call	_Wln
;E:\supernova\msx\game\parser.c:525: if (Len(Line) == 0)
	ld	hl, #_Line
	call	_Len
	ld	-1 (ix), a
	or	a, a
	jp	nz, 00152$
;E:\supernova\msx\game\parser.c:527: Bak(4, 7); Col(14, 0);
	ld	l, #0x07
	ld	a, #0x04
	call	_Bak
	ld	l, #0x00
	ld	a, #0x0e
	call	_Col
;E:\supernova\msx\game\parser.c:528: Window(1, 1, 80, 22);
	ld	hl, #0x1650
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
;E:\supernova\msx\game\parser.c:529: Gotoxy(8, 2); WrNum(Tic); Wr("   ");
	ld	l, #0x02
	ld	a, #0x08
	call	_Gotoxy
	ld	hl, (_Tic)
	call	_WrNum
	ld	hl, #___str_107
	call	_Wr
;E:\supernova\msx\game\parser.c:530: Gotoxy(35 - (Len(g_RN[Prm]) / 2), 2);
	ld	a, (_Prm)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	ld	de, #_g_RN
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_Len
	ld	c, a
	ld	b, #0x00
	sra	b
	rr	c
	ld	a, #0x23
	sub	a, c
	ld	l, #0x02
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:531: Wr("      "); Wr(g_RN[Prm]); Wr("      ");
	ld	hl, #___str_108
	call	_Wr
	ld	a, (_Prm)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	ld	de, #_g_RN
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_Wr
	ld	hl, #___str_108
	call	_Wr
;E:\supernova\msx\game\parser.c:532: Gotoxy(75, 2); Wr("    "); Gotoxy(75, 2); WrNum(Sc); Wr(" ");
	ld	l, #0x02
	ld	a, #0x4b
	call	_Gotoxy
	ld	hl, #___str_109
	call	_Wr
	ld	l, #0x02
	ld	a, #0x4b
	call	_Gotoxy
	ld	hl, (_Sc)
	call	_WrNum
	ld	hl, #___str_110
	call	_Wr
;E:\supernova\msx\game\parser.c:533: Bak(7, 7);
	ld	a,#0x07
	ld	l,a
	call	_Bak
;E:\supernova\msx\game\parser.c:534: Col(1, 0); Gotoxy(22, 3);
	ld	l, #0x00
	ld	a, #0x01
	call	_Col
	ld	l, #0x03
	ld	a, #0x16
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:535: if (SetEmpty(PStat, 1)) Wr("Healthy"); else Wr("  *    ");
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_PStat
	call	_SetEmpty
	or	a, a
	jr	z, 00102$
	ld	hl, #___str_111
	call	_Wr
	jr	00103$
00102$:
	ld	hl, #___str_112
	call	_Wr
00103$:
;E:\supernova\msx\game\parser.c:536: Col(15, 0); Gotoxy(33, 3);
	ld	l, #0x00
	ld	a, #0x0f
	call	_Col
	ld	l, #0x03
	ld	a, #0x21
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:537: if (SET_IN(PStat, 2)) { Col(31, 16); Wr("Hungry"); } else Wr(" *    ");
	ld	a, (#_PStat + 0)
	rrca
	and	a, #0x01
	jr	z, 00105$
	ld	l, #0x10
	ld	a, #0x1f
	call	_Col
	ld	hl, #___str_113
	call	_Wr
	jr	00106$
00105$:
	ld	hl, #___str_114
	call	_Wr
00106$:
;E:\supernova\msx\game\parser.c:538: Col(4, 0); Gotoxy(43, 3);
	ld	l, #0x00
	ld	a, #0x04
	call	_Col
	ld	l, #0x03
	ld	a, #0x2b
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:539: if (SET_IN(PStat, 3)) { Col(20, 16); Wr("Sick"); } else Wr(" *  ");
	ld	a, (#_PStat + 0)
	rrca
	rrca
	and	a, #0x01
	jr	z, 00108$
	ld	l, #0x10
	ld	a, #0x14
	call	_Col
	ld	hl, #___str_115
	call	_Wr
	jr	00109$
00108$:
	ld	hl, #___str_116
	call	_Wr
00109$:
;E:\supernova\msx\game\parser.c:540: Col(0, 0); Gotoxy(51, 3);
	xor	a, a
	ld	l, a
	call	_Col
	ld	l, #0x03
	ld	a, #0x33
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:541: if (SET_IN(PStat, 4)) { Col(16, 16); Wr("Injured"); } else Wr("   *   ");
	ld	a, (#_PStat + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00111$
	ld	a,#0x10
	ld	l,a
	call	_Col
	ld	hl, #___str_117
	call	_Wr
	jr	00112$
00111$:
	ld	hl, #___str_118
	call	_Wr
00112$:
;E:\supernova\msx\game\parser.c:542: Col(6, 0); Gotoxy(62, 3);
	ld	l, #0x00
	ld	a, #0x06
	call	_Col
	ld	l, #0x03
	ld	a, #0x3e
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:543: if (SET_IN(PStat, 5)) { Col(22, 16); Wr("Tired"); } else Wr("  *  ");
	ld	a, (#_PStat + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00114$
	ld	l, #0x10
	ld	a, #0x16
	call	_Col
	ld	hl, #___str_119
	call	_Wr
	jr	00115$
00114$:
	ld	hl, #___str_120
	call	_Wr
00115$:
;E:\supernova\msx\game\parser.c:544: Col(5, 0); Gotoxy(71, 3);
	ld	l, #0x00
	ld	a, #0x05
	call	_Col
	ld	l, #0x03
	ld	a, #0x47
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:545: if (SET_IN(PStat, 6)) { Col(21, 16); Wr("Thirsty"); } else Wr("   *   ");
	ld	a, (#_PStat + 0)
	rlca
	rlca
	rlca
	jr	nc, 00117$
	ld	l, #0x10
	ld	a, #0x15
	call	_Col
	ld	hl, #___str_121
	call	_Wr
	jr	00118$
00117$:
	ld	hl, #___str_118
	call	_Wr
00118$:
;E:\supernova\msx\game\parser.c:546: Bak(0, 0); Window(2, 5, 79, 24);
	xor	a, a
	ld	l, a
	call	_Bak
	ld	hl, #0x184f
	push	hl
	ld	l, #0x05
	ld	a, #0x02
	call	_Window
;E:\supernova\msx\game\parser.c:547: if (En(66)) { Gotoxy(1, 20); return; }
	ld	a, #0x42
	call	_En
	or	a, a
	jr	z, 00120$
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
	jp	00162$
00120$:
;E:\supernova\msx\game\parser.c:548: Gotoxy(1, 20); Col(28, 31); WrC((char)175); Wln();
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
	ld	l, #0x1f
	ld	a, #0x1c
	call	_Col
	ld	a, #0xaf
	call	_WrC
	call	_Wln
;E:\supernova\msx\game\parser.c:549: Cur(1);
	ld	a, #0x01
	call	_Cur
;E:\supernova\msx\game\parser.c:550: Col(14, 7); Gotoxy(3, 19);
	ld	l, #0x07
	ld	a, #0x0e
	call	_Col
	ld	l, #0x13
	ld	a, #0x03
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:551: QFlag = 0;
	xor	a, a
	ld	(#_QFlag), a
;E:\supernova\msx\game\parser.c:552: do
00136$:
;E:\supernova\msx\game\parser.c:554: k = GetKey(); lo = k & 0xFF; hi = k >> 8;
	call	_GetKey
	ld	-4 (ix), e
	ld	-1 (ix), d
;E:\supernova\msx\game\parser.c:555: Sound(99); NoSound(); RegionSoundOn();
	ld	hl, #0x0063
	call	_Sound
	call	_NoSound
	call	_RegionSoundOn
;E:\supernova\msx\game\parser.c:556: if (lo == 8)    // backspace
	ld	a, -4 (ix)
	sub	a, #0x08
	jr	nz, 00134$
;E:\supernova\msx\game\parser.c:558: if (Wherex() == 1 && Wherey() == 20) { Window(1, 1, 80, 25); Gotoxy(80, 23); }
	call	_Wherex
	cp	a, #0x01
	jr	nz, 00122$
	call	_Wherey
	cp	a, #0x14
	jr	nz, 00122$
	ld	hl, #0x1950
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
	ld	l, #0x17
	ld	a, #0x50
	call	_Gotoxy
00122$:
;E:\supernova\msx\game\parser.c:559: if (Len(Line) > 0) { WrC(8); WrC(' '); WrC(8); }
	ld	hl, #_Line
	call	_Len
	or	a, a
	jr	z, 00125$
	ld	a, #0x08
	call	_WrC
	ld	a, #0x20
	call	_WrC
	ld	a, #0x08
	call	_WrC
00125$:
;E:\supernova\msx\game\parser.c:560: Delete(Line, Len(Line), 2);
	ld	hl, #_Line
	call	_Len
	ld	h, #0x02
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #_Line
	call	_Delete
;E:\supernova\msx\game\parser.c:561: Window(2, 5, 79, 24);
	ld	hl, #0x184f
	push	hl
	ld	l, #0x05
	ld	a, #0x02
	call	_Window
	jr	00137$
00134$:
;E:\supernova\msx\game\parser.c:563: else if (lo == 13) QFlag = 1;
	ld	a, -4 (ix)
	sub	a, #0x0d
	jr	nz, 00131$
	ld	hl, #_QFlag
	ld	(hl), #0x01
	jr	00137$
00131$:
;E:\supernova\msx\game\parser.c:564: else if (lo > 0 && Len(Line) < 110)
	ld	a, -4 (ix)
	or	a, a
	jr	z, 00127$
	ld	hl, #_Line
	call	_Len
	sub	a, #0x6e
	jr	nc, 00127$
;E:\supernova\msx\game\parser.c:566: WrC((char)lo);
	ld	a, -4 (ix)
	call	_WrC
;E:\supernova\msx\game\parser.c:567: p = Len(Line); Line[p] = (char)lo; Line[p + 1] = 0;
	ld	hl, #_Line
	call	_Len
	ld	-3 (ix), a
	ld	a, #<(_Line)
	add	a, -3 (ix)
	ld	-2 (ix), a
	ld	a, #>(_Line)
	adc	a, #0x00
	ld	-1 (ix), a
	pop	de
	pop	hl
	push	hl
	push	de
	ld	a, -4 (ix)
	ld	(hl), a
	ld	c, -3 (ix)
	ld	b, #0x00
	inc	bc
	ld	hl, #_Line
	add	hl, bc
	ld	(hl), #0x00
	jr	00137$
00127$:
;E:\supernova\msx\game\parser.c:569: else ScanKey(hi);
	ld	a, -1 (ix)
	call	_ScanKey
00137$:
;E:\supernova\msx\game\parser.c:570: } while (QFlag != 1);
	ld	a, (_QFlag)
	dec	a
	jp	nz, 00136$
;E:\supernova\msx\game\parser.c:571: Cur(3);
	ld	a, #0x03
	call	_Cur
;E:\supernova\msx\game\parser.c:572: Gotoxy(1, 19); Col(5, 7); WrC((char)175); Col(11, 7); Gotoxy(1, 20);
	ld	l, #0x13
	ld	a, #0x01
	call	_Gotoxy
	ld	l, #0x07
	ld	a, #0x05
	call	_Col
	ld	a, #0xaf
	call	_WrC
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\parser.c:573: if (Len(Line) > 76) Wln();
	ld	hl, #_Line
	call	_Len
	cp	a, #0x4d
	jr	c, 00140$
	call	_Wln
00140$:
;E:\supernova\msx\game\parser.c:574: LowerCase(Line); Spaces(Line);
	ld	hl, #_Line
	call	_LowerCase
	ld	hl, #_Line
	call	_Spaces
;E:\supernova\msx\game\parser.c:575: if (Pos(" r ", Line) > 0 || Pos(" repeat ", Line) > 0) PreFormat(Line);
	ld	de, #_Line
	ld	hl, #___str_122
	call	_Pos
	or	a, a
	jr	nz, 00141$
	ld	de, #_Line
	ld	hl, #___str_123
	call	_Pos
	or	a, a
	jr	z, 00142$
00141$:
	ld	hl, #_Line
	call	_PreFormat
00142$:
;E:\supernova\msx\game\parser.c:576: if (StrEq(Line, "r") || StrEq(Line, "repeat")) StrCpy(Line, Again); else StrCpy(Again, Line);
	ld	de, #___str_124
	ld	hl, #_Line
	call	_StrEq
	or	a, a
	jr	nz, 00144$
	ld	de, #___str_125
	ld	hl, #_Line
	call	_StrEq
	or	a, a
	jr	z, 00145$
00144$:
	ld	de, #_Again
	ld	hl, #_Line
	call	_StrCpy
	jr	00146$
00145$:
	ld	de, #_Line
	ld	hl, #_Again
	call	_StrCpy
00146$:
;E:\supernova\msx\game\parser.c:577: Spaces(Line);
	ld	hl, #_Line
	call	_Spaces
;E:\supernova\msx\game\parser.c:578: while (Pos(" then ", Line) > 0)
00148$:
	ld	hl, #___str_126
	push	hl
	ld	de, #_Line
	call	_Pos
	pop	hl
	or	a, a
	jr	z, 00150$
;E:\supernova\msx\game\parser.c:580: x = Pos(" then ", Line); Delete(Line, x, 5); Insert(".", Line, x, 131);
	ld	de, #_Line
	call	_Pos
	ld	(#_x), a
	ld	a, #0x05
	push	af
	inc	sp
	ld	a, (_x)
	push	af
	inc	sp
	ld	hl, #_Line
	call	_Delete
	ld	a, #0x83
	push	af
	inc	sp
	ld	a, (_x)
	push	af
	inc	sp
	ld	de, #_Line
	ld	hl, #___str_127
	call	_Insert
	jr	00148$
00150$:
;E:\supernova\msx\game\parser.c:582: ChopSeven(Line);
	ld	hl, #_Line
	call	_ChopSeven
;E:\supernova\msx\game\parser.c:583: PreFormat(Line);
	ld	hl, #_Line
	call	_PreFormat
00152$:
;E:\supernova\msx\game\parser.c:585: if (Pos(".", Line) > 0)    // separates the line into single inputs
	ld	de, #_Line
	ld	hl, #___str_127
	call	_Pos
	or	a, a
	jr	z, 00154$
;E:\supernova\msx\game\parser.c:587: Copy(Input, Line, 1, Pos(".", Line));
	ld	de, #_Line
	ld	hl, #___str_127
	call	_Pos
	ld	b, a
	ld	c, #0x01
	push	bc
	ld	de, #_Line
	ld	hl, #_Input
	call	_Copy
;E:\supernova\msx\game\parser.c:588: Delete(Line, 1, Pos(".", Line));
	ld	de, #_Line
	ld	hl, #___str_127
	call	_Pos
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #_Line
	call	_Delete
;E:\supernova\msx\game\parser.c:589: Delete(Input, Pos(".", Input), 1);
	ld	de, #_Input
	ld	hl, #___str_127
	call	_Pos
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	hl, #_Input
	call	_Delete
;E:\supernova\msx\game\parser.c:590: PreFormat(Input);
	ld	hl, #_Input
	call	_PreFormat
	jr	00155$
00154$:
;E:\supernova\msx\game\parser.c:592: else { StrCpy(Input, Line); StrCpy(Line, ""); }
	ld	de, #_Line
	ld	hl, #_Input
	call	_StrCpy
	ld	de, #___str_128
	ld	hl, #_Line
	call	_StrCpy
00155$:
;E:\supernova\msx\game\parser.c:593: Spaces(Input);
	ld	hl, #_Input
	call	_Spaces
;E:\supernova\msx\game\parser.c:594: while (Pos(" it ", Input) > 0)
00156$:
	ld	de, #_Input
	ld	hl, #___str_129
	call	_Pos
	or	a, a
	jr	z, 00220$
;E:\supernova\msx\game\parser.c:596: x = Pos(" it ", Input) + 1; Delete(Input, x, 2); Insert(LastNoun, Input, x, 131);
	ld	de, #_Input
	ld	hl, #___str_129
	call	_Pos
	inc	a
	ld	(#_x), a
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, (_x)
	push	af
	inc	sp
	ld	hl, #_Input
	call	_Delete
	ld	a, #0x83
	push	af
	inc	sp
	ld	a, (_x)
	push	af
	inc	sp
	ld	de, #_Input
	ld	hl, #_LastNoun
	call	_Insert
;E:\supernova\msx\game\parser.c:597: PreFormat(Input); ChopSeven(Input);
	ld	hl, #_Input
	call	_PreFormat
	ld	hl, #_Input
	call	_ChopSeven
	jr	00156$
;E:\supernova\msx\game\parser.c:599: while (Pos(" them ", Input) > 0)
00220$:
00159$:
	ld	hl, #___str_130
	push	hl
	ld	de, #_Input
	call	_Pos
	pop	hl
	or	a, a
	jr	z, 00161$
;E:\supernova\msx\game\parser.c:601: x = Pos(" them ", Input) + 1; Delete(Input, x, 4); Insert(LastNoun, Input, x, 131);
	ld	de, #_Input
	call	_Pos
	inc	a
	ld	(#_x), a
	ld	a, #0x04
	push	af
	inc	sp
	ld	a, (_x)
	push	af
	inc	sp
	ld	hl, #_Input
	call	_Delete
	ld	a, #0x83
	push	af
	inc	sp
	ld	a, (_x)
	push	af
	inc	sp
	ld	de, #_Input
	ld	hl, #_LastNoun
	call	_Insert
;E:\supernova\msx\game\parser.c:602: PreFormat(Input); ChopSeven(Input);
	ld	hl, #_Input
	call	_PreFormat
	ld	hl, #_Input
	call	_ChopSeven
	jr	00159$
00161$:
;E:\supernova\msx\game\parser.c:604: QFormat(Input);
	ld	hl, #_Input
	call	_QFormat
;E:\supernova\msx\game\parser.c:605: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
00162$:
;E:\supernova\msx\game\parser.c:606: }
	ld	sp, ix
	pop	ix
	ret
___str_107:
	.ascii "   "
	.db 0x00
___str_108:
	.ascii "      "
	.db 0x00
___str_109:
	.ascii "    "
	.db 0x00
___str_110:
	.ascii " "
	.db 0x00
___str_111:
	.ascii "Healthy"
	.db 0x00
___str_112:
	.ascii "  *    "
	.db 0x00
___str_113:
	.ascii "Hungry"
	.db 0x00
___str_114:
	.ascii " *    "
	.db 0x00
___str_115:
	.ascii "Sick"
	.db 0x00
___str_116:
	.ascii " *  "
	.db 0x00
___str_117:
	.ascii "Injured"
	.db 0x00
___str_118:
	.ascii "   *   "
	.db 0x00
___str_119:
	.ascii "Tired"
	.db 0x00
___str_120:
	.ascii "  *  "
	.db 0x00
___str_121:
	.ascii "Thirsty"
	.db 0x00
___str_122:
	.ascii " r "
	.db 0x00
___str_123:
	.ascii " repeat "
	.db 0x00
___str_124:
	.ascii "r"
	.db 0x00
___str_125:
	.ascii "repeat"
	.db 0x00
___str_126:
	.ascii " then "
	.db 0x00
___str_127:
	.ascii "."
	.db 0x00
___str_128:
	.db 0x00
___str_129:
	.ascii " it "
	.db 0x00
___str_130:
	.ascii " them "
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
