;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rt_msx
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TextPool_Read
	.globl _TextPool_Load
	.globl _DOSMapper_GetPage2
	.globl _DOSMapper_SetPage2
	.globl _DOSMapper_Init
	.globl _Txt_Draw
	.globl _Txt_SetColor
	.globl _Txt_Init
	.globl _VDP_CommandSetupR36
	.globl _VDP_CommandSetupR32
	.globl _VDP_CommandWait
	.globl _VDP_SetPaletteEntry
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _VDP_SetMode
	.globl _DOS_FindNextEntry
	.globl _DOS_FindFirstEntry
	.globl _DOS_Exit
	.globl _DOS_WriteHandle
	.globl _DOS_ReadHandle
	.globl _DOS_CloseHandle
	.globl _DOS_CreateHandle
	.globl _DOS_OpenHandle
	.globl _DOS_CharOutput
	.globl _g_Page2
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
	.globl _Page2Set
	.globl _ScreenFlush
	.globl _Wr
	.globl _WrC
	.globl _WrNum
	.globl _Wln
	.globl _TextColor
	.globl _TextBackground
	.globl _Gotoxy
	.globl _Wherex
	.globl _Wherey
	.globl _Window
	.globl _ClrScr
	.globl _InsLine
	.globl _Border
	.globl _CursorShape
	.globl _KeyPressed
	.globl _GetKey
	.globl _ReadLn
	.globl _Delay
	.globl _Randomize
	.globl _Rnd
	.globl _Sound
	.globl _NoSound
	.globl _ReadText
	.globl _FileWrite2
	.globl _FileRead2
	.globl _ListSaveFiles
	.globl _Halt
	.globl _ClearData
	.globl _ScreenBegin
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
_g_Defer:
	.ds 1
_g_Pending:
	.ds 1
_g_Page2::
	.ds 1
_g_Bl:
	.ds 280
_g_BlN:
	.ds 1
_g_PhaseJ:
	.ds 2
_s_PsgReg:
	.ds 1
_s_PsgVal:
	.ds 1
_g_Page2Orig:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_wx1:
	.ds 1
_wy1:
	.ds 1
_wx2:
	.ds 1
_wy2:
	.ds 1
_ww:
	.ds 1
_wh:
	.ds 1
_cx:
	.ds 1
_cy:
	.ds 1
_g_Fg:
	.ds 1
_g_Bg:
	.ds 1
_g_Blink:
	.ds 1
_g_CursorShape:
	.ds 1
_g_Phase:
	.ds 1
_g_LastSoundJ:
	.ds 2
