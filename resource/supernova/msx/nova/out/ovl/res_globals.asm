;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module globals
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Text5
	.globl _SFlag
	.globl _QFlag
	.globl _Color
	.globl _Crawl
	.globl _Maze
	.globl _CFlag
	.globl _Log
	.globl _Drive
	.globl _Word
	.globl _LastNoun
	.globl _PStr
	.globl _NStr
	.globl _VStr
	.globl _Identity
	.globl _Line
	.globl _Again
	.globl _Input
	.globl _Mx
	.globl _T
	.globl _R
	.globl _j
	.globl _i
	.globl _Floor
	.globl _TestC
	.globl _Sc
	.globl _RC
	.globl _StoreC
	.globl _StoreL
	.globl _StoreS
	.globl _StoreR
	.globl _Tic
	.globl _Code
	.globl _o
	.globl _y
	.globl _x
	.globl _Old2
	.globl _Old
	.globl _Weight
	.globl _Serum
	.globl _SinkRm
	.globl _FriendRm
	.globl _AlienRm
	.globl _Region
	.globl _Num
	.globl _list
	.globl _TFlag
	.globl _FFlag
	.globl _EFlag
	.globl _Prm
	.globl _VNP
	.globl _Md
	.globl _Pr
	.globl _N2
	.globl _N1
	.globl _Vb
	.globl _ScrnSet
	.globl _CodeSet
	.globl _RobotCon
	.globl _PodumCon
	.globl _HingeCon
	.globl _PyraCon
	.globl _NicheCon
	.globl _HolstCon
	.globl _SatchCon
	.globl _FoodCon
	.globl _MugCon
	.globl _ToNounMaybe
	.globl _ToNounOnly
	.globl _OneNounMaybe
	.globl _NoNounOnly
	.globl _PStat
	.globl _Events
	.globl _NounSet
	.globl _Brief
	.globl _Wear
	.globl _Socket
	.globl _Inv
	.globl _Mov
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
	.globl _g_Dir
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
	.globl _SetEmpty
	.globl _SetClear
	.globl _Len
	.globl _Pos
	.globl _Delete
	.globl _Insert
	.globl _Copy
	.globl _StrCpy
	.globl _StrCat
	.globl _StrEq
	.globl _UpCase
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
_Mov::
	.ds 4
_Inv::
	.ds 4
_Socket::
	.ds 4
_Wear::
	.ds 4
_Brief::
	.ds 14
_NounSet::
	.ds 17
_Events::
	.ds 32
_PStat::
	.ds 1
_NoNounOnly::
	.ds 12
_OneNounMaybe::
	.ds 12
_ToNounOnly::
	.ds 12
_ToNounMaybe::
	.ds 12
_MugCon::
	.ds 1
_FoodCon::
	.ds 1
_SatchCon::
	.ds 1
_HolstCon::
	.ds 1
_NicheCon::
	.ds 1
_PyraCon::
	.ds 1
_HingeCon::
	.ds 1
_PodumCon::
	.ds 1
_RobotCon::
	.ds 1
_CodeSet::
	.ds 1
_ScrnSet::
	.ds 1
_Vb::
	.ds 1
_N1::
	.ds 1
_N2::
	.ds 1
_Pr::
	.ds 1
_Md::
	.ds 1
_VNP::
	.ds 1
_Prm::
	.ds 1
_EFlag::
	.ds 1
_FFlag::
	.ds 1
_TFlag::
	.ds 1
_list::
	.ds 1
_Num::
	.ds 1
_Region::
	.ds 1
_AlienRm::
	.ds 1
_FriendRm::
	.ds 1
_SinkRm::
	.ds 1
_Serum::
	.ds 1
_Weight::
	.ds 1
_Old::
	.ds 1
_Old2::
	.ds 1
_x::
	.ds 1
_y::
	.ds 1
_o::
	.ds 1
_Code::
	.ds 2
_Tic::
	.ds 2
_StoreR::
	.ds 2
_StoreS::
	.ds 2
_StoreL::
	.ds 2
_StoreC::
	.ds 2
_RC::
	.ds 2
_Sc::
	.ds 2
_TestC::
	.ds 2
_Floor::
	.ds 2
_i::
	.ds 2
_j::
	.ds 2
_R::
	.ds 30
_T::
	.ds 62
_Mx::
	.ds 4
_Input::
	.ds 132
_Again::
	.ds 132
_Line::
	.ds 132
_Identity::
	.ds 30
