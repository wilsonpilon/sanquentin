;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module default2
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetR
	.globl _NoSense
	.globl _Crazy
	.globl _Van
	.globl _RB2
	.globl _RB
	.globl _RS
	.globl _RL
	.globl _Here
	.globl _RC1
	.globl _WrFN
	.globl _Spaces
	.globl _Play
	.globl _Pause
	.globl _Cn
	.globl _Score
	.globl _Add
	.globl _En
	.globl _Bor
	.globl _Col
	.globl _Cur
	.globl _Rnd
	.globl _GetKey
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _Wln
	.globl _Wr
	.globl _UpCase
	.globl _StrEq
	.globl _StrCat
	.globl _StrCpy
	.globl _Pos
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
	.globl _Default5
	.globl _Default6
	.globl _Default7
	.globl _Default8
	.globl _Default9
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
;E:\supernova\msx\game\default2.c:6: static void Quench(void)    // T[4]:=130; Bor(0,0); PStat:=PStat-[6]
;	---------------------------------
; Function Quench
; ---------------------------------
_Quench:
;E:\supernova\msx\game\default2.c:8: T[4] = 130; Bor(0, 0); SET_DEL(PStat, 6);
	ld	hl, #0x0082
	ld	((_T + 8)), hl
	xor	a, a
	ld	l, a
	call	_Bor
	ld	hl, #_PStat+0
	res	5, (hl)
;E:\supernova\msx\game\default2.c:9: }
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
;E:\supernova\msx\game\default2.c:11: void Default5(void)
;	---------------------------------
; Function Default5
; ---------------------------------
_Default5::
	call	___sdcc_enter_ix
	push	af
;E:\supernova\msx\game\default2.c:20: else if (N1 == 29 || N1 == 99 || Pr == 11)
	ld	a, (_N1)
	sub	a, #0x1d
	ld	a, #0x01
	jr	z, 00590$
	xor	a, a
00590$:
	ld	-2 (ix), a
	ld	a, (_N1)
	sub	a, #0x63
	ld	a, #0x01
	jr	z, 00592$
	xor	a, a
00592$:
	ld	-1 (ix), a
;E:\supernova\msx\game\default2.c:13: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x2e
	jp	z, 00152$
	sub	a, #0x40
	jp	nz, 00211$
;E:\supernova\msx\game\default2.c:17: if (Prm == 8)
	ld	a, (_Prm)
	sub	a, #0x08
	jp	nz, 00150$
;E:\supernova\msx\game\default2.c:19: if (N1 == 100) RS(10);
	ld	a, (_N1)
	sub	a, #0x64
	jr	nz, 00141$
	ld	hl, #0x000a
	call	_RS
	jp	00211$
00141$:
;E:\supernova\msx\game\default2.c:20: else if (N1 == 29 || N1 == 99 || Pr == 11)
	ld	a, (_Pr)
	sub	a, #0x0b
	ld	a, #0x01
	jr	z, 00601$
	xor	a, a
00601$:
	ld	l, a
;E:\supernova\msx\game\default2.c:33: if (IN4(N1, 29, 99, 111, 124) && IN4(N2, 29, 99, 111, 124))
	ld	a, (_N2)
	sub	a, #0x7c
	ld	a, #0x01
	jr	z, 00603$
	xor	a, a
00603$:
	ld	c, a
;E:\supernova\msx\game\default2.c:20: else if (N1 == 29 || N1 == 99 || Pr == 11)
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00135$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00135$
	or	a, l
	jp	z, 00136$
00135$:
;E:\supernova\msx\game\default2.c:24: if (N2 == 8 || N2 == 111)
	ld	a, (_N2)
	sub	a, #0x6f
	ld	a, #0x01
	jr	z, 00605$
	xor	a, a
00605$:
	ld	e, a
;E:\supernova\msx\game\default2.c:22: if (Pr == 6 || Pr == 9)
	ld	a, (_Pr)
	cp	a, #0x06
	jr	z, 00128$
	sub	a, #0x09
	jr	nz, 00129$
00128$:
;E:\supernova\msx\game\default2.c:24: if (N2 == 8 || N2 == 111)
	ld	a, (_N2)
	sub	a, #0x08
	jr	z, 00105$
	ld	a, e
	or	a, a
	jr	z, 00106$
00105$:
;E:\supernova\msx\game\default2.c:26: if (Here(8)) { SET_ADD(Inv, 29); Van(8); Score(15, 21); RS(11); T[1] = 21; Add(9); Add(16); }
	ld	a, #0x08
	call	_Here
	or	a, a
	jr	z, 00103$
	ld	hl, #_Inv+3
	set	4, (hl)
	ld	a, #0x08
	call	_Van
	ld	de, #0x0015
	ld	hl, #0x000f
	call	_Score
	ld	hl, #0x000b
	call	_RS
	ld	hl, #0x0015
	ld	((_T + 2)), hl
	ld	a, #0x09
	call	_Add
	ld	a, #0x10
	call	_Add
	jp	00211$
00103$:
;E:\supernova\msx\game\default2.c:27: else RL(39);
	ld	hl, #0x0027
	call	_RL
	jp	00211$
00106$:
;E:\supernova\msx\game\default2.c:29: else RL(40);
	ld	hl, #0x0028
	call	_RL
	jp	00211$
00129$:
;E:\supernova\msx\game\default2.c:31: else if (Pr == 11)
	ld	a, l
	or	a, a
	jr	z, 00126$
;E:\supernova\msx\game\default2.c:33: if (IN4(N1, 29, 99, 111, 124) && IN4(N2, 29, 99, 111, 124))
	ld	a, (_N1)
	sub	a, #0x6f
	ld	a, #0x01
	jr	z, 00611$
	xor	a, a
00611$:
	ld	d, a
	ld	a, (_N1)
	sub	a, #0x7c
	ld	a, #0x01
	jr	z, 00613$
	xor	a, a
00613$:
	ld	b, a
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00124$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00124$
	or	a, d
	jr	nz, 00124$
	or	a, b
	jr	z, 00116$
00124$:
	ld	a, (_N2)
	cp	a, #0x1d
	jr	z, 00115$
	sub	a, #0x63
	jr	z, 00115$
	ld	a, e
	or	a, a
	jr	nz, 00115$
	or	a, c
	jr	z, 00116$
00115$:
;E:\supernova\msx\game\default2.c:35: if ((N1 == 111) != (N2 == 111)) RL(196);
	ld	a, e
	sub	a, d
	jr	z, 00113$
	ld	hl, #0x00c4
	call	_RL
	jp	00211$
00113$:
;E:\supernova\msx\game\default2.c:36: else if ((N1 == 124) != (N2 == 124)) RL(197);
	ld	a, c
	sub	a, b
	jr	z, 00110$
	ld	hl, #0x00c5
	call	_RL
	jp	00211$
00110$:
;E:\supernova\msx\game\default2.c:37: else Crazy();
	call	_Crazy
	jp	00211$
00116$:
;E:\supernova\msx\game\default2.c:39: else Crazy();
	call	_Crazy
	jp	00211$
00126$:
;E:\supernova\msx\game\default2.c:41: else NoSense();
	call	_NoSense
	jp	00211$
00136$:
;E:\supernova\msx\game\default2.c:43: else { if (N2 != 124) RL(34); else RL(35); }
	bit	0, c
	jr	nz, 00133$
	ld	hl, #0x0022
	call	_RL
	jp	00211$
00133$:
	ld	hl, #0x0023
	call	_RL
	jp	00211$
00150$:
;E:\supernova\msx\game\default2.c:45: else if (Prm == AlienRm) RL(35);
	ld	a, (_Prm)
	ld	hl, #_AlienRm
	sub	a, (hl)
	jr	nz, 00147$
	ld	hl, #0x0023
	call	_RL
	jp	00211$
00147$:
;E:\supernova\msx\game\default2.c:46: else if (Prm == FriendRm) RL(36);
	ld	a, (_Prm)
	ld	hl, #_FriendRm
	sub	a, (hl)
	jr	nz, 00144$
	ld	hl, #0x0024
	call	_RL
	jp	00211$
00144$:
;E:\supernova\msx\game\default2.c:47: else RL(38);
	ld	hl, #0x0026
	call	_RL
;E:\supernova\msx\game\default2.c:48: break;
	jp	00211$
;E:\supernova\msx\game\default2.c:51: case 46:
00152$:
;E:\supernova\msx\game\default2.c:52: if (N1 == Null)
	ld	a, (_N1+0)
	or	a, a
	jp	nz, 00208$
;E:\supernova\msx\game\default2.c:54: if (Here(29))
	ld	a, #0x1d
	call	_Here
	or	a, a
	jp	z, 00181$