_g_Rnd:
	.ds 2
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
;./../game/rt_msx.c:34: void Page2Set(u8 seg)
;	---------------------------------
; Function Page2Set
; ---------------------------------
_Page2Set::
;./../game/rt_msx.c:36: g_Page2 = seg;
	ld	(#_g_Page2), a
;./../game/rt_msx.c:37: DOSMapper_SetPage2(seg);
;./../game/rt_msx.c:38: }
	jp	_DOSMapper_SetPage2
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
;./../game/rt_msx.c:40: static void SetWindow(void)
;	---------------------------------
; Function SetWindow
; ---------------------------------
_SetWindow:
;./../game/rt_msx.c:42: ww = wx2 - wx1 + 1;
	ld	hl, #_wx1
	ld	a, (_wx2+0)
	sub	a, (hl)
	inc	a
	ld	(#_ww), a
;./../game/rt_msx.c:43: wh = wy2 - wy1 + 1;
	ld	hl, #_wy1
	ld	a, (_wy2+0)
	sub	a, (hl)
	inc	a
	ld	(#_wh), a
;./../game/rt_msx.c:44: g_Defer = (wx1 == 2 && wy1 == 5 && wx2 == 79 && wy2 == 24);
	ld	a, (_wx1)
	sub	a, #0x02
	jr	nz, 00103$
	ld	a, (_wy1)
	sub	a, #0x05
	jr	nz, 00103$
	ld	a, (_wx2)
	sub	a, #0x4f
	jr	nz, 00103$
	ld	a, (_wy2)
	sub	a, #0x18
	jr	z, 00104$
00103$:
	xor	a, a
	jr	00105$
00104$:
	ld	a, #0x01
00105$:
	ld	(#_g_Defer), a
;./../game/rt_msx.c:45: }
	ret
;./../game/rt_msx.c:48: static void FillRows(u8 col0, u8 ncols, u8 row0, u8 nrows)
;	---------------------------------
; Function FillRows
; ---------------------------------
_FillRows:
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ld	-1 (ix), a
	ld	e, l
;./../game/rt_msx.c:50: VDP_CommandWait();
	call	_VDP_CommandWait
;./../game/rt_msx.c:51: VDP_CommandHMMV(PX(col0), PY(row0), ncols * 6, nrows * 8, g_Bg * 17);
	ld	a, (_g_Bg)
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	add	a, c
	ld	-4 (ix), a
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0x0006
	add	hl, de
	ex	de, hl
	ld	a, -1 (ix)
	push	de
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	de, #0x0010
	add	hl, de
	pop	de
;E:\supernova\MSXgl\engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	((_g_VDP_Command + 4)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), de
;E:\supernova\MSXgl\engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	hl, #(_g_VDP_Command + 8)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	((_g_VDP_Command + 10)), bc
;E:\supernova\MSXgl\engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	a, -4 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	hl, #_g_VDP_Command + 13
	ld	(hl), #0x00
;E:\supernova\MSXgl\engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #_g_VDP_Command + 14
	ld	(hl), #0xc0
;E:\supernova\MSXgl\engine/src/vdp_inl.h:174: VDP_CommandSetupR36();
	call	_VDP_CommandSetupR36
;./../game/rt_msx.c:52: VDP_CommandWait();
	call	_VDP_CommandWait
;./../game/rt_msx.c:53: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./../game/rt_msx.c:55: static void CopyRows(u8 col0, u8 ncols, u8 srow, u8 drow, u8 nrows)
;	---------------------------------
; Function CopyRows
; ---------------------------------
_CopyRows:
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
	ld	e, a
	ld	c, l
;./../game/rt_msx.c:57: VDP_CommandWait();
	call	_VDP_CommandWait
;./../game/rt_msx.c:58: VDP_CommandHMMM(PX(col0), PY(srow), PX(col0), PY(drow), ncols * 6, nrows * 8);
	ld	l, 6 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0006
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	de, #0x0010
	add	hl, de
	ex	de, hl
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #0x0006
	add	hl, de
	pop	de
;E:\supernova\MSXgl\engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	(_g_VDP_Command), de
;E:\supernova\MSXgl\engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:\supernova\MSXgl\engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #(_g_VDP_Command + 8)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #_g_VDP_Command + 13
	ld	(hl), #0x00
;E:\supernova\MSXgl\engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #_g_VDP_Command + 14
	ld	(hl), #0xd0
;E:\supernova\MSXgl\engine/src/vdp_inl.h:113: VDP_CommandSetupR32();
	call	_VDP_CommandSetupR32
;./../game/rt_msx.c:59: VDP_CommandWait();
	call	_VDP_CommandWait
;./../game/rt_msx.c:60: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;./../game/rt_msx.c:71: static void BlKill(u8 col0, u8 col1, u8 row)    // remove regions overlapping columns col0..col1 of `row` (absolute 0-based)
;	---------------------------------
; Function BlKill
; ---------------------------------
_BlKill:
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-9
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;./../game/rt_msx.c:74: while (i < g_BlN)
	ld	-1 (ix), #0x00
00106$:
	ld	a, -1 (ix)
	ld	iy, #_g_BlN
	sub	a, 0 (iy)
	jp	nc, 00109$
;./../game/rt_msx.c:76: BlinkRegion* r = &g_Bl[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	de, #_g_Bl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ex	(sp), hl
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
;./../game/rt_msx.c:77: if (r->row == row && r->col <= col1 && (u8)(r->col + r->len - 1) >= col0)
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	inc	hl
	ld	a, (hl)
	sub	a, 4 (ix)
	jr	nz, 00102$
	pop	de
	pop	hl
	push	hl
	push	de
	ld	c, (hl)
	ld	a, -3 (ix)
	sub	a, c
	jr	c, 00102$
	pop	de
	pop	hl
	push	hl
	inc	hl
	inc	hl
	push	de
	ld	l, (hl)
	add	hl, bc
	dec	l
	ld	a, l
	sub	a, -2 (ix)
	jr	c, 00102$
;./../game/rt_msx.c:78: g_Bl[i] = g_Bl[--g_BlN];
	ld	hl, #_g_BlN
	dec	(hl)
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Bl
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	ld	bc, #0x0023
	push	bc
	call	___memcpy
	jp	00106$
00102$:
;./../game/rt_msx.c:80: i++;
	inc	-1 (ix)
	jp	00106$
00109$:
;./../game/rt_msx.c:82: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./../game/rt_msx.c:84: static void BlClearWindow(void)
;	---------------------------------
; Function BlClearWindow
; ---------------------------------
_BlClearWindow:
	call	___sdcc_enter_ix
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;./../game/rt_msx.c:87: while (i < g_BlN)
	ld	c, #0x00
00107$:
	ld	a, c
	ld	iy, #_g_BlN
	sub	a, 0 (iy)
	jp	nc, 00110$
;./../game/rt_msx.c:89: BlinkRegion* r = &g_Bl[i];
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Bl
	add	hl, de
	ex	(sp), hl
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
;./../game/rt_msx.c:90: if (r->row + 1 >= wy1 && r->row + 1 <= wy2 && r->col + 1 >= wx1 && r->col + 1 <= wx2)
	pop	de
	pop	hl
	push	hl
	inc	hl
	push	de
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, (_wy1)
	ld	b, a
	ld	e, #0x00
	ld	a, -2 (ix)
	sub	a, b
	ld	a, -1 (ix)
	sbc	a, e
	jr	c, 00102$
	ld	a, (_wy2)
	ld	e, #0x00
	sub	a, -2 (ix)
	ld	a, e
	sbc	a, -1 (ix)
	jr	c, 00102$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	a, (_wx1)
	ld	b, a
	ld	l, #0x00
	ld	a, e
	sub	a, b
	ld	a, d
	sbc	a, l
	jr	c, 00102$
	ld	a, (_wx2)
	ld	l, a
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	c, 00102$
;./../game/rt_msx.c:91: g_Bl[i] = g_Bl[--g_BlN];
	ld	hl, #_g_BlN
	dec	(hl)
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #_g_Bl
	add	hl, de
	ex	de, hl
	ld	a, -6 (ix)
	ld	b, -5 (ix)
	push	bc
	ld	hl, #0x0023
	push	hl
	ld	l, a
	ld	h, b
	call	___memcpy
	pop	bc
	jp	00107$
00102$:
;./../game/rt_msx.c:93: i++;
	inc	c
	jp	00107$
00110$:
;./../game/rt_msx.c:95: }
	ld	sp, ix
	pop	ix
	ret
;./../game/rt_msx.c:97: static void BlShiftUp(void)    // the main window scrolled up by one line
;	---------------------------------
; Function BlShiftUp
; ---------------------------------
_BlShiftUp:
	call	___sdcc_enter_ix
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;./../game/rt_msx.c:100: while (i < g_BlN)
	ld	c, #0x00
00108$:
	ld	a, c
	ld	iy, #_g_BlN
	sub	a, 0 (iy)
	jp	nc, 00111$
;./../game/rt_msx.c:102: BlinkRegion* r = &g_Bl[i];
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Bl
	add	hl, de
	ex	(sp), hl
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
;./../game/rt_msx.c:103: if (r->row + 1 >= wy1 && r->row + 1 <= wy2 && r->col + 1 >= wx1 && r->col + 1 <= wx2)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	inc	hl
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
	ld	-5 (ix), a
	ld	e, a
	ld	d, #0x00
	inc	de
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	a, (_wy1+0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jr	c, 00104$
	ld	a, (_wy2)
	ld	e, #0x00
	sub	a, -4 (ix)
	ld	a, e
	sbc	a, -3 (ix)
	jr	c, 00104$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	a, (_wx1)
	ld	b, a
	ld	l, #0x00
	ld	a, e
	sub	a, b
	ld	a, d
	sbc	a, l
	jr	c, 00104$
	ld	a, (_wx2)
	ld	l, a
	xor	a, a
	ld	h, a
	sbc	hl, de
	jr	c, 00104$
;./../game/rt_msx.c:105: if (r->row + 1 == wy1) { g_Bl[i] = g_Bl[--g_BlN]; continue; }
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	jr	nz, 00102$
	ld	a, -3 (ix)
	or	a, a
	jr	nz, 00102$
	ld	hl, #_g_BlN
	dec	(hl)
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #_g_Bl
	add	hl, de
	ex	de, hl
	ld	a, -11 (ix)
	ld	b, -10 (ix)
	push	bc
	ld	hl, #0x0023
	push	hl
	ld	l, a
	ld	h, b
	call	___memcpy
	pop	bc
	jp	00108$
00102$:
;./../game/rt_msx.c:106: r->row--;
	ld	a, -5 (ix)
	dec	a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
00104$:
;./../game/rt_msx.c:108: i++;
	inc	c
	jp	00108$
00111$:
;./../game/rt_msx.c:110: }
	ld	sp, ix
	pop	ix
	ret
;./../game/rt_msx.c:113: static void DrawCells(u8 col, u8 prow, const char* s, u8 n, u8 fg, u8 bg)
;	---------------------------------
; Function DrawCells
; ---------------------------------
_DrawCells:
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-83
	add	iy, sp
	ld	sp, iy
	ld	c, a
	ld	b, l
;./../game/rt_msx.c:117: for (i = 0; i < n; i++) b[i] = s[i];
	ld	-1 (ix), #0x00
00103$:
	ld	a, -1 (ix)
	sub	a, 6 (ix)
	jr	nc, 00101$
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, 4 (ix)
	add	a, -1 (ix)
	ld	e, a
	ld	a, 5 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	inc	-1 (ix)
	jr	00103$
00101$:
;./../game/rt_msx.c:118: b[n] = 0;
	ld	e, 6 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	(hl), #0x00
;./../game/rt_msx.c:119: Txt_SetColor(fg, bg);
	push	bc
	ld	l, 8 (ix)
	ld	a, 7 (ix)
	call	_Txt_SetColor
	pop	bc
;./../game/rt_msx.c:120: Txt_Draw(col, prow, b);
	ld	hl, #0
	add	hl, sp
	push	hl
	ld	l, b
	ld	a, c
	call	_Txt_Draw
;./../game/rt_msx.c:121: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	inc	sp
	jp	(hl)
;./../game/rt_msx.c:124: static u8 PhysRow(u8 r)
;	---------------------------------
; Function PhysRow
; ---------------------------------
_PhysRow:
;./../game/rt_msx.c:126: u8 v = r + g_Pending;
	ld	hl, #_g_Pending
	add	a, (hl)
	ld	c, a
;./../game/rt_msx.c:127: if (v > wh) return wy2 + 1 + (v - wh);    // virtual rows start at 0-based row 26
	ld	a, (_wh+0)
	sub	a, c
	jr	nc, 00102$
	ld	a, (_wy2)
	ld	b, a
	inc	b
	ld	hl, #_wh
	ld	a, c
	sub	a, (hl)
	add	a, b
	ret
00102$:
;./../game/rt_msx.c:128: return wy1 - 1 + v - 1;
	ld	a, (_wy1+0)
	add	a, c
	add	a, #0xfe
;./../game/rt_msx.c:129: }
	ret
;./../game/rt_msx.c:131: static void DrawRun(u8 col, const char* s, u8 n)    // col: 0-based absolute column, at the cursor's row
;	---------------------------------
; Function DrawRun
; ---------------------------------
_DrawRun:
	call	___sdcc_enter_ix
	push	af
	push	af
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;./../game/rt_msx.c:133: u8 arow = wy1 - 1 + cy - 1;
	ld	hl, #_cy
	ld	a, (_wy1+0)
	add	a, (hl)
	add	a, #0xfe
	ld	b, a
;./../game/rt_msx.c:134: BlKill(col, col + n - 1, arow);
	ld	a, c
	add	a, 4 (ix)
	ld	l, a
	dec	l
	push	bc
	push	bc
	inc	sp
	ld	a, c
	call	_BlKill
;./../game/rt_msx.c:135: DrawCells(col, PhysRow(cy), s, n, g_Fg, g_Bg);
	ld	a, (_cy)
	call	_PhysRow
	ld	e, a
	pop	bc
	push	bc
	ld	a, (_g_Bg)
	ld	h, a
	ld	a, (_g_Fg)
	ld	l, a
	push	hl
	ld	a, 4 (ix)
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	ld	l, e
	ld	a, c
	call	_DrawCells
	pop	bc
;./../game/rt_msx.c:136: if (g_Blink && n <= BL_TEXT && g_BlN < BL_MAX)
	ld	a, (_g_Blink+0)
	or	a, a
	jr	z, 00109$
	ld	a, #0x1e
	sub	a, 4 (ix)
	jr	c, 00109$
	ld	a, (_g_BlN+0)
	sub	a, #0x08
	jr	nc, 00109$
;./../game/rt_msx.c:138: BlinkRegion* r = &g_Bl[g_BlN++];
	ld	a, (_g_BlN)
	ld	e, a
	ld	hl, #_g_BlN
	inc	(hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #_g_Bl
	add	hl, de
	ex	de, hl
;./../game/rt_msx.c:140: r->col = col; r->row = arow; r->len = n; r->fg = g_Fg; r->bg = g_Bg;
	ld	a, c
	ld	(de), a
	ld	l, e
	ld	h, d
	inc	hl
	ld	(hl), b
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, 4 (ix)
	ld	(bc), a
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	inc	bc
	ld	a, (_g_Fg)
	ld	(bc), a
	ld	hl, #0x0004
	add	hl, de
	ld	a, (_g_Bg)
	ld	(hl), a
;./../game/rt_msx.c:141: for (i = 0; i < n; i++) r->text[i] = s[i];
	ld	hl, #0x0005
	add	hl, de
	ex	(sp), hl
	ld	e, #0x00
00107$:
	ld	a, e
	sub	a, 4 (ix)
	jr	nc, 00109$
	pop	hl
	push	hl
	ld	d, #0x00
	add	hl, de
	ld	a, e
	add	a, -2 (ix)
	ld	c, a
	ld	a, #0x00
	adc	a, -1 (ix)
	ld	b, a
	ld	a, (bc)
	ld	(hl), a
	inc	e
	jr	00107$
00109$:
;./../game/rt_msx.c:143: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./../game/rt_msx.c:145: static void Flush(void)
;	---------------------------------
; Function Flush
; ---------------------------------
_Flush:
;./../game/rt_msx.c:147: u8 k = g_Pending;
	ld	a, (_g_Pending)
;./../game/rt_msx.c:148: if (!k) return;
;./../game/rt_msx.c:149: if (k < wh)
	ld	c,a
	or	a,a
	ret	z
	ld	hl, #_wh
	sub	a, (hl)
	jr	nc, 00104$
;./../game/rt_msx.c:150: CopyRows(wx1 - 1, ww, wy1 - 1 + k, wy1 - 1, wh - k);
	ld	a, (_wh+0)
	sub	a, c
	ld	b, a
	ld	a, (_wy1)
	ld	l, a
	dec	l
	ld	a, c
	add	a, l
	ld	iy, #_wx1
	ld	e, 0 (iy)
	dec	e
	push	bc
	push	bc
	inc	sp
	ld	h, l
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, e
	call	_CopyRows
	pop	bc
00104$:
;./../game/rt_msx.c:151: CopyRows(wx1 - 1, ww, wy2 + 2, wy2 - k, k);
	ld	a, (_wy2+0)
	sub	a, c
	ld	b, a
	ld	a, (_wy2)
	add	a, #0x02
	ld	l, a
	ld	a, (_wx1+0)
	ld	e, a
	dec	e
	ld	a, c
	push	af
	ld	c, l
	inc	sp
	push	bc
	ld	a, (_ww)
	ld	l, a
	ld	a, e
	call	_CopyRows
;./../game/rt_msx.c:152: g_Pending = 0;
	xor	a, a
	ld	(#_g_Pending), a
;./../game/rt_msx.c:153: }
	ret
;./../game/rt_msx.c:155: static void NewLine(void)
;	---------------------------------
; Function NewLine
; ---------------------------------
_NewLine:
;./../game/rt_msx.c:157: cx = 1;
	ld	hl, #_cx
	ld	(hl), #0x01
;./../game/rt_msx.c:158: if (cy < wh) { cy++; return; }
	ld	a, (_cy+0)
	ld	hl, #_wh
	sub	a, (hl)
	jr	nc, 00102$
	ld	hl, #_cy
	inc	(hl)
	ret
00102$:
;./../game/rt_msx.c:159: BlShiftUp();
	call	_BlShiftUp
;./../game/rt_msx.c:160: if (g_Defer)
	ld	a, (_g_Defer+0)
	or	a, a
	jr	z, 00108$
;./../game/rt_msx.c:162: if (g_Pending == MAX_PENDING) Flush();
	ld	a, (_g_Pending)
	sub	a, #0x05
	jr	nz, 00104$
	call	_Flush
00104$:
;./../game/rt_msx.c:163: g_Pending++;
	ld	hl, #_g_Pending
	inc	(hl)
;./../game/rt_msx.c:164: FillRows(wx1 - 1, ww, wy2 + 1 + g_Pending, 1);
	ld	a, (_wy2)
	ld	c, a
	inc	c
	ld	a, (_g_Pending)
	add	a, c
	ld	b, a
	ld	a, (_wx1)
	ld	c, a
	dec	c
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, c
	call	_FillRows
	ret
00108$:
;./../game/rt_msx.c:168: if (wh > 1) CopyRows(wx1 - 1, ww, wy1, wy1 - 1, wh - 1);
	ld	a, #0x01
	ld	hl, #_wh
	sub	a, (hl)
	jr	nc, 00106$
	ld	a, (_wh+0)
	ld	b, a
	dec	b
	ld	a, (_wy1)
	ld	d, a
	dec	d
	ld	a, (_wx1)
	ld	c, a
	dec	c
	push	bc
	inc	sp
	push	de
	inc	sp
	ld	a, (_wy1)
	push	af
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, c
	call	_CopyRows
00106$:
;./../game/rt_msx.c:169: FillRows(wx1 - 1, ww, wy2 - 1, 1);
	ld	a, (_wy2)
	ld	b, a
	dec	b
	ld	a, (_wx1)
	ld	c, a
	dec	c
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, c
	call	_FillRows
;./../game/rt_msx.c:171: }
	ret
;./../game/rt_msx.c:173: void ScreenFlush(void) { Flush(); }
;	---------------------------------
; Function ScreenFlush
; ---------------------------------
_ScreenFlush::
	jp	_Flush
;./../game/rt_msx.c:175: void Wr(const char* s)
;	---------------------------------
; Function Wr
; ---------------------------------
_Wr::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
	ld	c, l
	ld	b, h
;./../game/rt_msx.c:178: while (*s)
00118$:
	ld	a, (bc)
	or	a, a
	jp	z, 00121$
;./../game/rt_msx.c:180: u8 c = (u8)*s;
;./../game/rt_msx.c:181: if (c == '\n') { NewLine(); s++; continue; }
	ld	e, c
	ld	d, b
	inc	de
	cp	a, #0x0a
	jr	nz, 00102$
	push	de
	call	_NewLine
	pop	bc
	jr	00118$
00102$:
;./../game/rt_msx.c:182: if (c == '\r') { cx = 1; s++; continue; }
	cp	a, #0x0d
	jr	nz, 00104$
	ld	hl, #_cx
	ld	(hl), #0x01
	ld	c, e
	ld	b, d
	jr	00118$
00104$:
;./../game/rt_msx.c:183: if (c == 8) { if (cx > 1) cx--; s++; continue; }
	cp	a, #0x08
	jr	nz, 00108$
	ld	a, #0x01
	ld	hl, #_cx
	sub	a, (hl)
	jr	nc, 00106$
	ld	hl, #_cx
	dec	(hl)
00106$:
	ld	c, e
	ld	b, d
	jr	00118$
00108$:
;./../game/rt_msx.c:184: if (c < 32) { s++; continue; }
	sub	a, #0x20
	jr	nc, 00110$
	ld	c, e
	ld	b, d
	jr	00118$
00110$:
;./../game/rt_msx.c:185: room = ww - cx + 1;
	ld	hl, #_cx
	ld	a, (_ww+0)
	sub	a, (hl)
	ld	e, a
	inc	e
;./../game/rt_msx.c:187: while (s[n] && (u8)s[n] >= 32 && n < room) n++;
	ld	-1 (ix), #0x00
00113$:
	ld	a, c
	add	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-2 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	or	a, a
	jr	z, 00115$
	sub	a, #0x20
	jr	c, 00115$
	ld	a, -1 (ix)
	sub	a, e
	jr	nc, 00115$
	inc	-1 (ix)
	jr	00113$
00115$:
;./../game/rt_msx.c:188: DrawRun(wx1 - 1 + cx - 1, s, n);
	ld	hl, #_cx
	ld	a, (_wx1+0)
	add	a, (hl)
	add	a, #0xfe
	ld	h, -1 (ix)
	push	hl
	inc	sp
	ld	e, c
	ld	d, b
	call	_DrawRun
;./../game/rt_msx.c:189: cx += n; s += n;
	ld	hl, #_cx
	ld	a, -1 (ix)
	add	a, (hl)
	ld	(hl), a
	pop	bc
	push	bc
;./../game/rt_msx.c:190: if (cx > ww) NewLine();
	ld	a, (_ww+0)
	ld	hl, #_cx
	sub	a, (hl)
	jp	nc, 00118$
	push	bc
	call	_NewLine
	pop	bc
	jp	00118$
00121$:
;./../game/rt_msx.c:192: }
	ld	sp, ix
	pop	ix
	ret