_VStr::
	.ds 30
_NStr::
	.ds 30
_PStr::
	.ds 30
_LastNoun::
	.ds 30
_Word::
	.ds 30
_Drive::
	.ds 1
_Log::
	.ds 1
_CFlag::
	.ds 1
_Maze::
	.ds 1
_Crawl::
	.ds 1
_Color::
	.ds 1
_QFlag::
	.ds 1
_SFlag::
	.ds 1
_Text5::
	.ds 80
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
;E:\supernova\msx\game\globals.c:27: u8 SetEmpty(const u8* s, u8 bytes) { while (bytes--) if (*s++) return 0; return 1; }
;	---------------------------------
; Function SetEmpty
; ---------------------------------
_SetEmpty::
	ld	iy, #2
	add	iy, sp
	ld	e, 0 (iy)
00103$:
	ld	a, e
	dec	e
	or	a, a
	jr	z, 00105$
	ld	a, (hl)
	inc	hl
	or	a, a
	jr	z, 00103$
	xor	a, a
	jr	00106$
00105$:
	ld	a, #0x01
00106$:
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
_d1:
	.ascii "NORTH"
	.db 0x00
_d2:
	.ascii "SOUTH"
	.db 0x00
_d3:
	.ascii "EAST"
	.db 0x00
_d4:
	.ascii "WEST"
	.db 0x00
_d5:
	.ascii "NORTHEAST"
	.db 0x00
_d6:
	.ascii "NORTHWEST"
	.db 0x00
_d7:
	.ascii "SOUTHEAST"
	.db 0x00
_d8:
	.ascii "SOUTHWEST"
	.db 0x00
_g_Dir:
	.dw #0x0000
	.dw _d1
	.dw _d2
	.dw _d3
	.dw _d4
	.dw _d5
	.dw _d6
	.dw _d7
	.dw _d8
;E:\supernova\msx\game\globals.c:28: void SetClear(u8* s, u8 bytes) { while (bytes--) *s++ = 0; }
;	---------------------------------
; Function SetClear
; ---------------------------------
_SetClear::
	ld	iy, #2
	add	iy, sp
	ld	c, 0 (iy)
00101$:
	ld	a, c
	dec	c
	or	a, a
	jr	z, 00104$
	ld	(hl), #0x00
	inc	hl
	jr	00101$
00104$:
	pop	hl
	inc	sp
	jp	(hl)
;E:\supernova\msx\game\globals.c:30: u8 Len(const char* s) { u8 n = 0; while (s[n]) n++; return n; }
;	---------------------------------
; Function Len
; ---------------------------------
_Len::
	ex	de, hl
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
	ld	a, c
	ret
;E:\supernova\msx\game\globals.c:32: u8 Pos(const char* sub, const char* s)
;	---------------------------------
; Function Pos
; ---------------------------------
_Pos::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	dec	sp
	ld	c, l
	ld	b, h
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\supernova\msx\game\globals.c:34: u8 n = Len(sub), k, j;
	push	bc
	ld	l, c
	ld	h, b
	call	_Len
	ld	e, a
	pop	bc
;E:\supernova\msx\game\globals.c:35: if (!n) return 0;
	ld	a, e
	or	a,a
	jr	z, 00113$
;E:\supernova\msx\game\globals.c:36: for (k = 0; s[k]; k++)
	ld	-5 (ix), #0x00
	ld	-2 (ix), #0x00
00111$:
	ld	a, -2 (ix)
	add	a, -4 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -3 (ix)
	ld	h, a
	ld	a, (hl)
	or	a, a
	jr	z, 00109$
;E:\supernova\msx\game\globals.c:39: while (j < n && s[k + j] == sub[j]) j++;
	ld	-1 (ix), #0x00
00104$:
	ld	a, -1 (ix)
	sub	a, e
	jr	nc, 00106$
	ld	a, -2 (ix)
	ld	h, #0x00
	ld	l, -1 (ix)
	add	a, l
	ld	l, a
	jr	nc, 00172$
	inc	h
00172$:
	ld	a, l
	add	a, -4 (ix)
	ld	l, a
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
	ld	d, (hl)
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	sub	a, d
	jr	nz, 00106$
	inc	-1 (ix)
	jr	00104$
00106$:
;E:\supernova\msx\game\globals.c:40: if (j == n) return k + 1;
	ld	a, e
	sub	a, -1 (ix)
	jr	nz, 00112$
	ld	a, -5 (ix)
	inc	a
	jr	00113$
