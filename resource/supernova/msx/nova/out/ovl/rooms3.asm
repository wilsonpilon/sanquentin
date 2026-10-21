;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rooms3
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEAD
	.globl _MoveTo
	.globl _SetR
	.globl _Van
	.globl _TransportNoise
	.globl _RB2
	.globl _RB
	.globl _RS
	.globl _RL
	.globl _Here
	.globl _WrFN
	.globl _Door
	.globl _DOpen
	.globl _Static
	.globl _Walls
	.globl _Explode
	.globl _Pause
	.globl _Score
	.globl _Min
	.globl _Add
	.globl _En
	.globl _Col
	.globl _SF
	.globl _Rnd
	.globl _Wherey
	.globl _Gotoxy
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
	.globl _Room10
	.globl _Room11
	.globl _Room12
	.globl _Room13
	.globl _Room14
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
;E:\supernova\msx\game\rooms3.c:5: static void ShiftCommon(void)
;	---------------------------------
; Function ShiftCommon
; ---------------------------------
_ShiftCommon:
;E:\supernova\msx\game\rooms3.c:9: case 41: case 42: case 43: case 44: case 50: case 55: if (N1 == 116) RL(325); break;
	ld	a, (_N1)
	sub	a, #0x74
	ld	a, #0x01
	jr	z, 00180$
	xor	a, a
00180$:
	ld	c, a
;E:\supernova\msx\game\rooms3.c:7: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x1c
	jr	z, 00109$
	cp	a, #0x29
	jr	z, 00106$
	cp	a, #0x2a
	jr	z, 00106$
	cp	a, #0x2b
	jr	z, 00106$
	cp	a, #0x2c
	jr	z, 00106$
	cp	a, #0x32
	jr	z, 00106$
	sub	a, #0x37
	ret	nz
;E:\supernova\msx\game\rooms3.c:9: case 41: case 42: case 43: case 44: case 50: case 55: if (N1 == 116) RL(325); break;
00106$:
	ld	a, c
	or	a, a
	ret	z
	ld	hl, #0x0145
	jp	_RL
;E:\supernova\msx\game\rooms3.c:10: case 28: if (N1 == 116) RL(547); break;
00109$:
	ld	a, c
	or	a, a
	ret	z
	ld	hl, #0x0223
;E:\supernova\msx\game\rooms3.c:11: }
;E:\supernova\msx\game\rooms3.c:12: }
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
;E:\supernova\msx\game\rooms3.c:14: void Room10(void)    // Pyramid Maze
;	---------------------------------
; Function Room10
; ---------------------------------
_Room10::
;E:\supernova\msx\game\rooms3.c:16: switch (Prm)
	ld	a, (_Prm+0)
	sub	a, #0x2a
	ret	c
	ld	a, #0x32
	ld	iy, #_Prm
	sub	a, 0 (iy)
	ret	c
	ld	a, (_Prm+0)
	add	a, #0xd6
	ld	c, a
	ld	b, #0x00
	ld	hl, #00812$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
00812$:
	.dw	00101$
	.dw	00118$
	.dw	00131$
	.dw	00145$
	.dw	00159$
	.dw	00175$
	.dw	00189$
	.dw	00205$
	.dw	00218$
;E:\supernova\msx\game\rooms3.c:18: case 42:    // Ladder Room
00101$:
;E:\supernova\msx\game\rooms3.c:19: if (IN_RANGE(Vb, 1, 13))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x0d
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:21: if (Maze)
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00112$
;E:\supernova\msx\game\rooms3.c:22: switch (Vb) { case 9: case 13: MoveTo(37); break; case 6: MoveTo(43); break; case 3: case 8: MoveTo(42); break; }
	ld	a, (_Vb+0)
	cp	a, #0x03
	jr	z, 00106$
	cp	a, #0x06
	jr	z, 00104$
	cp	a, #0x08
	jr	z, 00106$
	cp	a, #0x09
	jr	z, 00103$
	sub	a, #0x0d
	ret	nz
00103$:
	ld	a, #0x25
	jp	_MoveTo
00104$:
	ld	a, #0x2b
	jp	_MoveTo
00106$:
	ld	a, #0x2a
	jp	_MoveTo
00112$:
;E:\supernova\msx\game\rooms3.c:24: switch (Vb) { case 9: case 13: MoveTo(37); break; }
	ld	a, (_Vb)
	cp	a, #0x09
	jr	z, 00109$
	sub	a, #0x0d
	ret	nz
00109$:
;E:\supernova\msx\game\rooms3.c:26: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:27: break;
	ld	a, #0x25
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:29: case 43:    // Shifting Room NW
00118$:
;E:\supernova\msx\game\rooms3.c:30: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:32: if (Maze) { if (Vb == 7) MoveTo(42); }
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00125$
	ld	a, (_Vb+0)
	sub	a, #0x07
	ret	nz
	ld	a, #0x2a
	jp	_MoveTo
00125$:
;E:\supernova\msx\game\rooms3.c:33: else switch (Vb) { case 2: MoveTo(44); break; case 8: MoveTo(45); break; }
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00121$
	sub	a, #0x08
	jr	z, 00122$
	ret
00121$:
	ld	a, #0x2c
	jp	_MoveTo
00122$:
;E:\supernova\msx\game\rooms3.c:35: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:36: break;
	ld	a, #0x2d
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:38: case 44:    // Shifting Room W
00131$:
;E:\supernova\msx\game\rooms3.c:39: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:41: if (Maze) switch (Vb) { case 7: MoveTo(47); break; case 2: MoveTo(45); break; }
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00139$
	ld	a, (_Vb+0)
	cp	a, #0x02
	jr	z, 00133$
	sub	a, #0x07
	ret	nz
	ld	a, #0x2f
	jp	_MoveTo
00133$:
	ld	a, #0x2d
	jp	_MoveTo
00139$:
;E:\supernova\msx\game\rooms3.c:42: else switch (Vb) { case 1: MoveTo(43); break; case 5: MoveTo(44); break; }
	ld	a, (_Vb)
	dec	a
	jr	z, 00135$
	ld	a, (_Vb)
	sub	a, #0x05
	jr	z, 00136$
	ret
00135$:
	ld	a, #0x2b
	jp	_MoveTo
00136$:
;E:\supernova\msx\game\rooms3.c:44: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:45: break;
	ld	a, #0x2c
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:47: case 45:    // Shifting Room SW
00145$:
;E:\supernova\msx\game\rooms3.c:48: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:50: if (Maze) { if (Vb == 1 || Vb == 3) MoveTo(45); }
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00153$
	ld	a, (_Vb+0)
	dec	a
	jr	z, 00146$
	ld	a, (_Vb+0)
	sub	a, #0x03
	ret	nz
00146$:
	ld	a, #0x2d
	jp	_MoveTo
00153$:
;E:\supernova\msx\game\rooms3.c:51: else switch (Vb) { case 1: MoveTo(45); break; case 6: MoveTo(43); break; }
	ld	a, (_Vb)
	dec	a
	jr	z, 00149$
	ld	a, (_Vb)
	sub	a, #0x06
	jr	z, 00150$
	ret
00149$:
	ld	a, #0x2d
	jp	_MoveTo
00150$:
;E:\supernova\msx\game\rooms3.c:53: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:54: break;
	ld	a, #0x2b
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:56: case 46:    // Shifting Room N
00159$:
;E:\supernova\msx\game\rooms3.c:57: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:59: if (Maze)
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00169$
;E:\supernova\msx\game\rooms3.c:60: switch (Vb) { case 1: RS(98); DEAD(); break; case 7: Score(50, 84); MoveTo(50); break; }
	ld	a, (_Vb+0)
	dec	a
	jr	z, 00160$
	ld	a, (_Vb+0)
	sub	a, #0x07
	jr	z, 00161$
	ret
00160$:
	ld	hl, #0x0062
	call	_RS
	jp	_DEAD
00161$:
	ld	de, #0x0054
	ld	hl, #0x0032
	call	_Score
	ld	a, #0x32
	jp	_MoveTo
00169$:
;E:\supernova\msx\game\rooms3.c:62: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00163$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00165$
	cp	a, #0x07
	jr	z, 00164$
	sub	a, #0x08
	jr	z, 00166$
	ret
;E:\supernova\msx\game\rooms3.c:64: case 1: RS(98); DEAD(); break;
00163$:
	ld	hl, #0x0062
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:65: case 7: Score(50, 84); MoveTo(50); break;
00164$:
	ld	de, #0x0054
	ld	hl, #0x0032
	call	_Score
	ld	a, #0x32
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:66: case 3: MoveTo(48); break;
00165$:
	ld	a, #0x30
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:67: case 8: MoveTo(45); break;
00166$:
;E:\supernova\msx\game\rooms3.c:68: }
;E:\supernova\msx\game\rooms3.c:70: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:71: break;
	ld	a, #0x2d
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:73: case 47:    // Shifting Room S
00175$:
;E:\supernova\msx\game\rooms3.c:74: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:76: if (Maze) { if (Vb == 6) MoveTo(44); }
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00183$
	ld	a, (_Vb+0)
	sub	a, #0x06
	ret	nz
	ld	a, #0x2c
	jp	_MoveTo
00183$:
;E:\supernova\msx\game\rooms3.c:77: else switch (Vb) { case 3: MoveTo(49); break; case 1: MoveTo(47); break; case 4: MoveTo(45); break; }
	ld	a, (_Vb)
	dec	a
	jr	z, 00179$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00178$
	sub	a, #0x04
	jr	z, 00180$
	ret