;./../game/rt_msx.c:194: void WrC(char c)
;	---------------------------------
; Function WrC
; ---------------------------------
_WrC::
	push	af
	ld	c, a
;./../game/rt_msx.c:197: t[0] = c; t[1] = 0;
	ld	hl, #0
	add	hl, sp
	ld	(hl), c
	push	hl
	ld	iy, #3
	add	iy, sp
	ld	0 (iy), #0x00
	pop	hl
;./../game/rt_msx.c:198: Wr(t);
	call	_Wr
;./../game/rt_msx.c:199: }
	pop	af
	ret
;./../game/rt_msx.c:201: void WrNum(i16 n)
;	---------------------------------
; Function WrNum
; ---------------------------------
_WrNum::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-18
	add	iy, sp
	ld	sp, iy
	ld	c, l
	ld	b, h
;./../game/rt_msx.c:204: u8 k = 0, neg = 0;
	ld	-2 (ix), #0x00
;./../game/rt_msx.c:206: if (n < 0) { neg = 1; v = (u16)(-n); } else v = (u16)n;
	ld	d, b
	bit	7, d
	jr	z, 00102$
	ld	-2 (ix), #0x01
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
;./../game/rt_msx.c:207: do { t[k++] = '0' + v % 10; v /= 10; } while (v);
00102$:
	ld	-1 (ix), #0x00
00104$:
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	inc	-1 (ix)
	push	hl
	push	bc
	ld	de, #0x000a
	ld	l, c
	ld	h, b
	call	__moduint
	pop	bc
	pop	hl
	ld	a, e
	add	a, #0x30
	ld	(hl), a
	ld	de, #0x000a
	ld	l, c
	ld	h, b
	call	__divuint
	ld	a, e
	ld	c, a
	ld	b, d
	or	a, d
	jr	nz, 00104$