00112$:
;E:\supernova\msx\game\globals.c:36: for (k = 0; s[k]; k++)
	inc	-2 (ix)
	ld	a, -2 (ix)
	ld	-5 (ix), a
	jr	00111$
00109$:
;E:\supernova\msx\game\globals.c:42: return 0;
	xor	a, a
00113$:
;E:\supernova\msx\game\globals.c:43: }
	ld	sp, ix
	pop	ix
	ret
;E:\supernova\msx\game\globals.c:45: void Delete(char* s, u8 idx, u8 cnt)
;	---------------------------------
; Function Delete
; ---------------------------------
_Delete::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
;E:\supernova\msx\game\globals.c:47: u8 l = Len(s), k;
	push	hl
	call	_Len
	ld	-1 (ix), a
	pop	de
;E:\supernova\msx\game\globals.c:48: if (idx == 0 || idx > l) return;
	ld	a, 4 (ix)
	or	a, a
	jr	z, 00110$
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	jr	c, 00110$
;E:\supernova\msx\game\globals.c:49: idx--;
	dec	4 (ix)
;E:\supernova\msx\game\globals.c:50: if (idx + cnt > l) cnt = l - idx;
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	nc, 00105$
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	ld	5 (ix), a
00105$:
;E:\supernova\msx\game\globals.c:51: for (k = idx; k + cnt <= l; k++) s[k] = s[k + cnt];
	ld	a, 4 (ix)
	ld	-1 (ix), a
00108$:
	ld	a, -1 (ix)
	ld	h, #0x00
	ld	l, 5 (ix)
	push	iy
	ex	(sp), hl
	ld	l, #0x00
	ex	(sp), hl
	pop	iy
	add	a, l
	ld	l, a
	jr	nc, 00145$
	inc	h
00145$:
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	c, 00110$
	ld	a, e
	add	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-2 (ix), a
	add	hl, de
	ld	a, (hl)
	pop	hl
	push	hl
	ld	(hl), a
	inc	-1 (ix)
	jr	00108$
00110$:
;E:\supernova\msx\game\globals.c:52: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\supernova\msx\game\globals.c:54: void Insert(const char* sub, char* s, u8 idx, u8 max)
;	---------------------------------
; Function Insert
; ---------------------------------
_Insert::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
	dec	sp
;E:\supernova\msx\game\globals.c:56: u8 l = Len(s), n = Len(sub), k;
	ex	de, hl
	push	de
	push	hl
	call	_Len
	ld	-7 (ix), a
	pop	de
	pop	bc
	push	bc
	push	de
	ld	l, c
	ld	h, b
	call	_Len
	ld	-6 (ix), a
	pop	de
	pop	bc
;E:\supernova\msx\game\globals.c:57: if (idx == 0) idx = 1;
	ld	a, 4 (ix)
	or	a, a
	jr	nz, 00102$
	ld	4 (ix), #0x01
00102$:
;E:\supernova\msx\game\globals.c:58: if (idx > l + 1) idx = l + 1;
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	l, -5 (ix)
	ld	h, #0x00
	inc	hl
	ld	a, 4 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -7 (ix)
	inc	a
	ld	-1 (ix), a
	ld	a, l
	sub	a, -3 (ix)
	ld	a, h
	sbc	a, -2 (ix)
	jr	nc, 00104$
	ld	a, -1 (ix)
	ld	4 (ix), a
00104$:
;E:\supernova\msx\game\globals.c:59: if (l + n > max) n = max - l;          // Pascal truncates the result to the string's maximum
	ld	a, -6 (ix)
	ld	h, #0x00
	add	a, -5 (ix)
	ld	l, a
	jr	nc, 00175$
	inc	h
00175$:
	ld	a, 5 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	sub	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00106$
	ld	a, 5 (ix)
	sub	a, -7 (ix)
	ld	-6 (ix), a
00106$:
;E:\supernova\msx\game\globals.c:60: idx--;
	dec	4 (ix)
;E:\supernova\msx\game\globals.c:61: for (k = l + 1; k > idx; k--) s[k + n - 1] = s[k - 1];
00110$:
	ld	a, 4 (ix)
	sub	a, -1 (ix)
	jr	nc, 00107$
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	l, -6 (ix)
	ld	h, #0x00
	ld	a, -5 (ix)
	add	a, l
	ld	l, a
	ld	a, #0x00
	adc	a, h
	ld	h, a
	dec	hl
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	dec	hl
	add	hl, de
	ld	a, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
	dec	-1 (ix)
	jr	00110$
