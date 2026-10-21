;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module util
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MoveTo
	.globl _SetR
	.globl _Border
	.globl _CursorShape
	.globl _ReadText
	.globl _Rnd
	.globl _GetKey
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _Wherey
	.globl _Gotoxy
	.globl _TextBackground
	.globl _TextColor
	.globl _Wln
	.globl _WrC
	.globl _Wr
	.globl _UpCase
	.globl _StrCat
	.globl _StrCpy
	.globl _Insert
	.globl _Delete
	.globl _Len
	.globl _g_Scratch
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
	.globl _SF
	.globl _Cur
	.globl _Col
	.globl _Bak
	.globl _Bor
	.globl _En
	.globl _Add
	.globl _Min
	.globl _Score
	.globl _Cn
	.globl _Pause
	.globl _Tune
	.globl _RegionSoundOn
	.globl _Play
	.globl _Explode
	.globl _Walls
	.globl _Static
	.globl _Blast
	.globl _DOpen
	.globl _DClose
	.globl _Door
	.globl _WrFN
	.globl _FN
	.globl _UpC
	.globl _Up
	.globl _Spaces
	.globl _QFormat
	.globl _LowerCase
	.globl _Here
	.globl _RL
	.globl _RS
	.globl _RR
	.globl _RC1
	.globl _RB
	.globl _RB2
	.globl _Val
	.globl _MC
	.globl _Van
	.globl _Crazy
	.globl _NoSense
	.globl _Say
	.globl _TransportNoise
	.globl _SetNoun
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
_g_Scratch	=	0xd000
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
;./../game/util.c:5: void SF(void) { SFlag = 1; }
;	---------------------------------
; Function SF
; ---------------------------------
_SF::
	ld	hl, #_SFlag
	ld	(hl), #0x01
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
;./../game/util.c:7: void Cur(u8 n) { CursorShape(n); }
;	---------------------------------
; Function Cur
; ---------------------------------
_Cur::
	jp	_CursorShape
;./../game/util.c:8: void Col(u8 a, u8 b) { (void)b; TextColor(a); }          // mono colour (b) is not used: always colour
;	---------------------------------
; Function Col
; ---------------------------------
_Col::
	jp	_TextColor
;./../game/util.c:9: void Bak(u8 a, u8 b) { (void)b; TextBackground(a); }
;	---------------------------------
; Function Bak
; ---------------------------------
_Bak::
	jp	_TextBackground
;./../game/util.c:10: void Bor(u8 a, u8 b) { (void)b; Border(a); }
;	---------------------------------
; Function Bor
; ---------------------------------
_Bor::
	jp	_Border
;./../game/util.c:12: u8   En(u8 n) { return SET_IN(Events, n) != 0; }
;	---------------------------------
; Function En
; ---------------------------------
_En::
	ld	e, a
	ld	l, e
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00103$:
	sra	h
	rr	l
	djnz	00103$
	ld	bc, #_Events
	add	hl, bc
	ld	c, (hl)
	ld	a, e
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
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
;./../game/util.c:13: void Add(u8 n) { SET_ADD(Events, n); }
;	---------------------------------
; Function Add
; ---------------------------------
_Add::
	ld	e, a
	ld	l, e
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00103$:
	sra	h
	rr	l
	djnz	00103$
	ld	bc, #_Events
	add	hl, bc
	ld	c, (hl)
	ld	a, e
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00105$
00104$:
	add	a, a
00105$:
	djnz	00104$
	or	a, c
	ld	(hl), a
	ret
;./../game/util.c:14: void Min(u8 n) { SET_DEL(Events, n); }
;	---------------------------------
; Function Min
; ---------------------------------
_Min::
	ld	e, a
	ld	l, e
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00103$:
	sra	h
	rr	l
	djnz	00103$
	ld	bc, #_Events
	add	hl, bc
	ld	c, (hl)
	ld	a, e
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00105$
00104$:
	add	a, a
00105$:
	djnz	00104$
	cpl
	and	a, c
	ld	(hl), a
	ret
;./../game/util.c:16: void Score(i16 n, i16 pointer)
;	---------------------------------
; Function Score
; ---------------------------------
_Score::
;./../game/util.c:18: if (!En((u8)pointer)) { Sc += n; Add((u8)pointer); }
	push	hl
	push	de
	ld	a, e
	call	_En
	pop	de
	pop	bc
	or	a, a
	ret	nz
	ld	hl, #_Sc
	ld	a, (hl)
	add	a, c
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
	ld	a, e
;./../game/util.c:19: }
	jp	_Add
;./../game/util.c:21: void Cn(const char* s)
;	---------------------------------
; Function Cn
; ---------------------------------
_Cn::
;./../game/util.c:23: Gotoxy(40 - (Len(s) / 2), Wherey());
	push	hl
	call	_Wherey
	ld	l, a
	pop	de
	ex	de, hl
	push	de
	push	hl
	call	_Len
	pop	de
	pop	hl
	ld	c, a
	ld	b, #0x00
	sra	b
	rr	c
	ld	a, #0x28
	sub	a, c
	push	de
	call	_Gotoxy
	pop	de
;./../game/util.c:24: Wr(s); Wln();
	ex	de, hl
	call	_Wr
;./../game/util.c:25: }
	jp	_Wln
;./../game/util.c:27: void Pause(void)
;	---------------------------------
; Function Pause
; ---------------------------------
_Pause::
;./../game/util.c:29: Col(15, 15); Wr("Press any key to continue...");
	ld	a,#0x0f
	ld	l,a
	call	_Col
	ld	hl, #___str_1
	call	_Wr
;./../game/util.c:30: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;./../game/util.c:31: Col(11, 7); Wln();
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;./../game/util.c:32: }
	jp	_Wln
___str_1:
	.ascii "Press any key to continue..."
	.db 0x00
;./../game/util.c:37: void Tune(i16 octave, i16 note, i16 duration)
;	---------------------------------
; Function Tune
; ---------------------------------
_Tune::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ld	c, l
	ld	b, h
	ex	de, hl