;./../game/rt_msx.c:208: if (neg) t[k++] = '-';
	ld	c, -1 (ix)
	ld	a, -2 (ix)
	or	a, a
	jr	z, 00126$
	ld	c, -1 (ix)
	inc	c
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	(hl), #0x2d
;./../game/rt_msx.c:212: for (i = 0; i < k; i++) o[i] = t[k - 1 - i];
00126$:
	ld	b, #0x00
00111$:
	ld	a, b
	sub	a, c
	jr	nc, 00109$
	ld	e, b
	ld	d, #0x00
	ld	hl, #8
	add	hl, sp
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, c
	dec	a
	sub	a, b
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
	inc	b
	jr	00111$
00109$:
;./../game/rt_msx.c:213: o[k] = 0;
	ld	e, c
	ld	d, #0x00
	ld	hl, #8
	add	hl, sp
	add	hl, de
	ld	(hl), #0x00
;./../game/rt_msx.c:214: Wr(o);
	ld	hl, #8
	add	hl, sp
	call	_Wr
;./../game/rt_msx.c:216: }
	ld	sp, ix
	pop	ix
	ret
;./../game/rt_msx.c:218: void Wln(void) { NewLine(); }
;	---------------------------------
; Function Wln
; ---------------------------------
_Wln::
	jp	_NewLine