00178$:
	ld	a, #0x31
	jp	_MoveTo
00179$:
	ld	a, #0x2f
	jp	_MoveTo
00180$:
;E:\supernova\msx\game\rooms3.c:79: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:80: break;
	ld	a, #0x2d
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:82: case 48:    // Shifting Room NE
00189$:
;E:\supernova\msx\game\rooms3.c:83: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:85: if (Maze) switch (Vb) { case 7: MoveTo(49); break; case 3: case 4: MoveTo(48); break; }
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00199$
	ld	a, (_Vb+0)
	cp	a, #0x03
	jr	z, 00192$
	cp	a, #0x04
	jr	z, 00192$
	sub	a, #0x07
	ret	nz
	ld	a, #0x31
	jp	_MoveTo
00192$:
	ld	a, #0x30
	jp	_MoveTo
00199$:
;E:\supernova\msx\game\rooms3.c:86: else switch (Vb) { case 4: MoveTo(46); break; case 1: case 2: MoveTo(48); break; }
	ld	a, (_Vb)
	dec	a
	jr	z, 00196$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00196$
	sub	a, #0x04
	ret	nz
	ld	a, #0x2e
	jp	_MoveTo
00196$:
;E:\supernova\msx\game\rooms3.c:88: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:89: break;
	ld	a, #0x30
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:91: case 49:    // Shifting Room SE
00205$:
;E:\supernova\msx\game\rooms3.c:92: if (IN_RANGE(Vb, 1, 8))
	ld	a, (_Vb+0)
	sub	a, #0x01
	jp	c, _ShiftCommon
	ld	a, #0x08
	ld	hl, #_Vb
	sub	a, (hl)
	jp	c, _ShiftCommon
;E:\supernova\msx\game\rooms3.c:94: if (Maze) { if (Vb == 5) MoveTo(48); }
	ld	a, (_Maze+0)
	or	a, a
	jr	z, 00212$
	ld	a, (_Vb+0)
	sub	a, #0x05
	ret	nz
	ld	a, #0x30
	jp	_MoveTo
00212$:
;E:\supernova\msx\game\rooms3.c:95: else switch (Vb) { case 4: MoveTo(47); break; case 2: MoveTo(45); break; }
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00209$
	sub	a, #0x04
	ret	nz
	ld	a, #0x2f
	jp	_MoveTo
00209$:
;E:\supernova\msx\game\rooms3.c:97: else ShiftCommon();
;E:\supernova\msx\game\rooms3.c:98: break;
	ld	a, #0x2d
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:100: case 50:    // Stairway Room E
00218$:
;E:\supernova\msx\game\rooms3.c:101: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00223$
	cp	a, #0x06
	jr	z, 00219$
	cp	a, #0x0a
	jr	z, 00223$
	cp	a, #0x0d
	jr	z, 00223$
	cp	a, #0x29
	jr	z, 00229$
	cp	a, #0x2a
	jr	z, 00229$
	cp	a, #0x2b
	jr	z, 00229$
	cp	a, #0x2c
	jr	z, 00229$
	cp	a, #0x32
	jr	z, 00229$
	cp	a, #0x33
	jr	z, 00223$
	sub	a, #0x37
	jr	z, 00229$
	ret
;E:\supernova\msx\game\rooms3.c:103: case 6: MoveTo(46); break;
00219$:
	ld	a, #0x2e
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:104: case 4: case 10: case 13: case 51: MoveTo(51); break;
00223$:
	ld	a, #0x33
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:105: case 41: case 42: case 43: case 44: case 50: case 55: if (N1 == 116) RL(325); break;
00229$:
	ld	a, (_N1)
	sub	a, #0x74
	ret	nz
	ld	hl, #0x0145
;E:\supernova\msx\game\rooms3.c:108: }
;E:\supernova\msx\game\rooms3.c:109: }
	jp	_RL
;E:\supernova\msx\game\rooms3.c:111: void Room11(void)    // Inside Pyramid (Bottom Level)
;	---------------------------------
; Function Room11
; ---------------------------------
_Room11::
;E:\supernova\msx\game\rooms3.c:113: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x33
	jr	z, 00101$
	cp	a, #0x34
	jr	z, 00108$
	cp	a, #0x35
	jp	z, 00150$
	cp	a, #0x36
	jp	z, 00162$
	sub	a, #0x37
	jp	z, 00166$
	ret
;E:\supernova\msx\game\rooms3.c:115: case 51:    // Lower Stairway
00101$:
;E:\supernova\msx\game\rooms3.c:116: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00106$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00105$
	cp	a, #0x09
	jr	z, 00105$
	cp	a, #0x0d
	jr	z, 00105$
	sub	a, #0x33
	ret	nz
;E:\supernova\msx\game\rooms3.c:118: case 3: case 9: case 13: case 51: MoveTo(50); break;
00105$:
	ld	a, #0x32
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:119: case 1: MoveTo(52); break;
00106$:
;E:\supernova\msx\game\rooms3.c:121: break;
	ld	a, #0x34
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:123: case 52:    // Misty Passage
00108$:
;E:\supernova\msx\game\rooms3.c:124: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00109$
	cp	a, #0x04
	jr	z, 00113$
	cp	a, #0x1c
	jp	z, 00139$
	cp	a, #0x21
	jr	z, 00117$
	cp	a, #0x27
	jp	z, 00135$
	cp	a, #0x2a
	jp	z, 00145$
	cp	a, #0x2c
	jp	z, 00145$
	sub	a, #0x37
	jp	z, 00145$
	ret