;./../game/util.c:39: u32 f = g_NoteHz100[note - 1];
	ld	de, #_g_NoteHz100+0
	dec	l
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	hl
	push	de
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;./../game/util.c:41: for (k = 1; k <= octave; k++) f *= 2;
	ld	de, #0x0001
00105$:
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	po, 00134$
	xor	a, #0x80
00134$:
	jp	m, 00101$
	sla	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
	inc	de
	jr	00105$
00101$:
;./../game/util.c:42: f = (f + 50) / 100;
	ld	a, -4 (ix)
	add	a, #0x32
	ld	e, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	bc, #0x0000
	push	bc
	ld	c, #0x64
	push	bc
	ld	h, a
;./../game/util.c:43: Sound((u16)f);
	call	__divulong
	pop	af
	pop	af
	ex	de, hl
	call	_Sound
;./../game/util.c:44: if (duration != 0) { Delay(duration); NoSound(); }
	ld	a, 5 (ix)
	or	a, 4 (ix)
	jr	z, 00107$
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	call	_Delay
	call	_NoSound
00107$:
;./../game/util.c:45: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
_g_NoteHz100:
	.dw #0x0cbf
	.dw #0x0d81
	.dw #0x0e4e
	.dw #0x0f28
	.dw #0x100f
	.dw #0x1103
	.dw #0x1206
	.dw #0x1319
	.dw #0x143c
	.dw #0x1570
	.dw #0x16b6
	.dw #0x1810
;./../game/util.c:47: void RegionSoundOn(void)
;	---------------------------------
; Function RegionSoundOn
; ---------------------------------
_RegionSoundOn::
;./../game/util.c:49: if (Region == 4) Sound(20);
	ld	a, (_Region)
	sub	a, #0x04
	jr	nz, 00102$
	ld	hl, #0x0014
	call	_Sound
00102$:
;./../game/util.c:50: if (Region == 5) Sound(60);
	ld	a, (_Region)
	sub	a, #0x05
	ret	nz
	ld	hl, #0x003c
;./../game/util.c:51: }
	jp	_Sound
;./../game/util.c:53: void Play(i16 start, i16 stop, i16 speed)
;	---------------------------------
; Function Play
; ---------------------------------
_Play::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	c, l
;./../game/util.c:56: if (start <= stop) for (k = start; k <= stop; k++) { Sound(k); Delay(speed); }
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, h
	jp	po, 00156$
	xor	a, #0x80
00156$:
	jp	m, 00123$
	ld	l, c
00107$:
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00157$
	xor	a, #0x80
00157$:
	jp	m, 00105$
	push	hl
	push	de
	call	_Sound
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	call	_Delay
	pop	de
	pop	hl
	inc	hl
	jr	00107$
;./../game/util.c:57: else for (k = start; k >= stop; k--) { Sound(k); Delay(speed); }
00123$:
	ld	l, c
00110$:
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	po, 00158$
	xor	a, #0x80
00158$:
	jp	m, 00105$
	push	hl
	push	de
	call	_Sound
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	call	_Delay
	pop	de
	pop	hl
	dec	hl
	jr	00110$
00105$:
;./../game/util.c:58: NoSound(); RegionSoundOn();
	call	_NoSound
	call	_RegionSoundOn
;./../game/util.c:59: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./../game/util.c:61: void Explode(u8 duration)
;	---------------------------------
; Function Explode
; ---------------------------------
_Explode::
;./../game/util.c:64: for (k = duration * 999; k >= 20; k--) Sound(Rnd(k));
	ld	c, a
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
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
00103$:
	ld	c, l
	ld	b, h
	ld	a, c
	sub	a, #0x14
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, _NoSound
	push	hl
	call	_Rnd
	pop	hl
	ex	de, hl
	push	de
	call	_Sound
	pop	hl
	dec	hl
;./../game/util.c:65: NoSound();
;./../game/util.c:66: }
	jr	00103$
;./../game/util.c:68: void Walls(u8 duration)
;	---------------------------------
; Function Walls
; ---------------------------------
_Walls::
;./../game/util.c:70: i16 k, n = duration * 999;
	ld	c, a
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
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;./../game/util.c:71: for (k = 1; k <= n; k++) Sound(Rnd(35) + 20);
	ld	bc, #0x0001
00103$:
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jp	po, 00124$
	xor	a, #0x80
00124$:
	jp	m, _NoSound
	push	hl
	push	bc
	ld	hl, #0x0023
	call	_Rnd
	pop	bc
	pop	hl
	ld	a, e
	add	a, #0x14
	ld	e, a
	jr	nc, 00125$
	inc	d
00125$:
	push	hl
	push	bc
	ex	de, hl
	call	_Sound
	pop	bc
	pop	hl
	inc	bc
;./../game/util.c:72: NoSound();
;./../game/util.c:73: }
	jr	00103$
;./../game/util.c:75: void Static(void)
;	---------------------------------
; Function Static
; ---------------------------------
_Static::
	call	___sdcc_enter_ix
	push	af
;./../game/util.c:78: for (k = 1; k <= 50; k++)
	ld	hl, #0x0001
	ex	(sp), hl
00111$:
;./../game/util.c:79: switch (Rnd(2))
	ld	hl, #0x0002
	call	_Rnd
	ld	a, d
	or	a, e
	jr	z, 00101$
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00103$
	jr	00112$
;./../game/util.c:81: case 0: n = Rnd(70) + 10; for (l = 1; l <= n; l++) Sound(Rnd(4000) + 3000); break;
00101$:
	ld	hl, #0x0046
	call	_Rnd
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
	ld	bc, #0x0001
00109$:
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	po, 00174$
	xor	a, #0x80
00174$:
	jp	m, 00112$
	push	bc
	push	de
	ld	hl, #0x0fa0
	call	_Rnd
	ex	de, hl
	pop	de
	pop	bc
	push	de
	ld	de, #0x0bb8
	add	hl, de
	pop	de
	push	bc
	push	de
	call	_Sound
	pop	de
	pop	bc
	inc	bc
	jr	00109$
;./../game/util.c:82: case 1: NoSound(); Delay(Rnd(29)); break;
00103$:
	call	_NoSound
	ld	hl, #0x001d
	call	_Rnd
	ex	de, hl
	call	_Delay