;E:\supernova\msx\game\default2.c:56: if (Prm == 8 && !IN29(Inv, 29)) RL(67);
	ld	a, (_Prm)
	sub	a, #0x08
	jr	nz, 00153$
	ld	a, (#(_Inv + 3) + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00153$
	ld	hl, #0x0043
	call	_RL
	jp	00211$
;E:\supernova\msx\game\default2.c:59: drink_jump:
00153$:
;E:\supernova\msx\game\default2.c:60: if (MugCon != Null)
	ld	a, (_MugCon+0)
	or	a, a
	jp	z, 00166$
;E:\supernova\msx\game\default2.c:62: switch (MugCon)
	ld	a, (_MugCon)
	cp	a, #0x4f
	jr	z, 00155$
	cp	a, #0x5c
	jr	z, 00157$
;E:\supernova\msx\game\default2.c:64: case 99: MugCon = Null; Quench(); RL(64); break;
	sub	a, #0x63
	jp	nz, 00211$
	ld	(#_MugCon), a
	call	_Quench
	ld	hl, #0x0040
	call	_RL
	jp	00211$
;E:\supernova\msx\game\default2.c:65: case 79: MugCon = Null; Quench(); RL(66); Van(79); break;
00155$:
	xor	a, a
	ld	(#_MugCon), a
	call	_Quench
	ld	hl, #0x0042
	call	_RL
	ld	a, #0x4f
	call	_Van
	jp	00211$
;E:\supernova\msx\game\default2.c:67: drink_jump1:
00157$:
;E:\supernova\msx\game\default2.c:68: MugCon = Null;
	xor	a, a
	ld	(#_MugCon), a
;E:\supernova\msx\game\default2.c:69: if (T[12] < 2) RL(162);
	ld	bc, (#(_T + 24) + 0)
	ld	a, c
	sub	a, #0x02
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00162$
	ld	hl, #0x00a2
	call	_RL
	jp	00211$
00162$:
;E:\supernova\msx\game\default2.c:70: else if (En(42))
	ld	a, #0x2a
	call	_En
	or	a, a
	jr	z, 00159$
;E:\supernova\msx\game\default2.c:72: RS(136); Van(92); T[12] = Null; Bor(0, 0); SET_DEL(PStat, 3); Score(20, 124);
	ld	hl, #0x0088
	call	_RS
	ld	a, #0x5c
	call	_Van
	ld	hl, #0x0000
	ld	((_T + 24)), hl
	xor	a, a
	ld	l, a
	call	_Bor
	ld	bc, #_PStat+0
	ld	a, (bc)
	res	2, a
	ld	(bc), a
	ld	de, #0x007c
	ld	hl, #0x0014
	call	_Score
	jp	00211$
00159$:
;E:\supernova\msx\game\default2.c:74: else RL(162);
	ld	hl, #0x00a2
	call	_RL
;E:\supernova\msx\game\default2.c:76: }
	jp	00211$
00166$:
;E:\supernova\msx\game\default2.c:78: else RL(65);
	ld	hl, #0x0041
	call	_RL
	jp	00211$
00181$:
;E:\supernova\msx\game\default2.c:81: else if (Here(98))   // for the sink
	ld	a, #0x62
	call	_Here
	or	a, a
	jr	z, 00178$
;E:\supernova\msx\game\default2.c:83: if (SinkRm == Prm) { Quench(); RL(66); }
	ld	a, (_SinkRm)
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nz, 00175$
	call	_Quench
	ld	hl, #0x0042
	call	_RL
	jp	00211$
00175$:
;E:\supernova\msx\game\default2.c:84: else RL(67);
	ld	hl, #0x0043
	call	_RL
	jp	00211$
00178$:
;E:\supernova\msx\game\default2.c:86: else RL(67);
	ld	hl, #0x0043
	call	_RL
	jp	00211$
00208$:
;E:\supernova\msx\game\default2.c:89: switch (N1)
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00188$
	ld	a, (_N1)
	cp	a, #0x42
	jr	z, 00195$
	cp	a, #0x4f
	jr	z, 00197$
	cp	a, #0x5c
	jp	z, 00157$
	sub	a, #0x62
	jr	z, 00190$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00188$
	ld	a, (_N1)
	sub	a, #0x79
	jr	z, 00195$
	jr	00205$
;E:\supernova\msx\game\default2.c:91: case 29: case 99: if (IN29(Inv, 29)) goto drink_jump; else RL(87); break;
00188$:
	ld	a, (#(_Inv + 3) + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jp	nz, 00153$
	ld	hl, #0x0057
	call	_RL
	jr	00211$
;E:\supernova\msx\game\default2.c:92: case 98: if (SinkRm == Prm) { Quench(); RL(66); } else RL(67); break;
00190$:
	ld	a, (_SinkRm)
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nz, 00192$
	call	_Quench
	ld	hl, #0x0042
	call	_RL
	jr	00211$
00192$:
	ld	hl, #0x0043
	call	_RL
	jr	00211$
;E:\supernova\msx\game\default2.c:93: case 121: case 66: RS(12); Add(128); break;
00195$:
	ld	hl, #0x000c
	call	_RS
	ld	a, #0x80
	call	_Add
	jr	00211$
;E:\supernova\msx\game\default2.c:95: case 79:
00197$:
;E:\supernova\msx\game\default2.c:96: if (Here(29) && MugCon == 79) { Quench(); MugCon = Null; Van(79); RL(66); }
	ld	a, #0x1d
	call	_Here
	or	a, a
	jr	z, 00202$
	ld	a, (_MugCon)
	sub	a, #0x4f
	jr	nz, 00202$
	call	_Quench
	xor	a, a
	ld	(#_MugCon), a
	ld	a, #0x4f
	call	_Van
	ld	hl, #0x0042
	call	_RL
	jr	00211$
00202$:
;E:\supernova\msx\game\default2.c:97: else if (Here(79)) { Quench(); RL(66); }
	ld	a, #0x4f
	call	_Here
	or	a, a
	jr	z, 00199$
	call	_Quench
	ld	hl, #0x0042
	call	_RL
	jr	00211$
00199$:
;E:\supernova\msx\game\default2.c:98: else RL(67);
	ld	hl, #0x0043
	call	_RL
;E:\supernova\msx\game\default2.c:99: break;
	jr	00211$
;E:\supernova\msx\game\default2.c:100: default: Wr("The "); Wr(NStr); Wr(" would not quench your thirst."); Wln();
00205$:
	ld	hl, #___str_1
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_2
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default2.c:103: }
00211$:
;E:\supernova\msx\game\default2.c:104: }
	pop	af
	pop	ix
	ret
___str_1:
	.ascii "The "
	.db 0x00
___str_2:
	.ascii " would not quench your thirst."
	.db 0x00
;E:\supernova\msx\game\default2.c:106: static u8 InWord(const char* w)    // Default6's nested function Word(W)
;	---------------------------------
; Function InWord
; ---------------------------------
_InWord:
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-40
	add	iy, sp
	ld	sp, iy
	ld	c, l
	ld	b, h
;E:\supernova\msx\game\default2.c:109: StrCpy(b, " "); StrCat(b, w, 30); StrCat(b, " ", 35);
	ld	hl, #0
	add	hl, sp
	push	hl
	push	bc
	ld	de, #___str_3
	call	_StrCpy
	pop	bc
	pop	hl
	push	hl
	ld	a, #0x1e
	push	af
	inc	sp
	ld	e, c
	ld	d, b
	call	_StrCat
	pop	hl
	push	hl
	ld	a, #0x23
	push	af
	inc	sp
	ld	de, #___str_3
	call	_StrCat
	pop	hl
;E:\supernova\msx\game\default2.c:110: return Pos(b, Input) > 0;
	ld	de, #_Input
	call	_Pos
	or	a, a
	ld	a, #0x01
	jr	nz, 00104$
	xor	a, a
00104$:
;E:\supernova\msx\game\default2.c:111: }
	ld	sp, ix
	pop	ix
	ret
___str_3:
	.ascii " "
	.db 0x00
;E:\supernova\msx\game\default2.c:115: void Default6(void)
;	---------------------------------
; Function Default6
; ---------------------------------
_Default6::
;E:\supernova\msx\game\default2.c:117: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x42
	jr	z, 00105$
	cp	a, #0x43
	jr	z, 00105$
	cp	a, #0x44
	jr	z, 00105$
	cp	a, #0x45
	jr	z, 00105$
	sub	a, #0x47
	ret	nz
;E:\supernova\msx\game\default2.c:120: case 66: case 67: case 68: case 69: case 71:
00105$:
;E:\supernova\msx\game\default2.c:121: Spaces(Input);
	ld	hl, #_Input
	call	_Spaces
;E:\supernova\msx\game\default2.c:122: if (Vb == 66)    // bartender
	ld	a, (_Vb)
	sub	a, #0x42
	jp	nz, 00170$
;E:\supernova\msx\game\default2.c:124: if (Here(111))
	ld	a, #0x6f
	call	_Here
	or	a, a
	jp	z, 00167$
;E:\supernova\msx\game\default2.c:126: if (WORD("follow")) RL(46);
	ld	hl, #___str_4
	call	_InWord
	or	a, a
	jr	z, 00164$
	ld	hl, #0x002e
	call	_RL
	jp	00170$
00164$:
;E:\supernova\msx\game\default2.c:127: else if (WORD("go") || WORD("east") || WORD("south")) RL(567);
	ld	hl, #___str_5
	call	_InWord
	or	a, a
	jr	nz, 00158$
	ld	hl, #___str_6
	call	_InWord
	or	a, a
	jr	nz, 00158$
	ld	hl, #___str_7
	call	_InWord
	or	a, a
	jr	z, 00159$
00158$:
	ld	hl, #0x0237
	call	_RL
	jp	00170$
00159$:
;E:\supernova\msx\game\default2.c:128: else if (WORD("hi") || WORD("hello")) RL(51);
	ld	hl, #___str_8
	call	_InWord
	or	a, a
	jr	nz, 00154$
	ld	hl, #___str_9
	call	_InWord
	or	a, a
	jr	z, 00155$
00154$:
	ld	hl, #0x0033
	call	_RL
	jp	00170$
00155$:
;E:\supernova\msx\game\default2.c:129: else if (WORD("infocom")) RL(498);
	ld	hl, #___str_10
	call	_InWord
	or	a, a
	jr	z, 00152$
	ld	hl, #0x01f2
	call	_RL
	jp	00170$
00152$:
;E:\supernova\msx\game\default2.c:130: else if (WORD("scott") || WORD("miller")) RL(499);
	ld	hl, #___str_11
	call	_InWord
	or	a, a
	jr	nz, 00147$
	ld	hl, #___str_12
	call	_InWord
	or	a, a
	jr	z, 00148$
00147$:
	ld	hl, #0x01f3
	call	_RL
	jp	00170$
00148$:
;E:\supernova\msx\game\default2.c:131: else if (WORD("what") || WORD("why") || WORD("where") || WORD("who") || WORD("how") || WORD("which") || WORD("when")) RL(463);
	ld	hl, #___str_13
	call	_InWord
	or	a, a
	jr	nz, 00138$
	ld	hl, #___str_14
	call	_InWord
	or	a, a
	jr	nz, 00138$
	ld	hl, #___str_15
	call	_InWord
	or	a, a
	jr	nz, 00138$
	ld	hl, #___str_16
	call	_InWord
	or	a, a
	jr	nz, 00138$
	ld	hl, #___str_17
	call	_InWord
	or	a, a
	jr	nz, 00138$
	ld	hl, #___str_18
	call	_InWord
	or	a, a
	jr	nz, 00138$
	ld	hl, #___str_19
	call	_InWord
	or	a, a
	jr	z, 00139$
00138$:
	ld	hl, #0x01cf
	call	_RL
	jp	00170$
00139$:
;E:\supernova\msx\game\default2.c:132: else if ((WORD("ill") || WORD("give") || WORD("buy") || WORD("get me") || WORD("purchas")) && (WORD("drink") || WORD("glunk"))) RL(47);
	ld	hl, #___str_20
	call	_InWord
	or	a, a
	jr	nz, 00137$
	ld	hl, #___str_21
	call	_InWord
	or	a, a
	jr	nz, 00137$
	ld	hl, #___str_22
	call	_InWord
	or	a, a
	jr	nz, 00137$
	ld	hl, #___str_23
	call	_InWord
	or	a, a
	jr	nz, 00137$
	ld	hl, #___str_24
	call	_InWord
	or	a, a
	jr	z, 00130$
00137$:
	ld	hl, #___str_25
	call	_InWord
	or	a, a
	jr	nz, 00129$
	ld	hl, #___str_26
	call	_InWord
	or	a, a
	jr	z, 00130$
00129$:
	ld	hl, #0x002f
	call	_RL
	jp	00170$
00130$:
;E:\supernova\msx\game\default2.c:133: else if (WORD("ambross") || WORD("pink") || WORD("bloody") || WORD("foeboz") || WORD("ztulctw")) RL(565);
	ld	hl, #___str_27
	call	_InWord
	or	a, a
	jr	nz, 00122$
	ld	hl, #___str_28
	call	_InWord
	or	a, a
	jr	nz, 00122$
	ld	hl, #___str_29
	call	_InWord
	or	a, a
	jr	nz, 00122$
	ld	hl, #___str_30
	call	_InWord
	or	a, a
	jr	nz, 00122$
	ld	hl, #___str_31
	call	_InWord
	or	a, a
	jr	z, 00123$
00122$:
	ld	hl, #0x0235
	call	_RL
	jp	00170$
00123$:
;E:\supernova\msx\game\default2.c:134: else if (WORD("kill") || WORD("fight") || WORD("hit")) RL(566);
	ld	hl, #___str_32
	call	_InWord
	or	a, a
	jr	nz, 00117$
	ld	hl, #___str_33
	call	_InWord
	or	a, a
	jr	nz, 00117$
	ld	hl, #___str_34
	call	_InWord
	or	a, a
	jr	z, 00118$
00117$:
	ld	hl, #0x0236
	call	_RL
	jr	00170$
00118$:
;E:\supernova\msx\game\default2.c:135: else if (WORD("give")) RL(564);
	ld	hl, #___str_21
	call	_InWord
	or	a, a
	jr	z, 00115$
	ld	hl, #0x0234
	call	_RL
	jr	00170$
00115$:
;E:\supernova\msx\game\default2.c:136: else if (WORD("help") || WORD("tell me")) RL(479);
	ld	hl, #___str_35
	call	_InWord
	or	a, a
	jr	nz, 00110$
	ld	hl, #___str_36
	call	_InWord
	or	a, a
	jr	z, 00111$
00110$:
	ld	hl, #0x01df
	call	_RL
	jr	00170$
00111$:
;E:\supernova\msx\game\default2.c:137: else switch (Rnd(3)) { case 0: RL(50); break; case 1: RL(480); break; case 2: RL(481); break; }
	ld	hl, #0x0003
	call	_Rnd
	ld	a, d
	or	a, e
	jr	z, 00106$
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00107$
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	z, 00108$
	jr	00170$
00106$:
	ld	hl, #0x0032
	call	_RL
	jr	00170$
00107$:
	ld	hl, #0x01e0
	call	_RL
	jr	00170$
00108$:
	ld	hl, #0x01e1
	call	_RL
	jr	00170$
00167$:
;E:\supernova\msx\game\default2.c:139: else RL(52);
	ld	hl, #0x0034
	call	_RL
00170$:
;E:\supernova\msx\game\default2.c:141: if (Vb == 67)    // two aliens
	ld	a, (_Vb)
	sub	a, #0x43
	jp	nz, 00207$
;E:\supernova\msx\game\default2.c:143: if (Here(124))
	ld	a, #0x7c
	call	_Here
	or	a, a
	jp	z, 00204$
;E:\supernova\msx\game\default2.c:145: if (WORD("follow")) RL(48);
	ld	hl, #___str_4
	call	_InWord
	or	a, a
	jr	z, 00201$
	ld	hl, #0x0030
	call	_RL
	jp	00207$
00201$:
;E:\supernova\msx\game\default2.c:146: else if (WORD("go") || WORD("south") || WORD("east")) RL(568);
	ld	hl, #___str_5
	call	_InWord
	or	a, a
	jr	nz, 00195$
	ld	hl, #___str_7
	call	_InWord
	or	a, a
	jr	nz, 00195$
	ld	hl, #___str_6
	call	_InWord
	or	a, a
	jr	z, 00196$
00195$:
	ld	hl, #0x0238
	call	_RL
	jp	00207$
00196$:
;E:\supernova\msx\game\default2.c:147: else if (WORD("crystal")) RL(484);
	ld	hl, #___str_37
	call	_InWord
	or	a, a
	jr	z, 00193$
	ld	hl, #0x01e4
	call	_RL
	jp	00207$
00193$:
;E:\supernova\msx\game\default2.c:148: else if (WORD("coordin") || WORD("where") || WORD("world") || WORD("sagan") || WORD("planet") || WORD("locatio")) RL(485);
	ld	hl, #___str_38
	call	_InWord
	or	a, a
	jr	nz, 00184$
	ld	hl, #___str_15
	call	_InWord
	or	a, a
	jr	nz, 00184$
	ld	hl, #___str_39
	call	_InWord
	or	a, a
	jr	nz, 00184$
	ld	hl, #___str_40
	call	_InWord
	or	a, a
	jr	nz, 00184$
	ld	hl, #___str_41
	call	_InWord
	or	a, a
	jr	nz, 00184$
	ld	hl, #___str_42
	call	_InWord
	or	a, a
	jr	z, 00185$
00184$:
	ld	hl, #0x01e5
	call	_RL
	jr	00207$
00185$:
;E:\supernova\msx\game\default2.c:149: else if (WORD("what") || WORD("why") || WORD("who") || WORD("tell me") || WORD("how") || WORD("which") || WORD("when")) RL(464);
	ld	hl, #___str_13
	call	_InWord
	or	a, a
	jr	nz, 00175$
	ld	hl, #___str_14
	call	_InWord
	or	a, a
	jr	nz, 00175$
	ld	hl, #___str_16
	call	_InWord
	or	a, a
	jr	nz, 00175$
	ld	hl, #___str_36
	call	_InWord
	or	a, a
	jr	nz, 00175$
	ld	hl, #___str_17
	call	_InWord
	or	a, a
	jr	nz, 00175$
	ld	hl, #___str_18
	call	_InWord
	or	a, a
	jr	nz, 00175$
	ld	hl, #___str_19
	call	_InWord
	or	a, a
	jr	z, 00176$
00175$:
	ld	hl, #0x01d0
	call	_RL
	jr	00207$
00176$:
;E:\supernova\msx\game\default2.c:150: else switch (Rnd(3)) { case 0: RL(49); break; case 1: RL(482); break; case 2: RL(483); break; }
	ld	hl, #0x0003
	call	_Rnd
	ld	a, d
	or	a, e
	jr	z, 00171$
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00172$
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	z, 00173$
	jr	00207$
00171$:
	ld	hl, #0x0031
	call	_RL
	jr	00207$
00172$:
	ld	hl, #0x01e2
	call	_RL
	jr	00207$
00173$:
	ld	hl, #0x01e3
	call	_RL
	jr	00207$
00204$:
;E:\supernova\msx\game\default2.c:152: else RL(53);
	ld	hl, #0x0035
	call	_RL
00207$:
;E:\supernova\msx\game\default2.c:154: if (Vb == 68)    // scientist
	ld	a, (_Vb)
	sub	a, #0x44
	jp	nz, 00284$
;E:\supernova\msx\game\default2.c:156: if (Here(123))
	ld	a, #0x7b
	call	_Here
	or	a, a
	jp	z, 00281$
;E:\supernova\msx\game\default2.c:158: if (WORD("follow")) RL(440);
	ld	hl, #___str_4
	call	_InWord
	or	a, a
	jr	z, 00278$
	ld	hl, #0x01b8
	call	_RL
	jp	00284$
00278$:
;E:\supernova\msx\game\default2.c:159: else if (WORD("hi") || WORD("hello") || WORD("bye")) RL(441);
	ld	hl, #___str_8
	call	_InWord
	or	a, a
	jr	nz, 00272$
	ld	hl, #___str_9
	call	_InWord
	or	a, a
	jr	nz, 00272$
	ld	hl, #___str_43
	call	_InWord
	or	a, a
	jr	z, 00273$
00272$:
	ld	hl, #0x01b9
	call	_RL
	jp	00284$
00273$:
;E:\supernova\msx\game\default2.c:160: else if (WORD("wristba")) RL(442);
	ld	hl, #___str_44
	call	_InWord
	or	a, a
	jr	z, 00270$
	ld	hl, #0x01ba
	call	_RL
	jp	00284$
00270$:
;E:\supernova\msx\game\default2.c:161: else if (WORD("card") || WORD("green")) RL(459);
	ld	hl, #___str_45
	call	_InWord
	or	a, a
	jr	nz, 00265$
	ld	hl, #___str_46
	call	_InWord
	or	a, a
	jr	z, 00266$
00265$:
	ld	hl, #0x01cb
	call	_RL
	jp	00284$
00266$:
;E:\supernova\msx\game\default2.c:162: else if (WORD("give")) RL(456);
	ld	hl, #___str_21
	call	_InWord
	or	a, a
	jr	z, 00263$
	ld	hl, #0x01c8
	call	_RL
	jp	00284$
00263$:
;E:\supernova\msx\game\default2.c:163: else if (WORD("go") || WORD("east") || WORD("west")) RL(457);
	ld	hl, #___str_5
	call	_InWord
	or	a, a
	jr	nz, 00257$
	ld	hl, #___str_6
	call	_InWord
	or	a, a
	jr	nz, 00257$
	ld	hl, #___str_47
	call	_InWord
	or	a, a
	jr	z, 00258$
00257$:
	ld	hl, #0x01c9
	call	_RL
	jp	00284$
00258$:
;E:\supernova\msx\game\default2.c:164: else if (WORD("help")) RL(462);
	ld	hl, #___str_35
	call	_InWord
	or	a, a
	jr	z, 00255$
	ld	hl, #0x01ce
	call	_RL
	jp	00284$
00255$:
;E:\supernova\msx\game\default2.c:165: else if (WORD("ship") || WORD("planets")) RL(497);
	ld	hl, #___str_48
	call	_InWord
	or	a, a
	jr	nz, 00250$
	ld	hl, #___str_49
	call	_InWord
	or	a, a
	jr	z, 00251$
00250$:
	ld	hl, #0x01f1
	call	_RL
	jp	00284$
00251$:
;E:\supernova\msx\game\default2.c:166: else if (WORD("star") || WORD("superno")) RL(486);
	ld	hl, #___str_50
	call	_InWord
	or	a, a
	jr	nz, 00246$
	ld	hl, #___str_51
	call	_InWord
	or	a, a
	jr	z, 00247$
00246$:
	ld	hl, #0x01e6
	call	_RL
	jp	00284$
00247$:
;E:\supernova\msx\game\default2.c:167: else if ((WORD("crystal") || WORD("clear")) && (T[24] > 1 && T[24] < 6) && IN29(Inv, 1))
	ld	hl, #___str_37
	call	_InWord
	or	a, a
	jr	nz, 00242$
	ld	hl, #___str_52
	call	_InWord
	or	a, a
	jr	z, 00238$
00242$:
	ld	hl, (#(_T + 48) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01034$
	xor	a, #0x80
01034$:
	jp	p, 00238$
	ld	de, #0x0006
	cp	a, a
	sbc	hl, de
	jr	nc, 00238$
	ld	a, (#_Inv + 0)
	and	a, #0x01
	jr	z, 00238$
;E:\supernova\msx\game\default2.c:168: { T[24] = Null; T[25] = 7; RS(181); }
	ld	hl, #0x0000
	ld	((_T + 48)), hl
	ld	l, #0x07
	ld	((_T + 50)), hl
	ld	l, #0xb5
	call	_RS
	jp	00284$
00238$:
;E:\supernova\msx\game\default2.c:169: else if ((WORD("crystal") || WORD("clear")) && (T[23] > 1 || T[24] > 5)) RL(446);
	ld	hl, #___str_37
	call	_InWord
	or	a, a
	jr	nz, 00236$
	ld	hl, #___str_52
	call	_InWord
	or	a, a
	jr	z, 00232$
00236$:
	ld	hl, (#_T + 46)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01035$
	xor	a, #0x80
01035$:
	jp	m, 00231$
	ld	hl, (#_T + 48)
	ld	a, #0x05
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01036$
	xor	a, #0x80
01036$:
	jp	p, 00232$
00231$:
	ld	hl, #0x01be
	call	_RL
	jp	00284$
00232$:
;E:\supernova\msx\game\default2.c:170: else if (WORD("crystal") || WORD("clear")) RL(487);
	ld	hl, #___str_37
	call	_InWord
	or	a, a
	jr	nz, 00227$
	ld	hl, #___str_52
	call	_InWord
	or	a, a
	jr	z, 00228$
00227$:
	ld	hl, #0x01e7
	call	_RL
	jp	00284$
00228$:
;E:\supernova\msx\game\default2.c:171: else if ((WORD("who") || WORD("what")) && WORD("you")) RL(461);
	ld	hl, #___str_16
	call	_InWord
	or	a, a
	jr	nz, 00226$
	ld	hl, #___str_13
	call	_InWord
	or	a, a
	jr	z, 00223$
00226$:
	ld	hl, #___str_53
	call	_InWord
	or	a, a
	jr	z, 00223$
	ld	hl, #0x01cd
	call	_RL
	jp	00284$
00223$:
;E:\supernova\msx\game\default2.c:172: else if (WORD("what") || WORD("why") || WORD("where") || WORD("who") || WORD("how") || WORD("which") || WORD("when") || WORD("tell me")) RL(458);
	ld	hl, #___str_13
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_14
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_15
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_16
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_17
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_18
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_19
	call	_InWord
	or	a, a
	jr	nz, 00212$
	ld	hl, #___str_36
	call	_InWord
	or	a, a
	jr	z, 00213$
00212$:
	ld	hl, #0x01ca
	call	_RL
	jr	00284$
00213$:
;E:\supernova\msx\game\default2.c:173: else switch (Rnd(3)) { case 0: RL(443); break; case 1: RL(477); break; case 2: RL(478); break; }
	ld	hl, #0x0003
	call	_Rnd
	ld	a, d
	or	a, e
	jr	z, 00208$
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00209$
	ld	a, e
	sub	a, #0x02
	or	a, d
	jr	z, 00210$
	jr	00284$
00208$:
	ld	hl, #0x01bb
	call	_RL
	jr	00284$
00209$:
	ld	hl, #0x01dd
	call	_RL
	jr	00284$
00210$:
	ld	hl, #0x01de
	call	_RL
	jr	00284$
00281$:
;E:\supernova\msx\game\default2.c:175: else RL(439);
	ld	hl, #0x01b7
	call	_RL
00284$:
;E:\supernova\msx\game\default2.c:177: if (Vb == 69)    // robot
	ld	a, (_Vb)
	sub	a, #0x45
	jr	nz, 00289$
;E:\supernova\msx\game\default2.c:179: if (Here(46)) RL(508); else RL(584);
	ld	a, #0x2e
	call	_Here
	or	a, a
	jr	z, 00286$
	ld	hl, #0x01fc
	call	_RL
	jr	00289$
00286$:
	ld	hl, #0x0248
	call	_RL
00289$:
;E:\supernova\msx\game\default2.c:181: if (Vb == 71)    // computer
	ld	a, (_Vb)
	sub	a, #0x47
	ret	nz
;E:\supernova\msx\game\default2.c:183: if (Here(37)) RL(545); else RL(546);
	ld	a, #0x25
	call	_Here
	or	a, a
	jr	z, 00291$
	ld	hl, #0x0221
	jp	_RL
00291$:
	ld	hl, #0x0222
;E:\supernova\msx\game\default2.c:186: }
;E:\supernova\msx\game\default2.c:187: }
	jp	_RL
___str_4:
	.ascii "follow"
	.db 0x00
___str_5:
	.ascii "go"
	.db 0x00
___str_6:
	.ascii "east"
	.db 0x00
___str_7:
	.ascii "south"
	.db 0x00
___str_8:
	.ascii "hi"
	.db 0x00
___str_9:
	.ascii "hello"
	.db 0x00
___str_10:
	.ascii "infocom"
	.db 0x00
___str_11:
	.ascii "scott"
	.db 0x00
___str_12:
	.ascii "miller"
	.db 0x00
___str_13:
	.ascii "what"
	.db 0x00
___str_14:
	.ascii "why"
	.db 0x00
___str_15:
	.ascii "where"
	.db 0x00
___str_16:
	.ascii "who"
	.db 0x00
___str_17:
	.ascii "how"
	.db 0x00
___str_18:
	.ascii "which"
	.db 0x00
___str_19:
	.ascii "when"
	.db 0x00
___str_20:
	.ascii "ill"
	.db 0x00
___str_21:
	.ascii "give"
	.db 0x00
___str_22:
	.ascii "buy"
	.db 0x00
___str_23:
	.ascii "get me"
	.db 0x00
___str_24:
	.ascii "purchas"
	.db 0x00
___str_25:
	.ascii "drink"
	.db 0x00
___str_26:
	.ascii "glunk"
	.db 0x00
___str_27:
	.ascii "ambross"
	.db 0x00
___str_28:
	.ascii "pink"
	.db 0x00
___str_29:
	.ascii "bloody"
	.db 0x00
___str_30:
	.ascii "foeboz"
	.db 0x00
___str_31:
	.ascii "ztulctw"
	.db 0x00
___str_32:
	.ascii "kill"
	.db 0x00
___str_33:
	.ascii "fight"
	.db 0x00
___str_34:
	.ascii "hit"
	.db 0x00
___str_35:
	.ascii "help"
	.db 0x00
___str_36:
	.ascii "tell me"
	.db 0x00
___str_37:
	.ascii "crystal"
	.db 0x00
___str_38:
	.ascii "coordin"
	.db 0x00
___str_39:
	.ascii "world"
	.db 0x00
___str_40:
	.ascii "sagan"
	.db 0x00
___str_41:
	.ascii "planet"
	.db 0x00
___str_42:
	.ascii "locatio"
	.db 0x00
___str_43:
	.ascii "bye"
	.db 0x00
___str_44:
	.ascii "wristba"
	.db 0x00
___str_45:
	.ascii "card"
	.db 0x00
___str_46:
	.ascii "green"
	.db 0x00
___str_47:
	.ascii "west"
	.db 0x00
___str_48:
	.ascii "ship"
	.db 0x00
___str_49:
	.ascii "planets"
	.db 0x00
___str_50:
	.ascii "star"
	.db 0x00
___str_51:
	.ascii "superno"
	.db 0x00
___str_52:
	.ascii "clear"
	.db 0x00
___str_53:
	.ascii "you"
	.db 0x00
;E:\supernova\msx\game\default2.c:189: void Default7(void)
;	---------------------------------
; Function Default7
; ---------------------------------
_Default7::
;E:\supernova\msx\game\default2.c:191: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x1f
	jr	z, 00101$
	cp	a, #0x41
	jp	z, 00154$
	cp	a, #0x4b
	jr	z, 00127$
	cp	a, #0x50
	jp	z, 00163$
	cp	a, #0x51
	jp	z, 00168$
	cp	a, #0x53
	jp	z, 00140$
	cp	a, #0x54
	jp	z, 00129$
	cp	a, #0x5d
	jp	z, 00170$
	sub	a, #0x5f
	jp	z, 00169$
	ret
;E:\supernova\msx\game\default2.c:194: case 31:
00101$:
;E:\supernova\msx\game\default2.c:195: switch (N1)
	ld	a, (_N1)
	cp	a, #0x0c
	jr	z, 00102$
	sub	a, #0x13
	jr	z, 00103$
	jr	00104$
;E:\supernova\msx\game\default2.c:197: case 12: RB2(6, 13); break;
00102$:
	ld	l, #0x0d
	ld	a, #0x06
	jp	_RB2
;E:\supernova\msx\game\default2.c:198: case 19: RB(12, 7); Pause(); break;
00103$:
	ld	l, #0x07
	ld	a, #0x0c
	call	_RB
	jp	_Pause
;E:\supernova\msx\game\default2.c:199: default: Wr("There is nothing on the "); WrFN(N1); Wr(" to read."); Wln();
00104$:
	ld	hl, #___str_54
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_55
	call	_Wr
;E:\supernova\msx\game\default2.c:201: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:205: if (IN29(Wear, 26)) RL(571);
00127$:
	ld	a, (#(_Wear + 3) + 0)
	rrca
	and	a, #0x01
	jr	z, 00125$
	ld	hl, #0x023b
	jp	_RL
00125$:
;E:\supernova\msx\game\default2.c:207: switch (N1)
	ld	a, (_N1)
	dec	a
	jr	z, 00111$
	ld	a, (_N1)
	cp	a, #0x16
	jr	z, 00111$
	cp	a, #0x17
	jr	z, 00111$
	cp	a, #0x18
	jr	z, 00111$
	cp	a, #0x19
	jr	z, 00111$
	cp	a, #0x22
	jr	z, 00121$
	cp	a, #0x4f
	jr	z, 00117$
	cp	a, #0x67
	jr	z, 00121$
	cp	a, #0x73
	jr	z, 00121$
	sub	a, #0x78
	jr	z, 00118$
	jr	00122$
;E:\supernova\msx\game\default2.c:209: case 1: case 22: case 23: case 24: case 25: if (IN29(Socket, N1)) RL(569); else RL(570); break;
00111$:
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00113$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00113$
	ld	a, (_N1+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00627$:
	sra	d
	rr	e
	djnz	00627$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00629$
00628$:
	srl	a
00629$:
	djnz	00628$
	rrca
	jr	nc, 00113$
	ld	hl, #0x0239
	jp	_RL
00113$:
	ld	hl, #0x023a
	jp	_RL
;E:\supernova\msx\game\default2.c:210: case 79: RL(552); break;
00117$:
	ld	hl, #0x0228
	jp	_RL
;E:\supernova\msx\game\default2.c:211: case 120: RL(551); break;
00118$:
	ld	hl, #0x0227
	jp	_RL
;E:\supernova\msx\game\default2.c:212: case 34: case 103: case 115: Wr("You can't reach the "); Wr(NStr); Wr("."); Wln(); break;
00121$:
	ld	hl, #___str_56
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_57
	call	_Wr
	jp	_Wln
;E:\supernova\msx\game\default2.c:213: default: Wr("You feel nothing unusual about the "); Wr(NStr); Wr("."); Wln();
00122$:
	ld	hl, #___str_58
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_57
	call	_Wr
;E:\supernova\msx\game\default2.c:215: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:218: case 84:
00129$:
;E:\supernova\msx\game\default2.c:219: switch (N1)
	ld	a, (_N1)
	cp	a, #0x06
	jr	z, 00130$
	cp	a, #0x1d
	jr	z, 00133$
	cp	a, #0x5c
	jr	z, 00133$
	cp	a, #0x63
	jr	z, 00133$
	sub	a, #0x6f
	jr	z, 00137$
	jr	00138$
;E:\supernova\msx\game\default2.c:221: case 6: RL(377); break;
00130$:
	ld	hl, #0x0179
	jp	_RL
;E:\supernova\msx\game\default2.c:222: case 29: case 92: case 99: if (MugCon == 99) RL(70); else RL(71); break;
00133$:
	ld	a, (_MugCon)
	sub	a, #0x63
	jr	nz, 00135$
	ld	hl, #0x0046
	jp	_RL
00135$:
	ld	hl, #0x0047
	jp	_RL
;E:\supernova\msx\game\default2.c:223: case 111: RL(466); break;
00137$:
	ld	hl, #0x01d2
	jp	_RL
;E:\supernova\msx\game\default2.c:224: default: Wr("It tastes like a "); Wr(NStr); Wr(" should taste."); Wln();
00138$:
	ld	hl, #___str_59
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_60
	call	_Wr
;E:\supernova\msx\game\default2.c:226: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:229: case 83:
00140$:
;E:\supernova\msx\game\default2.c:230: switch (N1)
	ld	a, (_N1)
	cp	a, #0x06
	jr	z, 00141$
	cp	a, #0x1d
	jr	z, 00143$
	cp	a, #0x63
	jr	z, 00143$
	sub	a, #0x6f
	jr	z, 00147$
	jr	00148$
;E:\supernova\msx\game\default2.c:232: case 6: RL(378); break;
00141$:
	ld	hl, #0x017a
	jp	_RL
;E:\supernova\msx\game\default2.c:233: case 29: case 99: if (MugCon == 99) RL(72); else RL(599); break;
00143$:
	ld	a, (_MugCon)
	sub	a, #0x63
	jr	nz, 00145$
	ld	hl, #0x0048
	jp	_RL
00145$:
	ld	hl, #0x0257
	jp	_RL
;E:\supernova\msx\game\default2.c:234: case 111: RL(466); break;
00147$:
	ld	hl, #0x01d2
	jp	_RL
;E:\supernova\msx\game\default2.c:235: default:
00148$:
;E:\supernova\msx\game\default2.c:236: if (IN_RANGE(Prm, 42, 50)) RL(572);
	ld	a, (_Prm+0)
	sub	a, #0x2a
	jr	c, 00150$
	ld	a, #0x32
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00150$
	ld	hl, #0x023c
	jp	_RL
00150$:
;E:\supernova\msx\game\default2.c:237: else { Wr("It smells like an ordinary "); Wr(NStr); Wr("."); Wln(); }
	ld	hl, #___str_61
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_57
	call	_Wr
;E:\supernova\msx\game\default2.c:239: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:242: case 65:
00154$:
;E:\supernova\msx\game\default2.c:243: switch (N1)
	ld	a, (_N1)
	cp	a, #0x2a
	jr	z, 00155$
	cp	a, #0x3e
	jr	z, 00156$
	sub	a, #0x6f
	jr	z, 00160$
	jr	00161$
;E:\supernova\msx\game\default2.c:245: case 42: RL(501); break;
00155$:
	ld	hl, #0x01f5
	jp	_RL
;E:\supernova\msx\game\default2.c:246: case 62: if (Region == 4) RL(573); else RL(574); break;
00156$:
	ld	a, (_Region)
	sub	a, #0x04
	jr	nz, 00158$
	ld	hl, #0x023d
	jp	_RL
00158$:
	ld	hl, #0x023e
	jp	_RL
;E:\supernova\msx\game\default2.c:247: case 111: RL(73); break;
00160$:
	ld	hl, #0x0049
	jp	_RL
;E:\supernova\msx\game\default2.c:248: default: Wr("The "); Wr(NStr); Wr(" is not making any sound."); Wln();
00161$:
	ld	hl, #___str_62
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_63
	call	_Wr
;E:\supernova\msx\game\default2.c:250: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:253: case 80:
00163$:
;E:\supernova\msx\game\default2.c:254: if (StrEq(Word, "hi") || StrEq(Word, "hello")) { Wr("Hello to you."); Wln(); }
	ld	de, #___str_64
	ld	hl, #_Word
	call	_StrEq
	or	a, a
	jr	nz, 00164$
	ld	de, #___str_65
	ld	hl, #_Word
	call	_StrEq
	or	a, a
	jr	z, 00165$
00164$:
	ld	hl, #___str_66
	call	_Wr
	jp	_Wln
00165$:
;E:\supernova\msx\game\default2.c:255: else RL(74);
;E:\supernova\msx\game\default2.c:256: break;
	ld	hl, #0x004a
	jp	_RL
;E:\supernova\msx\game\default2.c:259: case 81: RL(Rnd(6) + 75); break;
00168$:
	ld	hl, #0x0006
	call	_Rnd
	ld	hl, #0x004b
	add	hl, de
	jp	_RL
;E:\supernova\msx\game\default2.c:262: case 95: RB(4, 11); Pause(); RB(6, 11); Pause(); break;
00169$:
	ld	l, #0x0b
	ld	a, #0x04
	call	_RB
	call	_Pause
	ld	l, #0x0b
	ld	a, #0x06
	call	_RB
	jp	_Pause
;E:\supernova\msx\game\default2.c:265: case 93:
00170$:
;E:\supernova\msx\game\default2.c:266: if (Pr == 6)
	ld	a, (_Pr)
	sub	a, #0x06
	jp	nz, _NoSense
;E:\supernova\msx\game\default2.c:268: if (IN29(Mov, N2) || N2 == 60)
	ld	a, (_N2+0)
	sub	a, #0x01
	jr	c, 00191$
	ld	a, #0x1d
	ld	hl, #_N2
	sub	a, (hl)
	jr	c, 00191$
	ld	a, (_N2+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00651$:
	sra	d
	rr	e
	djnz	00651$
	ld	hl, #_Mov
	add	hl, de
	ld	c, (hl)
	ld	a, (_N2+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00653$
00652$:
	srl	a
00653$:
	djnz	00652$
	rrca
	jr	c, 00186$
00191$:
	ld	a, (_N2)
	sub	a, #0x3c
	jp	nz, _Crazy
00186$:
;E:\supernova\msx\game\default2.c:270: switch (N1)
	ld	a, (_N1)
	cp	a, #0x3c
	jr	z, 00171$
	cp	a, #0x7b
	jr	z, 00175$
	sub	a, #0x7c
	jr	z, 00176$
	jp	00184$
;E:\supernova\msx\game\default2.c:272: case 60:
00171$:
;E:\supernova\msx\game\default2.c:273: Cur(2); Wr("Are you sure? "); CFlag = (char)(GetKey() & 0xFF); Cur(3); Wln();
	ld	a, #0x02
	call	_Cur
	ld	hl, #___str_67
	call	_Wr
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
	ld	a, #0x03
	call	_Cur
	call	_Wln
;E:\supernova\msx\game\default2.c:274: if (UpCase(CFlag) == 'Y') { RL(488); Add(128); }
	ld	a, (_CFlag)
	call	_UpCase
	cp	a, #0x59
	jr	nz, 00173$
	ld	hl, #0x01e8
	call	_RL
	ld	a, #0x80
	jp	_Add
00173$:
;E:\supernova\msx\game\default2.c:275: else { Wr("Whew!"); Wln(); }
	ld	hl, #___str_68
	call	_Wr
;E:\supernova\msx\game\default2.c:276: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:277: case 123: RL(465); break;
00175$:
	ld	hl, #0x01d1
	jp	_RL
;E:\supernova\msx\game\default2.c:278: case 124:
00176$:
;E:\supernova\msx\game\default2.c:279: switch (Rnd(6))
	ld	hl, #0x0006
	call	_Rnd
	ld	a, #0x05
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	ret	c
	ld	hl, #00663$
	add	hl, de
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, e
	jp	(hl)
00663$:
	.dw	00177$
	.dw	00178$
	.dw	00179$
	.dw	00180$
	.dw	00181$
	.dw	00182$
;E:\supernova\msx\game\default2.c:281: case 0: RL(175); break;
00177$:
	ld	hl, #0x00af
	jp	_RL
;E:\supernova\msx\game\default2.c:282: case 1: RL(176); Add(7); break;
00178$:
	ld	hl, #0x00b0
	call	_RL
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\default2.c:283: case 2: RL(177); Van(N2); SetR(N2, Prm); break;
00179$:
	ld	hl, #0x00b1
	call	_RL
	ld	a, (_N2)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N2)
	jp	_SetR
;E:\supernova\msx\game\default2.c:284: case 3: RS(33); T[3] = 26; T[4] = 23; T[5] = 33; break;
00180$:
	ld	hl, #0x0021
	call	_RS
	ld	hl, #0x001a
	ld	((_T + 6)), hl
	ld	l, #0x17
	ld	((_T + 8)), hl
	ld	l, #0x21
	ld	((_T + 10)), hl
	ret
;E:\supernova\msx\game\default2.c:285: case 4: RS(34); Van(N2); Prm = 13; Add(7); break;
00181$:
	ld	hl, #0x0022
	call	_RS
	ld	a, (_N2)
	call	_Van
	ld	hl, #_Prm
	ld	(hl), #0x0d
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\default2.c:286: case 5: RS(36); T[7] = 9; SET_ADD(PStat, 4); Add(7); break;
00182$:
	ld	hl, #0x0024
	call	_RS
	ld	hl, #0x0009
	ld	((_T + 14)), hl
	ld	bc, #_PStat+0
	ld	a, (bc)
	set	3, a
	ld	(bc), a
;E:\supernova\msx\game\default2.c:288: break;
	ld	a, #0x07
	jp	_Add
;E:\supernova\msx\game\default2.c:289: default: Wr("The "); WrFN(N1); Wr(" offers no resistance."); Wln();
00184$:
	ld	hl, #___str_62
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_69
	call	_Wr
;E:\supernova\msx\game\default2.c:290: }
;E:\supernova\msx\game\default2.c:292: else Crazy();
;E:\supernova\msx\game\default2.c:294: else NoSense();
;E:\supernova\msx\game\default2.c:296: }
;E:\supernova\msx\game\default2.c:297: }
	jp	_Wln
___str_54:
	.ascii "There is nothing on the "
	.db 0x00
___str_55:
	.ascii " to read."
	.db 0x00
___str_56:
	.ascii "You can't reach the "
	.db 0x00
___str_57:
	.ascii "."
	.db 0x00
___str_58:
	.ascii "You feel nothing unusual about the "
	.db 0x00
___str_59:
	.ascii "It tastes like a "
	.db 0x00
___str_60:
	.ascii " should taste."
	.db 0x00
___str_61:
	.ascii "It smells like an ordinary "
	.db 0x00
___str_62:
	.ascii "The "
	.db 0x00
___str_63:
	.ascii " is not making any sound."
	.db 0x00
___str_64:
	.ascii "hi"
	.db 0x00
___str_65:
	.ascii "hello"
	.db 0x00
___str_66:
	.ascii "Hello to you."
	.db 0x00
___str_67:
	.ascii "Are you sure? "
	.db 0x00
___str_68:
	.ascii "Whew!"
	.db 0x00
___str_69:
	.ascii " offers no resistance."
	.db 0x00
;E:\supernova\msx\game\default2.c:299: void Default8(void)
;	---------------------------------
; Function Default8
; ---------------------------------
_Default8::
;E:\supernova\msx\game\default2.c:303: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x29
	jp	z, 00152$
	cp	a, #0x32
	jr	z, 00101$
	sub	a, #0x58
	jp	z, 00152$
	ret
;E:\supernova\msx\game\default2.c:306: case 50:
00101$:
;E:\supernova\msx\game\default2.c:307: if (Pr == Null)    // e.g. turn knob
	ld	a, (_Pr+0)
	or	a, a
	jr	nz, 00149$
;E:\supernova\msx\game\default2.c:309: switch (N1)
	ld	a, (_N1)
	sub	a, #0x30
	jr	nz, 00111$
;E:\supernova\msx\game\default2.c:312: turn_jump:
00103$:
;E:\supernova\msx\game\default2.c:313: if (Prm == SinkRm) { SinkRm = Null; LOC_DEL(Prm, 79); RL(81); }
	ld	a, (_Prm)
	ld	hl, #_SinkRm
	sub	a, (hl)
	jr	nz, 00109$
	ld	(#_SinkRm), a
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
	res	6, (hl)
	ld	hl, #0x0051
	jp	_RL
00109$:
;E:\supernova\msx\game\default2.c:314: else if (Prm == 5 || Prm == 12) { SinkRm = Prm; LOC_ADD(Prm, 79); RL(82); }
	ld	a, (_Prm)
	cp	a, #0x05
	jr	z, 00104$
	sub	a, #0x0c
	jr	nz, 00105$
00104$:
	ld	a, (_Prm+0)
	ld	(#_SinkRm), a
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
	ld	hl, #0x0052
	jp	_RL
00105$:
;E:\supernova\msx\game\default2.c:315: else RL(540);
;E:\supernova\msx\game\default2.c:316: break;
	ld	hl, #0x021c
	jp	_RL
;E:\supernova\msx\game\default2.c:317: default: RL(83);
00111$:
;E:\supernova\msx\game\default2.c:318: }
	ld	hl, #0x0053
	jp	_RL
00149$:
;E:\supernova\msx\game\default2.c:320: else if (Input[0] == 0)    // e.g. turn sink on
	ld	a, (#_Input + 0)
	or	a, a
	jp	nz, 00146$
;E:\supernova\msx\game\default2.c:322: switch (N1)
	ld	a, (_N1)
	cp	a, #0x02
	jr	z, 00113$
	cp	a, #0x25
	jp	z, 00128$
	cp	a, #0x26
	jp	z, 00128$
	cp	a, #0x2e
	jp	z, 00132$
	cp	a, #0x30
	jp	z, 00103$
	cp	a, #0x4f
	jp	z, 00103$
	cp	a, #0x62
	jp	z, 00103$
	cp	a, #0x7f
	jp	z, 00133$
	sub	a, #0x83
	jp	z, 00136$
	jp	_Crazy
;E:\supernova\msx\game\default2.c:324: case 2:
00113$:
;E:\supernova\msx\game\default2.c:325: RL(460); Score(5, 123);
	ld	hl, #0x01cc
	call	_RL
	ld	de, #0x007b
	ld	hl, #0x0005
	call	_Score
;E:\supernova\msx\game\default2.c:326: switch (Rnd(4))
	ld	hl, #0x0004
	call	_Rnd
	ld	a, d
	or	a, e
	jr	z, 00114$
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00116$
	ld	a, e
	sub	a, #0x02
	or	a, d
	jp	z, 00118$
	ld	a, e
	sub	a, #0x03
	or	a, d
	jp	z, 00122$
	jp	00124$
;E:\supernova\msx\game\default2.c:328: case 0: k = Rnd(99) + 50; for (i = 20; i <= k; i++) Play(20, i, 1); break;
00114$:
	ld	hl, #0x0063
	call	_Rnd
	ld	hl, #0x0032
	add	hl, de
	ex	de, hl
	ld	hl, #0x0014
	ld	(_i), hl
00196$:
	ld	a, e
	ld	iy, #_i
	sub	a, 0 (iy)
	ld	a, d
	sbc	a, 1 (iy)
	jp	po, 00635$
	xor	a, #0x80
00635$:
	jp	m, 00124$
	push	de
	ld	hl, #0x0001
	push	hl
	ld	de, (_i)
	ld	l, #0x14
	call	_Play
	pop	de
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	jr	00196$
;E:\supernova\msx\game\default2.c:329: case 1:
00116$:
;E:\supernova\msx\game\default2.c:330: for (i = Rnd(5000) + 4500; i >= 20; i--) { Sound(i); Delay(1); Sound(31); }
	ld	hl, #0x1388
	call	_Rnd
	ld	hl, #0x1194
	add	hl, de
	ld	(_i), hl
00199$:
	ld	bc, (_i)
	ld	a, c
	sub	a, #0x14
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00124$
	ld	hl, (_i)
	call	_Sound
	ld	hl, #0x0001
	call	_Delay
	ld	hl, #0x001f
	call	_Sound
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	jr	00199$
;E:\supernova\msx\game\default2.c:332: case 2:
00118$:
;E:\supernova\msx\game\default2.c:333: i = Rnd(9999) + 1; x = 0;
	ld	hl, #0x270f
	call	_Rnd
	inc	de
	ld	(_i), de
	xor	a, a
	ld	(#_x), a
;E:\supernova\msx\game\default2.c:334: do { j = Rnd(9999); Play(j, i, 0); i = Rnd(9999) + 1; Play(i, j, 0); x++; } while (!(x > 9));
00119$:
	ld	hl, #0x270f
	call	_Rnd
	ld	(_j), de
	ld	hl, #0x0000
	push	hl
	ld	de, (_i)
	ld	hl, (_j)
	call	_Play
	ld	hl, #0x270f
	call	_Rnd
	inc	de
	ld	(_i), de
	ld	hl, #0x0000
	push	hl
	ld	de, (_j)
	ld	hl, (_i)
	call	_Play
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x09
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00119$
;E:\supernova\msx\game\default2.c:335: break;
	jr	00124$
;E:\supernova\msx\game\default2.c:336: case 3:
00122$:
;E:\supernova\msx\game\default2.c:337: for (x = 1; x <= 200; x++) { i = Rnd(9999) + 1; Play(i, i, 1); Delay(16); }
	ld	hl, #_x
	ld	(hl), #0x01
00201$:
	ld	hl, #0x270f
	call	_Rnd
	inc	de
	ld	(_i), de
	ld	hl, #0x0001
	push	hl
	ld	de, (_i)
	ld	hl, (_i)
	call	_Play
	ld	hl, #0x0010
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0xc8
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00201$
;E:\supernova\msx\game\default2.c:339: }
00124$:
;E:\supernova\msx\game\default2.c:340: NoSound(); if (Region == 5) Sound(60);
	call	_NoSound
	ld	a, (_Region)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\default2.c:341: break;
	ld	hl, #0x003c
	jp	_Sound
;E:\supernova\msx\game\default2.c:342: case 37: case 38: RL(373); break;
00128$:
	ld	hl, #0x0175
	jp	_RL
;E:\supernova\msx\game\default2.c:344: case 46: RL(360); break;
00132$:
	ld	hl, #0x0168
	jp	_RL
;E:\supernova\msx\game\default2.c:345: case 127: if (!StrEq(NStr, "window")) RL(360); break;
00133$:
	ld	de, #___str_70
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	ret	nz
	ld	hl, #0x0168
	jp	_RL
;E:\supernova\msx\game\default2.c:346: case 131: RL(84); break;
00136$:
;E:\supernova\msx\game\default2.c:347: default: Crazy();
;E:\supernova\msx\game\default2.c:348: }
	ld	hl, #0x0054
	jp	_RL
00146$:
;E:\supernova\msx\game\default2.c:350: else if (Pr == 1)    // e.g. turn dial to 123
	ld	a, (_Pr)
	dec	a
	jp	nz, _NoSense
;E:\supernova\msx\game\default2.c:352: if (N1 == 48) { /* case Prm of 79: nothing */ }
	ld	a, (_N1)
	sub	a, #0x30
	ret	z
;E:\supernova\msx\game\default2.c:353: else Crazy();
;E:\supernova\msx\game\default2.c:355: else NoSense();
;E:\supernova\msx\game\default2.c:356: break;
	jp	_Crazy
;E:\supernova\msx\game\default2.c:359: case 41: case 88:
00152$:
;E:\supernova\msx\game\default2.c:360: if (N1 == 5) RL(289);
	ld	a, (_N1)
	sub	a, #0x05
	jr	nz, 00192$
	ld	hl, #0x0121
	jp	_RL
00192$:
;E:\supernova\msx\game\default2.c:361: else if (N2 == Null)
	ld	a, (_N2+0)
	or	a, a
	jr	nz, 00189$
;E:\supernova\msx\game\default2.c:363: switch (N1)    // if N1 only
	ld	a, (_N1)
	sub	a, #0x38
	jr	nz, 00154$
;E:\supernova\msx\game\default2.c:365: case 56: RL(409); break;
	ld	hl, #0x0199
	jp	_RL
;E:\supernova\msx\game\default2.c:366: default: RL(100);
00154$:
;E:\supernova\msx\game\default2.c:367: }
	ld	hl, #0x0064
	jp	_RL
00189$:
;E:\supernova\msx\game\default2.c:369: else if (Pr == 6)
	ld	a, (_Pr)
	sub	a, #0x06
	jp	nz, _NoSense
;E:\supernova\msx\game\default2.c:371: if (N1 == 56)
	ld	a, (_N1)
	sub	a, #0x38
	jr	nz, 00183$
;E:\supernova\msx\game\default2.c:373: if (Prm == 9 || Prm == 11) { if (N2 == 3) RL(101); else Crazy(); }
	ld	a, (_Prm)
	cp	a, #0x09
	jr	z, 00165$
	sub	a, #0x0b
	jr	nz, 00166$
00165$:
	ld	a, (_N2)
	sub	a, #0x03
	jp	nz, _Crazy
	ld	hl, #0x0065
	jp	_RL
00166$:
;E:\supernova\msx\game\default2.c:374: else if (Prm == 10) { if (N2 == 3) { RL(102); Add(11); } else Crazy(); }
	ld	a, (_Prm)
	sub	a, #0x0a
	jr	nz, 00163$
	ld	a, (_N2)
	sub	a, #0x03
	jp	nz, _Crazy
	ld	hl, #0x0066
	call	_RL
	ld	a, #0x0b
	jp	_Add
00163$:
;E:\supernova\msx\game\default2.c:375: else RL(103);
	ld	hl, #0x0067
	jp	_RL
00183$:
;E:\supernova\msx\game\default2.c:377: else if (N1 == 32 || N1 == 38 || N1 == 45 || N1 == 55 || N1 == 62 || N1 == 68 || N1 == 69 || N1 == 78 || N1 == 89 || N1 == 90 || N1 == 119) RL(103);
	ld	a, (_N1)
	cp	a, #0x20
	jr	z, 00169$
	cp	a, #0x26
	jr	z, 00169$
	cp	a, #0x2d
	jr	z, 00169$
	cp	a, #0x37
	jr	z, 00169$
	cp	a, #0x3e
	jr	z, 00169$
	cp	a, #0x44
	jr	z, 00169$
	cp	a, #0x45
	jr	z, 00169$
	cp	a, #0x4e
	jr	z, 00169$
	cp	a, #0x59
	jr	z, 00169$
	cp	a, #0x5a
	jr	z, 00169$
	sub	a, #0x77
	jp	nz, _Crazy
00169$:
	ld	hl, #0x0067
;E:\supernova\msx\game\default2.c:378: else Crazy();
;E:\supernova\msx\game\default2.c:380: else NoSense();
;E:\supernova\msx\game\default2.c:383: (void)n;
;E:\supernova\msx\game\default2.c:384: }
	jp	_RL
___str_70:
	.ascii "window"
	.db 0x00
;E:\supernova\msx\game\default2.c:386: static void SatchContents(void)
;	---------------------------------
; Function SatchContents
; ---------------------------------
_SatchContents:
;E:\supernova\msx\game\default2.c:388: if (SatchCon != Null) { Wr("The satchel contains "); WrFN(SatchCon); Wr("."); Wln(); }
	ld	a, (_SatchCon+0)
	or	a, a
	jr	z, 00102$
	ld	hl, #___str_71
	call	_Wr
	ld	a, (_SatchCon)
	call	_WrFN
	ld	hl, #___str_72
	call	_Wr
	jp	_Wln
00102$:
;E:\supernova\msx\game\default2.c:389: else RL(110);
	ld	hl, #0x006e
;E:\supernova\msx\game\default2.c:390: }
	jp	_RL
___str_71:
	.ascii "The satchel contains "
	.db 0x00
___str_72:
	.ascii "."
	.db 0x00
;E:\supernova\msx\game\default2.c:392: void Default9(void)
;	---------------------------------
; Function Default9
; ---------------------------------
_Default9::
;E:\supernova\msx\game\default2.c:394: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x14
	jp	z, 00145$
	cp	a, #0x16
	jp	z, 00165$
	cp	a, #0x18
	jr	z, 00101$
	cp	a, #0x1a
	jp	z, 00145$
	cp	a, #0x46
	jp	z, 00183$
	sub	a, #0x4c
	jp	z, 00145$
	ret
;E:\supernova\msx\game\default2.c:397: case 24:
00101$:
;E:\supernova\msx\game\default2.c:398: switch (N1)
	ld	a, (_N1)
	sub	a, #0x05
	jp	z, _SatchContents
	ld	a, (_N1)
	cp	a, #0x07
	jr	z, 00103$
	cp	a, #0x0a
	jp	z, 00127$
	cp	a, #0x12
	jp	z, 00107$
	cp	a, #0x1a
	jp	z, 00127$
	cp	a, #0x1c
	jp	z, 00127$
	cp	a, #0x1d
	jp	z, 00111$
	cp	a, #0x20
	jp	z, 00127$
	cp	a, #0x23
	jp	z, 00115$
	cp	a, #0x3e
	jp	z, 00127$
	cp	a, #0x40
	jp	z, 00127$
	cp	a, #0x45
	jp	z, 00127$
	cp	a, #0x62
	jp	z, 00127$
	cp	a, #0x67
	jp	z, 00137$
	cp	a, #0x68
	jp	z, 00137$
	cp	a, #0x69
	jp	z, 00137$
	cp	a, #0x6a
	jp	z, 00137$
	cp	a, #0x6b
	jp	z, 00137$
	cp	a, #0x6c
	jp	z, 00137$
	cp	a, #0x6d
	jp	z, 00137$
	cp	a, #0x71
	jp	z, 00127$
	cp	a, #0x73
	jp	z, 00137$
	cp	a, #0x76
	jp	z, 00137$
	sub	a, #0x77
	jp	z, 00128$
;E:\supernova\msx\game\default2.c:400: case 5: SatchContents(); break;
	jp	00141$
;E:\supernova\msx\game\default2.c:401: case 7:
00103$:
;E:\supernova\msx\game\default2.c:402: if (HolstCon == Null) RL(580);
	ld	a, (_HolstCon+0)
	or	a, a
	jr	nz, 00105$
	ld	hl, #0x0244
	jp	_RL
00105$:
;E:\supernova\msx\game\default2.c:403: else { Wr("The gun strap contains a "); WrFN(HolstCon); Wr("."); Wln(); }
	ld	hl, #___str_73
	call	_Wr
	ld	a, (_HolstCon)
	call	_WrFN
	ld	hl, #___str_74
	call	_Wr
;E:\supernova\msx\game\default2.c:404: break;
	jp	_Wln
;E:\supernova\msx\game\default2.c:405: case 18: if (En(34)) RL(270); else RL(271); break;
00107$:
	ld	a, #0x22
	call	_En
	or	a, a
	jr	z, 00109$
	ld	hl, #0x010e
	jp	_RL
00109$:
	ld	hl, #0x010f
	jp	_RL
;E:\supernova\msx\game\default2.c:406: case 29:
00111$:
;E:\supernova\msx\game\default2.c:407: if (MugCon != Null) { Wr("The mug contains "); WrFN(MugCon); Wr("."); Wln(); }
	ld	a, (_MugCon+0)
	or	a, a
	jr	z, 00113$
	ld	hl, #___str_75
	call	_Wr
	ld	a, (_MugCon)
	call	_WrFN
	ld	hl, #___str_74
	call	_Wr
	jp	_Wln
00113$:
;E:\supernova\msx\game\default2.c:408: else RL(111);
;E:\supernova\msx\game\default2.c:409: break;
	ld	hl, #0x006f
	jp	_RL
;E:\supernova\msx\game\default2.c:410: case 35: if (StrEq(NStr, "toilet")) RL(114); else RL(113); break;
00115$:
	ld	de, #___str_76
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00117$
	ld	hl, #0x0072
	jp	_RL
00117$:
	ld	hl, #0x0071
	jp	_RL
;E:\supernova\msx\game\default2.c:411: case 10: case 26: case 28: case 32: case 62: case 64: case 69: case 98: case 113:
00127$:
;E:\supernova\msx\game\default2.c:412: Wr("The "); Wr(NStr); Wr(" is empty."); Wln(); break;
	ld	hl, #___str_77
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_78
	call	_Wr
	jp	_Wln
;E:\supernova\msx\game\default2.c:413: case 119: RL(112); break;
00128$:
	ld	hl, #0x0070
	jp	_RL
;E:\supernova\msx\game\default2.c:414: case 103: case 104: case 105: case 106: case 107: case 108: case 109: case 115: case 118:
00137$:
;E:\supernova\msx\game\default2.c:415: if (Prm == 63) RL(113); else RL(115); break;
	ld	a, (_Prm)
	sub	a, #0x3f
	jr	nz, 00139$
	ld	hl, #0x0071
	jp	_RL
00139$:
	ld	hl, #0x0073
	jp	_RL
;E:\supernova\msx\game\default2.c:416: default: RL(113);
00141$:
;E:\supernova\msx\game\default2.c:418: break;
	ld	hl, #0x0071
	jp	_RL
;E:\supernova\msx\game\default2.c:421: case 20: case 26: case 76:
00145$:
;E:\supernova\msx\game\default2.c:422: switch (N1)
	ld	a, (_N1)
	sub	a, #0x05
	jp	z, _SatchContents
	ld	a, (_N1)
	cp	a, #0x50
	jr	z, 00147$
	cp	a, #0x67
	jr	z, 00159$
	cp	a, #0x68
	jr	z, 00159$
	cp	a, #0x69
	jr	z, 00159$
	cp	a, #0x6a
	jr	z, 00159$
	cp	a, #0x6b
	jr	z, 00159$
	cp	a, #0x6c
	jr	z, 00159$
	cp	a, #0x6d
	jr	z, 00159$
	cp	a, #0x73
	jr	z, 00159$
	sub	a, #0x76
	jr	z, 00159$
;E:\supernova\msx\game\default2.c:424: case 5: SatchContents(); break;
	jr	00163$
;E:\supernova\msx\game\default2.c:425: case 80: if (!En(127)) { RS(16); Add(127); } else RL(116); break;
00147$:
	ld	a, #0x7f
	call	_En
	or	a, a
	jr	nz, 00149$
	ld	hl, #0x0010
	call	_RS
	ld	a, #0x7f
	jp	_Add
00149$:
	ld	hl, #0x0074
	jp	_RL
;E:\supernova\msx\game\default2.c:426: case 103: case 104: case 105: case 106: case 107: case 108: case 109: case 115: case 118:
00159$:
;E:\supernova\msx\game\default2.c:427: if (Prm == 63) RL(113); else RL(115); break;
	ld	a, (_Prm)
	sub	a, #0x3f
	jr	nz, 00161$
	ld	hl, #0x0071
	jp	_RL
00161$:
	ld	hl, #0x0073
	jp	_RL
;E:\supernova\msx\game\default2.c:428: default: RL(116);
00163$:
;E:\supernova\msx\game\default2.c:430: break;
	ld	hl, #0x0074
	jp	_RL
;E:\supernova\msx\game\default2.c:433: case 22:
00165$:
;E:\supernova\msx\game\default2.c:434: switch (N1)
	ld	a, (_N1)
	cp	a, #0x42
	jr	z, 00166$
	cp	a, #0x50
	jr	z, 00167$
	cp	a, #0x63
	jr	z, 00168$
	cp	a, #0x67
	jr	z, 00177$
	cp	a, #0x68
	jr	z, 00177$
	cp	a, #0x69
	jr	z, 00177$
	cp	a, #0x6a
	jr	z, 00177$
	cp	a, #0x6b
	jr	z, 00177$
	cp	a, #0x6c
	jr	z, 00177$
	cp	a, #0x6d
	jr	z, 00177$
	cp	a, #0x73
	jr	z, 00177$
	sub	a, #0x76
	jr	z, 00177$
	jr	00181$
;E:\supernova\msx\game\default2.c:436: case 66: RL(117); break;
00166$:
	ld	hl, #0x0075
	jp	_RL
;E:\supernova\msx\game\default2.c:437: case 80: RL(118); break;
00167$:
	ld	hl, #0x0076
	jp	_RL
;E:\supernova\msx\game\default2.c:438: case 99: RL(119); break;
00168$:
	ld	hl, #0x0077
	jp	_RL
;E:\supernova\msx\game\default2.c:439: case 103: case 104: case 105: case 106: case 107: case 108: case 109: case 115: case 118:
00177$:
;E:\supernova\msx\game\default2.c:440: if (Prm == 63) RL(113); else RL(115); break;
	ld	a, (_Prm)
	sub	a, #0x3f
	jr	nz, 00179$
	ld	hl, #0x0071
	jp	_RL
00179$:
	ld	hl, #0x0073
	jp	_RL
;E:\supernova\msx\game\default2.c:441: default: RL(120);
00181$:
;E:\supernova\msx\game\default2.c:443: break;
	ld	hl, #0x0078
	jp	_RL
;E:\supernova\msx\game\default2.c:446: case 70:
00183$:
;E:\supernova\msx\game\default2.c:447: if (Sc < 25) { RL(302); break; }
	ld	bc, (_Sc)
	ld	a, c
	sub	a, #0x19
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00185$
	ld	hl, #0x012e
	jp	_RL
00185$:
;E:\supernova\msx\game\default2.c:448: if (!En(15))
	ld	a, #0x0f
	call	_En
	or	a, a
	jr	nz, 00189$
;E:\supernova\msx\game\default2.c:450: Add(15); RS(30);
	ld	a, #0x0f
	call	_Add
	ld	hl, #0x001e
	call	_RS
;E:\supernova\msx\game\default2.c:451: Cur(2);
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\default2.c:452: Wr("Do you still wish to see the clue? "); CFlag = (char)(GetKey() & 0xFF); Wln();
	ld	hl, #___str_79
	call	_Wr
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
	call	_Wln
;E:\supernova\msx\game\default2.c:453: if (UpCase(CFlag) == 'N') { Wr("OK, no clue will be shown."); Wln(); break; }
	ld	a, (_CFlag)
	call	_UpCase
	cp	a, #0x4e
	jr	nz, 00189$
	ld	hl, #___str_80
	call	_Wr
	jp	_Wln
00189$:
;E:\supernova\msx\game\default2.c:455: Cn("---Here is your clue---"); Sc -= 25;
	ld	hl, #___str_81
	call	_Cn
	ld	hl, (_Sc)
	ld	a, l
	add	a, #0xe7
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	(_Sc), hl
;E:\supernova\msx\game\default2.c:456: if (Prm != StoreC) { StoreC = Prm; RC1(Prm, Text5); }
	ld	a, (_Prm)
	ld	c, a
	ld	b, #0x00
	ld	hl, (_StoreC)
	xor	a, a
	sbc	hl, bc
	jr	z, 00191$
	ld	(_StoreC), bc
	ld	de, #_Text5
	ld	l, c
	ld	h, b
	call	_RC1
00191$:
;E:\supernova\msx\game\default2.c:457: Col(12, 9); Cn(Text5); Col(11, 7);
	ld	l, #0x09
	ld	a, #0x0c
	call	_Col
	ld	hl, #_Text5
	call	_Cn
	ld	l, #0x07
	ld	a, #0x0b
;E:\supernova\msx\game\default2.c:459: }
;E:\supernova\msx\game\default2.c:460: }
	jp	_Col
___str_73:
	.ascii "The gun strap contains a "
	.db 0x00
___str_74:
	.ascii "."
	.db 0x00
___str_75:
	.ascii "The mug contains "
	.db 0x00
___str_76:
	.ascii "toilet"
	.db 0x00
___str_77:
	.ascii "The "
	.db 0x00
___str_78:
	.ascii " is empty."
	.db 0x00
___str_79:
	.ascii "Do you still wish to see the clue? "
	.db 0x00
___str_80:
	.ascii "OK, no clue will be shown."
	.db 0x00
___str_81:
	.ascii "---Here is your clue---"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