;E:\supernova\msx\game\rooms3.c:126: case 2: if (T[19] > 1) { RS(129); DEAD(); } else MoveTo(51); break;
00109$:
	ld	hl, (#(_T + 38) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00659$
	xor	a, #0x80
00659$:
	jp	p, 00111$
	ld	hl, #0x0081
	call	_RS
	jp	_DEAD
00111$:
	ld	a, #0x33
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:127: case 4: if (En(35)) { RL(305); DEAD(); } else MoveTo(53); break;
00113$:
	ld	a, #0x23
	call	_En
	or	a, a
	jr	z, 00115$
	ld	hl, #0x0131
	call	_RL
	jp	_DEAD
00115$:
	ld	a, #0x35
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:128: case 33:
00117$:
;E:\supernova\msx\game\rooms3.c:129: if (N1 == 11 && IN29(Inv, 11))
	ld	a, (_N1)
	sub	a, #0x0b
	ret	nz
	ld	a, (#(_Inv + 1) + 0)
	rrca
	rrca
	and	a, #0x01
	ret	z
;E:\supernova\msx\game\rooms3.c:130: if (Pr == 1 || Pr == 5 || Pr == 7 || Pr == 10)
	ld	a, (_Pr)
	dec	a
	jr	z, 00125$
	ld	a, (_Pr)
	cp	a, #0x05
	jr	z, 00125$
	cp	a, #0x07
	jr	z, 00125$
	sub	a, #0x0a
	ret	nz
00125$:
;E:\supernova\msx\game\rooms3.c:131: if (N2 == 34 || N2 == 49 || N2 == 64)
	ld	a, (_N2)
	cp	a, #0x22
	jr	z, 00121$
	cp	a, #0x31
	jr	z, 00121$
	sub	a, #0x40
	ret	nz
00121$:
;E:\supernova\msx\game\rooms3.c:133: if (T[19] > 0) { Score(40, 39); Van(11); LOC_ADD(52, 11); T[19] = 0; RS(127); }
	ld	hl, (#(_T + 38) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00671$
	xor	a, #0x80
00671$:
	jp	p, 00119$
	ld	de, #0x0027
	ld	hl, #0x0028
	call	_Score
	ld	a, #0x0b
	call	_Van
	ld	bc, #_g_Loc+885
	ld	a, (bc)
	set	2, a
	ld	(bc), a
	ld	hl, #0x0000
	ld	((_T + 38)), hl
	ld	l, #0x7f
	jp	_RS
00119$:
;E:\supernova\msx\game\rooms3.c:134: else { Van(N1); R[N1] = 52; RL(586); }
	ld	a, (_N1)
	call	_Van
	ld	bc, #_R+0
	ld	a, (_N1)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0x34
;E:\supernova\msx\game\rooms3.c:136: break;
	ld	hl, #0x024a
	jp	_RL
;E:\supernova\msx\game\rooms3.c:137: case 39: if (SET_IN(NounSet, 11) && En(39)) RL(307); break;
00135$:
	ld	a, (#(_NounSet + 1) + 0)
	rrca
	rrca
	and	a, #0x01
	ret	z
	ld	a, #0x27
	call	_En
	or	a, a
	ret	z
	ld	hl, #0x0133
	jp	_RL
;E:\supernova\msx\game\rooms3.c:138: case 28: switch (N1) { case 11: RL(312); break; case 64: RL(313); break; } break;
00139$:
	ld	a, (_N1)
	cp	a, #0x0b
	jr	z, 00140$
	sub	a, #0x40
	jr	z, 00141$
	ret
00140$:
	ld	hl, #0x0138
	jp	_RL
00141$:
	ld	hl, #0x0139
	jp	_RL
;E:\supernova\msx\game\rooms3.c:139: case 42: case 44: case 55: switch (N1) { case 11: RL(307); break; case 34: RL(308); break; } break;
00145$:
	ld	a, (_N1)
	cp	a, #0x0b
	jr	z, 00146$
	sub	a, #0x22
	jr	z, 00147$
	ret
00146$:
	ld	hl, #0x0133
	jp	_RL
00147$:
;E:\supernova\msx\game\rooms3.c:141: break;
	ld	hl, #0x0134
	jp	_RL
;E:\supernova\msx\game\rooms3.c:143: case 53:    // Damp Passage
00150$:
;E:\supernova\msx\game\rooms3.c:144: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00151$
	cp	a, #0x03
	jr	z, 00154$
	sub	a, #0x3b
	jr	z, 00158$
	ret
;E:\supernova\msx\game\rooms3.c:146: case 2: MoveTo(54); if (En(35)) { RS(122); DEAD(); } break;
00151$:
	ld	a, #0x36
	call	_MoveTo
	ld	a, #0x23
	call	_En
	or	a, a
	ret	z
	ld	hl, #0x007a
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:147: case 3: if (T[18] > 1) { RL(305); DEAD(); } else MoveTo(52); break;
00154$:
	ld	hl, (#(_T + 36) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00679$
	xor	a, #0x80
00679$:
	jp	p, 00156$
	ld	hl, #0x0131
	call	_RL
	jp	_DEAD
00156$:
	ld	a, #0x34
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:148: case 59:
00158$:
;E:\supernova\msx\game\rooms3.c:149: if (N1 == 66)
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
;E:\supernova\msx\game\rooms3.c:151: RS(125); SET_DEL(Brief, 52); MoveTo(52); T[18] = 0; T[19] = 3;
	ld	hl, #0x007d
	call	_RS
	ld	hl, #_Brief+6
	res	3, (hl)
	ld	a, #0x34
	call	_MoveTo
	ld	hl, #0x0000
	ld	((_T + 36)), hl
	ld	l, #0x03
	ld	((_T + 38)), hl
;E:\supernova\msx\game\rooms3.c:152: Col(10, 7); RL(306); Walls(12); Score(20, 85);
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x0132
	call	_RL
	ld	a, #0x0c
	call	_Walls
	ld	de, #0x0055
;E:\supernova\msx\game\rooms3.c:156: break;
	ld	hl, #0x0014
	jp	_Score
;E:\supernova\msx\game\rooms3.c:158: case 54:    // Dark Passage
00162$:
;E:\supernova\msx\game\rooms3.c:159: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00163$
	ld	a, (_Vb)
	sub	a, #0x02
	jr	z, 00164$
	ret
;E:\supernova\msx\game\rooms3.c:161: case 1: MoveTo(53); break;
00163$:
	ld	a, #0x35
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:162: case 2: MoveTo(55); break;
00164$:
;E:\supernova\msx\game\rooms3.c:164: break;
	ld	a, #0x37
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:166: case 55:    // Circular Chamber
00166$:
;E:\supernova\msx\game\rooms3.c:167: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00167$
	ld	a, (_Vb)
	cp	a, #0x02
	jp	z, 00173$
	cp	a, #0x03
	jp	z, 00180$
	cp	a, #0x04
	jp	z, 00185$
	sub	a, #0x27
	jp	z, 00189$
	ret
;E:\supernova\msx\game\rooms3.c:169: case 1:
00167$:
;E:\supernova\msx\game\rooms3.c:170: SET_DEL(Brief, 54); MoveTo(54);
	ld	a, (#(_Brief + 6) + 0)
	res	5, a
	ld	(#(_Brief + 6)), a
	ld	a, #0x36
	call	_MoveTo
;E:\supernova\msx\game\rooms3.c:171: if (En(35))
	ld	a, #0x23
	call	_En
	or	a, a
	ret	z
;E:\supernova\msx\game\rooms3.c:173: if (Crawl)
	ld	a, (_Crawl+0)
	or	a, a
	jr	z, 00169$
;E:\supernova\msx\game\rooms3.c:175: Col(10, 7); RS(119); RS(120); Pause(); LOC_ADD(53, 66); Score(20, 86);
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x0077
	call	_RS
	ld	hl, #0x0078
	call	_RS
	call	_Pause
	ld	hl, #_g_Loc+909
	set	1, (hl)
	ld	de, #0x0056
	ld	hl, #0x0014
	call	_Score
;E:\supernova\msx\game\rooms3.c:176: SET_DEL(Brief, 53); MoveTo(53); Col(10, 7); RS(121); Walls(12); T[18] = 4;
	ld	a, (#(_Brief + 6) + 0)
	res	4, a
	ld	(#(_Brief + 6)), a
	ld	a, #0x35
	call	_MoveTo
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x0079
	call	_RS
	ld	a, #0x0c
	call	_Walls
	ld	hl, #0x0004
	ld	((_T + 36)), hl
	ret
00169$:
;E:\supernova\msx\game\rooms3.c:178: else { Col(10, 7); RS(118); DEAD(); }
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x0076
	call	_RS
;E:\supernova\msx\game\rooms3.c:180: break;
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:181: case 2:
00173$:
;E:\supernova\msx\game\rooms3.c:182: if (Md == 1) RS(230);
	ld	a, (_Md)
	dec	a
	jr	nz, 00178$
	ld	hl, #0x00e6
	jp	_RS
00178$:
;E:\supernova\msx\game\rooms3.c:183: else if (Rnd(2) == 1) { Prm = 58; RL(563); }
	ld	hl, #0x0002
	call	_Rnd
	ld	a, e
	dec	a
	or	a, d
	jr	nz, 00175$
	ld	hl, #_Prm
	ld	(hl), #0x3a
	ld	hl, #0x0233
	jp	_RL
00175$:
;E:\supernova\msx\game\rooms3.c:184: else { RS(100); DEAD(); }
	ld	hl, #0x0064
	call	_RS
;E:\supernova\msx\game\rooms3.c:185: break;
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:186: case 3: MoveTo(56); if (IN29(Inv, 11)) { RS(102); DEAD(); } break;
00180$:
	ld	a, #0x38
	call	_MoveTo
	ld	a, (#(_Inv + 1) + 0)
	rrca
	rrca
	and	a, #0x01
	ret	z
	ld	hl, #0x0066
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:187: case 4: if (Md == 1) RS(231); else { RS(99); DEAD(); } break;
00185$:
	ld	a, (_Md)
	dec	a
	jr	nz, 00187$
	ld	hl, #0x00e7
	jp	_RS
00187$:
	ld	hl, #0x0063
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:188: case 39:
00189$:
;E:\supernova\msx\game\rooms3.c:189: if (SET_IN(NounSet, 11)) { RS(101); SFlag = 0; }
	ld	a, (#_NounSet + 1)
	rrca
	rrca
	and	a, #0x01
	jr	z, 00194$
	ld	hl, #0x0065
	call	_RS
	xor	a, a
	ld	(#_SFlag), a
	ret
00194$:
;E:\supernova\msx\game\rooms3.c:190: else if (SET_IN(NounSet, 30) && LOC_HAS(55, 11)) R[11] = 55;
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	ret	nc
	ld	a, (#(_g_Loc + 936) + 0)
	bit	2, a
	ret	z
	ld	hl, #_R+11
	ld	(hl), #0x37
;E:\supernova\msx\game\rooms3.c:194: }
;E:\supernova\msx\game\rooms3.c:195: }
	ret
;E:\supernova\msx\game\rooms3.c:197: void Room12(void)    // Inside Pyramid (Bottom Level)
;	---------------------------------
; Function Room12
; ---------------------------------
_Room12::
;E:\supernova\msx\game\rooms3.c:199: switch (Prm)
	ld	a, (_Prm)
	sub	a, #0x38
	ret	nz
;E:\supernova\msx\game\rooms3.c:202: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x04
	jr	z, 00107$
	cp	a, #0x0b
	jr	z, 00103$
	cp	a, #0x0d
	jr	z, 00107$
	cp	a, #0x16
	jr	z, 00112$
	cp	a, #0x1a
	jp	z, 00128$
	cp	a, #0x1c
	jr	z, 00112$
	cp	a, #0x21
	jp	z, 00168$
	cp	a, #0x23
	jp	z, 00149$
	cp	a, #0x25
	jp	z, 00143$
	cp	a, #0x27
	jp	z, 00132$
	cp	a, #0x29
	jp	z, 00154$
	cp	a, #0x33
	jp	z, 00149$
	cp	a, #0x36
	jp	z, 00211$
	cp	a, #0x3b
	jp	z, 00152$
	cp	a, #0x3e
	jp	z, 00149$
	cp	a, #0x4b
	jp	z, 00211$
	cp	a, #0x4c
	jp	z, 00211$
	sub	a, #0x58
	jp	z, 00154$
	ret
;E:\supernova\msx\game\rooms3.c:204: case 2: case 11: if (En(36)) { Score(5, 88); MoveTo(57); } break;
00103$:
	ld	a, #0x24
	call	_En
	or	a, a
	ret	z
	ld	de, #0x0058
	ld	hl, #0x0005
	call	_Score
	ld	a, #0x39
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:205: case 4: case 13: if (T[17] > 4) { RS(108); DEAD(); } else MoveTo(55); break;
00107$:
	ld	hl, (#(_T + 34) + 0)
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00746$
	xor	a, #0x80
00746$:
	jp	p, 00109$
	ld	hl, #0x006c
	call	_RS
	jp	_DEAD
00109$:
	ld	a, #0x37
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:206: case 22: case 28:
00112$:
;E:\supernova\msx\game\rooms3.c:207: switch (N1)
	ld	a, (_N1)
	dec	a
	jr	z, 00113$
	ld	a, (_N1)
	cp	a, #0x22
	jr	z, 00116$
	cp	a, #0x31
	jr	z, 00122$
	cp	a, #0x38
	jr	z, 00123$
	cp	a, #0x42
	jr	z, 00124$
	cp	a, #0x44
	jr	z, 00125$
	sub	a, #0x6e
	jr	z, 00126$
	ret
;E:\supernova\msx\game\rooms3.c:209: case 1: if (!En(35)) RL(292); break;
00113$:
	ld	a, #0x23
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x0124
	jp	_RL
;E:\supernova\msx\game\rooms3.c:210: case 34:
00116$:
;E:\supernova\msx\game\rooms3.c:211: if (LOC_HAS(56, 1)) RL(291);
	ld	a, (#(_g_Loc + 952) + 0)
	rrca
	jr	nc, 00120$
	ld	hl, #0x0123
	jp	_RL
00120$:
;E:\supernova\msx\game\rooms3.c:212: else if (!En(35)) { RS(103); LOC_ADD(56, 1); }
	ld	a, #0x23
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x0067
	call	_RS
	ld	a, (#(_g_Loc + 952) + 0)
	set	0, a
	ld	(#(_g_Loc + 952)), a
;E:\supernova\msx\game\rooms3.c:213: break;
	ret
;E:\supernova\msx\game\rooms3.c:214: case 49: RS(105); break;
00122$:
	ld	hl, #0x0069
	jp	_RS
;E:\supernova\msx\game\rooms3.c:215: case 56: RL(370); break;
00123$:
	ld	hl, #0x0172
	jp	_RL
;E:\supernova\msx\game\rooms3.c:216: case 66: RL(295); break;
00124$:
	ld	hl, #0x0127
	jp	_RL
;E:\supernova\msx\game\rooms3.c:217: case 68: RS(104); break;
00125$:
	ld	hl, #0x0068
	jp	_RS
;E:\supernova\msx\game\rooms3.c:218: case 110: RL(293); break;
00126$:
;E:\supernova\msx\game\rooms3.c:220: break;
	ld	hl, #0x0125
	jp	_RL
;E:\supernova\msx\game\rooms3.c:221: case 26: if (N1 == 49 || N1 == 68) RL(295); break;
00128$:
	ld	a, (_N1)
	cp	a, #0x31
	jr	z, 00129$
	sub	a, #0x44
	ret	nz
00129$:
	ld	hl, #0x0127
	jp	_RL
;E:\supernova\msx\game\rooms3.c:222: case 39:
00132$:
;E:\supernova\msx\game\rooms3.c:223: if (SET_IN(NounSet, 1))
	ld	a, (#_NounSet + 0)
	and	a, #0x01
	jr	z, 00141$
;E:\supernova\msx\game\rooms3.c:225: if (!En(35)) RL(300);
	ld	a, #0x23
	call	_En
	or	a, a
	jr	nz, 00136$
	ld	hl, #0x012c
	jp	_RL
00136$:
;E:\supernova\msx\game\rooms3.c:226: else if (T[17] > 4) { RS(113); T[17] = 3; Van(1); SET_ADD(Inv, 1); Score(50, 87); }
	ld	hl, (#(_T + 34) + 0)
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00758$
	xor	a, #0x80
00758$:
	ret	p
	ld	hl, #0x0071
	call	_RS
	ld	hl, #0x0003
	ld	((_T + 34)), hl
	ld	a, #0x01
	call	_Van
	ld	bc, #_Inv+0
	ld	a, (bc)
	set	0, a
	ld	(bc), a
	ld	de, #0x0057
	ld	hl, #0x0032
	jp	_Score
00141$:
;E:\supernova\msx\game\rooms3.c:228: else if (SET_IN(NounSet, 30)) RL(578);
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	ret	nc
;E:\supernova\msx\game\rooms3.c:229: break;
	ld	hl, #0x0242
	jp	_RL
;E:\supernova\msx\game\rooms3.c:230: case 37: if (!SET_IN(NounSet, 1) && !En(35)) RL(300); break;
00143$:
	ld	a, (#_NounSet + 0)
	and	a, #0x01
	ret	nz
	ld	a, #0x23
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x012c
	jp	_RL
;E:\supernova\msx\game\rooms3.c:231: case 35: case 51: case 62: if (N1 == 68) { RS(106); DEAD(); } break;
00149$:
	ld	a, (_N1)
	sub	a, #0x44
	ret	nz
	ld	hl, #0x006a
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:232: case 59: RS(107); DEAD(); break;
00152$:
	ld	hl, #0x006b
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:233: case 41: case 88:
00154$:
;E:\supernova\msx\game\rooms3.c:234: if (N1 == 68 || N1 == 110)
	ld	a, (_N1)
	cp	a, #0x44
	jr	z, 00165$
	sub	a, #0x6e
	ret	nz
00165$:
;E:\supernova\msx\game\rooms3.c:236: if (N2 == 4)
	ld	a, (_N2)
	sub	a, #0x04
	jr	nz, 00163$
;E:\supernova\msx\game\rooms3.c:238: if (!En(35))
	ld	a, #0x23
	call	_En
	or	a, a
	jr	nz, 00160$
;E:\supernova\msx\game\rooms3.c:240: if (Here(16) && En(37))
	ld	a, #0x10
	call	_Here
	or	a, a
	jr	z, 00156$
	ld	a, #0x25
	call	_En
	or	a, a
	jr	z, 00156$
;E:\supernova\msx\game\rooms3.c:241: { RS(117); T[17] = 6; LOC_ADD(56, 1); LOC_ADD(56, 56); Add(35); Min(37); }
	ld	hl, #0x0075
	call	_RS
	ld	hl, #0x0006
	ld	((_T + 34)), hl
	ld	bc, #_g_Loc + 952
	ld	a, (bc)
	set	0, a
	ld	(bc), a
	ld	bc, #_g_Loc + 958
	ld	a, (bc)
	set	7, a
	ld	(bc), a
	ld	a, #0x23
	call	_Add
	ld	a, #0x25
	jp	_Min
00156$:
;E:\supernova\msx\game\rooms3.c:242: else { RS(111); DEAD(); }
	ld	hl, #0x006f
	call	_RS
	jp	_DEAD
00160$:
;E:\supernova\msx\game\rooms3.c:244: else RL(273);
	ld	hl, #0x0111
	jp	_RL
00163$:
;E:\supernova\msx\game\rooms3.c:246: else RL(296);
;E:\supernova\msx\game\rooms3.c:248: break;
	ld	hl, #0x0128
	jp	_RL
;E:\supernova\msx\game\rooms3.c:249: case 33:
00168$:
;E:\supernova\msx\game\rooms3.c:250: if (N1 == 16)
	ld	a, (_N1)
	sub	a, #0x10
	jr	nz, 00207$
;E:\supernova\msx\game\rooms3.c:252: if (Pr == 1 || Pr == 10)
	ld	a, (_Pr)
	dec	a
	jr	z, 00185$
	ld	a, (_Pr)
	sub	a, #0x0a
	ret	nz
00185$:
;E:\supernova\msx\game\rooms3.c:254: if (N2 == 49 || N2 == 1)
	ld	a, (_N2)
	cp	a, #0x31
	jr	z, 00181$
	dec	a
	jr	nz, 00182$
00181$:
;E:\supernova\msx\game\rooms3.c:256: Van(16); Add(37); R[16] = 56;
	ld	a, #0x10
	call	_Van
	ld	a, #0x25
	call	_Add
	ld	hl, #_R+16
	ld	(hl), #0x38
;E:\supernova\msx\game\rooms3.c:257: if (!En(35)) { if (Pr == 1) RL(297); else RL(298); }
	ld	a, #0x23
	call	_En
	or	a, a
	jr	nz, 00173$
	ld	a, (_Pr)
	dec	a
	jr	nz, 00170$
	ld	hl, #0x0129
	jp	_RL
00170$:
	ld	hl, #0x012a
	jp	_RL
00173$:
;E:\supernova\msx\game\rooms3.c:258: else RL(297);
	ld	hl, #0x0129
	jp	_RL
00182$:
;E:\supernova\msx\game\rooms3.c:260: else if (N2 == 34 && Pr == 10) { Wr("Done."); Wln(); Van(16); SF(); R[16] = 56; }
	ld	a, (_N2)
	sub	a, #0x22
	jr	nz, 00178$
	ld	a, (_Pr)
	sub	a, #0x0a
	jr	nz, 00178$
	ld	hl, #___str_1
	call	_Wr
	call	_Wln
	ld	a, #0x10
	call	_Van
	call	_SF
	ld	hl, #_R+16
	ld	(hl), #0x38
	ret
00178$:
;E:\supernova\msx\game\rooms3.c:261: else if (N2 == 68) RL(299);
	ld	a, (_N2)
	sub	a, #0x44
	ret	nz
	ld	hl, #0x012b
	jp	_RL
00207$:
;E:\supernova\msx\game\rooms3.c:264: else if (N2 == 68 || N2 == 110)
	ld	a, (_N2)
	cp	a, #0x44
	jr	z, 00203$
	sub	a, #0x6e
	ret	nz
00203$:
;E:\supernova\msx\game\rooms3.c:266: if (Pr == 1) RL(299);
	ld	a, (_Pr)
	dec	a
	jr	nz, 00201$
	ld	hl, #0x012b
	jp	_RL
00201$:
;E:\supernova\msx\game\rooms3.c:267: else if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\rooms3.c:269: if (N1 == 4)
	ld	a, (_N1)
	sub	a, #0x04
	jr	nz, 00196$
;E:\supernova\msx\game\rooms3.c:271: if (!En(35))
	ld	a, #0x23
	call	_En
	or	a, a
	jr	nz, 00193$
;E:\supernova\msx\game\rooms3.c:273: if (Here(16) && En(37))
	ld	a, #0x10
	call	_Here
	or	a, a
	jr	z, 00189$
	ld	a, #0x25
	call	_En
	or	a, a
	jr	z, 00189$
;E:\supernova\msx\game\rooms3.c:274: { RS(117); T[17] = 6; LOC_ADD(56, 1); Add(35); Min(37); }
	ld	hl, #0x0075
	call	_RS
	ld	hl, #0x0006
	ld	((_T + 34)), hl
	ld	bc, #_g_Loc+952
	ld	a, (bc)
	set	0, a
	ld	(bc), a
	ld	a, #0x23
	call	_Add
	ld	a, #0x25
	jp	_Min
00189$:
;E:\supernova\msx\game\rooms3.c:275: else { RS(111); DEAD(); }
	ld	hl, #0x006f
	call	_RS
	jp	_DEAD
00193$:
;E:\supernova\msx\game\rooms3.c:277: else RL(273);
	ld	hl, #0x0111
	jp	_RL
00196$:
;E:\supernova\msx\game\rooms3.c:279: else RL(296);
;E:\supernova\msx\game\rooms3.c:282: break;
	ld	hl, #0x0128
	jp	_RL
;E:\supernova\msx\game\rooms3.c:283: case 54: case 75: case 76:
00211$:
;E:\supernova\msx\game\rooms3.c:284: switch (N1)
	ld	a, (_N1)
	dec	a
	jr	z, 00212$
	ld	a, (_N1)
	sub	a, #0x22
	jr	z, 00215$
	ret
;E:\supernova\msx\game\rooms3.c:286: case 1: if (LOC_HAS(56, 1)) RL(300); break;
00212$:
	ld	a, (#(_g_Loc + 952) + 0)
	rrca
	ret	nc
	ld	hl, #0x012c
	jp	_RL
;E:\supernova\msx\game\rooms3.c:287: case 34: RL(304); break;
00215$:
	ld	hl, #0x0130
;E:\supernova\msx\game\rooms3.c:292: }
;E:\supernova\msx\game\rooms3.c:293: }
	jp	_RL
___str_1:
	.ascii "Done."
	.db 0x00
;E:\supernova\msx\game\rooms3.c:295: static void BoothTransport(u8 score)
;	---------------------------------
; Function BoothTransport
; ---------------------------------
_BoothTransport:
	ld	c, a
;E:\supernova\msx\game\rooms3.c:297: RS(138);
	push	bc
	ld	hl, #0x008a
	call	_RS
;E:\supernova\msx\game\rooms3.c:298: TransportNoise(); TFlag = 3; SET_DEL(Brief, 70);
	call	_TransportNoise
	pop	bc
	ld	hl, #_TFlag
	ld	(hl), #0x03
	ld	hl, #_Brief+8
	res	5, (hl)
;E:\supernova\msx\game\rooms3.c:299: if (score) Score(10, 89);
	ld	a, c
	or	a, a
	jr	z, 00102$
	ld	de, #0x0059
	ld	hl, #0x000a
	call	_Score
00102$:
;E:\supernova\msx\game\rooms3.c:300: for (x = 1; x <= MMax; x++) if (R[x] == Prm) R[x] = 70;
	ld	hl, #_x
	ld	(hl), #0x01
	ld	bc, #_R+0
00106$:
	ld	a, (_x)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (_Prm)
	sub	a, (hl)
	jr	nz, 00107$
	ld	(hl), #0x46
00107$:
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00106$
;E:\supernova\msx\game\rooms3.c:301: MoveTo(70);
	ld	a, #0x46
;E:\supernova\msx\game\rooms3.c:302: }
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:304: static void BoothLook(void)
;	---------------------------------
; Function BoothLook
; ---------------------------------
_BoothLook:
;E:\supernova\msx\game\rooms3.c:306: switch (N1)
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00102$
	cp	a, #0x26
	jr	z, 00103$
	cp	a, #0x2c
	jr	z, 00106$
	cp	a, #0x3b
	jr	z, 00102$
	cp	a, #0x5d
	jr	z, 00104$
	sub	a, #0x5e
	jr	z, 00105$
	ret
;E:\supernova\msx\game\rooms3.c:308: case 37: case 59: RS(133); break;
00102$:
	ld	hl, #0x0085
	jp	_RS
;E:\supernova\msx\game\rooms3.c:309: case 38: RL(322); break;
00103$:
	ld	hl, #0x0142
	jp	_RL
;E:\supernova\msx\game\rooms3.c:310: case 93: RL(319); break;
00104$:
	ld	hl, #0x013f
	jp	_RL
;E:\supernova\msx\game\rooms3.c:311: case 94: RS(134); break;
00105$:
	ld	hl, #0x0086
	jp	_RS
;E:\supernova\msx\game\rooms3.c:312: case 44: RL(320); break;
00106$:
	ld	hl, #0x0140
;E:\supernova\msx\game\rooms3.c:313: }
;E:\supernova\msx\game\rooms3.c:314: }
	jp	_RL
;E:\supernova\msx\game\rooms3.c:316: void Room13(void)    // Inside Pyramid (Bottom Level)
;	---------------------------------
; Function Room13
; ---------------------------------
_Room13::
;E:\supernova\msx\game\rooms3.c:318: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x39
	jr	z, 00101$
	cp	a, #0x3a
	jr	z, 00116$
	cp	a, #0x3b
	jp	z, 00122$
	cp	a, #0x3c
	jp	z, 00142$
	cp	a, #0x3d
	jp	z, 00173$
	cp	a, #0x3e
	jp	z, 00196$
	sub	a, #0x3f
	jp	z, 00210$
	ret
;E:\supernova\msx\game\rooms3.c:320: case 57:    // Solar Chamber
00101$:
;E:\supernova\msx\game\rooms3.c:321: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00103$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x1c
	jr	z, 00104$
	cp	a, #0x2c
	jr	z, 00112$
	sub	a, #0x4b
	jr	z, 00112$
	ret
;E:\supernova\msx\game\rooms3.c:323: case 1: case 13: MoveTo(56); break;
00103$:
	ld	a, #0x38
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:324: case 28:
00104$:
;E:\supernova\msx\game\rooms3.c:325: switch (N1) { case 56: RL(370); break; case 72: case 82: case 116: RS(149); break; case 109: RS(150); break; }
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00105$
	cp	a, #0x48
	jr	z, 00108$
	cp	a, #0x52
	jr	z, 00108$
	cp	a, #0x6d
	jr	z, 00109$
	sub	a, #0x74
	jr	z, 00108$
	ret
00105$:
	ld	hl, #0x0172
	jp	_RL
00108$:
	ld	hl, #0x0095
	jp	_RS
00109$:
;E:\supernova\msx\game\rooms3.c:326: break;
	ld	hl, #0x0096
	jp	_RS
;E:\supernova\msx\game\rooms3.c:327: case 44: case 75: if (N1 == 103) { Prm = 58; RS(233); Walls(5); Static(); } break;
00112$:
	ld	a, (_N1)
	sub	a, #0x67
	ret	nz
	ld	hl, #_Prm
	ld	(hl), #0x3a
	ld	hl, #0x00e9
	call	_RS
	ld	a, #0x05
	call	_Walls
;E:\supernova\msx\game\rooms3.c:329: break;
	jp	_Static
;E:\supernova\msx\game\rooms3.c:331: case 58:    // Eternal Trap
00116$:
;E:\supernova\msx\game\rooms3.c:332: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x09
	jr	z, 00119$
	cp	a, #0x0d
	jr	z, 00119$
	cp	a, #0x33
	jr	z, 00119$
	sub	a, #0x5c
	jr	z, 00120$
	ret
;E:\supernova\msx\game\rooms3.c:334: case 9: case 13: case 51: RL(554); break;
00119$:
	ld	hl, #0x022a
	jp	_RL
;E:\supernova\msx\game\rooms3.c:335: case 92: RL(555); break;
00120$:
;E:\supernova\msx\game\rooms3.c:337: break;
	ld	hl, #0x022b
	jp	_RL
;E:\supernova\msx\game\rooms3.c:339: case 59:    // Overgrown Path
00122$:
;E:\supernova\msx\game\rooms3.c:340: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00136$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00136$
	cp	a, #0x03
	jr	z, 00136$
	cp	a, #0x04
	jr	z, 00136$
	cp	a, #0x05
	jr	z, 00123$
	cp	a, #0x06
	jr	z, 00136$
	cp	a, #0x07
	jr	z, 00136$
	cp	a, #0x08
	jr	z, 00127$
	cp	a, #0x09
	jr	z, 00138$
	sub	a, #0x33
	jr	z, 00138$
	ret
;E:\supernova\msx\game\rooms3.c:342: case 5: RC--; if (RC < 1) { RL(309); MoveTo(29); } else RL(310); break;
00123$:
	ld	hl, (_RC)
	dec	hl
	ld	(_RC), hl
	ld	bc, (_RC)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00125$
	ld	hl, #0x0135
	call	_RL
	ld	a, #0x1d
	jp	_MoveTo
00125$:
	ld	hl, #0x0136
	jp	_RL
;E:\supernova\msx\game\rooms3.c:343: case 8: RC++; if (RC > 7) { RL(309); MoveTo(60); } else RL(310); break;
00127$:
	ld	hl, (_RC)
	inc	hl
	ld	(_RC), hl
	ld	a, #0x07
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01080$
	xor	a, #0x80
01080$:
	jp	p, 00129$
	ld	hl, #0x0135
	call	_RL
	ld	a, #0x3c
	jp	_MoveTo
00129$:
	ld	hl, #0x0136
	jp	_RL
;E:\supernova\msx\game\rooms3.c:344: case 1: case 2: case 3: case 4: case 6: case 7: RL(200); break;
00136$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms3.c:345: case 9: case 51: if (N1 == 112) RL(204); break;
00138$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
;E:\supernova\msx\game\rooms3.c:347: break;
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms3.c:349: case 60:    // Antenna Building (Outside)
00142$:
;E:\supernova\msx\game\rooms3.c:350: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00153$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00153$
	cp	a, #0x03
	jr	z, 00153$
	cp	a, #0x04
	jr	z, 00144$
	cp	a, #0x05
	jr	z, 00147$
	cp	a, #0x06
	jr	z, 00153$
	cp	a, #0x07
	jr	z, 00153$
	cp	a, #0x08
	jr	z, 00153$
	cp	a, #0x09
	jr	z, 00168$
	cp	a, #0x0b
	jr	z, 00144$
	cp	a, #0x1c
	jr	z, 00154$
	cp	a, #0x29
	jr	z, 00164$
	cp	a, #0x2a
	jr	z, 00164$
	cp	a, #0x2b
	jr	z, 00164$
	cp	a, #0x2c
	jr	z, 00164$
	cp	a, #0x33
	jr	z, 00168$
	cp	a, #0x36
	jr	z, 00164$
	cp	a, #0x4b
	jr	z, 00164$
	sub	a, #0x58
	jr	z, 00164$
	ret
;E:\supernova\msx\game\rooms3.c:352: case 4: case 11:
00144$:
;E:\supernova\msx\game\rooms3.c:353: Door(61, 25);
	ld	l, #0x19
	ld	a, #0x3d
	call	_Door
;E:\supernova\msx\game\rooms3.c:354: if (!En(43)) { RS(137); Score(10, 43); }
	ld	a, #0x2b
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x0089
	call	_RS
	ld	de, #0x002b
;E:\supernova\msx\game\rooms3.c:355: break;
	ld	hl, #0x000a
	jp	_Score
;E:\supernova\msx\game\rooms3.c:356: case 5: MoveTo(59); break;
00147$:
	ld	a, #0x3b
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:357: case 1: case 2: case 3: case 6: case 7: case 8: RL(200); break;
00153$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms3.c:358: case 28: switch (N1) { case 96: RL(323); break; case 115: RL(324); break; } break;
00154$:
	ld	a, (_N1)
	cp	a, #0x60
	jr	z, 00155$
	sub	a, #0x73
	jr	z, 00156$
	ret
00155$:
	ld	hl, #0x0143
	jp	_RL
00156$:
	ld	hl, #0x0144
	jp	_RL
;E:\supernova\msx\game\rooms3.c:359: case 41: case 42: case 43: case 44: case 54: case 75: case 88: if (N1 == 56) RL(315); break;
00164$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	hl, #0x013b
	jp	_RL
;E:\supernova\msx\game\rooms3.c:360: case 9: case 51: if (N1 == 112) RL(204); else RL(316); break;
00168$:
	ld	a, (_N1)
	sub	a, #0x70
	jr	nz, 00170$
	ld	hl, #0x00cc
	jp	_RL
00170$:
;E:\supernova\msx\game\rooms3.c:362: break;
	ld	hl, #0x013c
	jp	_RL
;E:\supernova\msx\game\rooms3.c:364: case 61:    // Monitor Outpost
00173$:
;E:\supernova\msx\game\rooms3.c:365: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00177$
	cp	a, #0x03
	jr	z, 00175$
	cp	a, #0x0b
	jr	z, 00177$
	cp	a, #0x0d
	jr	z, 00175$
	cp	a, #0x18
	jr	z, 00180$
	cp	a, #0x1c
	jr	z, 00180$
	cp	a, #0x1f
	jr	z, 00180$
	cp	a, #0x2a
	jr	z, 00190$
	cp	a, #0x2c
	jr	z, 00190$
	sub	a, #0x4b
	jr	z, 00190$
	ret
;E:\supernova\msx\game\rooms3.c:367: case 3: case 13: Door(60, 25); break;
00175$:
	ld	l, #0x19
	ld	a, #0x3c
	jp	_Door
;E:\supernova\msx\game\rooms3.c:368: case 2: case 11: MoveTo(62); break;
00177$:
	ld	a, #0x3e
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:369: case 28: case 24: case 31:
00180$:
;E:\supernova\msx\game\rooms3.c:370: switch (N1) { case 37: case 59: RS(133); break; case 38: case 44: RL(322); break; case 93: RL(319); break; case 94: RS(134); break; }
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00182$
	cp	a, #0x26
	jr	z, 00184$
	cp	a, #0x2c
	jr	z, 00184$
	cp	a, #0x3b
	jr	z, 00182$
	cp	a, #0x5d
	jr	z, 00185$
	sub	a, #0x5e
	jr	z, 00186$
	ret
00182$:
	ld	hl, #0x0085
	jp	_RS
00184$:
	ld	hl, #0x0142
	jp	_RL
00185$:
	ld	hl, #0x013f
	jp	_RL
00186$:
;E:\supernova\msx\game\rooms3.c:371: break;
	ld	hl, #0x0086
	jp	_RS
;E:\supernova\msx\game\rooms3.c:372: case 42: case 44: case 75: if (N1 == 37 || N1 == 38 || N1 == 44) RL(318); break;
00190$:
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00191$
	cp	a, #0x26
	jr	z, 00191$
	sub	a, #0x2c
	ret	nz
00191$:
;E:\supernova\msx\game\rooms3.c:374: break;
	ld	hl, #0x013e
	jp	_RL
;E:\supernova\msx\game\rooms3.c:376: case 62:    // Booth (Jungle Planet)
00196$:
;E:\supernova\msx\game\rooms3.c:377: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00198$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00198$
	sub	a, #0x18
	jp	z, _BoothLook
	ld	a, (_Vb)
	sub	a, #0x1c
	jp	z, _BoothLook
	ld	a, (_Vb)
	sub	a, #0x1f
	jp	z, _BoothLook
	ld	a, (_Vb)
	cp	a, #0x2a
	jr	z, 00201$
	cp	a, #0x2c
	jr	z, 00201$
	sub	a, #0x4b
	jr	z, 00201$
	ret
;E:\supernova\msx\game\rooms3.c:379: case 1: case 13: MoveTo(61); break;
00198$:
	ld	a, #0x3d
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:380: case 42: case 44: case 75:
00201$:
;E:\supernova\msx\game\rooms3.c:381: switch (N1) { case 37: case 38: RL(318); break; case 44: BoothTransport(1); break; }
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00203$
	cp	a, #0x26
	jr	z, 00203$
	sub	a, #0x2c
	jr	z, 00204$
	ret
00203$:
	ld	hl, #0x013e
	jp	_RL
00204$:
;E:\supernova\msx\game\rooms3.c:382: break;
;E:\supernova\msx\game\rooms3.c:383: case 28: case 24: case 31: BoothLook(); break;
;E:\supernova\msx\game\rooms3.c:385: break;
	ld	a, #0x01
	jp	_BoothTransport
;E:\supernova\msx\game\rooms3.c:387: case 63:    // Booth (Ringed Planet)
00210$:
;E:\supernova\msx\game\rooms3.c:388: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00212$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00212$
	sub	a, #0x18
	jp	z, _BoothLook
	ld	a, (_Vb)
	sub	a, #0x1c
	jp	z, _BoothLook
	ld	a, (_Vb)
	sub	a, #0x1f
	jp	z, _BoothLook
	ld	a, (_Vb)
	cp	a, #0x27
	jr	z, 00223$
	cp	a, #0x2a
	jr	z, 00215$
	cp	a, #0x2c
	jr	z, 00215$
	sub	a, #0x4b
	jr	z, 00215$
	ret
;E:\supernova\msx\game\rooms3.c:390: case 1: case 13: RL(328); break;
00212$:
	ld	hl, #0x0148
	jp	_RL
;E:\supernova\msx\game\rooms3.c:391: case 42: case 44: case 75:
00215$:
;E:\supernova\msx\game\rooms3.c:392: switch (N1) { case 37: case 38: RL(318); break; case 44: BoothTransport(0); break; }
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00217$
	cp	a, #0x26
	jr	z, 00217$
	sub	a, #0x2c
	jr	z, 00218$
	ret
00217$:
	ld	hl, #0x013e
	jp	_RL
00218$:
	xor	a, a
;E:\supernova\msx\game\rooms3.c:393: break;
;E:\supernova\msx\game\rooms3.c:394: case 28: case 24: case 31: BoothLook(); break;
	jp	_BoothTransport
;E:\supernova\msx\game\rooms3.c:395: case 39: if (SET_IN(NounSet, 30) && LOC_HAS(63, 20)) R[20] = 63; break;
00223$:
	ld	a, (#(_NounSet + 3) + 0)
	rlca
	rlca
	rlca
	ret	nc
	ld	a, (#(_g_Loc + 1073) + 0)
	bit	3, a
	ret	z
	ld	hl, #_R+20
	ld	(hl), #0x3f
;E:\supernova\msx\game\rooms3.c:398: }
;E:\supernova\msx\game\rooms3.c:399: }
	ret
;E:\supernova\msx\game\rooms3.c:401: void Room14(void)    // Inner Planet
;	---------------------------------
; Function Room14
; ---------------------------------
_Room14::
;E:\supernova\msx\game\rooms3.c:403: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x40
	jr	z, 00101$
	cp	a, #0x41
	jp	z, 00130$
	cp	a, #0x42
	jp	z, 00138$
	cp	a, #0x43
	jp	z, 00162$
	cp	a, #0x47
	jp	z, 00168$
	sub	a, #0x48
	jp	z, 00184$
	ret
;E:\supernova\msx\game\rooms3.c:405: case 64:    // Lobby
00101$:
;E:\supernova\msx\game\rooms3.c:406: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00103$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00105$
	cp	a, #0x0b
	jr	z, 00105$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x14
	jp	z, 00120$
	cp	a, #0x18
	jp	z, 00120$
	cp	a, #0x1c
	jr	z, 00106$
	cp	a, #0x1f
	jr	z, 00116$
	sub	a, #0x36
	jp	z, 00123$
	ret
;E:\supernova\msx\game\rooms3.c:408: case 1: case 13: DOpen(99); RS(139); DEAD(); break;
00103$:
	ld	a, #0x63
	call	_DOpen
	ld	hl, #0x008b
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:409: case 2: case 11: MoveTo(65); break;
00105$:
	ld	a, #0x41
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:410: case 28:
00106$:
;E:\supernova\msx\game\rooms3.c:411: switch (N1)
	ld	a, (_N1)
	cp	a, #0x23
	jr	z, 00107$
	cp	a, #0x31
	jr	z, 00109$
	cp	a, #0x48
	jr	z, 00111$
	cp	a, #0x51
	jr	z, 00112$
	cp	a, #0x56
	jr	z, 00113$
	cp	a, #0x74
	jr	z, 00111$
	cp	a, #0x7a
	jr	z, 00109$
	sub	a, #0x7f
	jr	z, 00114$
	ret
;E:\supernova\msx\game\rooms3.c:413: case 35: RL(330); break;
00107$:
	ld	hl, #0x014a
	jp	_RL
;E:\supernova\msx\game\rooms3.c:414: case 49: case 122: RL(334); break;
00109$:
	ld	hl, #0x014e
	jp	_RL
;E:\supernova\msx\game\rooms3.c:415: case 72: case 116: Score(5, 90); RS(148); break;
00111$:
	ld	de, #0x005a
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x0094
	jp	_RS
;E:\supernova\msx\game\rooms3.c:416: case 81: RB(5, 11); break;
00112$:
	ld	l, #0x0b
	ld	a, #0x05
	jp	_RB
;E:\supernova\msx\game\rooms3.c:417: case 86: RL(333); break;
00113$:
	ld	hl, #0x014d
	jp	_RL
;E:\supernova\msx\game\rooms3.c:418: case 127: RL(351); break;
00114$:
;E:\supernova\msx\game\rooms3.c:420: break;
	ld	hl, #0x015f
	jp	_RL
;E:\supernova\msx\game\rooms3.c:421: case 31: if (N1 == 81) RB(5, 11); break;
00116$:
	ld	a, (_N1)
	sub	a, #0x51
	ret	nz
	ld	l, #0x0b
	ld	a, #0x05
	jp	_RB
;E:\supernova\msx\game\rooms3.c:422: case 20: case 24: if (N1 == 127) RS(142); break;
00120$:
	ld	a, (_N1)
	sub	a, #0x7f
	ret	nz
	ld	hl, #0x008e
	jp	_RS
;E:\supernova\msx\game\rooms3.c:423: case 54: if (N1 == 127) { if (Md == 3) { RL(537); DEAD(); } else RL(538); } break;
00123$:
	ld	a, (_N1)
	sub	a, #0x7f
	ret	nz
	ld	a, (_Md)
	sub	a, #0x03
	jr	nz, 00125$
	ld	hl, #0x0219
	call	_RL
	jp	_DEAD
00125$:
;E:\supernova\msx\game\rooms3.c:425: break;
	ld	hl, #0x021a
	jp	_RL
;E:\supernova\msx\game\rooms3.c:427: case 65:    // North Corridor
00130$:
;E:\supernova\msx\game\rooms3.c:428: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00131$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00132$
	cp	a, #0x04
	jr	z, 00133$
	sub	a, #0x1c
	jr	z, 00134$
	ret
;E:\supernova\msx\game\rooms3.c:430: case 1: MoveTo(64); break;
00131$:
	ld	a, #0x40
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:431: case 2: MoveTo(66); break;
00132$:
	ld	a, #0x42
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:432: case 4: Door(68, 20); break;
00133$:
	ld	l, #0x14
	ld	a, #0x44
	jp	_Door
;E:\supernova\msx\game\rooms3.c:433: case 28: if (N1 == 56) RL(92); break;
00134$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
;E:\supernova\msx\game\rooms3.c:435: break;
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms3.c:437: case 66:    // Central Corridor
00138$:
;E:\supernova\msx\game\rooms3.c:438: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00139$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00140$
	cp	a, #0x03
	jr	z, 00141$
	cp	a, #0x04
	jr	z, 00145$
	cp	a, #0x1c
	jr	z, 00146$
	sub	a, #0x21
	jr	z, 00153$
	ret
;E:\supernova\msx\game\rooms3.c:440: case 1: MoveTo(65); break;
00139$:
	ld	a, #0x41
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:441: case 2: MoveTo(67); break;
00140$:
	ld	a, #0x43
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:442: case 3: if (T[20] > 1) { Score(15, 91); MoveTo(73); } else RL(92); break;
00141$:
	ld	hl, (#(_T + 40) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01030$
	xor	a, #0x80
01030$:
	jp	p, 00143$
	ld	de, #0x005b
	ld	hl, #0x000f
	call	_Score
	ld	a, #0x49
	jp	_MoveTo
00143$:
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms3.c:443: case 4: MoveTo(72); break;
00145$:
	ld	a, #0x48
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:444: case 28:
00146$:
;E:\supernova\msx\game\rooms3.c:445: switch (N1) { case 56: if (T[20] > 1) RL(370); else RL(92); break; case 64: RL(335); break; }
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00147$
	sub	a, #0x40
	jr	z, 00151$
	ret
00147$:
	ld	hl, (#(_T + 40) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 01033$
	xor	a, #0x80
01033$:
	jp	p, 00149$
	ld	hl, #0x0172
	jp	_RL
00149$:
	ld	hl, #0x005c
	jp	_RL
00151$:
;E:\supernova\msx\game\rooms3.c:446: break;
	ld	hl, #0x014f
	jp	_RL
;E:\supernova\msx\game\rooms3.c:447: case 33:
00153$:
;E:\supernova\msx\game\rooms3.c:448: if (N2 == 64)
	ld	a, (_N2)
	sub	a, #0x40
	ret	nz
;E:\supernova\msx\game\rooms3.c:449: if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\rooms3.c:451: if (N1 == 12) { RL(336); T[20] = 3; DOpen(20); Score(5, 92); }
	ld	a, (_N1)
	sub	a, #0x0c
	jr	nz, 00155$
	ld	hl, #0x0150
	call	_RL
	ld	hl, #0x0003
	ld	((_T + 40)), hl
	ld	a, #0x14
	call	_DOpen
	ld	de, #0x005c
	ld	hl, #0x0005
	jp	_Score
00155$:
;E:\supernova\msx\game\rooms3.c:452: else RL(137);
;E:\supernova\msx\game\rooms3.c:456: break;
	ld	hl, #0x0089
	jp	_RL
;E:\supernova\msx\game\rooms3.c:458: case 67:    // South Corridor
00162$:
;E:\supernova\msx\game\rooms3.c:459: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00163$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00165$
	cp	a, #0x04
	jr	z, 00166$
	sub	a, #0x0b
	jr	z, 00165$
	ret
;E:\supernova\msx\game\rooms3.c:461: case 1: MoveTo(66); break;
00163$:
	ld	a, #0x42
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:462: case 2: case 11: Door(75, 5); break;
00165$:
	ld	l, #0x05
	ld	a, #0x4b
	jp	_Door
;E:\supernova\msx\game\rooms3.c:463: case 4: MoveTo(71); break;
00166$:
;E:\supernova\msx\game\rooms3.c:465: break;
	ld	a, #0x47
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:467: case 71:    // Monitor Station
00168$:
;E:\supernova\msx\game\rooms3.c:468: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00169$
	cp	a, #0x1c
	jr	z, 00170$
	sub	a, #0x1f
	jr	z, 00177$
	ret
;E:\supernova\msx\game\rooms3.c:470: case 3: MoveTo(67); break;
00169$:
	ld	a, #0x43
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:471: case 28:
00170$:
;E:\supernova\msx\game\rooms3.c:472: switch (N1) { case 59: if (CodeSet == 4) RL(353); else RL(355); break; case 116: RL(354); break; }
	ld	a, (_N1)
	cp	a, #0x3b
	jr	z, 00171$
	sub	a, #0x74
	jr	z, 00175$
	ret
00171$:
	ld	a, (_CodeSet)
	sub	a, #0x04
	jr	nz, 00173$
	ld	hl, #0x0161
	jp	_RL
00173$:
	ld	hl, #0x0163
	jp	_RL
00175$:
;E:\supernova\msx\game\rooms3.c:473: break;
	ld	hl, #0x0162
	jp	_RL
;E:\supernova\msx\game\rooms3.c:474: case 31:
00177$:
;E:\supernova\msx\game\rooms3.c:475: if (N1 == 59) { if (CodeSet == 4) { RB2(11, 14); Pause(); } else RL(355); }
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	a, (_CodeSet)
	sub	a, #0x04
	jr	nz, 00179$
	ld	l, #0x0e
	ld	a, #0x0b
	call	_RB2
	jp	_Pause
00179$:
;E:\supernova\msx\game\rooms3.c:478: break;
	ld	hl, #0x0163
	jp	_RL
;E:\supernova\msx\game\rooms3.c:480: case 72:    // Reactor Control
00184$:
;E:\supernova\msx\game\rooms3.c:481: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00185$
	cp	a, #0x18
	jr	z, 00187$
	cp	a, #0x1c
	jr	z, 00187$
	cp	a, #0x21
	jp	z, 00203$
	cp	a, #0x29
	jp	z, 00221$
	cp	a, #0x2a
	jp	z, 00232$
	cp	a, #0x2c
	jp	z, 00232$
	sub	a, #0x35
	jp	z, 00228$
	ret
;E:\supernova\msx\game\rooms3.c:483: case 3: MoveTo(66); break;
00185$:
	ld	a, #0x42
	jp	_MoveTo
;E:\supernova\msx\game\rooms3.c:484: case 28: case 24:
00187$:
;E:\supernova\msx\game\rooms3.c:485: switch (N1)
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00190$
	cp	a, #0x26
	jr	z, 00190$
	cp	a, #0x2e
	jr	z, 00191$
	cp	a, #0x37
	jr	z, 00195$
	sub	a, #0x80
	ret	nz
;E:\supernova\msx\game\rooms3.c:487: case 128: RL(560); break;
	ld	hl, #0x0230
	jp	_RL
;E:\supernova\msx\game\rooms3.c:488: case 37: case 38: RL(339); break;
00190$:
	ld	hl, #0x0153
	jp	_RL
;E:\supernova\msx\game\rooms3.c:489: case 46: if (Md != Null) { Score(5, 93); RL(343); } else RS(145); break;
00191$:
	ld	a, (_Md+0)
	or	a, a
	jr	z, 00193$
	ld	de, #0x005d
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x0157
	jp	_RL
00193$:
	ld	hl, #0x0091
	jp	_RS
;E:\supernova\msx\game\rooms3.c:490: case 55:
00195$:
;E:\supernova\msx\game\rooms3.c:491: if (En(46))
	ld	a, #0x2e
	call	_En
	or	a, a
	jr	z, 00200$
;E:\supernova\msx\game\rooms3.c:493: if (RobotCon != Null) { Wr("The robot's panel contains a "); WrFN(RobotCon); Wr("."); Wln(); }
	ld	a, (_RobotCon+0)
	or	a, a
	jr	z, 00197$
	ld	hl, #___str_2
	call	_Wr
	ld	a, (_RobotCon)
	call	_WrFN
	ld	hl, #___str_3
	call	_Wr
	jp	_Wln
00197$:
;E:\supernova\msx\game\rooms3.c:494: else RL(346);
	ld	hl, #0x015a
	jp	_RL
00200$:
;E:\supernova\msx\game\rooms3.c:496: else RL(344);
;E:\supernova\msx\game\rooms3.c:499: break;
	ld	hl, #0x0158
	jp	_RL
;E:\supernova\msx\game\rooms3.c:500: case 33:
00203$:
;E:\supernova\msx\game\rooms3.c:501: if (N2 == 55)
	ld	a, (_N2)
	sub	a, #0x37
	ret	nz
;E:\supernova\msx\game\rooms3.c:502: if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\rooms3.c:504: if (En(46))
	ld	a, #0x2e
	call	_En
	or	a, a
	jr	z, 00215$
;E:\supernova\msx\game\rooms3.c:506: if (RobotCon == Null)
	ld	a, (_RobotCon+0)
	or	a, a
	jr	nz, 00212$
;E:\supernova\msx\game\rooms3.c:508: if (N1 == 3 || N1 == 4 || N1 == 8 || N1 == 12 || N1 == 17)
	ld	a, (_N1)
	cp	a, #0x03
	jr	z, 00204$
	cp	a, #0x04
	jr	z, 00204$
	cp	a, #0x08
	jr	z, 00204$
	cp	a, #0x0c
	jr	z, 00204$
	sub	a, #0x11
	jr	nz, 00205$
00204$:
;E:\supernova\msx\game\rooms3.c:509: { Van(N1); RL(347); R[N1] = 72; RobotCon = N1; }
	ld	a, (_N1)
	call	_Van
	ld	hl, #0x015b
	call	_RL
	ld	hl, #_R
	ld	a, (_N1)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	(hl), #0x48
	ld	a, (_N1+0)
	ld	(#_RobotCon), a
	ret
00205$:
;E:\supernova\msx\game\rooms3.c:510: else RL(137);
	ld	hl, #0x0089
	jp	_RL
00212$:
;E:\supernova\msx\game\rooms3.c:512: else RL(348);
	ld	hl, #0x015c
	jp	_RL
00215$:
;E:\supernova\msx\game\rooms3.c:514: else RL(344);
;E:\supernova\msx\game\rooms3.c:516: break;
	ld	hl, #0x0158
	jp	_RL
;E:\supernova\msx\game\rooms3.c:517: case 41:
00221$:
;E:\supernova\msx\game\rooms3.c:518: if (N1 == 55 || N1 == 46)
	ld	a, (_N1)
	cp	a, #0x37
	jr	z, 00225$
	sub	a, #0x2e
	ret	nz
00225$:
;E:\supernova\msx\game\rooms3.c:520: if (RobotCon == Null) RL(558);
	ld	a, (_RobotCon+0)
	or	a, a
	jr	nz, 00223$
	ld	hl, #0x022e
	jp	_RL
00223$:
;E:\supernova\msx\game\rooms3.c:523: SetR(RobotCon, 72); Add(46); Score(25, 94);
	ld	l, #0x48
	ld	a, (_RobotCon)
	call	_SetR
	ld	a, #0x2e
	call	_Add
	ld	de, #0x005e
	ld	hl, #0x0019
	call	_Score
;E:\supernova\msx\game\rooms3.c:524: Wr("The panel slides open, revealing a "); WrFN(RobotCon); Wr(" inside."); Wln();
	ld	hl, #___str_4
	call	_Wr
	ld	a, (_RobotCon)
	call	_WrFN
	ld	hl, #___str_5
	call	_Wr
;E:\supernova\msx\game\rooms3.c:527: break;
	jp	_Wln
;E:\supernova\msx\game\rooms3.c:528: case 53: if (N1 == 55) { Van(RobotCon); Min(46); RL(344); } break;
00228$:
	ld	a, (_N1)
	sub	a, #0x37
	ret	nz
	ld	a, (_RobotCon)
	call	_Van
	ld	a, #0x2e
	call	_Min
	ld	hl, #0x0158
	jp	_RL
;E:\supernova\msx\game\rooms3.c:529: case 42: case 44:
00232$:
;E:\supernova\msx\game\rooms3.c:530: switch (N1)
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00235$
	cp	a, #0x26
	jr	z, 00235$
	cp	a, #0x2c
	jr	z, 00235$
	sub	a, #0x2e
	jr	z, 00236$
	ret
;E:\supernova\msx\game\rooms3.c:532: case 37: case 38: case 44:
00235$:
;E:\supernova\msx\game\rooms3.c:533: RL(340); Walls(9); Gotoxy(43, Wherey() - 1); Col(28, 31);
	ld	hl, #0x0154
	call	_RL
	ld	a, #0x09
	call	_Walls
	call	_Wherey
	ld	l, a
	dec	l
	ld	a, #0x2b
	call	_Gotoxy
	ld	l, #0x1f
	ld	a, #0x1c
	call	_Col
;E:\supernova\msx\game\rooms3.c:534: Wr("BOOM!"); Wln(); Explode(32); DEAD();
	ld	hl, #___str_6
	call	_Wr
	call	_Wln
	ld	a, #0x20
	call	_Explode
;E:\supernova\msx\game\rooms3.c:535: break;
	jp	_DEAD
;E:\supernova\msx\game\rooms3.c:536: case 46:
00236$:
;E:\supernova\msx\game\rooms3.c:537: if (StrEq(VStr, "turn on") || StrEq(VStr, "activat") || StrEq(VStr, "turn off")) RL(341);
	ld	de, #___str_7
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00241$
	ld	de, #___str_8
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00241$
	ld	de, #___str_9
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00242$
00241$:
	ld	hl, #0x0155
	jp	_RL
00242$:
;E:\supernova\msx\game\rooms3.c:538: else if (!En(94) && !En(93)) { RL(342); RL(559); }
	ld	a, #0x5e
	call	_En
	or	a, a
	jr	nz, 00238$
	ld	a, #0x5d
	call	_En
	or	a, a
	jr	nz, 00238$
	ld	hl, #0x0156
	call	_RL
	ld	hl, #0x022f
	jp	_RL
00238$:
;E:\supernova\msx\game\rooms3.c:539: else RL(342);
	ld	hl, #0x0156
;E:\supernova\msx\game\rooms3.c:545: }
;E:\supernova\msx\game\rooms3.c:546: }
	jp	_RL
___str_2:
	.ascii "The robot's panel contains a "
	.db 0x00
___str_3:
	.ascii "."
	.db 0x00
___str_4:
	.ascii "The panel slides open, revealing a "
	.db 0x00
___str_5:
	.ascii " inside."
	.db 0x00
___str_6:
	.ascii "BOOM!"
	.db 0x00
___str_7:
	.ascii "turn on"
	.db 0x00
___str_8:
	.ascii "activat"
	.db 0x00
___str_9:
	.ascii "turn off"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