;./../game/util.c:83: }
00112$:
;./../game/util.c:78: for (k = 1; k <= 50; k++)
	inc	-2 (ix)
	jr	nz, 00175$
	inc	-1 (ix)
00175$:
	pop	bc
	push	bc
	ld	a, #0x32
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	po, 00176$
	xor	a, #0x80
00176$:
	jp	p, 00111$
;./../game/util.c:84: NoSound(); if (Region == 5) Sound(60);
	call	_NoSound
	ld	a, (_Region)
	sub	a, #0x05
	jr	nz, 00113$
	ld	hl, #0x003c
	call	_Sound
00113$:
;./../game/util.c:85: }
	pop	af
	pop	ix
	ret
;./../game/util.c:87: void Blast(void)
;	---------------------------------
; Function Blast
; ---------------------------------
_Blast::
	call	___sdcc_enter_ix
	dec	sp
;./../game/util.c:90: for (k = 1; k <= 40; k++) { Play(550 - k * 6, 600 + k * 6, 0); Play(600 + k * 6, 550 - k * 6, 0); }
	ld	-1 (ix), #0x01
00102$:
	ld	a, -1 (ix)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	e, a
	ld	d, #0x00
	ld	hl, #0x0258
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #0x0226
	cp	a, a
	sbc	hl, de
	push	hl
	push	bc
	ld	de, #0x0000
	push	de
	ld	e, c
	ld	d, b
	call	_Play
	pop	bc
	pop	hl
	ld	de, #0x0000
	ex	de, hl
	push	hl
	ld	l, c
	ld	h, b
	call	_Play
	inc	-1 (ix)
	ld	a, #0x28
	sub	a, -1 (ix)
	jr	nc, 00102$
;./../game/util.c:91: Explode(2);
	ld	a, #0x02
	call	_Explode
;./../game/util.c:92: }
	inc	sp
	pop	ix
	ret
;./../game/util.c:94: void DOpen(u8 num)
;	---------------------------------
; Function DOpen
; ---------------------------------
_DOpen::
	ld	c, a
;./../game/util.c:96: Wr("The door slides open..."); Wln();
	push	bc
	ld	hl, #___str_2
	call	_Wr
	call	_Wln
	pop	bc
;./../game/util.c:97: if (num != 0) Play(50, 125 - num, num);
	ld	a, c
	or	a, a
	jr	z, 00103$
	ld	l, c
	ld	h, #0x00
	ld	a, #0x7d
	sub	a, c
	ld	e, a
	sbc	a, a
	ld	d, a
	push	hl
	ld	hl, #0x0032
	call	_Play
	jr	00104$
00103$:
;./../game/util.c:98: else { for (i = 3500; i <= 5000; i++) Sound(Rnd(4500) + i); NoSound(); }
	ld	hl, #0x0dac
	ld	(_i), hl
00107$:
	ld	hl, #0x1194
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0x88
	cp	a, l
	ld	a, #0x13
	sbc	a, h
	jp	po, 00143$
	xor	a, #0x80
00143$:
	jp	p, 00107$
	call	_NoSound
00104$:
;./../game/util.c:99: if (Region == 5) Sound(60);
	ld	a, (_Region)
	sub	a, #0x05
	ret	nz
	ld	hl, #0x003c
;./../game/util.c:100: }
	jp	_Sound
___str_2:
	.ascii "The door slides open..."
	.db 0x00
;./../game/util.c:102: void DClose(u8 num)
;	---------------------------------
; Function DClose
; ---------------------------------
_DClose::
	ld	l, a
;./../game/util.c:104: Wr("The sliding door closes."); Wln();
	push	hl
	ld	hl, #___str_3
	call	_Wr
	call	_Wln
	pop	hl
;./../game/util.c:105: if (num != 0) Play(125 - num, 50, num);
	ld	a, l
	or	a, a
	jr	z, 00103$
	ld	c, l
	ld	b, #0x00
	ld	a, #0x7d
	sub	a, l
	ld	l, a
	sbc	a, a
	ld	h, a
	push	bc
	ld	de, #0x0032
	call	_Play
	jr	00104$
00103$:
;./../game/util.c:106: else { for (i = 5000; i >= 3500; i--) Sound(Rnd(4500) + i); NoSound(); }
	ld	hl, #0x1388
	ld	(_i), hl
00107$:
	ld	hl, #0x1194
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	ld	bc, (_i)
	ld	a, c
	sub	a, #0xac
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x8d
	jr	nc, 00107$
	call	_NoSound
00104$:
;./../game/util.c:107: if (Region == 5) Sound(60);
	ld	a, (_Region)
	sub	a, #0x05
	ret	nz
	ld	hl, #0x003c
;./../game/util.c:108: }
	jp	_Sound
___str_3:
	.ascii "The sliding door closes."
	.db 0x00
;./../game/util.c:110: void Door(u8 New, u8 num)
;	---------------------------------
; Function Door
; ---------------------------------
_Door::
	ld	h, a
;./../game/util.c:112: if (En(7)) RL(22); else
	push	hl
	ld	a, #0x07
	call	_En
	pop	hl
	or	a, a
	jr	z, 00105$
	ld	hl, #0x0016
	jp	_RL
00105$:
;./../game/util.c:113: if (En(8)) RL(23); else { DOpen(num); MoveTo(New); DClose(num); }
	push	hl
	ld	a, #0x08
	call	_En
	pop	hl
	or	a, a
	jr	z, 00102$
	ld	hl, #0x0017
	jp	_RL
00102$:
	push	hl
	ld	a, l
	call	_DOpen
	pop	hl
	push	hl
	ld	a, h
	call	_MoveTo
	pop	hl
	ld	a, l
;./../game/util.c:114: }
	jp	_DClose
;./../game/util.c:117: void WrFN(u8 n)
;	---------------------------------
; Function WrFN
; ---------------------------------
_WrFN::
	ld	l, a