;./../game/rt_msx.c:220: void TextColor(u8 c) { g_Fg = c & 15; g_Blink = c >= 16; }
;	---------------------------------
; Function TextColor
; ---------------------------------
_TextColor::
	ld	l, a
	and	a, #0x0f
	ld	(_g_Fg+0), a
	ld	a, l
	sub	a, #0x10
	ld	a, #0x00
	rla
	xor	a, #0x01
	ld	(#_g_Blink), a
	ret
;./../game/rt_msx.c:221: void TextBackground(u8 c) { g_Bg = c & 7; }
;	---------------------------------
; Function TextBackground
; ---------------------------------
_TextBackground::
	and	a, #0x07
	ld	(#_g_Bg), a
	ret
;./../game/rt_msx.c:223: void Gotoxy(u8 xx, u8 yy)
;	---------------------------------
; Function Gotoxy
; ---------------------------------
_Gotoxy::
	ld	c, a
	ld	b, l
;./../game/rt_msx.c:225: cx = xx < 1 ? 1 : (xx > ww ? ww : xx);
	ld	a, c
	sub	a, #0x01
	jr	nc, 00103$
	ld	a, #0x01
	jr	00104$
00103$:
	ld	a, (_ww+0)
	sub	a, c
	jr	nc, 00105$
	ld	a, (_ww)
	jr	00106$
00105$:
	ld	a, c
00106$:
00104$:
	ld	(#_cx), a
;./../game/rt_msx.c:226: cy = yy < 1 ? 1 : (yy > wh ? wh : yy);
	ld	a, b
	sub	a, #0x01
	jr	nc, 00107$
	ld	a, #0x01
	jr	00108$
00107$:
	ld	a, (_wh+0)
	sub	a, b
	jr	nc, 00109$
	ld	a, (_wh)
	jr	00110$
00109$:
	ld	a, b
00110$:
00108$:
	ld	(#_cy), a
;./../game/rt_msx.c:227: }
	ret
;./../game/rt_msx.c:228: u8 Wherex(void) { return cx; }
;	---------------------------------
; Function Wherex
; ---------------------------------
_Wherex::
	ld	a, (_cx)
	ret
;./../game/rt_msx.c:229: u8 Wherey(void) { return cy; }
;	---------------------------------
; Function Wherey
; ---------------------------------
_Wherey::
	ld	a, (_cy)
	ret
;./../game/rt_msx.c:231: void Window(u8 a, u8 b, u8 c, u8 d)
;	---------------------------------
; Function Window
; ---------------------------------
_Window::
	ld	h, a
;./../game/rt_msx.c:233: Flush();
	push	hl
	call	_Flush
	pop	hl
;./../game/rt_msx.c:234: wx1 = a; wy1 = b; wx2 = c; wy2 = d;
	ld	a, h
	ld	(_wx1+0), a
	ld	a, l
	ld	(_wy1), a
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(#_wx2), a
	ld	a, 1 (iy)
	ld	(#_wy2), a
;./../game/rt_msx.c:235: SetWindow();
	call	_SetWindow
;./../game/rt_msx.c:236: cx = cy = 1;
	ld	hl, #_cy
	ld	(hl), #0x01
	ld	hl, #_cx
	ld	(hl), #0x01
;./../game/rt_msx.c:237: }
	pop	hl
	pop	af
	jp	(hl)
;./../game/rt_msx.c:239: void ClrScr(void)
;	---------------------------------
; Function ClrScr
; ---------------------------------
_ClrScr::
;./../game/rt_msx.c:241: Flush();
	call	_Flush
;./../game/rt_msx.c:242: BlClearWindow();
	call	_BlClearWindow
;./../game/rt_msx.c:243: FillRows(wx1 - 1, ww, wy1 - 1, wh);
	ld	a, (_wy1)
	ld	b, a
	dec	b
	ld	a, (_wx1)
	ld	c, a
	dec	c
	ld	a, (_wh)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, c
	call	_FillRows
;./../game/rt_msx.c:244: cx = cy = 1;
	ld	hl, #_cy
	ld	(hl), #0x01
	ld	hl, #_cx
	ld	(hl), #0x01
;./../game/rt_msx.c:245: }
	ret
;./../game/rt_msx.c:247: void InsLine(void)
;	---------------------------------
; Function InsLine
; ---------------------------------
_InsLine::
;./../game/rt_msx.c:250: Flush();
	call	_Flush
;./../game/rt_msx.c:251: for (r = wh - 1; r >= cy; r--)    // bottom-up, so the rows do not overwrite each other
	ld	a, (_wh)
	ld	c, a
	dec	c
00103$:
;./../game/rt_msx.c:252: CopyRows(wx1 - 1, ww, wy1 - 1 + r - 1, wy1 - 1 + r, 1);
	ld	a, (_wx1)
	ld	b, a
	dec	b
;./../game/rt_msx.c:251: for (r = wh - 1; r >= cy; r--)    // bottom-up, so the rows do not overwrite each other
	ld	a, c
	ld	hl, #_cy
	sub	a, (hl)
	jr	c, 00101$
;./../game/rt_msx.c:252: CopyRows(wx1 - 1, ww, wy1 - 1 + r - 1, wy1 - 1 + r, 1);
	ld	a, (_wy1)
	dec	a
	add	a, c
	ld	d, a
	ld	a, (_wy1+0)
	add	a, c
	add	a, #0xfe
	push	bc
	ld	h, #0x01
	ld	l, d
	push	hl
	push	af
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, b
	call	_CopyRows
	pop	bc
;./../game/rt_msx.c:251: for (r = wh - 1; r >= cy; r--)    // bottom-up, so the rows do not overwrite each other
	dec	c
	jr	00103$
00101$:
;./../game/rt_msx.c:253: FillRows(wx1 - 1, ww, wy1 - 1 + cy - 1, 1);
	ld	hl, #_cy
	ld	a, (_wy1+0)
	add	a, (hl)
	add	a, #0xfe
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, (_ww)
	ld	l, a
	ld	a, b
	call	_FillRows
;./../game/rt_msx.c:254: }
	ret
;./../game/rt_msx.c:256: void Border(u8 colour) { VDP_SetColor(colour & 15); }
;	---------------------------------
; Function Border
; ---------------------------------
_Border::
	and	a, #0x0f
;E:\supernova\MSXgl\engine/src/vdp.h:724: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, a
	ld	a, #0x07
;./../game/rt_msx.c:256: void Border(u8 colour) { VDP_SetColor(colour & 15); }
	jp	_VDP_RegWrite
;./../game/rt_msx.c:259: static void CursorDraw(u8 on)
;	---------------------------------
; Function CursorDraw
; ---------------------------------
_CursorDraw:
	ld	c, a
;./../game/rt_msx.c:262: if (g_CursorShape == 3 || cx > ww) return;
	ld	a, (_g_CursorShape)
	sub	a, #0x03
	ret	z
	ld	a, (_ww+0)
	ld	hl, #_cx
	sub	a, (hl)
	ret	c
;./../game/rt_msx.c:263: col = wx1 - 1 + cx - 1;
	ld	hl, #_cx
	ld	a, (_wx1+0)
	add	a, (hl)
	add	a, #0xfe
	ld	b, a
;./../game/rt_msx.c:264: row = PhysRow(cy);
	push	bc
	ld	a, (_cy)
	call	_PhysRow
	ld	e, a
	pop	bc
;./../game/rt_msx.c:265: if (!on)
	ld	a, c
	or	a, a
	jr	nz, 00108$
;./../game/rt_msx.c:266: DrawCells(col, row, " ", 1, g_Fg, g_Bg);
	ld	a, (_g_Bg)
	push	af
	inc	sp
	ld	a, (_g_Fg)
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #___str_1
	push	hl
	ld	l, e
	ld	a, b
	call	_DrawCells
	ret
00108$:
;./../game/rt_msx.c:267: else if (g_CursorShape == 1)
	ld	a, (_g_CursorShape)
	dec	a
	jr	nz, 00105$
;./../game/rt_msx.c:268: DrawCells(col, row, "_", 1, g_Fg, g_Bg);
	ld	a, (_g_Bg)
	push	af
	inc	sp
	ld	a, (_g_Fg)
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #___str_2
	push	hl
	ld	l, e
	ld	a, b
	call	_DrawCells
	ret
00105$:
;./../game/rt_msx.c:270: DrawCells(col, row, " ", 1, g_Fg, g_Fg);
	ld	a, (_g_Fg)
	push	af
	inc	sp
	ld	a, (_g_Fg)
	ld	h, a
	ld	l, #0x01
	push	hl
	ld	hl, #___str_1
	push	hl
	ld	l, e
	ld	a, b
	call	_DrawCells
;./../game/rt_msx.c:271: }
	ret
___str_1:
	.ascii " "
	.db 0x00
___str_2:
	.ascii "_"
	.db 0x00
;./../game/rt_msx.c:273: static void BlinkDraw(void)
;	---------------------------------
; Function BlinkDraw
; ---------------------------------
_BlinkDraw:
	call	___sdcc_enter_ix
	push	af
	push	af
;./../game/rt_msx.c:276: for (i = 0; i < g_BlN; i++)
	ld	-1 (ix), #0x00
00103$:
	ld	a, -1 (ix)
	ld	hl, #_g_BlN
	sub	a, (hl)
	jr	nc, 00105$
;./../game/rt_msx.c:278: BlinkRegion* r = &g_Bl[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_g_Bl
	add	hl, de
	ld	c, l
	ld	b, h
;./../game/rt_msx.c:279: DrawCells(r->col, r->row, r->text, r->len, g_Phase ? r->fg : r->bg, r->bg);
	push	bc
	pop	iy
	ld	a, 4 (iy)
	ld	-4 (ix), a
	ld	a, (_g_Phase+0)
	or	a, a
	jr	z, 00107$
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	jr	00108$
00107$:
	ld	a, -4 (ix)
	ld	-3 (ix), a
00108$:
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (de)
	ld	-2 (ix), a
	ld	hl, #0x0005
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	inc	hl
	ld	l, (hl)
	ld	a, (bc)
	ld	h, -4 (ix)
	push	hl
	inc	sp
	ld	h, -3 (ix)
	push	hl
	inc	sp
	ld	h, -2 (ix)
	push	hl
	inc	sp
	push	de
	call	_DrawCells
;./../game/rt_msx.c:276: for (i = 0; i < g_BlN; i++)
	inc	-1 (ix)
	jr	00103$
00105$:
;./../game/rt_msx.c:281: }
	ld	sp, ix
	pop	ix
	ret
;./../game/rt_msx.c:283: void CursorShape(u8 n) { g_CursorShape = n; }
;	---------------------------------
; Function CursorShape
; ---------------------------------
_CursorShape::
	ld	(#_g_CursorShape), a
	ret
;./../game/rt_msx.c:293: static u8 ReadKeyBuffer(void)
;	---------------------------------
; Function ReadKeyBuffer
; ---------------------------------
_ReadKeyBuffer:
;./../game/rt_msx.c:300: __endasm;
	di
;./../game/rt_msx.c:301: p = *get;
	ld	hl, (#0xf3fa)
;./../game/rt_msx.c:302: c = *(volatile u8*)p;
	ld	c, l
	ld	b, h
;./../game/rt_msx.c:303: p++;
	inc	hl
	ld	a, (bc)
	ld	c, a
;./../game/rt_msx.c:304: if (p >= 0xFC18) p = 0xFBF0;
	ld	b, l
	ld	e, h
	ld	a, b
	sub	a, #0x18
	ld	a, e
	sbc	a, #0xfc
	jr	c, 00102$
	ld	hl, #0xfbf0
00102$:
;./../game/rt_msx.c:305: *get = p;
	ld	(0xf3fa), hl
;./../game/rt_msx.c:308: __endasm;
	ei
;./../game/rt_msx.c:309: return c;
	ld	a, c
;./../game/rt_msx.c:310: }
	ret
_g_ScanOfCode:
	.db #0xf1	; 241
	.db #0x3b	; 59
	.db #0xf2	; 242
	.db #0x3c	; 60
	.db #0xf3	; 243
	.db #0x3d	; 61
	.db #0xf4	; 244
	.db #0x3e	; 62
	.db #0xf5	; 245
	.db #0x3f	; 63
	.db #0xf6	; 246
	.db #0x40	; 64
	.db #0xf7	; 247
	.db #0x41	; 65	'A'
	.db #0xf8	; 248
	.db #0x42	; 66	'B'
	.db #0xf9	; 249
	.db #0x43	; 67	'C'
	.db #0xfa	; 250
	.db #0x44	; 68	'D'
	.db #0x1e	; 30
	.db #0x48	; 72	'H'
	.db #0x1f	; 31
	.db #0x50	; 80	'P'
	.db #0x1d	; 29
	.db #0x4b	; 75	'K'
	.db #0x1c	; 28
	.db #0x4d	; 77	'M'
	.db #0x0b	; 11
	.db #0x47	; 71	'G'
	.db #0x18	; 24
	.db #0x49	; 73	'I'
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x7f	; 127
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x00	; 0
;./../game/rt_msx.c:312: u8 KeyPressed(void)
;	---------------------------------
; Function KeyPressed
; ---------------------------------
_KeyPressed::
;./../game/rt_msx.c:314: return KEY_READY();
	ld	bc, (#0xf3fa)
	ld	hl, (#0xf3f8)
	xor	a, a
	sbc	hl, bc
	jr	nz, 00104$
	inc	a
00104$:
	xor	a, #0x01
;./../game/rt_msx.c:315: }
	ret
;./../game/rt_msx.c:317: u16 GetKey(void)
;	---------------------------------
; Function GetKey
; ---------------------------------
_GetKey::
	call	___sdcc_enter_ix
	push	af
;./../game/rt_msx.c:322: Flush();
	call	_Flush
;./../game/rt_msx.c:323: g_Phase = 1; g_PhaseJ = JIFFY();
	ld	hl, #_g_Phase
	ld	(hl), #0x01
	ld	hl, #0xfc9e
	ld	a, (hl)
	inc	hl
	ld	(_g_PhaseJ+0), a
	ld	a, (hl)
	ld	(_g_PhaseJ+1), a
;./../game/rt_msx.c:324: CursorDraw(1); curOn = 1;
	ld	a, #0x01
	call	_CursorDraw
;./../game/rt_msx.c:325: while (!KEY_READY())
00103$:
	ld	bc, (#0xf3fa)
	ld	hl, (#0xf3f8)
	xor	a, a
	sbc	hl, bc
	jr	nz, 00105$
;./../game/rt_msx.c:327: if ((u16)(JIFFY() - g_PhaseJ) >= 16)
	ld	bc, (#0xfc9e)
	ld	hl, #_g_PhaseJ
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	sbc	a, (hl)
	ld	b, a
	ld	a, c
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	c, 00103$
;./../game/rt_msx.c:329: g_PhaseJ = JIFFY();
	ld	hl, #0xfc9e
	ld	a, (hl)
	inc	hl
	ld	(_g_PhaseJ+0), a
	ld	a, (hl)
	ld	(_g_PhaseJ+1), a
;./../game/rt_msx.c:330: g_Phase = !g_Phase;
	ld	a, (_g_Phase+0)
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	(#_g_Phase), a
;./../game/rt_msx.c:331: CursorDraw(g_Phase);
	ld	a, (_g_Phase)
	call	_CursorDraw
;./../game/rt_msx.c:332: BlinkDraw();
	call	_BlinkDraw
	jr	00103$
00105$:
;./../game/rt_msx.c:335: if (g_BlN && !g_Phase) { g_Phase = 1; BlinkDraw(); }
	ld	a, (_g_BlN+0)
	or	a, a
	jr	z, 00107$
	ld	a, (_g_Phase+0)
	or	a, a
	jr	nz, 00107$
	ld	hl, #_g_Phase
	ld	(hl), #0x01
	call	_BlinkDraw
00107$:
;./../game/rt_msx.c:336: if (curOn) CursorDraw(0);
	xor	a, a
	call	_CursorDraw
;./../game/rt_msx.c:337: c = ReadKeyBuffer();
	call	_ReadKeyBuffer
	ld	-2 (ix), a
;./../game/rt_msx.c:338: for (t = g_ScanOfCode; t[0]; t += 2)
	ld	bc, #_g_ScanOfCode+0
	ld	e, c
	ld	d, b
00115$:
	ld	a, (de)
	ld	-1 (ix), a
	or	a, a
	jr	z, 00113$
;./../game/rt_msx.c:339: if (t[0] == c) return (u16)t[1] << 8;
	ld	a, -2 (ix)
	sub	a, -1 (ix)
	jr	nz, 00116$
	inc	bc
	ld	a, (bc)
	ld	d, a
	ld	e, #0x00
	jr	00117$
00116$:
;./../game/rt_msx.c:338: for (t = g_ScanOfCode; t[0]; t += 2)
	inc	de
	inc	de
	ld	c, e
	ld	b, d
	jr	00115$
00113$:
;./../game/rt_msx.c:340: return c;
	ld	e, -2 (ix)
	ld	d, #0x00
00117$:
;./../game/rt_msx.c:341: }
	pop	af
	pop	ix
	ret
;./../game/rt_msx.c:343: void ReadLn(char* s, u8 maxlen)
;	---------------------------------
; Function ReadLn
; ---------------------------------
_ReadLn::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
	ld	c, l
	ld	b, h
;./../game/rt_msx.c:345: u8 n = 0;
	ld	-1 (ix), #0x00
;./../game/rt_msx.c:354: s[n] = 0;
00112$:
;./../game/rt_msx.c:349: k = GetKey();
	push	bc
	call	_GetKey
	pop	bc
;./../game/rt_msx.c:350: if ((k & 0xFF) == 13) break;
	ld	-3 (ix), e
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	sub	a, #0x0d
	or	a, -2 (ix)
	jr	z, 00111$
;./../game/rt_msx.c:351: if ((k & 0xFF) == 8) { if (n) { n--; WrC(8); WrC(' '); WrC(8); } }
	ld	a, -3 (ix)
	sub	a, #0x08
	or	a, -2 (ix)
	jr	nz, 00109$
	ld	a, -1 (ix)
	or	a, a
	jr	z, 00112$
	dec	-1 (ix)
	push	bc
	ld	a, #0x08
	call	_WrC
	ld	a, #0x20
	call	_WrC
	ld	a, #0x08
	call	_WrC
	pop	bc
	jr	00112$
00109$:
;./../game/rt_msx.c:352: else if ((k & 0xFF) >= 32 && n < maxlen) { s[n++] = (char)k; WrC((char)k); }
	ld	a, -3 (ix)
	sub	a, #0x20
	jr	c, 00112$
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	jr	nc, 00112$
	ld	l, -1 (ix)
	inc	-1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, e
	ld	(hl), a
	push	bc
	call	_WrC
	pop	bc
	jr	00112$
00111$:
;./../game/rt_msx.c:354: s[n] = 0;
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0x00
;./../game/rt_msx.c:355: Wln();
	call	_Wln
;./../game/rt_msx.c:356: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./../game/rt_msx.c:361: void Delay(u16 ms)
;	---------------------------------
; Function Delay
; ---------------------------------
_Delay::
;./../game/rt_msx.c:364: if (ms >= 200) Flush();
	ld	a, l
	sub	a, #0xc8
	ld	a, h
	sbc	a, #0x00
	jr	c, 00102$
	push	hl
	call	_Flush
	pop	hl
00102$:
;./../game/rt_msx.c:365: frames = (g_RG09SAV & 2) ? ms / 20 : ms / 17;
	ld	a, (_g_RG09SAV+0)
	bit	1, a
	jr	z, 00110$
	ld	de, #0x0014
	call	__divuint
	jr	00111$
00110$:
	ld	de, #0x0011
	call	__divuint
00111$:
	ld	a, e
	ld	c, a
	ld	b, d
;./../game/rt_msx.c:366: if (!frames) return;
	or	a, d
	ret	z
;./../game/rt_msx.c:367: g_LastSoundJ = 0xFFFF;
	ld	hl, #0xffff
	ld	(_g_LastSoundJ), hl
;./../game/rt_msx.c:368: start = JIFFY();
	ld	de, (#0xfc9e)
;./../game/rt_msx.c:369: while ((u16)(JIFFY() - start) < frames) { }
00105$:
	ld	hl, (#0xfc9e)
	cp	a, a
	sbc	hl, de
	xor	a, a
	sbc	hl, bc
	jr	c, 00105$
;./../game/rt_msx.c:370: }
	ret
;./../game/rt_msx.c:374: void Randomize(void) { g_Rnd ^= JIFFY() * 31 + 1; if (!g_Rnd) g_Rnd = 0x1D2B; }
;	---------------------------------
; Function Randomize
; ---------------------------------
_Randomize::
	ld	hl, (#0xfc9e)
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	inc	de
	ld	hl, (_g_Rnd)
	ld	a, l
	xor	a, e
	ld	l, a
	ld	a, h
	xor	a, d
	ld	h, a
	ld	(_g_Rnd), hl
	ld	a, (_g_Rnd+1)
	ld	hl, #_g_Rnd
	or	a, (hl)
	ret	nz
	ld	hl, #0x1d2b
	ld	(_g_Rnd), hl
	ret
;./../game/rt_msx.c:376: u16 Rnd(u16 n)
;	---------------------------------
; Function Rnd
; ---------------------------------
_Rnd::
	ex	de, hl
;./../game/rt_msx.c:378: g_Rnd ^= g_Rnd << 7;
	ld	hl, (_g_Rnd)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, (_g_Rnd+0)
	xor	a, l
	ld	(_g_Rnd+0), a
	ld	a, (_g_Rnd+1)
	xor	a, h
;./../game/rt_msx.c:379: g_Rnd ^= g_Rnd >> 9;
	ld	(_g_Rnd+1), a
	srl	a
	ld	c, a
	ld	a, (_g_Rnd+0)
	xor	a, c
;./../game/rt_msx.c:380: g_Rnd ^= g_Rnd << 8;
	ld	(_g_Rnd+0), a
	ld	hl, #_g_Rnd + 1
	xor	a, (hl)
	ld	(_g_Rnd+1), a
;./../game/rt_msx.c:381: if (n == 0) return 0;
	ld	a, d
	or	a, e
	jr	nz, 00102$
	ld	de, #0x0000
	ret
00102$:
;./../game/rt_msx.c:382: if (n < 256) return ((u16)(u8)(g_Rnd >> 8) * n) >> 8;
	ld	a, d
	sub	a, #0x01
	jr	nc, 00104$
	ld	a, (_g_Rnd + 1)
	ld	h, #0x00
	ld	l, a
	call	__mulint
	ld	e, d
	ld	d, #0x00
	ret
00104$:
;./../game/rt_msx.c:383: return g_Rnd % n;
	ld	hl, (_g_Rnd)
;./../game/rt_msx.c:384: }
	jp	__moduint
;./../game/rt_msx.c:390: static void PsgOut(void) __naked
;	---------------------------------
; Function PsgOut
; ---------------------------------
_PsgOut:
;./../game/rt_msx.c:400: __endasm;
	di
	ld a, (_s_PsgReg)
	out (#0xA0), a
	ld a, (_s_PsgVal)
	out (#0xA1), a
	ei
	ret
;./../game/rt_msx.c:401: }
;./../game/rt_msx.c:403: static void PsgWrite(u8 reg, u8 val)
;	---------------------------------
; Function PsgWrite
; ---------------------------------
_PsgWrite:
	ld	(_s_PsgReg), a
	ld	a, l
	ld	(_s_PsgVal), a
;./../game/rt_msx.c:407: PsgOut();
;./../game/rt_msx.c:408: }
	jp	_PsgOut
;./../game/rt_msx.c:410: void Sound(u16 hz)
;	---------------------------------
; Function Sound
; ---------------------------------
_Sound::
	ex	de, hl
;./../game/rt_msx.c:412: u16 j = JIFFY(), period;
	ld	bc, (#0xfc9e)
;./../game/rt_msx.c:413: if (j == g_LastSoundJ) return;
	ld	hl, (_g_LastSoundJ)
	xor	a, a
	sbc	hl, bc
	ret	z
;./../game/rt_msx.c:414: g_LastSoundJ = j;
	ld	(_g_LastSoundJ), bc
;./../game/rt_msx.c:415: if (hz < 28) period = 4095;
	ld	c, e
	ld	b, d
	ld	a, c
	sub	a, #0x1c
	ld	a, b
	sbc	a, #0x00
	jr	nc, 00106$
	ld	de, #0x0fff
	jr	00107$
00106$:
;./../game/rt_msx.c:418: period = (u16)(111861UL / hz);
	ld	bc, #0x0000
	push	bc
	push	de
	ld	de, #0xb4f5
	ld	hl, #0x0001
	call	__divulong
	pop	af
	pop	af
;./../game/rt_msx.c:419: if (period < 1) period = 1;
	ld	c, e
	ld	b, d
	ld	a, c
	sub	a, #0x01
	ld	a, b
	sbc	a, #0x00
	jr	nc, 00107$
	ld	de, #0x0001
00107$:
;./../game/rt_msx.c:421: PsgWrite(0, (u8)period);
	ld	l, e
	push	de
	xor	a, a
	call	_PsgWrite
	pop	de
;./../game/rt_msx.c:422: PsgWrite(1, (u8)(period >> 8));
	ld	l, d
	ld	a, #0x01
	call	_PsgWrite
;./../game/rt_msx.c:423: PsgWrite(7, 0xBE);
	ld	l, #0xbe
	ld	a, #0x07
	call	_PsgWrite
;./../game/rt_msx.c:424: PsgWrite(8, 12);
	ld	l, #0x0c
	ld	a, #0x08
;./../game/rt_msx.c:425: }
	jp	_PsgWrite
;./../game/rt_msx.c:427: void NoSound(void)
;	---------------------------------
; Function NoSound
; ---------------------------------
_NoSound::
;./../game/rt_msx.c:429: g_LastSoundJ = 0xFFFF;
	ld	hl, #0xffff
	ld	(_g_LastSoundJ), hl
;./../game/rt_msx.c:430: PsgWrite(8, 0);
	ld	l, #0x00
	ld	a, #0x08
;./../game/rt_msx.c:431: }
	jp	_PsgWrite
;./../game/rt_msx.c:434: u16 ReadText(u16 id, char* dst) { return TextPool_Read(id, dst); }
;	---------------------------------
; Function ReadText
; ---------------------------------
_ReadText::
	jp	_TextPool_Read
;./../game/rt_msx.c:437: u8 FileWrite2(const char* name, const u8* b1, u16 l1, const u8* b2, u16 l2)
;	---------------------------------
; Function FileWrite2
; ---------------------------------
_FileWrite2::
	push	af
;./../game/rt_msx.c:439: u8 f = DOS_CreateHandle(name, O_WRONLY, 0);
	push	de
	ld	de, #0x02
	push	de
	call	_DOS_CreateHandle
	ld	c, a
	pop	de
;./../game/rt_msx.c:441: if (g_DOS_LastError) return 0;
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00102$
	xor	a, a
	jp	00103$
00102$:
;./../game/rt_msx.c:442: n1 = DOS_WriteHandle(f, b1, l1);
	ld	a, e
	ld	b, d
	push	bc
	ld	iy, #6
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	e, a
	ld	d, b
	ld	a, c
	call	_DOS_WriteHandle
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
	pop	bc
;./../game/rt_msx.c:443: n2 = DOS_WriteHandle(f, b2, l2);
	ld	iy, #6
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	push	bc
	ld	l, 2 (iy)
	ld	h, 3 (iy)
	push	hl
	ld	a, c
	call	_DOS_WriteHandle
	pop	bc
;./../game/rt_msx.c:444: DOS_CloseHandle(f);
	push	de
	ld	a, c
	call	_DOS_CloseHandle
	pop	de
;./../game/rt_msx.c:445: return !g_DOS_LastError && n1 == l1 && n2 == l2;
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	nz, 00105$
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	sub	a, 0 (iy)
	jr	nz, 00105$
	ld	hl, #0x5
	add	hl, sp
	ld	a, (hl)
	ld	iy, #0
	add	iy, sp
	sub	a, 1 (iy)
	jr	nz, 00105$
	ld	iy, #8
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, e
	jr	nz, 00136$
	ld	a, 1 (iy)
	sub	a, d
	jr	z, 00106$
00136$:
00105$:
	xor	a, a
	jr	00107$
00106$:
	ld	a, #0x01
00107$:
00103$:
;./../game/rt_msx.c:446: }
	pop	bc
	pop	hl
	pop	bc
	pop	bc
	pop	bc
	jp	(hl)
;./../game/rt_msx.c:448: u16 FileRead2(const char* name, u8* b1, u16 l1, u8* b2, u16 l2)
;	---------------------------------
; Function FileRead2
; ---------------------------------
_FileRead2::
	dec	sp
;./../game/rt_msx.c:450: u8 f = DOS_OpenHandle(name, O_RDONLY);
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_DOS_OpenHandle
	ld	iy, #2
	add	iy, sp
	ld	0 (iy), a
	pop	bc
;./../game/rt_msx.c:452: if (g_DOS_LastError) return 0;
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00102$
	ld	de, #0x0000
	jr	00105$
00102$:
;./../game/rt_msx.c:453: n = DOS_ReadHandle(f, b1, l1);
	ld	hl, #3
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	ld	e, c
	ld	d, b
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	call	_DOS_ReadHandle
	ld	c, e
	ld	b, d
;./../game/rt_msx.c:454: if (n == l1) n += DOS_ReadHandle(f, b2, l2);
	ld	iy, #3
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, c
	jr	nz, 00104$
	ld	a, 1 (iy)
	sub	a, b
	jr	nz, 00104$
	ld	iy, #5
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	push	bc
	ld	l, 2 (iy)
	ld	h, 3 (iy)
	push	hl
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	call	_DOS_ReadHandle
	ex	de, hl
	pop	bc
	add	hl, bc
	ld	c, l
	ld	b, h
00104$:
;./../game/rt_msx.c:455: DOS_CloseHandle(f);
	push	bc
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	call	_DOS_CloseHandle
	pop	bc
;./../game/rt_msx.c:456: return g_DOS_LastError ? 0 : n;
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00107$
	ld	bc, #0x0000
00107$:
	ld	e, c
	ld	d, b
00105$:
;./../game/rt_msx.c:457: }
	inc	sp
	pop	hl
	pop	af
	pop	af
	pop	af
	jp	(hl)
;./../game/rt_msx.c:459: void ListSaveFiles(void)
;	---------------------------------
; Function ListSaveFiles
; ---------------------------------
_ListSaveFiles::
	call	___sdcc_enter_ix
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;./../game/rt_msx.c:461: DOS_FIB* fib = DOS_FindFirstEntry("*.SAV", 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_3
	call	_DOS_FindFirstEntry
;./../game/rt_msx.c:462: u8 any = 0;
	ld	c, #0x00
;./../game/rt_msx.c:463: while (fib && !g_DOS_LastError)
00107$:
	ld	a, d
	or	a, e
	jr	z, 00109$
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	nz, 00109$
;./../game/rt_msx.c:467: while (fib->Filename[i] && fib->Filename[i] != '.' && i < 8) { b[i] = fib->Filename[i]; i++; }
	inc	de
	ld	c, #0x00
00103$:
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	b, (hl)
	ld	a, b
	or	a, a
	jr	z, 00105$
	ld	a, b
	sub	a, #0x2e
	jr	z, 00105$
	ld	a, c
	sub	a, #0x08
	jr	nc, 00105$
	push	de
	ld	e, c
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	pop	de
	ld	(hl), b
	inc	c
	jr	00103$
00105$:
;./../game/rt_msx.c:468: b[i] = 0;
	ld	e, c
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	(hl), #0x00
;./../game/rt_msx.c:469: Wr("    * "); Wr(b); Wln();
	ld	hl, #___str_4
	call	_Wr
	ld	hl, #0
	add	hl, sp
	call	_Wr
	call	_Wln
;./../game/rt_msx.c:470: any = 1;
	ld	c, #0x01
;./../game/rt_msx.c:471: fib = DOS_FindNextEntry();
	push	bc
	call	_DOS_FindNextEntry
	pop	bc
	jr	00107$
00109$:
;./../game/rt_msx.c:473: if (!any) { Wr("There are no saved games on this disk."); Wln(); }
	ld	a, c
	or	a, a
	jr	nz, 00112$
	ld	hl, #___str_5
	call	_Wr
	call	_Wln
00112$:
;./../game/rt_msx.c:474: }
	ld	sp, ix
	pop	ix
	ret
___str_3:
	.ascii "*.SAV"
	.db 0x00
___str_4:
	.ascii "    * "
	.db 0x00
___str_5:
	.ascii "There are no saved games on this disk."
	.db 0x00
;./../game/rt_msx.c:478: void Halt(void)
;	---------------------------------
; Function Halt
; ---------------------------------
_Halt::
;./../game/rt_msx.c:480: NoSound();
	call	_NoSound
;./../game/rt_msx.c:481: Page2Set(g_Page2Orig);
	ld	a, (_g_Page2Orig)
	call	_Page2Set
;./../game/rt_msx.c:488: __endasm;
	ld a, #0
	ld ix, #0x005F
	ld iy, (0xFCC1 - 1)
	call 0x001C
;./../game/rt_msx.c:489: DOS_Exit(0);
	xor	a, a
;./../game/rt_msx.c:490: }
	jp	_DOS_Exit
;./../game/rt_msx.c:496: void ClearData(void) __naked
;	---------------------------------
; Function ClearData
; ---------------------------------
_ClearData::
;./../game/rt_msx.c:515: __endasm;
	ld hl, #s__DATA
	ld bc, #l__DATA
	ld a, b
	or a, c
	ret z
	xor a
	ld (hl), a
	dec bc
	ld a, b
	or a, c
	ret z
	ld e, l
	ld d, h
	inc de
	ldir
	ret
;./../game/rt_msx.c:516: }
;./../game/rt_msx.c:544: static void Die(const char* m)
;	---------------------------------
; Function Die
; ---------------------------------
_Die:
;./../game/rt_msx.c:546: while (*m) DOS_CharOutput(*m++);
00101$:
	ld	a, (hl)
	or	a, a
	jr	z, 00103$
	inc	hl
	push	hl
	call	_DOS_CharOutput
	pop	hl
	jr	00101$
00103$:
;./../game/rt_msx.c:547: DOS_CharOutput(13); DOS_CharOutput(10);
	ld	a, #0x0d
	call	_DOS_CharOutput
	ld	a, #0x0a
	call	_DOS_CharOutput
;./../game/rt_msx.c:548: g_Page2 = g_Page2Orig;
	ld	a, (_g_Page2Orig+0)
	ld	(#_g_Page2), a
;./../game/rt_msx.c:549: Halt();
;./../game/rt_msx.c:550: }
	jp	_Halt
_g_Pal:
	.dw #0x0000
	.dw #0x0005
	.dw #0x0500
	.dw #0x0505
	.dw #0x0050
	.dw #0x0055
	.dw #0x0250
	.dw #0x0555
	.dw #0x0222
	.dw #0x0227
	.dw #0x0722
	.dw #0x0727
	.dw #0x0272
	.dw #0x0277
	.dw #0x0772
	.dw #0x0777
_g_Glyphs:
	.db #0xaf	; 175
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x48	; 72	'H'
	.db #0x24	; 36
	.db #0x48	; 72	'H'
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb3	; 179
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xb5	; 181
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xb8	; 184
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xba	; 186
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0xbc	; 188
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbe	; 190
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xc8	; 200
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x4c	; 76	'L'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc9	; 201
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x4c	; 76	'L'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0xcd	; 205
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
;./../game/rt_msx.c:552: static u8 DiskFile(const char* name, u8* dst, u16 len)
;	---------------------------------
; Function DiskFile
; ---------------------------------
_DiskFile:
;./../game/rt_msx.c:554: u8 f = DOS_OpenHandle(name, O_RDONLY);
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_DOS_OpenHandle
	ld	c, a
	pop	de
;./../game/rt_msx.c:555: if (g_DOS_LastError) return 0;
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00102$
	xor	a, a
	jr	00103$
00102$:
;./../game/rt_msx.c:556: DOS_ReadHandle(f, dst, len);
	ld	a, e
	ld	b, d
	push	bc
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	e, a
	ld	d, b
	ld	a, c
	call	_DOS_ReadHandle
	pop	bc
;./../game/rt_msx.c:557: DOS_CloseHandle(f);
	ld	a, c
	call	_DOS_CloseHandle
;./../game/rt_msx.c:558: return 1;
	ld	a, #0x01
00103$:
;./../game/rt_msx.c:559: }
	pop	hl
	pop	bc
	jp	(hl)
;./../game/rt_msx.c:561: void ScreenBegin(void)
;	---------------------------------
; Function ScreenBegin
; ---------------------------------
_ScreenBegin::
	call	___sdcc_enter_ix
	push	af
	push	af
;./../game/rt_msx.c:564: if (!DOSMapper_Init())
	call	_DOSMapper_Init
	or	a, a
	jr	nz, 00105$
;./../game/rt_msx.c:566: const char* m = "This game needs a memory mapper and MSX-DOS 2.\r\n";
	ld	bc, #___str_6+0
;./../game/rt_msx.c:567: while (*m) DOS_CharOutput(*m++);
00101$:
	ld	a, (bc)
	or	a, a
	jr	z, 00103$
	inc	bc
	push	bc
	call	_DOS_CharOutput
	pop	bc
	jr	00101$
00103$:
;./../game/rt_msx.c:568: DOS_Exit(1);
	ld	a, #0x01
	call	_DOS_Exit
00105$:
;./../game/rt_msx.c:570: g_Page2 = g_Page2Orig = DOSMapper_GetPage2();
	call	_DOSMapper_GetPage2
	ld	(#_g_Page2Orig), a
	ld	(#_g_Page2), a
;./../game/rt_msx.c:571: if (*(volatile u16*)0x0006 < 0xD900) Die("Not enough free memory (the TPA must reach D900h).");
	ld	hl, (#0x0006)
	ld	a, h
	sub	a, #0xd9
	jr	nc, 00107$
	ld	hl, #___str_7
	call	_Die
00107$:
;./../game/rt_msx.c:572: VDP_SetMode(VDP_MODE_SCREEN7);
	ld	a, #0x08
	call	_VDP_SetMode
;E:\supernova\MSXgl\engine/src/vdp.h:839: inline void VDP_SetLineCount(u8 lines) { VDP_RegWriteBakMask(9, (u8)~R09_LN, lines); }
	ld	a, #0x80
	push	af
	inc	sp
	ld	l, #0x7f
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;E:\supernova\MSXgl\engine/src/vdp.h:724: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, #0x00
	ld	a, #0x07
	call	_VDP_RegWrite
;E:\supernova\MSXgl\engine/src/vdp.h:750: inline void VDP_EnableSprite(u8 enable) { VDP_RegWriteBakMask(8, (u8)~R08_SPD, !enable ? R08_SPD : 0); }
	ld	a, #0x02
	push	af
	inc	sp
	ld	l, #0xfd
	ld	a, #0x08
	call	_VDP_RegWriteBakMask
;./../game/rt_msx.c:576: for (i = 0; i < 16; i++) VDP_SetPaletteEntry(i, g_Pal[i]);
	ld	c, #0x00
00121$:
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	de, #_g_Pal
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	a, c
	call	_VDP_SetPaletteEntry
	pop	bc
	inc	c
	ld	a, c
	sub	a, #0x10
	jr	c, 00121$
;E:\supernova\MSXgl\engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	h, #0x02
	ld	((_g_VDP_Command + 8)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	h, #0x01
	ld	((_g_VDP_Command + 10)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #_g_VDP_Command + 12
	ld	(hl), #0x00
;E:\supernova\MSXgl\engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	hl, #_g_VDP_Command + 13
	ld	(hl), #0x00
;E:\supernova\MSXgl\engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #_g_VDP_Command + 14
	ld	(hl), #0xc0
;E:\supernova\MSXgl\engine/src/vdp_inl.h:174: VDP_CommandSetupR36();
	call	_VDP_CommandSetupR36
;./../game/rt_msx.c:578: VDP_CommandWait();
	call	_VDP_CommandWait
;./../game/rt_msx.c:579: if (!DiskFile("FONT.BIN", g_Scratch, 2048)) Die("FONT.BIN missing");
	ld	hl, #0x0800
	push	hl
	ld	de, #_g_Scratch
	ld	hl, #___str_8
	call	_DiskFile
	or	a, a
	jr	nz, 00110$
	ld	hl, #___str_9
	call	_Die
00110$:
;./../game/rt_msx.c:580: Txt_Init(g_Scratch);
	ld	hl, #_g_Scratch
	call	_Txt_Init
;./../game/rt_msx.c:581: for (i = 0; i < sizeof(g_Glyphs) / sizeof(g_Glyphs[0]); i++)
	ld	-2 (ix), #0x00
;./../game/rt_msx.c:582: for (r = 0; r < 8; r++) g_Plane[r][g_Glyphs[i].code] = g_Glyphs[i].rows[r];
00155$:
	ld	c, -2 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Glyphs
	add	hl, de
	ex	de, hl
	ld	c, e
	ld	b, d
	inc	bc
	ld	-1 (ix), #0x00
00123$:
	ld	h, -1 (ix)
	ld	l, #0x00
	push	de
	ld	de, #_g_Plane
	add	hl, de
	pop	de
	ld	a, (de)
	add	a, l
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, h
	ld	-3 (ix), a
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	pop	hl
	push	hl
	ld	(hl), a
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x08
	jr	c, 00123$
;./../game/rt_msx.c:581: for (i = 0; i < sizeof(g_Glyphs) / sizeof(g_Glyphs[0]); i++)
	inc	-2 (ix)
	ld	a, -2 (ix)
	sub	a, #0x0e
	jr	c, 00155$
;./../game/rt_msx.c:583: g_CLIKSW = 0;
	xor	a, a
	ld	hl, #_g_CLIKSW
	ld	(hl), a
;./../game/rt_msx.c:584: for (i = 0; i < 10; i++) { g_FNKSTR[i][0] = 0xF1 + i; g_FNKSTR[i][1] = 0; }
	ld	c, #0x00
00127$:
	ld	e, c
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl, #_g_FNKSTR
	add	hl, de
	ld	a, c
	add	a, #0xf1
	ld	(hl), a
	ld	hl,#_g_FNKSTR + 1
	add	hl,de
	ld	(hl), #0x00
	inc	c
	ld	a, c
	sub	a, #0x0a
	jr	c, 00127$
;./../game/rt_msx.c:585: SetWindow();
	call	_SetWindow
;./../game/rt_msx.c:586: if (!TextPool_Load()) Die("Text files (TXT*.BIN) missing");
	call	_TextPool_Load
	or	a, a
	jr	nz, 00129$
	ld	hl, #___str_10
	call	_Die
00129$:
;./../game/rt_msx.c:587: }
	ld	sp, ix
	pop	ix
	ret
___str_6:
	.ascii "This game needs a memory mapper and MSX-DOS 2."
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "Not enough free memory (the TPA must reach D900h)."
	.db 0x00
___str_8:
	.ascii "FONT.BIN"
	.db 0x00
___str_9:
	.ascii "FONT.BIN missing"
	.db 0x00
___str_10:
	.ascii "Text files (TXT*.BIN) missing"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__wx1:
	.db #0x01	; 1
__xinit__wy1:
	.db #0x01	; 1
__xinit__wx2:
	.db #0x50	; 80	'P'
__xinit__wy2:
	.db #0x19	; 25
__xinit__ww:
	.db #0x50	; 80	'P'
__xinit__wh:
	.db #0x19	; 25
__xinit__cx:
	.db #0x01	; 1
__xinit__cy:
	.db #0x01	; 1
__xinit__g_Fg:
	.db #0x07	; 7
__xinit__g_Bg:
	.db #0x00	; 0
__xinit__g_Blink:
	.db #0x00	; 0
__xinit__g_CursorShape:
	.db #0x03	; 3
__xinit__g_Phase:
	.db #0x01	; 1
__xinit__g_LastSoundJ:
	.dw #0xffff
__xinit__g_Rnd:
	.dw #0x1d2b
	.area _CABS (ABS)