00107$:
;E:\supernova\msx\game\globals.c:62: for (k = 0; k < n; k++) s[idx + k] = sub[k];
	ld	-1 (ix), #0x00
00113$:
	ld	a, -1 (ix)
	sub	a, -6 (ix)
	jr	nc, 00115$
	ld	a, 4 (ix)
	ld	h, #0x00
	ld	l, -1 (ix)
	push	iy
	ex	(sp), hl
	ld	l, #0x00
	ex	(sp), hl
	pop	iy
	add	a, l
	ld	l, a
	jr	nc, 00176$
	inc	h
00176$:
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
	inc	-1 (ix)
	jr	00113$
00115$:
;E:\supernova\msx\game\globals.c:63: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\supernova\msx\game\globals.c:65: void Copy(char* dst, const char* s, u8 idx, u8 cnt)
;	---------------------------------
; Function Copy
; ---------------------------------
_Copy::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\supernova\msx\game\globals.c:67: u8 l = Len(s), k = 0;
	ex	de, hl
	push	hl
	call	_Len
	ld	-6 (ix), a
	pop	de
;E:\supernova\msx\game\globals.c:68: if (idx == 0) idx = 1;
	ld	a, 4 (ix)
	or	a, a
	jr	nz, 00102$
	ld	4 (ix), #0x01
00102$:
;E:\supernova\msx\game\globals.c:69: idx--;
	dec	4 (ix)
;E:\supernova\msx\game\globals.c:70: while (k < cnt && idx + k < l) { dst[k] = s[idx + k]; k++; }
	ld	-1 (ix), #0x00
00104$:
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -1 (ix)
	sub	a, 5 (ix)
	jr	nc, 00106$
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, -6 (ix)
	ld	b, #0x00
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	nc, 00106$
	add	hl, de
	ld	a, (hl)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
	inc	-1 (ix)
	jr	00104$
00106$:
;E:\supernova\msx\game\globals.c:71: dst[k] = 0;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x00
;E:\supernova\msx\game\globals.c:72: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\supernova\msx\game\globals.c:74: void StrCpy(char* d, const char* s) { while ((*d++ = *s++)); }
;	---------------------------------
; Function StrCpy
; ---------------------------------
_StrCpy::
00101$:
	ld	a, (de)
	inc	de
	ld	(hl), a
	inc	hl
	or	a, a
	jr	nz, 00101$
	ret
;E:\supernova\msx\game\globals.c:76: void StrCat(char* d, const char* s, u8 max)
;	---------------------------------
; Function StrCat
; ---------------------------------
_StrCat::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	ld	c, l
	ld	b, h
;E:\supernova\msx\game\globals.c:78: u8 l = Len(d);
	push	bc
	push	de
	ld	l, c
	ld	h, b
	call	_Len
	ld	-1 (ix), a
	pop	de
	pop	bc
;E:\supernova\msx\game\globals.c:79: while (*s && l < max) d[l++] = *s++;
00102$:
	ld	a, (de)
	ld	-2 (ix), a
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, -2 (ix)
	or	a, a
	jr	z, 00104$
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	jr	nc, 00104$
	inc	-1 (ix)
	ld	a, -2 (ix)
	inc	de
	ld	(hl), a
	jr	00102$
00104$:
;E:\supernova\msx\game\globals.c:80: d[l] = 0;
	ld	(hl), #0x00
;E:\supernova\msx\game\globals.c:81: }
	pop	af
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;E:\supernova\msx\game\globals.c:83: u8 StrEq(const char* a, const char* b) { while (*a == *b) { if (!*a) return 1; a++; b++; } return 0; }
;	---------------------------------
; Function StrEq
; ---------------------------------
_StrEq::
00103$:
	ld	c, (hl)
	ld	a, (de)
	sub	a, c
	jr	nz, 00105$
	or	a, c
	jr	nz, 00102$
	ld	a, #0x01
	ret
00102$:
	inc	hl
	inc	de
	jr	00103$
00105$:
	xor	a, a
	ret
;E:\supernova\msx\game\globals.c:85: char UpCase(char c) { return (c >= 'a' && c <= 'z') ? c - 32 : c; }
;	---------------------------------
; Function UpCase
; ---------------------------------
_UpCase::
	cp	a, #0x61
	ret	c
	cp	a, #0x7b
	ret	nc
	add	a, #0xe0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