;./../game/util.c:119: const char* s = g_N[n];
	ld	bc, #_g_N+0
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;./../game/util.c:120: while (*s && *s != '\\') WrC(*s++);
00102$:
	ld	a, (bc)
	or	a, a
	ret	z
	cp	a, #0x5c
	ret	z
	inc	bc
	push	bc
	call	_WrC
	pop	bc
;./../game/util.c:121: }
	jr	00102$
;./../game/util.c:123: void FN(u8 vnp, char* dst)
;	---------------------------------
; Function FN
; ---------------------------------
_FN::
	ld	l, a
;./../game/util.c:125: const char* s = g_N[vnp];
	ld	bc, #_g_N+0
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;./../game/util.c:126: SF();
	push	bc
	push	de
	call	_SF
	pop	de
	pop	bc
;./../game/util.c:127: while (*s && *s != '\\') *dst++ = *s++;
00102$:
	ld	a, (bc)
	or	a, a
	jr	z, 00104$
	cp	a, #0x5c
	jr	z, 00104$
	inc	bc
	ld	(de), a
	inc	de
	jr	00102$
00104$:
;./../game/util.c:128: *dst = 0;
	xor	a, a
	ld	(de), a
;./../game/util.c:129: }
	ret
;./../game/util.c:131: void UpC(char c)
;	---------------------------------
; Function UpC
; ---------------------------------
_UpC::
	push	af
	ld	c, a
;./../game/util.c:134: t[0] = c; t[1] = 0;
	ld	hl, #0
	add	hl, sp
	ld	(hl), c
	push	hl
	ld	iy, #3
	add	iy, sp
	ld	0 (iy), #0x00
	pop	hl
;./../game/util.c:135: Up(t);
	call	_Up
;./../game/util.c:136: }
	pop	af
	ret
;./../game/util.c:138: void Up(const char* w)
;	---------------------------------
; Function Up
; ---------------------------------
_Up::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-136
	add	iy, sp
	ld	sp, iy
	ex	de, hl
;./../game/util.c:142: StrCpy(b, w);
	ld	hl, #0
	add	hl, sp
	call	_StrCpy
;./../game/util.c:143: if (b[0] == 'l' && b[1] == 0) Insert("ook", b, 2, 131);          // Word+' ' check: 'l' alone
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	cp	a, #0x6c
	ld	a, #0x01
	jr	z, 00220$
	xor	a, a
00220$:
	ld	e, a
	ld	hl,#0x1
	add	hl,sp
	ld	c, l
	ld	b, h
	ld	a, e
	or	a, a
	jr	z, 00105$
	ld	a, (bc)
	or	a, a
	jr	nz, 00105$
	push	bc
	ld	hl, #0x8302
	push	hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_4
	call	_Insert
	pop	bc
	jr	00106$
00105$:
;./../game/util.c:144: else if (b[0] == 'l' && b[1] == ' ') Insert("ook", b, 2, 131);
	ld	a, e
	or	a, a
	jr	z, 00106$
	ld	a, (bc)
	cp	a, #0x20
	jr	nz, 00106$
	push	bc
	ld	hl, #0x8302
	push	hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_4
	call	_Insert
	pop	bc
00106$:
;./../game/util.c:145: if (b[0] == 'e' && b[1] == 'x' && b[2] == 0) Insert("amine", b, 3, 131);
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	cp	a, #0x65
	ld	a, #0x01
	jr	z, 00224$
	xor	a, a
00224$:
	ld	e, a
	ld	hl,#0x2
	add	hl,sp
	ld	a, e
	or	a, a
	jr	z, 00113$
	ld	a, (bc)
	cp	a, #0x78
	jr	nz, 00113$
	ld	a, (hl)
	or	a, a
	jr	nz, 00113$
	ld	hl, #0x8303
	push	hl
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_5
	call	_Insert
	jr	00114$
00113$:
;./../game/util.c:146: else if (b[0] == 'e' && b[1] == 'x' && b[2] == ' ') Insert("amine", b, 3, 131);
	ld	a, e
	or	a, a
	jr	z, 00114$
	ld	a, (bc)
	cp	a, #0x78
	jr	nz, 00114$
	ld	a, (hl)
	cp	a, #0x20
	jr	nz, 00114$
	ld	hl, #0x8303
	push	hl
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_5
	call	_Insert
00114$:
;./../game/util.c:147: n = Len(b);
	ld	hl, #0
	add	hl, sp
	call	_Len
	ld	c, a
;./../game/util.c:148: for (x = 1; x <= n; x++) b[x - 1] = UpCase(b[x - 1]);
	ld	hl, #_x
	ld	(hl), #0x01
00119$:
	ld	a, c
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00117$
	ld	a, (_x+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	push	hl
	push	bc
	call	_UpCase
	pop	bc
	pop	hl
	ld	(hl), a
	ld	hl, #_x
	inc	(hl)
	jr	00119$
00117$:
;./../game/util.c:149: Col(12, 15); Wr(b); Col(11, 7);
	ld	l, #0x0f
	ld	a, #0x0c
	call	_Col
	ld	hl, #0
	add	hl, sp
	call	_Wr
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;./../game/util.c:150: }
	ld	sp, ix
	pop	ix
	ret
___str_4:
	.ascii "ook"
	.db 0x00
___str_5:
	.ascii "amine"
	.db 0x00
;./../game/util.c:152: void Spaces(char* I)
;	---------------------------------
; Function Spaces
; ---------------------------------
_Spaces::
;./../game/util.c:154: Insert(" ", I, 1, 131);
	push	hl
	ld	de, #0x8301
	ex	de, hl
	push	hl
	ld	hl, #___str_6
	call	_Insert
	pop	hl
;./../game/util.c:155: StrCat(I, " ", 131);
	ld	a, #0x83
	push	af
	inc	sp
	ld	de, #___str_6
	call	_StrCat
;./../game/util.c:156: }
	ret
___str_6:
	.ascii " "
	.db 0x00
;./../game/util.c:158: void QFormat(char* I)
;	---------------------------------
; Function QFormat
; ---------------------------------
_QFormat::
;./../game/util.c:161: if (I[0] == '.' || I[0] == ' ') Delete(I, 1, 1);
	ld	a, (hl)
	cp	a, #0x2e
	jr	z, 00101$
	cp	a, #0x20
	jr	nz, 00102$
00101$:
	push	hl
	ld	de, #0x101
	push	de
	call	_Delete
	pop	hl
00102$:
;./../game/util.c:162: l = Len(I);
	push	hl
	call	_Len
	ld	b, a
	pop	hl
;./../game/util.c:163: if (l && (I[l - 1] == '.' || I[l - 1] == ' ')) Delete(I, l, 1);
	ld	a, b
	or	a, a
	ret	z
	ld	a, b
	dec	a
	add	a, l
	ld	e, a
	ld	a, #0x00
	adc	a, h
	ld	d, a
	ld	a, (de)
	cp	a, #0x2e
	jr	z, 00104$
	cp	a, #0x20
	ret	nz
00104$:
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_Delete
;./../game/util.c:164: }
	ret
;./../game/util.c:166: void LowerCase(char* I)
;	---------------------------------
; Function LowerCase
; ---------------------------------
_LowerCase::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
;./../game/util.c:168: u8 n = Len(I);
	push	hl
	call	_Len
	ld	c, a
	pop	de
;./../game/util.c:169: for (x = 1; x <= n; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00106$:
	ld	a, c
	ld	hl, #_x
	sub	a, (hl)
	jr	c, 00108$
;./../game/util.c:170: if (CH(I, x) >= 'A' && CH(I, x) <= 'Z') CH(I, x) += 32;
	ld	a, (_x+0)
	ld	h, #0x00
	ld	l, a
	dec	hl
	add	hl, de
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0x41
	jr	c, 00107$
	ld	a, #0x5a
	sub	a, -1 (ix)
	jr	c, 00107$
	ld	a, -1 (ix)
	add	a, #0x20
	ld	(hl), a
00107$:
;./../game/util.c:169: for (x = 1; x <= n; x++)
	ld	hl, #_x
	inc	(hl)
	jr	00106$
00108$:
;./../game/util.c:171: }
	inc	sp
	pop	ix
	ret
;./../game/util.c:173: u8 Here(u8 obj)
;	---------------------------------
; Function Here
; ---------------------------------
_Here::
	call	___sdcc_enter_ix
	push	af
	ld	c, a
;./../game/util.c:175: u8 r = 0;
	ld	-2 (ix), #0x00
;./../game/util.c:176: if (LOC_HAS(Prm, obj)) r = 1;
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
	ld	de, #_g_Loc
	add	hl, de
	ld	e, c
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00219$:
	sra	d
	rr	e
	djnz	00219$
	add	hl, de
	push	hl
	pop	iy
	ld	a, c
	dec	a
	and	a, #0x07
	ld	-1 (ix), a
	ld	b, a
	ld	hl, #0x0001
	inc	b
	jr	00221$
00220$:
	add	hl, hl
00221$:
	djnz	00220$
	ld	a, (iy)
	and	a, l
	ld	b, #0x00
	or	a, b
	jr	z, 00102$
	ld	-2 (ix), #0x01
00102$:
;./../game/util.c:177: if (obj == 79 && MugCon == 79 && IN29(Inv, 29)) r = 1;
	ld	a, c
	sub	a, #0x4f
	jr	nz, 00104$
	ld	a, (_MugCon)
	sub	a, #0x4f
	jr	nz, 00104$
	ld	a, (#(_Inv + 3) + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00104$
	ld	-2 (ix), #0x01
00104$:
;./../game/util.c:178: if (obj <= MMax) if (R[obj] == Prm || IN29(Inv, obj)) r = 1;
	ld	a, #0x1d
	sub	a, c
	jr	c, 00115$
	ld	hl, #_R+0
	ld	b, #0x00
	add	hl, bc
	ld	a, (_Prm)
	sub	a, (hl)
	jr	z, 00109$
	ld	a, c
	sub	a, #0x01
	jr	c, 00115$
	ld	hl, #_Inv+0
	add	hl, de
	ld	a, (hl)
	ld	b, -1 (ix)
	inc	b
	jr	00228$
00227$:
	srl	a
00228$:
	djnz	00227$
	rrca
	jr	nc, 00115$
00109$:
	ld	-2 (ix), #0x01
00115$:
;./../game/util.c:179: if (obj == 58 && (IN29(Inv, 3) || IN29(Inv, 4) || R[4] == Prm || R[3] == Prm)) r = 1;
	ld	a, c
	sub	a, #0x3a
	jr	nz, 00117$
	ld	hl, #_Inv+0
	ld	c, (hl)
	ld	a, c
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00116$
	ld	a, c
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00116$
	ld	hl, #_R + 4
	ld	a, (_Prm)
	sub	a, (hl)
	jr	z, 00116$
	ld	hl, #_R + 3
	ld	a, (_Prm)
	sub	a, (hl)
	jr	nz, 00117$
00116$:
	ld	-2 (ix), #0x01
00117$:
;./../game/util.c:180: return r;
	ld	a, -2 (ix)
;./../game/util.c:181: }
	pop	bc
	pop	ix
	ret
;./../game/util.c:188: static void WrRec(const char* s)
;	---------------------------------
; Function WrRec
; ---------------------------------
_WrRec:
;./../game/util.c:190: Wr(s);
;./../game/util.c:191: }
	jp	_Wr
;./../game/util.c:193: void RL(i16 pointer) { SF(); ReadText(TK_L + pointer, g_Rec); WrRec(g_Rec); Wln(); }
;	---------------------------------
; Function RL
; ---------------------------------
_RL::
	push	hl
	call	_SF
	pop	hl
	ld	de, #_g_Scratch+0
	ld	bc, #0x0167
	add	hl, bc
	call	_ReadText
	ld	hl, #_g_Scratch
	call	_WrRec
	jp	_Wln
;./../game/util.c:194: void RS(i16 pointer) { SF(); ReadText(TK_S + pointer, g_Rec); WrRec(g_Rec); Wln(); }
;	---------------------------------
; Function RS
; ---------------------------------
_RS::
	push	hl
	call	_SF
	pop	hl
	ld	de, #_g_Scratch+0
	ld	bc, #0x006e
	add	hl, bc
	call	_ReadText
	ld	hl, #_g_Scratch
	call	_WrRec
	jp	_Wln
;./../game/util.c:195: void RR(i16 pointer) { SF(); ReadText(TK_R + pointer, g_Rec); WrRec(g_Rec); Wln(); }
;	---------------------------------
; Function RR
; ---------------------------------
_RR::
	push	hl
	call	_SF
	pop	hl
	ld	de, #_g_Scratch+0
	call	_ReadText
	ld	hl, #_g_Scratch
	call	_WrRec
	jp	_Wln
;./../game/util.c:196: void RC1(i16 pointer, char* dst) { ReadText(TK_C + pointer, dst); }      // C1 clue (read into Text5 by DEFAULT.PAS)
;	---------------------------------
; Function RC1
; ---------------------------------
_RC1::
	ld	bc, #0x03c3
	add	hl, bc
	jp	_ReadText
;./../game/util.c:198: void RB(u8 pointer, u8 colour)
;	---------------------------------
; Function RB
; ---------------------------------
_RB::
	ld	c, a
	ld	b, l
;./../game/util.c:200: SF(); Col(colour, 7);
	push	bc
	call	_SF
	pop	bc
	push	bc
	ld	l, #0x07
	ld	a, b
	call	_Col
	pop	bc
;./../game/util.c:201: ReadText(TK_M + pointer, g_Rec); WrRec(g_Rec); Wln();
	ld	de, #_g_Scratch+0
	ld	b, #0x00
	ld	hl, #0x0431
	add	hl, bc
	call	_ReadText
	ld	hl, #_g_Scratch
	call	_WrRec
	call	_Wln
;./../game/util.c:202: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
;./../game/util.c:203: }
	jp	_Col
;./../game/util.c:205: void RB2(u8 pointer, u8 colour)
;	---------------------------------
; Function RB2
; ---------------------------------
_RB2::
	ld	c, a
	ld	b, l
;./../game/util.c:207: SF(); Col(colour, 7);
	push	bc
	call	_SF
	pop	bc
	push	bc
	ld	l, #0x07
	ld	a, b
	call	_Col
	pop	bc
;./../game/util.c:208: ReadText(TK_B + pointer, g_Rec); WrRec(g_Rec); Wln();
	ld	de, #_g_Scratch+0
	ld	b, #0x00
	ld	hl, #0x043f
	add	hl, bc
	call	_ReadText
	ld	hl, #_g_Scratch
	call	_WrRec
	call	_Wln
;./../game/util.c:209: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
;./../game/util.c:210: }
	jp	_Col
;./../game/util.c:213: void Val(const char* s, i16* code, i16* err)
;	---------------------------------
; Function Val
; ---------------------------------
_Val::
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
;./../game/util.c:215: i16 v = 0, k = 0;
	ld	hl, #0x0000
	ex	(sp), hl
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;./../game/util.c:216: u8 neg = 0;
	ld	-10 (ix), #0x00
;./../game/util.c:217: if (s[0] == '-') { neg = 1; k = 1; }
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	cp	a, #0x2d
	jr	nz, 00104$
	ld	-10 (ix), #0x01
	ld	-12 (ix), #0x01
	ld	-11 (ix), #0
	jr	00105$
00104$:
;./../game/util.c:218: else if (s[0] == '+') k = 1;
	cp	a, #0x2b
	jr	nz, 00105$
	ld	-12 (ix), #0x01
	ld	-11 (ix), #0
00105$:
;./../game/util.c:219: if (!s[k]) { *code = 0; *err = k + 1; return; }
	ld	a, -12 (ix)
	add	a, -4 (ix)
	ld	c, a
	ld	a, #0x00
	adc	a, -3 (ix)
	ld	b, a
	ld	a, (bc)
	ld	-1 (ix), a
	ld	a, 4 (ix)
	ld	-9 (ix), a
	ld	a, 5 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00131$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	ld	a, -12 (ix)
	ld	-1 (ix), a
	inc	-1 (ix)
	ld	a, -1 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	xor	a, a
	ld	(hl), a
	jp	00115$
00131$:
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
00113$:
;./../game/util.c:220: for (; s[k]; k++)
	ld	a, -4 (ix)
	add	a, -2 (ix)
	ld	c, a
	ld	a, -3 (ix)
	adc	a, -1 (ix)
	ld	b, a
	ld	a, (bc)
	ld	-7 (ix), a
	or	a, a
	jr	z, 00111$
;./../game/util.c:222: if (s[k] < '0' || s[k] > '9') { *code = 0; *err = k + 1; return; }
	ld	a, -7 (ix)
	sub	a, #0x30
	jr	c, 00108$
	ld	a, #0x39
	sub	a, -7 (ix)
	jr	nc, 00109$
00108$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	pop	hl
	pop	bc
	push	bc
	push	hl
	inc	bc
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	00115$
00109$:
;./../game/util.c:223: v = v * 10 + (s[k] - '0');
	pop	bc
	push	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	a, -7 (ix)
	ld	c, #0x00
	add	a, #0xd0
	ld	e, a
	ld	a, c
	adc	a, #0xff
	ld	d, a
	add	hl, de
	ex	(sp), hl
;./../game/util.c:220: for (; s[k]; k++)
	inc	-2 (ix)
	jr	nz, 00179$
	inc	-1 (ix)
00179$:
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
	jr	00113$
00111$:
;./../game/util.c:225: *code = neg ? -v : v;
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	a, -10 (ix)
	or	a, a
	jr	z, 00117$
	xor	a, a
	sub	a, -14 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -13 (ix)
	ld	b, a
	jr	00118$
00117$:
	pop	bc
	push	bc
00118$:
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;./../game/util.c:226: *err = 0;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00115$:
;./../game/util.c:227: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./../game/util.c:229: void MC(u8 whichChar, u8 watchRoom, u8 toRoom, i16 messageNum)
;	---------------------------------
; Function MC
; ---------------------------------
_MC::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	c, a
;./../game/util.c:231: if (Prm == watchRoom) RS(messageNum);
	ld	a, (_Prm)
	sub	a, l
	jr	nz, 00102$
	push	bc
	ld	l, 5 (ix)
	ld	h, 6 (ix)
	call	_RS
	pop	bc
00102$:
;./../game/util.c:234: case 1: LOC_DEL(AlienRm, 124); AlienRm = toRoom; LOC_ADD(AlienRm, 124); break;
	ld	b, 4 (ix)
;./../game/util.c:232: switch (whichChar)    // 1 = Aliens, 2 = Scientist
	ld	a, c
	dec	a
	jr	z, 00103$
	ld	a, c
	sub	a, #0x02
	jr	z, 00104$
	jr	00105$
;./../game/util.c:234: case 1: LOC_DEL(AlienRm, 124); AlienRm = toRoom; LOC_ADD(AlienRm, 124); break;
00103$:
	ld	iy, #_AlienRm
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Loc
	add	hl, de
	ld	de, #0x000f
	add	hl, de
	res	3, (hl)
	ld	hl, #_AlienRm
	ld	(hl), b
	ld	c, 0 (iy)
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
	ld	bc, #0x000f
	add	hl, bc
	set	3, (hl)
	jr	00105$
;./../game/util.c:235: case 2: LOC_DEL(FriendRm, 123); FriendRm = toRoom; LOC_ADD(FriendRm, 123); break;
00104$:
	ld	iy, #_FriendRm
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_Loc
	add	hl, de
	ld	de, #0x000f
	add	hl, de
	res	2, (hl)
	ld	hl, #_FriendRm
	ld	(hl), b
	ld	c, 0 (iy)
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
	ld	bc, #0x000f
	add	hl, bc
	set	2, (hl)
;./../game/util.c:236: }
00105$:
;./../game/util.c:237: SFlag = 0;
	xor	a, a
	ld	(#_SFlag), a
;./../game/util.c:238: }
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;./../game/util.c:240: void Van(u8 obj)
;	---------------------------------
; Function Van
; ---------------------------------
_Van::
	call	___sdcc_enter_ix
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;./../game/util.c:242: if (obj == 0) return;    // Van(Null): only touched variables that are already Null
	ld	c, a
	or	a, a
	jp	z, 00133$
;./../game/util.c:243: if (obj <= MMax) SET_DEL(Inv, obj);
	ld	a, #0x1d
	sub	a, c
	ld	a, #0x00
	rla
	ld	-4 (ix), a
	ld	e, c
	ld	d, #0x00
	ld	a, c
	dec	de
	dec	a
	ld	b, #0x03
00269$:
	sra	d
	rr	e
	djnz	00269$
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00271$
00270$:
	add	a, a
00271$:
	djnz	00270$
	cpl
	ld	-5 (ix), a
	ld	-3 (ix), a
	bit	0, -4 (ix)
	jr	nz, 00104$
	ld	hl, #_Inv
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, (hl)
	and	a, -3 (ix)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
00104$:
;./../game/util.c:244: SetR(obj, Null);
	push	bc
	push	de
	ld	l, #0x00
	ld	a, c
	call	_SetR
	pop	de
	pop	bc
;./../game/util.c:245: LOC_DEL(Prm, obj);
	push	de
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
	pop	de
	ld	a, #<(_g_Loc)
	add	a, l
	ld	l, a
	ld	a, #>(_g_Loc)
	adc	a, h
	ld	h, a
	add	hl, de
	ld	a, (hl)
	and	a, -5 (ix)
	ld	(hl), a
;./../game/util.c:246: if (IN29(Wear, obj)) SET_DEL(Wear, obj);
	ld	a, c
	dec	a
	and	a, #0x07
	ld	-2 (ix), a
	bit	0, -4 (ix)
	jr	nz, 00106$
	ld	hl, #_Wear+0
	add	hl, de
	ld	a, (hl)
	ld	b, -2 (ix)
	ld	-1 (ix), a
	inc	b
	jr	00273$
00272$:
	srl	-1 (ix)
00273$:
	djnz	00272$
	bit	0, -1 (ix)
	jr	z, 00106$
	and	a, -3 (ix)
	ld	(hl), a
00106$:
;./../game/util.c:247: if (obj == SatchCon) SatchCon = Null;
	ld	a, (_SatchCon)
	sub	a, c
	jr	nz, 00110$
	ld	(#_SatchCon), a
00110$:
;./../game/util.c:248: if (obj == MugCon) MugCon = Null;
	ld	a, (_MugCon)
	sub	a, c
	jr	nz, 00112$
	ld	(#_MugCon), a
00112$:
;./../game/util.c:249: if (obj == 16) Min(6);
	ld	a, c
	sub	a, #0x10
	ld	a, #0x01
	jr	z, 00280$
	xor	a, a
00280$:
	ld	b, a
	or	a, a
	jr	z, 00114$
	push	bc
	push	de
	ld	a, #0x06
	call	_Min
	pop	de
	pop	bc
00114$:
;./../game/util.c:250: if (obj == NicheCon) NicheCon = Null;
	ld	a, (_NicheCon)
	sub	a, c
	jr	nz, 00116$
	ld	(#_NicheCon), a
00116$:
;./../game/util.c:251: if (obj == PyraCon) PyraCon = Null;
	ld	a, (_PyraCon)
	sub	a, c
	jr	nz, 00118$
	ld	(#_PyraCon), a
00118$:
;./../game/util.c:252: if (obj == HingeCon) HingeCon = Null;
	ld	a, (_HingeCon)
	sub	a, c
	jr	nz, 00120$
	ld	(#_HingeCon), a
00120$:
;./../game/util.c:253: if (obj == PodumCon) PodumCon = Null;
	ld	a, (_PodumCon)
	sub	a, c
	jr	nz, 00122$
	ld	(#_PodumCon), a
00122$:
;./../game/util.c:254: if (obj == 16) { Min(37); Min(6); }
	ld	a, b
	or	a, a
	jr	z, 00124$
	push	bc
	push	de
	ld	a, #0x25
	call	_Min
	ld	a, #0x06
	call	_Min
	pop	de
	pop	bc
00124$:
;./../game/util.c:255: if (obj == RobotCon) RobotCon = Null;
	ld	a, (_RobotCon)
	sub	a, c
	jr	nz, 00126$
	ld	(#_RobotCon), a
00126$:
;./../game/util.c:256: if (IN29(Socket, obj)) SET_DEL(Socket, obj);
	bit	0, -4 (ix)
	jr	nz, 00128$
	ld	hl, #_Socket+0
	add	hl, de
	ld	e, (hl)
	ld	b, -2 (ix)
	ld	a, e
	inc	b
	jr	00292$
00291$:
	srl	a
00292$:
	djnz	00291$
	rrca
	jr	nc, 00128$
	ld	a, e
	and	a, -3 (ix)
	ld	(hl), a
00128$:
;./../game/util.c:257: if (obj == HolstCon) HolstCon = Null;
	ld	a, (_HolstCon)
	sub	a, c
	jr	nz, 00133$
	ld	(#_HolstCon), a
00133$:
;./../game/util.c:258: }
	ld	sp, ix
	pop	ix
	ret
;./../game/util.c:260: void Crazy(void) { SF(); RL(Rnd(7) + 127); }
;	---------------------------------
; Function Crazy
; ---------------------------------
_Crazy::
	call	_SF
	ld	hl, #0x0007
	call	_Rnd
	ld	hl, #0x007f
	add	hl, de
	jp	_RL
;./../game/util.c:262: void NoSense(void) { RL(190); }
;	---------------------------------
; Function NoSense
; ---------------------------------
_NoSense::
	ld	hl, #0x00be
	jp	_RL
;./../game/util.c:264: void Say(const char* what1, const char* what2)
;	---------------------------------
; Function Say
; ---------------------------------
_Say::
;./../game/util.c:266: SF();
	push	hl
	push	de
	call	_SF
;./../game/util.c:267: Wr("The "); Wr(what1); Wr(" is already "); Wr(what2); Wr("."); Wln();
	ld	hl, #___str_7
	call	_Wr
	pop	de
	pop	hl
	push	de
	call	_Wr
	ld	hl, #___str_8
	call	_Wr
	pop	de
	ex	de, hl
	call	_Wr
	ld	hl, #___str_9
	call	_Wr
;./../game/util.c:268: }
	jp	_Wln
___str_7:
	.ascii "The "
	.db 0x00
___str_8:
	.ascii " is already "
	.db 0x00
___str_9:
	.ascii "."
	.db 0x00
;./../game/util.c:271: void TransportNoise(void)
;	---------------------------------
; Function TransportNoise
; ---------------------------------
_TransportNoise::
;./../game/util.c:274: for (yy = 60; yy >= 1; yy--) for (xx = 800; xx >= 1; xx--) Sound((u16)(xx * yy));
	ld	de, #0x003c
00113$:
	ld	bc, #0x0320
00103$:
	push	bc
	push	de
	ld	l, c
	ld	h, b
	call	__mulint
	ex	de, hl
	call	_Sound
	pop	de
	pop	bc
	dec	bc
	ld	l, c
	ld	h, b
	ld	a, l
	sub	a, #0x01
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00103$
	dec	de
	ld	c, e
	ld	b, d
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00113$
;./../game/util.c:275: NoSound();
;./../game/util.c:276: }
	jp	_NoSound
;./../game/util.c:299: void SetNoun(u8 n, u8 alt) { g_N[n] = g_NounAlt[alt]; }
;	---------------------------------
; Function SetNoun
; ---------------------------------
_SetNoun::
	ld	e, a
	ld	c, l
	ld	hl, #_g_N+0
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	ex	de, hl
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	bc, #_g_NounAlt
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
	ret
_g_NounAlt:
	.dw __str_10
	.dw __str_11
	.dw __str_12
	.dw __str_13
	.dw __str_14
	.dw __str_15
	.dw __str_16
	.dw __str_17
	.dw __str_18
	.dw __str_19
	.dw __str_20
	.dw __str_21
	.dw __str_22
	.dw __str_23
	.dw __str_24
__str_10:
	.ascii "reactor regulat"
	.db 0x5c
	.db 0x00
__str_11:
	.ascii "hinged mouth"
	.db 0x5c
	.ascii "mouth"
	.db 0x5c
	.ascii "hinge"
	.db 0x5c
	.db 0x00
__str_12:
	.ascii "middle table"
	.db 0x5c
	.ascii "middle"
	.db 0x5c
	.db 0x00
__str_13:
	.ascii "bar"
	.db 0x5c
	.db 0x00
__str_14:
	.ascii "glass ball"
	.db 0x5c
	.ascii "ball"
	.db 0x5c
	.ascii "glass"
	.db 0x5c
	.db 0x00
__str_15:
	.ascii "dusty ball"
	.db 0x5c
	.ascii "ball"
	.db 0x5c
	.ascii "dusty"
	.db 0x5c
	.db 0x00
__str_16:
	.ascii "sockets"
	.db 0x5c
	.ascii "socket"
	.db 0x5c
	.db 0x00
__str_17:
	.ascii "laser beam"
	.db 0x5c
	.ascii "beam"
	.db 0x5c
	.ascii "laser"
	.db 0x5c
	.db 0x00
__str_18:
	.ascii "speaker"
	.db 0x5c
	.db 0x00
__str_19:
	.ascii "cyan button"
	.db 0x5c
	.ascii "cyan"
	.db 0x5c
	.db 0x00
__str_20:
	.ascii "solar map"
	.db 0x5c
	.ascii "map"
	.db 0x5c
	.ascii "solar"
	.db 0x5c
	.ascii "drawing"
	.db 0x5c
	.db 0x00
__str_21:
	.ascii "keyhole"
	.db 0x5c
	.db 0x00
__str_22:
	.ascii "podium"
	.db 0x5c
	.ascii "alter"
	.db 0x5c
	.ascii "column"
	.db 0x5c
	.db 0x00
__str_23:
	.ascii "pyramid"
	.db 0x5c
	.ascii "podium"
	.db 0x5c
	.db 0x00
__str_24:
	.ascii "laser beam"
	.db 0x5c
	.ascii "laser"
	.db 0x5c
	.ascii "beam"
	.db 0x5c
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
