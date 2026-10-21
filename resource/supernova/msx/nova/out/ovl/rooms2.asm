;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rooms2
	
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
	.globl _WrFN
	.globl _Walls
	.globl _Explode
	.globl _Play
	.globl _Pause
	.globl _Score
	.globl _Min
	.globl _Add
	.globl _En
	.globl _Bor
	.globl _Col
	.globl _SF
	.globl _Rnd
	.globl _NoSound
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
	.globl _Room5
	.globl _Room6
	.globl _Room7
	.globl _Room8
	.globl _Room9
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
;E:\supernova\msx\game\rooms2.c:4: static void Zap(void)
;	---------------------------------
; Function Zap
; ---------------------------------
_Zap:
;E:\supernova\msx\game\rooms2.c:6: for (x = 1; x <= 29; x++) if (R[x] == Prm) Van(x);
	ld	hl, #_x
	ld	(hl), #0x01
00104$:
	ld	hl, #_R
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	sub	a, (hl)
	jr	nz, 00105$
	ld	a, (_x)
	call	_Van
00105$:
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00104$
;E:\supernova\msx\game\rooms2.c:7: }
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
;E:\supernova\msx\game\rooms2.c:9: void Room5(void)    // Barre-An Planet
;	---------------------------------
; Function Room5
; ---------------------------------
_Room5::
;E:\supernova\msx\game\rooms2.c:11: switch (Prm)
	ld	a, (_Prm+0)
	sub	a, #0x0d
	ret	c
	ld	a, #0x16
	ld	iy, #_Prm
	sub	a, 0 (iy)
	ret	c
	ld	a, (_Prm+0)
	add	a, #0xf3
	ld	c, a
	ld	b, #0x00
	ld	hl, #01021$
	add	hl, bc
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	jp	(hl)
01021$:
	.dw	00101$
	.dw	00119$
	.dw	00123$
	.dw	00136$
	.dw	00146$
	.dw	00157$
	.dw	00163$
	.dw	00173$
	.dw	00191$
	.dw	00212$
;E:\supernova\msx\game\rooms2.c:13: case 13:    // Crossroads
00101$:
;E:\supernova\msx\game\rooms2.c:14: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00103$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00107$
	cp	a, #0x03
	jr	z, 00108$
	cp	a, #0x04
	jr	z, 00109$
	cp	a, #0x0b
	jr	z, 00103$
	cp	a, #0x1c
	jr	z, 00111$
	cp	a, #0x1f
	jr	z, 00111$
	sub	a, #0x29
	jr	z, 00115$
	ret
;E:\supernova\msx\game\rooms2.c:16: case 1: case 11: if (En(7)) RL(22); else { RL(93); MoveTo(8); } break;
00103$:
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00105$
	ld	hl, #0x0016
	jp	_RL
00105$:
	ld	hl, #0x005d
	call	_RL
	ld	a, #0x08
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:17: case 2: MoveTo(18); break;
00107$:
	ld	a, #0x12
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:18: case 3: MoveTo(16); break;
00108$:
	ld	a, #0x10
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:19: case 4: MoveTo(14); break;
00109$:
	ld	a, #0x0e
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:20: case 28: case 31: if (N1 == 81 || N1 == 88) { Score(5, 70); RB2(5, 6); Pause(); } break;
00111$:
	ld	a, (_N1)
	cp	a, #0x51
	jr	z, 00112$
	sub	a, #0x58
	ret	nz
00112$:
	ld	de, #0x0046
	ld	hl, #0x0005
	call	_Score
	ld	l, #0x06
	ld	a, #0x05
	call	_RB2
	jp	_Pause
;E:\supernova\msx\game\rooms2.c:21: case 41: if (N1 == 56) RL(394); break;
00115$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
;E:\supernova\msx\game\rooms2.c:23: break;
	ld	hl, #0x018a
	jp	_RL
;E:\supernova\msx\game\rooms2.c:25: case 14:    // Dusty Road
00119$:
;E:\supernova\msx\game\rooms2.c:26: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00120$
	sub	a, #0x04
	jr	z, 00121$
	ret
;E:\supernova\msx\game\rooms2.c:28: case 3: MoveTo(13); break;
00120$:
	ld	a, #0x0d
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:29: case 4: RC = 1; MoveTo(15); break;
00121$:
	ld	hl, #0x0001
	ld	(_RC), hl
;E:\supernova\msx\game\rooms2.c:31: break;
	ld	a, #0x0f
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:33: case 15:    // Dusty Road (endless)
00123$:
;E:\supernova\msx\game\rooms2.c:34: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00124$
	cp	a, #0x04
	jr	z, 00128$
	cp	a, #0x0b
	jr	z, 00132$
	sub	a, #0x0d
	jr	z, 00132$
	ret
;E:\supernova\msx\game\rooms2.c:36: case 3: Zap(); RC--; if (RC < 1) MoveTo(14); else MoveTo(15); break;
00124$:
	call	_Zap
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
	jr	nc, 00126$
	ld	a, #0x0e
	jp	_MoveTo
00126$:
	ld	a, #0x0f
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:37: case 4:
00128$:
;E:\supernova\msx\game\rooms2.c:38: Zap(); RC++; MoveTo(15);
	call	_Zap
	ld	hl, (_RC)
	inc	hl
	ld	(_RC), hl
	ld	a, #0x0f
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:39: if (RC == 40) { Wr("You notice something unusual."); Wln(); }
	ld	hl, (_RC)
	ld	a, l
	sub	a, #0x28
	or	a, h
	ret	nz
	ld	hl, #___str_1
	call	_Wr
;E:\supernova\msx\game\rooms2.c:40: break;
	jp	_Wln
;E:\supernova\msx\game\rooms2.c:41: case 11: case 13:
00132$:
;E:\supernova\msx\game\rooms2.c:42: if (RC == 40)
	ld	hl, (_RC)
	ld	a, l
	sub	a, #0x28
	or	a, h
	ret	nz
;E:\supernova\msx\game\rooms2.c:44: RL(135); Explode(3); Play(1, 9999, 0); Play(9999, 1, 0);
	ld	hl, #0x0087
	call	_RL
	ld	a, #0x03
	call	_Explode
	ld	hl, #0x0000
	push	hl
	ld	de, #0x270f
	ld	l, #0x01
	call	_Play
	ld	hl, #0x0000
	push	hl
	ld	de, #0x0001
	ld	hl, #0x270f
	call	_Play
;E:\supernova\msx\game\rooms2.c:45: Walls(10); Explode(5); TFlag = 4;
	ld	a, #0x0a
	call	_Walls
	ld	a, #0x05
	call	_Explode
	ld	hl, #_TFlag
	ld	(hl), #0x04
;E:\supernova\msx\game\rooms2.c:46: SetClear(Inv, 4);
	ld	bc, #_Inv+0
	ld	l, c
	ld	h, b
	push	bc
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetClear
	pop	bc
;E:\supernova\msx\game\rooms2.c:47: SET_ADD(Inv, 1); SET_ADD(Inv, 6); SET_ADD(Inv, 12); SET_ADD(Inv, 17);
	ld	a, (bc)
	set	0, a
	ld	(bc), a
	set	5, a
	ld	(bc), a
	ld	l, c
	ld	h, b
	inc	hl
	set	3, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	set	0, (hl)
;E:\supernova\msx\game\rooms2.c:48: SET_ADD(Inv, 20); SET_ADD(Inv, 26); SET_ADD(Inv, 28); SET_ADD(Inv, 29);
	set	3, (hl)
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	set	1, a
	ld	(bc), a
	set	3, a
	ld	(bc), a
	set	4, a
	ld	(bc), a
;E:\supernova\msx\game\rooms2.c:49: MoveTo(78);
	ld	a, #0x4e
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:50: T[3] = 120; T[4] = 120; T[5] = 120; SetClear(PStat, 1); MugCon = 79; Bor(0, 0);
	ld	hl, #0x0078
	ld	((_T + 6)), hl
	ld	((_T + 8)), hl
	ld	((_T + 10)), hl
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_PStat
	call	_SetClear
	ld	hl, #_MugCon
	ld	(hl), #0x4f
	xor	a, a
;E:\supernova\msx\game\rooms2.c:54: break;
	ld	l, a
	jp	_Bor
;E:\supernova\msx\game\rooms2.c:56: case 16:    // Gravel Road
00136$:
;E:\supernova\msx\game\rooms2.c:57: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00138$
	cp	a, #0x03
	jr	z, 00139$
	cp	a, #0x04
	jr	z, 00140$
	cp	a, #0x0b
	jr	z, 00138$
	cp	a, #0x1c
	jr	z, 00142$
	sub	a, #0x1f
	jr	z, 00142$
	ret
;E:\supernova\msx\game\rooms2.c:59: case 2: case 11: RL(108); MoveTo(20); break;
00138$:
	ld	hl, #0x006c
	call	_RL
	ld	a, #0x14
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:60: case 3: RC = 1; MoveTo(17); break;
00139$:
	ld	hl, #0x0001
	ld	(_RC), hl
	ld	a, #0x11
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:61: case 4: MoveTo(13); break;
00140$:
	ld	a, #0x0d
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:62: case 28: case 31: if (N1 == 81) RL(109); break;
00142$:
	ld	a, (_N1)
	sub	a, #0x51
	ret	nz
;E:\supernova\msx\game\rooms2.c:64: break;
	ld	hl, #0x006d
	jp	_RL
;E:\supernova\msx\game\rooms2.c:66: case 17:    // Gravel Road (endless)
00146$:
;E:\supernova\msx\game\rooms2.c:67: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00147$
	sub	a, #0x04
	jr	z, 00152$
	ret
;E:\supernova\msx\game\rooms2.c:69: case 3:
00147$:
;E:\supernova\msx\game\rooms2.c:70: Zap(); RC++;
	call	_Zap
	ld	hl, (_RC)
	inc	hl
;E:\supernova\msx\game\rooms2.c:71: if (RC == 80 && !SetEmpty(Inv, 4)) { MoveTo(17); RS(17); SetClear(Inv, 4); }
	ld	(_RC), hl
	ld	a, l
	sub	a, #0x50
	or	a, h
	jr	nz, 00149$
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetEmpty
	or	a, a
	jr	nz, 00149$
	ld	a, #0x11
	call	_MoveTo
	ld	hl, #0x0011
	call	_RS
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetClear
	ret
00149$:
;E:\supernova\msx\game\rooms2.c:72: else MoveTo(17);
;E:\supernova\msx\game\rooms2.c:73: break;
	ld	a, #0x11
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:74: case 4: Zap(); RC--; if (RC < 1) MoveTo(16); else MoveTo(17); break;
00152$:
	call	_Zap
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
	jr	nc, 00154$
	ld	a, #0x10
	jp	_MoveTo
00154$:
;E:\supernova\msx\game\rooms2.c:76: break;
	ld	a, #0x11
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:78: case 18:    // Paved Road
00157$:
;E:\supernova\msx\game\rooms2.c:79: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00158$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00159$
	cp	a, #0x04
	jr	z, 00161$
	sub	a, #0x0b
	jr	z, 00161$
	ret
;E:\supernova\msx\game\rooms2.c:81: case 1: MoveTo(13); break;
00158$:
	ld	a, #0x0d
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:82: case 2: RC = 1; MoveTo(19); break;
00159$:
	ld	hl, #0x0001
	ld	(_RC), hl
	ld	a, #0x13
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:83: case 4: case 11: MoveTo(21); break;
00161$:
;E:\supernova\msx\game\rooms2.c:85: break;
	ld	a, #0x15
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:87: case 19:    // Paved Road (endless)
00163$:
;E:\supernova\msx\game\rooms2.c:88: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00164$
	ld	a, (_Vb)
	sub	a, #0x02
	jr	z, 00168$
	ret
;E:\supernova\msx\game\rooms2.c:90: case 1: Zap(); RC--; if (RC < 1) MoveTo(18); else MoveTo(19); break;
00164$:
	call	_Zap
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
	jr	nc, 00166$
	ld	a, #0x12
	jp	_MoveTo
00166$:
	ld	a, #0x13
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:91: case 2: if (RC == 60) RS(18); else { Zap(); RC++; MoveTo(19); } break;
00168$:
	ld	hl, (_RC)
	ld	a, l
	sub	a, #0x3c
	or	a, h
	jr	nz, 00170$
	ld	hl, #0x0012
	jp	_RS
00170$:
	call	_Zap
	ld	hl, (_RC)
	inc	hl
	ld	(_RC), hl
;E:\supernova\msx\game\rooms2.c:93: break;
	ld	a, #0x13
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:95: case 20:    // General Store
00173$:
;E:\supernova\msx\game\rooms2.c:96: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00175$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00175$
	cp	a, #0x14
	jr	z, 00181$
	cp	a, #0x1a
	jr	z, 00181$
	cp	a, #0x1c
	jr	z, 00176$
	cp	a, #0x27
	jr	z, 00186$
	sub	a, #0x4c
	jr	z, 00181$
	ret
;E:\supernova\msx\game\rooms2.c:98: case 1: case 13: MoveTo(16); break;
00175$:
	ld	a, #0x10
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:99: case 28: if (N1 == 132) RL(88); break;
00176$:
	ld	a, (_N1)
	sub	a, #0x84
	ret	nz
	ld	hl, #0x0058
	jp	_RL
;E:\supernova\msx\game\rooms2.c:100: case 20: case 26: case 76:
00181$:
;E:\supernova\msx\game\rooms2.c:101: if ((N1 == 86 || N1 == 87) && LOC_HAS(20, 5)) { RS(14); R[5] = 20; Score(15, 20); }
	ld	a, (_N1)
	cp	a, #0x56
	jr	z, 00185$
	sub	a, #0x57
	ret	nz
00185$:
	ld	a, (#(_g_Loc + 340) + 0)
	bit	4, a
	ret	z
	ld	hl, #0x000e
	call	_RS
	ld	hl, #_R+5
	ld	de, #0x0014
	ld	(hl), e
;E:\supernova\msx\game\rooms2.c:102: break;
	ld	hl, #0x000f
	jp	_Score
;E:\supernova\msx\game\rooms2.c:103: case 39: if (SET_IN(NounSet, 5) || SET_IN(NounSet, 30)) Score(15, 20); break;
00186$:
	ld	a, (#_NounSet + 0)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00187$
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	ret	nc
00187$:
	ld	de, #0x0014
;E:\supernova\msx\game\rooms2.c:105: break;
	ld	hl, #0x000f
	jp	_Score
;E:\supernova\msx\game\rooms2.c:107: case 21:    // Gravel Lot
00191$:
;E:\supernova\msx\game\rooms2.c:108: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00199$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00202$
	cp	a, #0x03
	jr	z, 00193$
	cp	a, #0x04
	jr	z, 00199$
	cp	a, #0x05
	jr	z, 00199$
	cp	a, #0x06
	jr	z, 00199$
	cp	a, #0x07
	jr	z, 00199$
	cp	a, #0x08
	jr	z, 00199$
	cp	a, #0x09
	jr	z, 00202$
	cp	a, #0x0d
	jr	z, 00193$
	cp	a, #0x1c
	jr	z, 00208$
	cp	a, #0x1f
	jr	z, 00208$
	sub	a, #0x33
	jr	z, 00202$
	ret
;E:\supernova\msx\game\rooms2.c:110: case 3: case 13: MoveTo(18); break;
00193$:
	ld	a, #0x12
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:111: case 1: case 4: case 5: case 6: case 7: case 8: RL(27); break;
00199$:
	ld	hl, #0x001b
	jp	_RL
;E:\supernova\msx\game\rooms2.c:112: case 2: case 9: case 51: if (N1 == Null || N1 == 62 || N1 == 71) { RL(234); MoveTo(22); } break;
00202$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00203$
	ld	a, (_N1)
	cp	a, #0x3e
	jr	z, 00203$
	sub	a, #0x47
	ret	nz
00203$:
	ld	hl, #0x00ea
	call	_RL
	ld	a, #0x16
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:113: case 28: case 31: if (N1 == 81) { Score(5, 71); RB(1, 7); Pause(); } break;
00208$:
	ld	a, (_N1)
	sub	a, #0x51
	ret	nz
	ld	de, #0x0047
	ld	hl, #0x0005
	call	_Score
	ld	l, #0x07
	ld	a, #0x01
	call	_RB
;E:\supernova\msx\game\rooms2.c:115: break;
	jp	_Pause
;E:\supernova\msx\game\rooms2.c:117: case 22:    // Top of Ship (Barre-An)
00212$:
;E:\supernova\msx\game\rooms2.c:118: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00213$
	ld	a, (_Vb)
	cp	a, #0x0a
	jr	z, 00216$
	cp	a, #0x0b
	jr	z, 00216$
	cp	a, #0x18
	jr	z, 00227$
	cp	a, #0x1c
	jr	z, 00227$
	cp	a, #0x1f
	jr	z, 00227$
	cp	a, #0x29
	jp	z, 00240$
	cp	a, #0x32
	jr	z, 00234$
	cp	a, #0x33
	jr	z, 00216$
	cp	a, #0x35
	jp	z, 00246$
	sub	a, #0x3b
	jp	z, 00252$
	ret
;E:\supernova\msx\game\rooms2.c:120: case 1: RL(235); MoveTo(21); break;
00213$:
	ld	hl, #0x00eb
	call	_RL
	ld	a, #0x15
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:121: case 10: case 11: case 51:
00216$:
;E:\supernova\msx\game\rooms2.c:122: if (N1 == Null || N1 == 62 || N1 == 64 || N1 == 71)
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00220$
	ld	a, (_N1)
	cp	a, #0x3e
	jr	z, 00220$
	cp	a, #0x40
	jr	z, 00220$
	sub	a, #0x47
	ret	nz
00220$:
;E:\supernova\msx\game\rooms2.c:124: if (En(23)) { RL(236); MoveTo(2); Score(15, 72); }
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00218$
	ld	hl, #0x00ec
	call	_RL
	ld	a, #0x02
	call	_MoveTo
	ld	de, #0x0048
	ld	hl, #0x000f
	jp	_Score
00218$:
;E:\supernova\msx\game\rooms2.c:125: else RL(99);
;E:\supernova\msx\game\rooms2.c:127: break;
	ld	hl, #0x0063
	jp	_RL
;E:\supernova\msx\game\rooms2.c:128: case 24: case 28: case 31:
00227$:
;E:\supernova\msx\game\rooms2.c:129: switch (N1)
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00228$
	sub	a, #0x51
	jr	z, 00232$
	ret
;E:\supernova\msx\game\rooms2.c:131: case 56: if (En(23)) RL(163); else RL(99); break;
00228$:
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00230$
	ld	hl, #0x00a3
	jp	_RL
00230$:
	ld	hl, #0x0063
	jp	_RL
;E:\supernova\msx\game\rooms2.c:132: case 81: RB(1, 7); Pause(); break;
00232$:
	ld	l, #0x07
	ld	a, #0x01
	call	_RB
;E:\supernova\msx\game\rooms2.c:134: break;
	jp	_Pause
;E:\supernova\msx\game\rooms2.c:135: case 50:
00234$:
;E:\supernova\msx\game\rooms2.c:136: if (N1 == 78) { if (En(22)) { RL(94); Min(22); } else { RL(95); Add(22); } }
	ld	a, (_N1)
	sub	a, #0x4e
	ret	nz
	ld	a, #0x16
	call	_En
	or	a, a
	jr	z, 00236$
	ld	hl, #0x005e
	call	_RL
	ld	a, #0x16
	jp	_Min
00236$:
	ld	hl, #0x005f
	call	_RL
;E:\supernova\msx\game\rooms2.c:137: break;
	ld	a, #0x16
	jp	_Add
;E:\supernova\msx\game\rooms2.c:138: case 41:
00240$:
;E:\supernova\msx\game\rooms2.c:139: if (N1 == 56) { if (En(22)) { RL(96); Add(23); Score(5, 73); } else RL(97); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x16
	call	_En
	or	a, a
	jr	z, 00242$
	ld	hl, #0x0060
	call	_RL
	ld	a, #0x17
	call	_Add
	ld	de, #0x0049
	ld	hl, #0x0005
	jp	_Score
00242$:
;E:\supernova\msx\game\rooms2.c:140: break;
	ld	hl, #0x0061
	jp	_RL
;E:\supernova\msx\game\rooms2.c:141: case 53:
00246$:
;E:\supernova\msx\game\rooms2.c:142: if (N1 == 56) { if (En(23)) { RL(98); Min(23); } else Say("hatch", "closed"); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00248$
	ld	hl, #0x0062
	call	_RL
	ld	a, #0x17
	jp	_Min
00248$:
	ld	de, #___str_3
;E:\supernova\msx\game\rooms2.c:143: break;
	ld	hl, #___str_2
	jp	_Say
;E:\supernova\msx\game\rooms2.c:144: case 59: if (N1 == 49 || N1 == 122 || StrEq(VStr, "jump off")) MoveTo(21); break;
00252$:
	ld	a, (_N1)
	cp	a, #0x31
	jr	z, 00253$
	sub	a, #0x7a
	jr	z, 00253$
	ld	de, #___str_4
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	ret	z
00253$:
	ld	a, #0x15
;E:\supernova\msx\game\rooms2.c:147: }
;E:\supernova\msx\game\rooms2.c:148: }
	jp	_MoveTo
___str_1:
	.ascii "You notice something unusual."
	.db 0x00
___str_2:
	.ascii "hatch"
	.db 0x00
___str_3:
	.ascii "closed"
	.db 0x00
___str_4:
	.ascii "jump off"
	.db 0x00
;E:\supernova\msx\game\rooms2.c:150: void Room6(void)    // Jungle Planet
;	---------------------------------
; Function Room6
; ---------------------------------
_Room6::
;E:\supernova\msx\game\rooms2.c:152: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x17
	jr	z, 00101$
	cp	a, #0x18
	jp	z, 00126$
	cp	a, #0x19
	jp	z, 00170$
	cp	a, #0x1a
	jp	z, 00186$
	cp	a, #0x1b
	jp	z, 00223$
	cp	a, #0x1c
	jp	z, 00261$
	sub	a, #0x1d
	jp	z, 00281$
	ret
;E:\supernova\msx\game\rooms2.c:154: case 23:    // Deep Pit
00101$:
;E:\supernova\msx\game\rooms2.c:155: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00115$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00115$
	cp	a, #0x03
	jr	z, 00115$
	cp	a, #0x04
	jr	z, 00115$
	cp	a, #0x05
	jr	z, 00115$
	cp	a, #0x06
	jr	z, 00115$
	cp	a, #0x07
	jr	z, 00115$
	cp	a, #0x08
	jr	z, 00115$
	cp	a, #0x09
	jr	z, 00115$
	cp	a, #0x0a
	jr	z, 00115$
	cp	a, #0x0b
	jr	z, 00115$
	cp	a, #0x0c
	jr	z, 00115$
	cp	a, #0x0d
	jr	z, 00115$
	cp	a, #0x1c
	jr	z, 00117$
	cp	a, #0x1f
	jr	z, 00117$
	cp	a, #0x33
	jr	z, 00115$
	sub	a, #0x4b
	jr	z, 00122$
	ret
;E:\supernova\msx\game\rooms2.c:157: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10: case 11: case 12: case 13: case 51:
00115$:
;E:\supernova\msx\game\rooms2.c:158: RL(217); break;
	ld	hl, #0x00d9
	jp	_RL
;E:\supernova\msx\game\rooms2.c:159: case 28: case 31:
00117$:
;E:\supernova\msx\game\rooms2.c:160: switch (N1) { case 73: RL(218); break; case 81: case 116: RS(80); break; }
	ld	a, (_N1)
	cp	a, #0x49
	jr	z, 00118$
	cp	a, #0x51
	jr	z, 00120$
	sub	a, #0x74
	jr	z, 00120$
	ret
00118$:
	ld	hl, #0x00da
	jp	_RL
00120$:
;E:\supernova\msx\game\rooms2.c:161: break;
	ld	hl, #0x0050
	jp	_RS
;E:\supernova\msx\game\rooms2.c:162: case 75: if (N1 == 73) MoveTo(34); break;
00122$:
	ld	a, (_N1)
	sub	a, #0x49
	ret	nz
;E:\supernova\msx\game\rooms2.c:164: break;
	ld	a, #0x22
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:166: case 24:    // Top of Ship (Jungle planet)
00126$:
;E:\supernova\msx\game\rooms2.c:167: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00127$
	cp	a, #0x0a
	jr	z, 00130$
	cp	a, #0x0b
	jr	z, 00130$
	cp	a, #0x18
	jr	z, 00140$
	cp	a, #0x1c
	jr	z, 00140$
	cp	a, #0x29
	jp	z, 00152$
	cp	a, #0x32
	jr	z, 00146$
	cp	a, #0x33
	jr	z, 00130$
	cp	a, #0x35
	jp	z, 00158$
	sub	a, #0x3b
	jp	z, 00164$
	ret
;E:\supernova\msx\game\rooms2.c:169: case 3: RL(235); MoveTo(25); break;
00127$:
	ld	hl, #0x00eb
	call	_RL
	ld	a, #0x19
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:170: case 10: case 11: case 51:
00130$:
;E:\supernova\msx\game\rooms2.c:171: if (N1 == Null || N1 == 62 || N1 == 64 || N1 == 71)
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00134$
	ld	a, (_N1)
	cp	a, #0x3e
	jr	z, 00134$
	cp	a, #0x40
	jr	z, 00134$
	sub	a, #0x47
	ret	nz
00134$:
;E:\supernova\msx\game\rooms2.c:173: if (En(23)) { Score(5, 74); RL(236); MoveTo(2); }
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00132$
	ld	de, #0x004a
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x00ec
	call	_RL
	ld	a, #0x02
	jp	_MoveTo
00132$:
;E:\supernova\msx\game\rooms2.c:174: else RL(99);
;E:\supernova\msx\game\rooms2.c:176: break;
	ld	hl, #0x0063
	jp	_RL
;E:\supernova\msx\game\rooms2.c:177: case 24: case 28: if (N1 == 56) { if (En(23)) RL(163); else RL(99); } break;
00140$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00142$
	ld	hl, #0x00a3
	jp	_RL
00142$:
	ld	hl, #0x0063
	jp	_RL
;E:\supernova\msx\game\rooms2.c:178: case 50:
00146$:
;E:\supernova\msx\game\rooms2.c:179: if (N1 == 78) { if (En(22)) { RL(94); Min(22); } else { RL(95); Add(22); } }
	ld	a, (_N1)
	sub	a, #0x4e
	ret	nz
	ld	a, #0x16
	call	_En
	or	a, a
	jr	z, 00148$
	ld	hl, #0x005e
	call	_RL
	ld	a, #0x16
	jp	_Min
00148$:
	ld	hl, #0x005f
	call	_RL
;E:\supernova\msx\game\rooms2.c:180: break;
	ld	a, #0x16
	jp	_Add
;E:\supernova\msx\game\rooms2.c:181: case 41:
00152$:
;E:\supernova\msx\game\rooms2.c:182: if (N1 == 56) { if (En(22)) { RL(96); Add(23); } else RL(97); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x16
	call	_En
	or	a, a
	jr	z, 00154$
	ld	hl, #0x0060
	call	_RL
	ld	a, #0x17
	jp	_Add
00154$:
;E:\supernova\msx\game\rooms2.c:183: break;
	ld	hl, #0x0061
	jp	_RL
;E:\supernova\msx\game\rooms2.c:184: case 53:
00158$:
;E:\supernova\msx\game\rooms2.c:185: if (N1 == 56) { if (En(23)) { RL(98); Min(23); } else Say("hatch", "closed"); }
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00160$
	ld	hl, #0x0062
	call	_RL
	ld	a, #0x17
	jp	_Min
00160$:
	ld	de, #___str_6
;E:\supernova\msx\game\rooms2.c:186: break;
	ld	hl, #___str_5
	jp	_Say
;E:\supernova\msx\game\rooms2.c:187: case 59: if (N1 == 49 || N1 == 122 || StrEq(VStr, "jump off")) MoveTo(25); break;
00164$:
	ld	a, (_N1)
	cp	a, #0x31
	jr	z, 00165$
	sub	a, #0x7a
	jr	z, 00165$
	ld	de, #___str_7
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	ret	z
00165$:
;E:\supernova\msx\game\rooms2.c:189: break;
	ld	a, #0x19
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:191: case 25:    // Sandy Clearing
00170$:
;E:\supernova\msx\game\rooms2.c:192: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00178$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00184$
	cp	a, #0x03
	jr	z, 00184$
	cp	a, #0x04
	jr	z, 00173$
	cp	a, #0x05
	jr	z, 00184$
	cp	a, #0x06
	jr	z, 00184$
	cp	a, #0x07
	jr	z, 00184$
	cp	a, #0x08
	jr	z, 00184$
	cp	a, #0x09
	jr	z, 00173$
	sub	a, #0x33
	ret	nz
;E:\supernova\msx\game\rooms2.c:194: case 4: case 9: case 51: if (N1 == Null || N1 == 62 || N1 == 71) { RL(234); MoveTo(24); } break;
00173$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00174$
	ld	a, (_N1)
	cp	a, #0x3e
	jr	z, 00174$
	sub	a, #0x47
	ret	nz
00174$:
	ld	hl, #0x00ea
	call	_RL
	ld	a, #0x18
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:195: case 1: MoveTo(26); Score(5, 75); break;
00178$:
	ld	a, #0x1a
	call	_MoveTo
	ld	de, #0x004b
	ld	hl, #0x0005
	jp	_Score
;E:\supernova\msx\game\rooms2.c:196: case 2: case 3: case 5: case 6: case 7: case 8: RL(200); break;
00184$:
;E:\supernova\msx\game\rooms2.c:198: break;
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:200: case 26:    // Winding Path 1
00186$:
;E:\supernova\msx\game\rooms2.c:201: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jp	z, 00200$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00187$
	cp	a, #0x03
	jr	z, 00200$
	cp	a, #0x04
	jr	z, 00200$
	cp	a, #0x05
	jr	z, 00188$
	cp	a, #0x06
	jr	z, 00200$
	cp	a, #0x07
	jr	z, 00200$
	cp	a, #0x08
	jr	z, 00200$
	cp	a, #0x09
	jr	z, 00202$
	cp	a, #0x1c
	jr	z, 00205$
	cp	a, #0x23
	jr	z, 00209$
	cp	a, #0x33
	jr	z, 00202$
	cp	a, #0x3b
	jr	z, 00189$
	cp	a, #0x3e
	jr	z, 00209$
	cp	a, #0x4b
	jr	z, 00213$
	cp	a, #0x4c
	jr	z, 00213$
	cp	a, #0x53
	jr	z, 00216$
	sub	a, #0x54
	jp	z, 00219$
	ret
;E:\supernova\msx\game\rooms2.c:203: case 2: MoveTo(25); break;
00187$:
	ld	a, #0x19
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:204: case 5: RS(65); DEAD(); break;
00188$:
	ld	hl, #0x0041
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:205: case 59:
00189$:
;E:\supernova\msx\game\rooms2.c:206: if (N1 == 66)
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
;E:\supernova\msx\game\rooms2.c:208: if (StrEq(VStr, "jump in")) { RL(288); DEAD(); }
	ld	de, #___str_8
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00191$
	ld	hl, #0x0120
	call	_RL
	jp	_DEAD
00191$:
;E:\supernova\msx\game\rooms2.c:209: else { RS(66); MoveTo(27); Score(25, 76); }
	ld	hl, #0x0042
	call	_RS
	ld	a, #0x1b
	call	_MoveTo
	ld	de, #0x004c
;E:\supernova\msx\game\rooms2.c:211: break;
	ld	hl, #0x0019
	jp	_Score
;E:\supernova\msx\game\rooms2.c:212: case 1: case 3: case 4: case 6: case 7: case 8: RL(200); break;
00200$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:213: case 9: case 51: if (N1 == 112) RL(204); break;
00202$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:214: case 28: if (N1 == 66) RS(85); break;
00205$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x0055
	jp	_RS
;E:\supernova\msx\game\rooms2.c:215: case 35: case 62: if (N1 == 66) { RL(288); DEAD(); } break;
00209$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x0120
	call	_RL
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:216: case 75: case 76: if (N1 == 66) RL(285); break;
00213$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x011d
	jp	_RL
;E:\supernova\msx\game\rooms2.c:217: case 83: if (N1 == 66) RL(286); break;
00216$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x011e
	jp	_RL
;E:\supernova\msx\game\rooms2.c:218: case 84: if (N1 == 66) { RL(287); DEAD(); } break;
00219$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x011f
	call	_RL
;E:\supernova\msx\game\rooms2.c:220: break;
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:222: case 27:    // Winding Path 2
00223$:
;E:\supernova\msx\game\rooms2.c:223: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00232$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00232$
	cp	a, #0x03
	jr	z, 00232$
	cp	a, #0x04
	jr	z, 00232$
	cp	a, #0x05
	jr	z, 00232$
	cp	a, #0x06
	jr	z, 00224$
	cp	a, #0x07
	jr	z, 00232$
	cp	a, #0x08
	jr	z, 00226$
	cp	a, #0x09
	jr	z, 00234$
	cp	a, #0x0b
	jr	z, 00226$
	cp	a, #0x1c
	jr	z, 00243$
	cp	a, #0x23
	jr	z, 00247$
	cp	a, #0x33
	jr	z, 00234$
	cp	a, #0x3b
	jr	z, 00237$
	cp	a, #0x3e
	jr	z, 00247$
	cp	a, #0x4b
	jr	z, 00251$
	cp	a, #0x4c
	jr	z, 00251$
	cp	a, #0x53
	jr	z, 00254$
	sub	a, #0x54
	jr	z, 00257$
	ret
;E:\supernova\msx\game\rooms2.c:225: case 6: MoveTo(28); break;
00224$:
	ld	a, #0x1c
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:226: case 8: case 11: RS(65); DEAD(); break;
00226$:
	ld	hl, #0x0041
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:227: case 1: case 2: case 3: case 4: case 5: case 7: RL(200); break;
00232$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:228: case 9: case 51: if (N1 == 112) RL(204); break;
00234$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:229: case 59:
00237$:
;E:\supernova\msx\game\rooms2.c:230: if (N1 == 66)
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
;E:\supernova\msx\game\rooms2.c:232: if (StrEq(VStr, "jump in")) { RL(288); DEAD(); }
	ld	de, #___str_8
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00239$
	ld	hl, #0x0120
	call	_RL
	jp	_DEAD
00239$:
;E:\supernova\msx\game\rooms2.c:233: else { RS(66); MoveTo(26); }
	ld	hl, #0x0042
	call	_RS
;E:\supernova\msx\game\rooms2.c:235: break;
	ld	a, #0x1a
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:236: case 28: if (N1 == 66) RS(85); break;
00243$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x0055
	jp	_RS
;E:\supernova\msx\game\rooms2.c:237: case 35: case 62: if (N1 == 66) { RL(288); DEAD(); } break;
00247$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x0120
	call	_RL
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:238: case 75: case 76: if (N1 == 66) RL(285); break;
00251$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x011d
	jp	_RL
;E:\supernova\msx\game\rooms2.c:239: case 83: if (N1 == 66) RL(286); break;
00254$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x011e
	jp	_RL
;E:\supernova\msx\game\rooms2.c:240: case 84: if (N1 == 66) { RL(287); DEAD(); } break;
00257$:
	ld	a, (_N1)
	sub	a, #0x42
	ret	nz
	ld	hl, #0x011f
	call	_RL
;E:\supernova\msx\game\rooms2.c:242: break;
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:244: case 28:    // Winding Path 3
00261$:
;E:\supernova\msx\game\rooms2.c:245: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00269$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00269$
	cp	a, #0x03
	jr	z, 00269$
	cp	a, #0x04
	jr	z, 00269$
	cp	a, #0x05
	jr	z, 00269$
	cp	a, #0x06
	jr	z, 00263$
	cp	a, #0x07
	jr	z, 00262$
	cp	a, #0x08
	jr	z, 00264$
	cp	a, #0x09
	jr	z, 00271$
	cp	a, #0x18
	jr	z, 00277$
	cp	a, #0x1c
	jr	z, 00274$
	sub	a, #0x33
	jr	z, 00271$
	ret
;E:\supernova\msx\game\rooms2.c:247: case 7: MoveTo(27); break;
00262$:
	ld	a, #0x1b
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:248: case 6: MoveTo(29); break;
00263$:
	ld	a, #0x1d
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:249: case 8: RS(67); DEAD(); break;
00264$:
	ld	hl, #0x0043
	call	_RS
	jp	_DEAD
;E:\supernova\msx\game\rooms2.c:250: case 1: case 2: case 3: case 4: case 5: RL(200); break;
00269$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:251: case 9: case 51: if (N1 == 112) RL(204); break;
00271$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:252: case 28: if (N1 == 112) RS(86); break;
00274$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
	ld	hl, #0x0056
	jp	_RS
;E:\supernova\msx\game\rooms2.c:253: case 24: if (N1 == 112) RL(553); break;
00277$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
;E:\supernova\msx\game\rooms2.c:255: break;
	ld	hl, #0x0229
	jp	_RL
;E:\supernova\msx\game\rooms2.c:257: case 29:    // Winding Path 4
00281$:
;E:\supernova\msx\game\rooms2.c:258: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jp	z, 00300$
	ld	a, (_Vb)
	cp	a, #0x02
	jp	z, 00300$
	cp	a, #0x03
	jp	z, 00300$
	cp	a, #0x04
	jp	z, 00300$
	cp	a, #0x05
	jr	z, 00283$
	cp	a, #0x06
	jr	z, 00292$
	cp	a, #0x07
	jr	z, 00282$
	cp	a, #0x08
	jr	z, 00293$
	cp	a, #0x09
	jr	z, 00288$
	cp	a, #0x1c
	jp	z, 00301$
	cp	a, #0x33
	jr	z, 00288$
	sub	a, #0x3b
	jp	z, 00308$
	ret
;E:\supernova\msx\game\rooms2.c:260: case 7: MoveTo(28); break;
00282$:
	ld	a, #0x1c
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:261: case 5:
00283$:
;E:\supernova\msx\game\rooms2.c:262: if (En(29)) MoveTo(32);
	ld	a, #0x1d
	call	_En
	or	a, a
	jr	z, 00285$
	ld	a, #0x20
	jp	_MoveTo
00285$:
;E:\supernova\msx\game\rooms2.c:263: else { Col(10, 7); RS(72); Col(11, 7); T[12] = 146; Add(29); MoveTo(32); }
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x0048
	call	_RS
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	ld	hl, #0x0092
	ld	((_T + 24)), hl
	ld	a, #0x1d
	call	_Add
;E:\supernova\msx\game\rooms2.c:264: break;
	ld	a, #0x20
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:265: case 9: case 51: if (N1 == Null || N1 == 112) { RL(201); MoveTo(30); } break;
00288$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00289$
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
00289$:
	ld	hl, #0x00c9
	call	_RL
	ld	a, #0x1e
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:266: case 6: RS(69); Prm = 31; T[11] = 4; break;
00292$:
	ld	hl, #0x0045
	call	_RS
	ld	hl, #_Prm
	ld	(hl), #0x1f
	ld	hl, #0x0004
	ld	((_T + 22)), hl
	ret
;E:\supernova\msx\game\rooms2.c:267: case 8: if (En(35) || En(130)) { RC = 1; MoveTo(59); Score(20, 77); } break;
00293$:
	ld	a, #0x23
	call	_En
	or	a, a
	jr	nz, 00294$
	ld	a, #0x82
	call	_En
	or	a, a
	ret	z
00294$:
	ld	hl, #0x0001
	ld	(_RC), hl
	ld	a, #0x3b
	call	_MoveTo
	ld	de, #0x004d
	ld	hl, #0x0014
	jp	_Score
;E:\supernova\msx\game\rooms2.c:268: case 1: case 2: case 3: case 4: RL(200); break;
00300$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:269: case 28:
00301$:
;E:\supernova\msx\game\rooms2.c:270: switch (N1)
	ld	a, (_N1)
	cp	a, #0x70
	jr	z, 00302$
	cp	a, #0x71
	jr	z, 00304$
	sub	a, #0x78
	jr	z, 00303$
	ret
;E:\supernova\msx\game\rooms2.c:272: case 112: RL(238); break;
00302$:
	ld	hl, #0x00ee
	jp	_RL
;E:\supernova\msx\game\rooms2.c:273: case 120: RL(544); break;
00303$:
	ld	hl, #0x0220
	jp	_RL
;E:\supernova\msx\game\rooms2.c:274: case 113: if (Md == 1) { RL(314); Add(130); } break;
00304$:
	ld	a, (_Md)
	dec	a
	ret	nz
	ld	hl, #0x013a
	call	_RL
;E:\supernova\msx\game\rooms2.c:276: break;
	ld	a, #0x82
	jp	_Add
;E:\supernova\msx\game\rooms2.c:277: case 59: if (N1 == 120) { RL(541); Prm = 31; T[11] = 4; } break;
00308$:
	ld	a, (_N1)
	sub	a, #0x78
	ret	nz
	ld	hl, #0x021d
	call	_RL
	ld	hl, #_Prm
	ld	(hl), #0x1f
	ld	hl, #0x0004
	ld	((_T + 22)), hl
;E:\supernova\msx\game\rooms2.c:280: }
;E:\supernova\msx\game\rooms2.c:281: }
	ret
___str_5:
	.ascii "hatch"
	.db 0x00
___str_6:
	.ascii "closed"
	.db 0x00
___str_7:
	.ascii "jump off"
	.db 0x00
___str_8:
	.ascii "jump in"
	.db 0x00
;E:\supernova\msx\game\rooms2.c:283: void Room7(void)    // Jungle Planet
;	---------------------------------
; Function Room7
; ---------------------------------
_Room7::
;E:\supernova\msx\game\rooms2.c:285: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x1e
	jr	z, 00101$
	cp	a, #0x1f
	jp	z, 00130$
	cp	a, #0x20
	jp	z, 00156$
	cp	a, #0x21
	jp	z, 00173$
	sub	a, #0x22
	jp	z, 00190$
	ret
;E:\supernova\msx\game\rooms2.c:287: case 30:    // Top of Tree
00101$:
;E:\supernova\msx\game\rooms2.c:288: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00115$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00115$
	cp	a, #0x03
	jr	z, 00115$
	cp	a, #0x04
	jr	z, 00115$
	cp	a, #0x05
	jr	z, 00115$
	cp	a, #0x06
	jr	z, 00115$
	cp	a, #0x07
	jr	z, 00115$
	cp	a, #0x08
	jr	z, 00115$
	cp	a, #0x09
	jr	z, 00102$
	cp	a, #0x0a
	jr	z, 00104$
	cp	a, #0x11
	jr	z, 00128$
	cp	a, #0x12
	jr	z, 00128$
	cp	a, #0x14
	jr	z, 00124$
	cp	a, #0x15
	jr	z, 00124$
	cp	a, #0x16
	jr	z, 00124$
	cp	a, #0x17
	jr	z, 00124$
	cp	a, #0x18
	jr	z, 00124$
	cp	a, #0x19
	jr	z, 00124$
	cp	a, #0x1a
	jr	z, 00124$
	cp	a, #0x1b
	jr	z, 00124$
	cp	a, #0x1c
	jr	z, 00124$
	sub	a, #0x33
	jr	z, 00104$
	ret
;E:\supernova\msx\game\rooms2.c:290: case 9: RL(202); break;
00102$:
	ld	hl, #0x00ca
	jp	_RL
;E:\supernova\msx\game\rooms2.c:291: case 10: case 51: if (N1 == Null || N1 == 112) { RL(203); MoveTo(29); } break;
00104$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00105$
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
00105$:
	ld	hl, #0x00cb
	call	_RL
	ld	a, #0x1d
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:292: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: RL(200); break;
00115$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:293: case 20: case 21: case 22: case 23: case 24: case 25: case 26: case 27: case 28: if (N1 == 68) RS(79); break;
00124$:
	ld	a, (_N1)
	sub	a, #0x44
	ret	nz
	ld	hl, #0x004f
	jp	_RS
;E:\supernova\msx\game\rooms2.c:294: case 18: case 17: RL(603); break;
00128$:
;E:\supernova\msx\game\rooms2.c:296: break;
	ld	hl, #0x025b
	jp	_RL
;E:\supernova\msx\game\rooms2.c:298: case 31:    // Quicksand Pit
00130$:
;E:\supernova\msx\game\rooms2.c:299: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00138$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00138$
	cp	a, #0x03
	jr	z, 00138$
	cp	a, #0x04
	jr	z, 00138$
	cp	a, #0x05
	jr	z, 00138$
	cp	a, #0x06
	jr	z, 00138$
	cp	a, #0x07
	jr	z, 00138$
	cp	a, #0x08
	jr	z, 00138$
	cp	a, #0x09
	jr	z, 00140$
	cp	a, #0x1c
	jr	z, 00151$
	cp	a, #0x27
	jr	z, 00145$
	cp	a, #0x2a
	jr	z, 00145$
	cp	a, #0x33
	jr	z, 00140$
	sub	a, #0x4c
	jr	z, 00145$
	ret
;E:\supernova\msx\game\rooms2.c:301: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: RL(206); break;
00138$:
	ld	hl, #0x00ce
	jp	_RL
;E:\supernova\msx\game\rooms2.c:302: case 9: case 51: if (N1 == 112) RL(204); break;
00140$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:303: case 39: case 42: case 76:
00145$:
;E:\supernova\msx\game\rooms2.c:304: if (N1 == 47)
	ld	a, (_N1)
	sub	a, #0x2f
	ret	nz
;E:\supernova\msx\game\rooms2.c:306: if (En(78)) RL(549);
	ld	a, #0x4e
	call	_En
	or	a, a
	jr	z, 00147$
	ld	hl, #0x0225
	jp	_RL
00147$:
;E:\supernova\msx\game\rooms2.c:307: else { T[11] = 0; RS(71); Prm = 29; Score(25, 78); }
	ld	hl, #0x0000
	ld	((_T + 22)), hl
	ld	l, #0x47
	call	_RS
	ld	hl, #_Prm
	ld	(hl), #0x1d
	ld	de, #0x004e
;E:\supernova\msx\game\rooms2.c:309: break;
	ld	hl, #0x0019
	jp	_Score
;E:\supernova\msx\game\rooms2.c:310: case 28: switch (N1) { case 47: RL(239); break; case 120: RL(240); break; } break;
00151$:
	ld	a, (_N1)
	cp	a, #0x2f
	jr	z, 00152$
	sub	a, #0x78
	jr	z, 00153$
	ret
00152$:
	ld	hl, #0x00ef
	jp	_RL
00153$:
;E:\supernova\msx\game\rooms2.c:312: break;
	ld	hl, #0x00f0
	jp	_RL
;E:\supernova\msx\game\rooms2.c:314: case 32:    // Winding Path 5
00156$:
;E:\supernova\msx\game\rooms2.c:315: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00157$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00167$
	cp	a, #0x03
	jr	z, 00167$
	cp	a, #0x04
	jr	z, 00167$
	cp	a, #0x05
	jr	z, 00167$
	cp	a, #0x06
	jr	z, 00167$
	cp	a, #0x07
	jr	z, 00167$
	cp	a, #0x08
	jr	z, 00158$
	cp	a, #0x09
	jr	z, 00169$
	sub	a, #0x33
	jr	z, 00169$
	ret
;E:\supernova\msx\game\rooms2.c:317: case 1: MoveTo(33); break;
00157$:
	ld	a, #0x21
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:318: case 8:
00158$:
;E:\supernova\msx\game\rooms2.c:319: MoveTo(29);
	ld	a, #0x1d
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:320: if (En(35) && !En(40)) { RL(314); Add(40); }
	ld	a, #0x23
	call	_En
	or	a, a
	ret	z
	ld	a, #0x28
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x013a
	call	_RL
;E:\supernova\msx\game\rooms2.c:321: break;
	ld	a, #0x28
	jp	_Add
;E:\supernova\msx\game\rooms2.c:322: case 2: case 3: case 4: case 5: case 6: case 7: RL(200); break;
00167$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:323: case 9: case 51: if (N1 == 112) RL(204); break;
00169$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
;E:\supernova\msx\game\rooms2.c:325: break;
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:327: case 33:    // Winding Path 6
00173$:
;E:\supernova\msx\game\rooms2.c:328: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00184$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00174$
	cp	a, #0x03
	jr	z, 00184$
	cp	a, #0x04
	jr	z, 00184$
	cp	a, #0x05
	jr	z, 00184$
	cp	a, #0x06
	jr	z, 00175$
	cp	a, #0x07
	jr	z, 00184$
	cp	a, #0x08
	jr	z, 00184$
	cp	a, #0x09
	jr	z, 00186$
	sub	a, #0x33
	jr	z, 00186$
	ret
;E:\supernova\msx\game\rooms2.c:330: case 2: MoveTo(32); break;
00174$:
	ld	a, #0x20
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:331: case 6:
00175$:
;E:\supernova\msx\game\rooms2.c:332: if (!En(28)) { RS(68); Add(28); MoveTo(34); } else MoveTo(34);
	ld	a, #0x1c
	call	_En
	or	a, a
	jr	nz, 00177$
	ld	hl, #0x0044
	call	_RS
	ld	a, #0x1c
	call	_Add
	ld	a, #0x22
	jp	_MoveTo
00177$:
;E:\supernova\msx\game\rooms2.c:333: break;
	ld	a, #0x22
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:334: case 1: case 3: case 4: case 5: case 7: case 8: RL(200); break;
00184$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:335: case 9: case 51: if (N1 == 112) RL(204); break;
00186$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
;E:\supernova\msx\game\rooms2.c:337: break;
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:339: case 34:    // Front of Pyramid
00190$:
;E:\supernova\msx\game\rooms2.c:340: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jp	z, 00216$
	ld	a, (_Vb)
	cp	a, #0x02
	jp	z, 00237$
	cp	a, #0x03
	jp	z, 00237$
	cp	a, #0x04
	jp	z, 00237$
	cp	a, #0x05
	jp	z, 00237$
	cp	a, #0x06
	jp	z, 00237$
	cp	a, #0x07
	jr	z, 00191$
	cp	a, #0x08
	jp	z, 00237$
	cp	a, #0x09
	jp	z, 00239$
	cp	a, #0x0b
	jp	z, 00216$
	cp	a, #0x18
	jp	z, 00253$
	cp	a, #0x1c
	jp	z, 00253$
	cp	a, #0x1f
	jp	z, 00247$
	cp	a, #0x27
	jp	z, 00220$
	cp	a, #0x29
	jr	z, 00198$
	cp	a, #0x2a
	jr	z, 00198$
	cp	a, #0x2b
	jr	z, 00198$
	cp	a, #0x2c
	jr	z, 00198$
	cp	a, #0x33
	jp	z, 00239$
	cp	a, #0x35
	jr	z, 00207$
	cp	a, #0x36
	jr	z, 00198$
	cp	a, #0x4b
	jr	z, 00198$
	cp	a, #0x58
	jr	z, 00198$
	sub	a, #0x5c
	jp	z, 00242$
	ret
;E:\supernova\msx\game\rooms2.c:342: case 7: MoveTo(33); break;
00191$:
	ld	a, #0x21
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:343: case 41: case 42: case 43: case 44: case 54: case 75: case 88:
00198$:
;E:\supernova\msx\game\rooms2.c:344: if (N1 == 56) RL(220);
	ld	a, (_N1)
	sub	a, #0x38
	jr	nz, 00205$
	ld	hl, #0x00dc
	jp	_RL
00205$:
;E:\supernova\msx\game\rooms2.c:345: else if (N1 == 126)
	ld	a, (_N1)
	sub	a, #0x7e
	ret	nz
;E:\supernova\msx\game\rooms2.c:347: if (HingeCon != Null)
	ld	a, (_HingeCon+0)
	or	a, a
	jr	z, 00200$
;E:\supernova\msx\game\rooms2.c:349: Wr("The hinged mouth opens, revealing a "); WrFN(HingeCon); Wr(" inside."); Wln();
	ld	hl, #___str_9
	call	_Wr
	ld	a, (_HingeCon)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\rooms2.c:350: Add(31); SetR(HingeCon, 34); Score(25, 79);
	ld	a, #0x1f
	call	_Add
	ld	l, #0x22
	ld	a, (_HingeCon)
	call	_SetR
	ld	de, #0x004f
	ld	hl, #0x0019
	jp	_Score
00200$:
;E:\supernova\msx\game\rooms2.c:352: else { RL(226); Add(31); }
	ld	hl, #0x00e2
	call	_RL
;E:\supernova\msx\game\rooms2.c:354: break;
	ld	a, #0x1f
	jp	_Add
;E:\supernova\msx\game\rooms2.c:355: case 53:
00207$:
;E:\supernova\msx\game\rooms2.c:356: if (N1 == 56) RL(220);
	ld	a, (_N1)
	sub	a, #0x38
	jr	nz, 00213$
	ld	hl, #0x00dc
	jp	_RL
00213$:
;E:\supernova\msx\game\rooms2.c:357: else if (N1 == 126)
	ld	a, (_N1)
	sub	a, #0x7e
	ret	nz
;E:\supernova\msx\game\rooms2.c:359: RL(227);
	ld	hl, #0x00e3
	call	_RL
;E:\supernova\msx\game\rooms2.c:360: if (HingeCon != Null) SetR(HingeCon, Null);
	ld	a, (_HingeCon+0)
	or	a, a
	jr	z, 00209$
	ld	l, #0x00
	ld	a, (_HingeCon)
	call	_SetR
00209$:
;E:\supernova\msx\game\rooms2.c:361: Min(31);
;E:\supernova\msx\game\rooms2.c:363: break;
	ld	a, #0x1f
	jp	_Min
;E:\supernova\msx\game\rooms2.c:364: case 1: case 11:
00216$:
;E:\supernova\msx\game\rooms2.c:365: if (En(30)) { Score(25, 80); MoveTo(35); }
	ld	a, #0x1e
	call	_En
	or	a, a
	jr	z, 00218$
	ld	de, #0x0050
	ld	hl, #0x0019
	call	_Score
	ld	a, #0x23
	jp	_MoveTo
00218$:
;E:\supernova\msx\game\rooms2.c:366: else RL(219);
;E:\supernova\msx\game\rooms2.c:367: break;
	ld	hl, #0x00db
	jp	_RL
;E:\supernova\msx\game\rooms2.c:368: case 39:
00220$:
;E:\supernova\msx\game\rooms2.c:369: if (IN133(NounSet, PyraCon) || (SET_IN(NounSet, 30) && PyraCon == 9)) { RL(225); Min(30); SFlag = 0; }
	ld	a, (_PyraCon+0)
	sub	a, #0x01
	jr	c, 00231$
	ld	a, #0x85
	ld	hl, #_PyraCon
	sub	a, (hl)
	jr	c, 00231$
	ld	de, #_NounSet+0
	ld	a, (_PyraCon+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
01393$:
	sra	h
	rr	l
	djnz	01393$
	add	hl, de
	ld	c, (hl)
	ld	a, (_PyraCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	01395$
01394$:
	srl	a
01395$:
	djnz	01394$
	rrca
	jr	c, 00225$
00231$:
	ld	de, #_NounSet+0
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	jr	nc, 00226$
	ld	a, (_PyraCon)
	sub	a, #0x09
	jr	nz, 00226$
00225$:
	ld	hl, #0x00e1
	call	_RL
	ld	a, #0x1e
	call	_Min
	xor	a, a
	ld	(#_SFlag), a
	ret
00226$:
;E:\supernova\msx\game\rooms2.c:370: else if (IN133(NounSet, HingeCon)) { RL(228); SFlag = 0; }
	ld	a, (_HingeCon+0)
	sub	a, #0x01
	ret	c
	ld	a, #0x85
	ld	hl, #_HingeCon
	sub	a, (hl)
	ret	c
	ld	a, (_HingeCon+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
01400$:
	sra	h
	rr	l
	djnz	01400$
	add	hl, de
	ld	c, (hl)
	ld	a, (_HingeCon+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	01402$
01401$:
	srl	a
01402$:
	djnz	01401$
	rrca
	ret	nc
	ld	hl, #0x00e4
	call	_RL
	xor	a, a
	ld	(#_SFlag), a
;E:\supernova\msx\game\rooms2.c:371: break;
	ret
;E:\supernova\msx\game\rooms2.c:372: case 2: case 3: case 4: case 5: case 6: case 8: RL(200); break;
00237$:
	ld	hl, #0x00c8
	jp	_RL
;E:\supernova\msx\game\rooms2.c:373: case 9: case 51: if (N1 == 112) RL(204); break;
00239$:
	ld	a, (_N1)
	sub	a, #0x70
	ret	nz
	ld	hl, #0x00cc
	jp	_RL
;E:\supernova\msx\game\rooms2.c:374: case 92: if (N1 == Null || N1 == 49 || N1 == 122) { RL(216); MoveTo(23); } break;
00242$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00243$
	ld	a, (_N1)
	cp	a, #0x31
	jr	z, 00243$
	sub	a, #0x7a
	ret	nz
00243$:
	ld	hl, #0x00d8
	call	_RL
	ld	a, #0x17
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:375: case 31: if (N1 == 81 || N1 == 89 || N1 == 119) { RB(8, 7); Pause(); } break;
00247$:
	ld	a, (_N1)
	cp	a, #0x51
	jr	z, 00248$
	cp	a, #0x59
	jr	z, 00248$
	sub	a, #0x77
	ret	nz
00248$:
	ld	l, #0x07
	ld	a, #0x08
	call	_RB
	jp	_Pause
;E:\supernova\msx\game\rooms2.c:376: case 28: case 24:
00253$:
;E:\supernova\msx\game\rooms2.c:377: switch (N1)
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00262$
	cp	a, #0x40
	jr	z, 00258$
	cp	a, #0x44
	jr	z, 00254$
	cp	a, #0x51
	jr	z, 00257$
	cp	a, #0x59
	jr	z, 00255$
	cp	a, #0x77
	jr	z, 00257$
	sub	a, #0x7e
	jr	z, 00266$
	ret
;E:\supernova\msx\game\rooms2.c:379: case 68: RS(87); break;
00254$:
	ld	hl, #0x0057
	jp	_RS
;E:\supernova\msx\game\rooms2.c:380: case 89: RS(88); break;
00255$:
	ld	hl, #0x0058
	jp	_RS
;E:\supernova\msx\game\rooms2.c:381: case 81: case 119: RB(8, 7); Pause(); break;
00257$:
	ld	l, #0x07
	ld	a, #0x08
	call	_RB
	jp	_Pause
;E:\supernova\msx\game\rooms2.c:382: case 64:
00258$:
;E:\supernova\msx\game\rooms2.c:383: if (PyraCon == Null) RL(241);
	ld	a, (_PyraCon+0)
	or	a, a
	jr	nz, 00260$
	ld	hl, #0x00f1
	jp	_RL
00260$:
;E:\supernova\msx\game\rooms2.c:384: else { Wr("The small slot contains a "); WrFN(PyraCon); Wr("."); Wln(); }
	ld	hl, #___str_11
	call	_Wr
	ld	a, (_PyraCon)
	call	_WrFN
	ld	hl, #___str_12
	call	_Wr
;E:\supernova\msx\game\rooms2.c:385: break;
	jp	_Wln
;E:\supernova\msx\game\rooms2.c:386: case 56: if (En(30)) RL(244); else RL(245); break;
00262$:
	ld	a, #0x1e
	call	_En
	or	a, a
	jr	z, 00264$
	ld	hl, #0x00f4
	jp	_RL
00264$:
	ld	hl, #0x00f5
	jp	_RL
;E:\supernova\msx\game\rooms2.c:387: case 126:
00266$:
;E:\supernova\msx\game\rooms2.c:388: if (En(31))
	ld	a, #0x1f
	call	_En
	or	a, a
	jr	z, 00271$
;E:\supernova\msx\game\rooms2.c:390: if (HingeCon == Null) RL(242);
	ld	a, (_HingeCon+0)
	or	a, a
	jr	nz, 00268$
	ld	hl, #0x00f2
	jp	_RL
00268$:
;E:\supernova\msx\game\rooms2.c:391: else { Wr("The open mouth contains a "); WrFN(HingeCon); Wr("."); Wln(); }
	ld	hl, #___str_13
	call	_Wr
	ld	a, (_HingeCon)
	call	_WrFN
	ld	hl, #___str_12
	call	_Wr
	jp	_Wln
00271$:
;E:\supernova\msx\game\rooms2.c:393: else RL(243);
	ld	hl, #0x00f3
;E:\supernova\msx\game\rooms2.c:399: }
;E:\supernova\msx\game\rooms2.c:400: }
	jp	_RL
___str_9:
	.ascii "The hinged mouth opens, revealing a "
	.db 0x00
___str_10:
	.ascii " inside."
	.db 0x00
___str_11:
	.ascii "The small slot contains a "
	.db 0x00
___str_12:
	.ascii "."
	.db 0x00
___str_13:
	.ascii "The open mouth contains a "
	.db 0x00
;E:\supernova\msx\game\rooms2.c:402: void Room8(void)    // Inside Pyramid (Top Level)
;	---------------------------------
; Function Room8
; ---------------------------------
_Room8::
;E:\supernova\msx\game\rooms2.c:404: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x23
	jr	z, 00101$
	cp	a, #0x24
	jr	z, 00120$
	cp	a, #0x25
	jp	z, 00130$
	sub	a, #0x26
	jp	z, 00144$
	ret
;E:\supernova\msx\game\rooms2.c:406: case 35:    // Vestibule
00101$:
;E:\supernova\msx\game\rooms2.c:407: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x0a
	jr	z, 00106$
	cp	a, #0x0b
	jr	z, 00106$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x1c
	jr	z, 00113$
	sub	a, #0x33
	jr	z, 00106$
	ret
;E:\supernova\msx\game\rooms2.c:409: case 2: case 13: MoveTo(34); break;
00103$:
	ld	a, #0x22
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:410: case 10: case 11: case 51:
00106$:
;E:\supernova\msx\game\rooms2.c:411: if (N1 == Null || N1 == 71)
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00110$
	ld	a, (_N1)
	sub	a, #0x47
	ret	nz
00110$:
;E:\supernova\msx\game\rooms2.c:413: if (En(32)) MoveTo(36);
	ld	a, #0x20
	call	_En
	or	a, a
	jr	z, 00108$
	ld	a, #0x24
	jp	_MoveTo
00108$:
;E:\supernova\msx\game\rooms2.c:414: else { RS(84); Add(32); MoveTo(36); }
	ld	hl, #0x0054
	call	_RS
	ld	a, #0x20
	call	_Add
;E:\supernova\msx\game\rooms2.c:416: break;
	ld	a, #0x24
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:417: case 28: if (N1 == 56) { if (En(30)) RL(244); else RL(245); } break;
00113$:
	ld	a, (_N1)
	sub	a, #0x38
	ret	nz
	ld	a, #0x1e
	call	_En
	or	a, a
	jr	z, 00115$
	ld	hl, #0x00f4
	jp	_RL
00115$:
;E:\supernova\msx\game\rooms2.c:419: break;
	ld	hl, #0x00f5
	jp	_RL
;E:\supernova\msx\game\rooms2.c:421: case 36:    // Descending Stairs
00120$:
;E:\supernova\msx\game\rooms2.c:422: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x09
	jr	z, 00128$
	cp	a, #0x0a
	jr	z, 00123$
	cp	a, #0x0b
	jr	z, 00123$
	cp	a, #0x0d
	jr	z, 00128$
	sub	a, #0x33
	ret	nz
;E:\supernova\msx\game\rooms2.c:424: case 10: case 11: case 51: if (N1 == Null || N1 == 71) MoveTo(37); break;
00123$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00124$
	ld	a, (_N1)
	sub	a, #0x47
	ret	nz
00124$:
	ld	a, #0x25
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:425: case 9: case 13: MoveTo(35); break;
00128$:
;E:\supernova\msx\game\rooms2.c:427: break;
	ld	a, #0x23
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:429: case 37:    // Halcyon Hall
00130$:
;E:\supernova\msx\game\rooms2.c:430: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00131$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00135$
	cp	a, #0x09
	jr	z, 00142$
	cp	a, #0x0a
	jr	z, 00137$
	cp	a, #0x0d
	jr	z, 00142$
	sub	a, #0x33
	jr	z, 00137$
	ret
;E:\supernova\msx\game\rooms2.c:432: case 1: if (T[16] > 1) { RL(278); DEAD(); } else MoveTo(39); break;
00131$:
	ld	hl, (#(_T + 32) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00630$
	xor	a, #0x80
00630$:
	jp	p, 00133$
	ld	hl, #0x0116
	call	_RL
	jp	_DEAD
00133$:
	ld	a, #0x27
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:433: case 3: MoveTo(38); break;
00135$:
	ld	a, #0x26
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:434: case 10: case 51: if (N1 == Null || N1 == 71) MoveTo(42); break;
00137$:
	ld	a, (_N1+0)
	or	a, a
	jr	z, 00138$
	ld	a, (_N1)
	sub	a, #0x47
	ret	nz
00138$:
	ld	a, #0x2a
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:435: case 9: case 13: MoveTo(36); break;
00142$:
;E:\supernova\msx\game\rooms2.c:437: break;
	ld	a, #0x24
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:439: case 38:    // Departure Room
00144$:
;E:\supernova\msx\game\rooms2.c:440: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00146$
	cp	a, #0x0d
	jr	z, 00146$
	cp	a, #0x1a
	jr	z, 00159$
	cp	a, #0x1c
	jr	z, 00147$
	cp	a, #0x27
	jp	z, 00174$
	cp	a, #0x2a
	jr	z, 00164$
	cp	a, #0x2c
	jr	z, 00164$
	cp	a, #0x2f
	jp	z, 00173$
	cp	a, #0x4b
	jr	z, 00168$
	cp	a, #0x53
	jr	z, 00173$
	sub	a, #0x54
	jr	z, 00173$
	ret
;E:\supernova\msx\game\rooms2.c:442: case 4: case 13: MoveTo(37); break;
00146$:
	ld	a, #0x25
	jp	_MoveTo
;E:\supernova\msx\game\rooms2.c:443: case 28:
00147$:
;E:\supernova\msx\game\rooms2.c:444: switch (N1)
	ld	a, (_N1)
	cp	a, #0x0a
	jr	z, 00152$
	cp	a, #0x1e
	jr	z, 00155$
	sub	a, #0x49
	ret	nz
;E:\supernova\msx\game\rooms2.c:446: case 73: if (LOC_HAS(38, 10)) { RL(253); RL(252); } else RL(253); break;
	ld	a, (#(_g_Loc + 647) + 0)
	bit	1, a
	jr	z, 00150$
	ld	hl, #0x00fd
	call	_RL
	ld	hl, #0x00fc
	jp	_RL
00150$:
	ld	hl, #0x00fd
	jp	_RL
;E:\supernova\msx\game\rooms2.c:447: case 10: if (LOC_HAS(38, 10)) RL(254); break;
00152$:
	ld	a, (#(_g_Loc + 647) + 0)
	bit	1, a
	ret	z
	ld	hl, #0x00fe
	jp	_RL
;E:\supernova\msx\game\rooms2.c:448: case 30: if (LOC_HAS(38, 17)) { SF(); Wr("It's a grey disk!"); Wln(); } break;
00155$:
	ld	a, (#(_g_Loc + 648) + 0)
	rrca
	ret	nc
	call	_SF
	ld	hl, #___str_14
	call	_Wr
;E:\supernova\msx\game\rooms2.c:450: break;
	jp	_Wln
;E:\supernova\msx\game\rooms2.c:451: case 26: if (N1 == 10 && LOC_HAS(38, 10)) RL(255); break;
00159$:
	ld	a, (_N1)
	sub	a, #0x0a
	ret	nz
	ld	a, (#(_g_Loc + 647) + 0)
	bit	1, a
	ret	z
	ld	hl, #0x00ff
	jp	_RL
;E:\supernova\msx\game\rooms2.c:452: case 42: case 44: if (N1 == 10 || N1 == 73) RL(256); break;
00164$:
	ld	a, (_N1)
	cp	a, #0x0a
	jr	z, 00165$
	sub	a, #0x49
	ret	nz
00165$:
	ld	hl, #0x0100
	jp	_RL
;E:\supernova\msx\game\rooms2.c:453: case 75: if (N1 == 73) RL(257); break;
00168$:
	ld	a, (_N1)
	sub	a, #0x49
	ret	nz
	ld	hl, #0x0101
	jp	_RL
;E:\supernova\msx\game\rooms2.c:454: case 47: case 83: case 84: RL(258); break;
00173$:
	ld	hl, #0x0102
	jp	_RL
;E:\supernova\msx\game\rooms2.c:455: case 39:
00174$:
;E:\supernova\msx\game\rooms2.c:456: if (LOC_HAS(38, 10) && SET_IN(NounSet, 10)) { LOC_ADD(38, 17); RL(259); Score(15, 81); SFlag = 0; }
	ld	a, (#_g_Loc + 647)
	bit	1, a
	jr	z, 00179$
	ld	a, (#(_NounSet + 1) + 0)
	rrca
	and	a, #0x01
	jr	z, 00179$
	ld	bc, #_g_Loc + 648
	ld	a, (bc)
	set	0, a
	ld	(bc), a
	ld	hl, #0x0103
	call	_RL
	ld	de, #0x0051
	ld	hl, #0x000f
	call	_Score
	xor	a, a
	ld	(#_SFlag), a
	ret
00179$:
;E:\supernova\msx\game\rooms2.c:457: else if (SET_IN(NounSet, 30) && LOC_HAS(38, 17)) R[17] = 38;
	ld	a, (#(_NounSet + 3) + 0)
	rlca
	rlca
	rlca
	ret	nc
	ld	a, (#_g_Loc + 648)
	rrca
	ret	nc
	ld	hl, #_R+17
	ld	(hl), #0x26
;E:\supernova\msx\game\rooms2.c:461: }
;E:\supernova\msx\game\rooms2.c:462: }
	ret
___str_14:
	.ascii "It's a grey disk!"
	.db 0x00
;E:\supernova\msx\game\rooms2.c:464: void Room9(void)    // Inside Pyramid (Top Level)
;	---------------------------------
; Function Room9
; ---------------------------------
_Room9::
	call	___sdcc_enter_ix
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;E:\supernova\msx\game\rooms2.c:469: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x02
	ld	a, #0x01
	jr	z, 00681$
	xor	a, a
00681$:
	ld	-7 (ix), a
	ld	a, (_Vb)
	sub	a, #0x0b
	ld	a, #0x01
	jr	z, 00683$
	xor	a, a
00683$:
	ld	-6 (ix), a
	ld	a, (_Vb)
	sub	a, #0x0d
	ld	a, #0x01
	jr	z, 00685$
	xor	a, a
00685$:
	ld	-5 (ix), a
;E:\supernova\msx\game\rooms2.c:466: switch (Prm)
	ld	a, (_Prm)
	sub	a, #0x27
	jr	z, 00101$
;E:\supernova\msx\game\rooms2.c:481: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x1c
	ld	a, #0x01
	jr	z, 00688$
	xor	a, a
00688$:
	ld	-4 (ix), a
	ld	a, (_Vb)
	sub	a, #0x4b
	ld	a, #0x01
	jr	z, 00690$
	xor	a, a
00690$:
	ld	-3 (ix), a
;E:\supernova\msx\game\rooms2.c:500: if (N1 == 68)
	ld	a, (_N1)
	sub	a, #0x44
	ld	a, #0x01
	jr	z, 00692$
	xor	a, a
00692$:
	ld	-2 (ix), a
;E:\supernova\msx\game\rooms2.c:508: switch (N1)
	ld	a, (_N1)
	sub	a, #0x38
	ld	a, #0x01
	jr	z, 00694$
	xor	a, a
00694$:
	ld	-1 (ix), a
;E:\supernova\msx\game\rooms2.c:466: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x28
	jr	z, 00113$
	sub	a, #0x29
	jp	z, 00153$
	jp	00206$
;E:\supernova\msx\game\rooms2.c:468: case 39:    // Holey Hall
00101$:
;E:\supernova\msx\game\rooms2.c:469: switch (Vb)
	ld	a, -7 (ix)
	or	a, a
	jr	nz, 00103$
	ld	a, (_Vb)
	sub	a, #0x04
	jr	z, 00108$
	ld	a, -6 (ix)
	or	a, a
	jr	nz, 00108$
	ld	a, -5 (ix)
	or	a, a
	jp	z, 00206$
;E:\supernova\msx\game\rooms2.c:471: case 2: case 13:
00103$:
;E:\supernova\msx\game\rooms2.c:472: if (T[15] > 1) { RL(269); MoveTo(37); Score(5, 82); } else MoveTo(37);
	ld	hl, (#(_T + 30) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00698$
	xor	a, #0x80
00698$:
	jp	p, 00105$
	ld	hl, #0x010d
	call	_RL
	ld	a, #0x25
	call	_MoveTo
	ld	de, #0x0052
	ld	hl, #0x0005
	call	_Score
	jp	00206$
00105$:
	ld	a, #0x25
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:473: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:474: case 4: case 11:
00108$:
;E:\supernova\msx\game\rooms2.c:475: if (T[15] > 1) { RS(95); DEAD(); } else MoveTo(40);
	ld	hl, (#(_T + 30) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00699$
	xor	a, #0x80
00699$:
	jp	p, 00110$
	ld	hl, #0x005f
	call	_RS
	call	_DEAD
	jp	00206$
00110$:
	ld	a, #0x28
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:478: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:480: case 40:    // Pyramid Lobby
00113$:
;E:\supernova\msx\game\rooms2.c:481: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00115$
	ld	a, (_Vb)
	sub	a, #0x03
	jr	z, 00126$
	ld	a, -6 (ix)
	or	a, a
	jr	nz, 00115$
	ld	a, -5 (ix)
	or	a, a
	jr	nz, 00126$
	ld	a, -4 (ix)
	or	a, a
	jp	nz, 00145$
	ld	a, (_Vb)
	cp	a, #0x2a
	jp	z, 00136$
	cp	a, #0x2c
	jp	z, 00136$
	sub	a, #0x33
	jp	z, 00136$
	ld	a, -3 (ix)
	or	a, a
	jp	nz, 00136$
	ld	a, (_Vb)
	cp	a, #0x54
	jp	z, 00136$
	sub	a, #0x5e
	jp	z, 00136$
	jp	00206$
;E:\supernova\msx\game\rooms2.c:483: case 1: case 11:
00115$:
;E:\supernova\msx\game\rooms2.c:484: if (T[14] > 1) { SetNoun(68, 12); MoveTo(41); }
	ld	hl, (#(_T + 28) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00707$
	xor	a, #0x80
00707$:
	jp	p, 00206$
	ld	l, #0x0c
	ld	a, #0x44
	call	_SetNoun
	ld	a, #0x29
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:485: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:487: if (IN29(Inv, 18) || IN29(Inv, 4))
00126$:
	ld	a, (#_Inv + 2)
	rrca
	and	a, #0x01
	jr	nz, 00123$
	ld	a, (#_Inv + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jp	z, 00124$
00123$:
;E:\supernova\msx\game\rooms2.c:489: SET_DEL(Brief, 39); MoveTo(39);
	ld	hl, #_Brief+4
	res	6, (hl)
	ld	a, #0x27
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:490: T[15] = 3; T[16] = 9; Col(10, 7); RS(93);
	ld	hl, #0x0003
	ld	((_T + 30)), hl
	ld	l, #0x09
	ld	((_T + 32)), hl
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x005d
	call	_RS
;E:\supernova\msx\game\rooms2.c:491: for (i = 500; i <= 5500; i++) Sound(Rnd(i) + Rnd(i));
	ld	hl, #0x01f4
	ld	(_i), hl
00199$:
	ld	hl, (_i)
	call	_Rnd
	push	de
	ld	hl, (_i)
	call	_Rnd
	pop	hl
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	ld	a, #0x7c
	cp	a, l
	ld	a, #0x15
	sbc	a, h
	jp	po, 00708$
	xor	a, #0x80
00708$:
	jp	p, 00199$
;E:\supernova\msx\game\rooms2.c:492: i = 5500;
	ld	hl, #0x157c
	ld	(_i), hl
;E:\supernova\msx\game\rooms2.c:493: for (j = 1; j <= 7000; j++) Sound(Rnd(i) + Rnd(i));
	ld	hl, #0x0001
	ld	(_j), hl
00201$:
	ld	hl, (_i)
	call	_Rnd
	push	de
	ld	hl, (_i)
	call	_Rnd
	pop	hl
	add	hl, de
	call	_Sound
	ld	hl, (_j)
	inc	hl
	ld	(_j), hl
	ld	a, #0x58
	cp	a, l
	ld	a, #0x1b
	sbc	a, h
	jp	po, 00709$
	xor	a, #0x80
00709$:
	jp	p, 00201$
;E:\supernova\msx\game\rooms2.c:494: for (j = i; j >= 500; j--) Sound(Rnd(j) + Rnd(j));
	ld	hl, (_i)
	ld	(_j), hl
00204$:
	ld	bc, (_j)
	ld	a, c
	sub	a, #0xf4
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	c, 00122$
	ld	hl, (_j)
	call	_Rnd
	push	de
	ld	hl, (_j)
	call	_Rnd
	pop	hl
	add	hl, de
	call	_Sound
	ld	hl, (_j)
	dec	hl
	ld	(_j), hl
	jr	00204$
00122$:
;E:\supernova\msx\game\rooms2.c:495: NoSound();
	call	_NoSound
	jp	00206$
00124$:
;E:\supernova\msx\game\rooms2.c:497: else MoveTo(39);
	ld	a, #0x27
	call	_MoveTo
;E:\supernova\msx\game\rooms2.c:498: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:499: case 42: case 44: case 51: case 75: case 84: case 94:
00136$:
;E:\supernova\msx\game\rooms2.c:500: if (N1 == 68)
	ld	a, -2 (ix)
	or	a, a
	jp	z, 00206$
;E:\supernova\msx\game\rooms2.c:502: if (T[14] > 1) RL(246);
	ld	hl, (#(_T + 28) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00710$
	xor	a, #0x80
00710$:
	jp	p, 00141$
	ld	hl, #0x00f6
	call	_RL
	jp	00206$
00141$:
;E:\supernova\msx\game\rooms2.c:503: else if (En(33)) { T[14] = 7; RL(261); Walls(8); }
	ld	a, #0x21
	call	_En
	or	a, a
	jr	z, 00138$
	ld	hl, #0x0007
	ld	((_T + 28)), hl
	ld	hl, #0x0105
	call	_RL
	ld	a, #0x08
	call	_Walls
	jp	00206$
00138$:
;E:\supernova\msx\game\rooms2.c:504: else { T[14] = 7; Score(20, 33); RS(89); Walls(8); }
	ld	hl, #0x0007
	ld	((_T + 28)), hl
	ld	de, #0x0021
	ld	l, #0x14
	call	_Score
	ld	hl, #0x0059
	call	_RS
	ld	a, #0x08
	call	_Walls
;E:\supernova\msx\game\rooms2.c:506: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:507: case 28:
00145$:
;E:\supernova\msx\game\rooms2.c:508: switch (N1)
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00146$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00150$
	jp	00206$
;E:\supernova\msx\game\rooms2.c:510: case 56: if (T[14] > 1) RL(370); else RL(92); break;
00146$:
	ld	hl, (#(_T + 28) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00711$
	xor	a, #0x80
00711$:
	jp	p, 00148$
	ld	hl, #0x0172
	call	_RL
	jp	00206$
00148$:
	ld	hl, #0x005c
	call	_RL
	jp	00206$
;E:\supernova\msx\game\rooms2.c:511: case 68: RL(247); break;
00150$:
	ld	hl, #0x00f7
	call	_RL
;E:\supernova\msx\game\rooms2.c:515: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:517: case 41:    // Treasure's Keeper
00153$:
;E:\supernova\msx\game\rooms2.c:518: switch (Vb)
	ld	a, -7 (ix)
	or	a, a
	jr	nz, 00155$
	ld	a, -5 (ix)
	or	a, a
	jr	nz, 00155$
	ld	a, (_Vb)
	sub	a, #0x16
	jr	z, 00160$
	ld	a, -4 (ix)
	or	a, a
	jr	nz, 00160$
	ld	a, (_Vb)
	cp	a, #0x21
	jp	z, 00174$
	cp	a, #0x27
	jp	z, 00193$
	sub	a, #0x32
	jp	z, 00190$
	ld	a, -3 (ix)
	or	a, a
	jp	nz, 00187$
	jp	00206$
;E:\supernova\msx\game\rooms2.c:520: case 2: case 13:
00155$:
;E:\supernova\msx\game\rooms2.c:521: if (T[14] > 1) { SetNoun(68, 13); MoveTo(40); }
	ld	hl, (#(_T + 28) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00716$
	xor	a, #0x80
00716$:
	jp	p, 00157$
	ld	l, #0x0d
	ld	a, #0x44
	call	_SetNoun
	ld	a, #0x28
	call	_MoveTo
	jp	00206$
00157$:
;E:\supernova\msx\game\rooms2.c:522: else RL(248);
	ld	hl, #0x00f8
	call	_RL
;E:\supernova\msx\game\rooms2.c:523: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:524: case 28: case 22:
00160$:
;E:\supernova\msx\game\rooms2.c:525: switch (N1)
	ld	a, (_N1)
	sub	a, #0x12
	jr	z, 00169$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00161$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00165$
	jp	00206$
;E:\supernova\msx\game\rooms2.c:527: case 56: if (T[14] > 1) RL(370); else RL(92); break;
00161$:
	ld	hl, (#(_T + 28) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00718$
	xor	a, #0x80
00718$:
	jp	p, 00163$
	ld	hl, #0x0172
	call	_RL
	jp	00206$
00163$:
	ld	hl, #0x005c
	call	_RL
	jp	00206$
;E:\supernova\msx\game\rooms2.c:528: case 68:
00165$:
;E:\supernova\msx\game\rooms2.c:529: if (PodumCon == Null) RL(264);
	ld	a, (_PodumCon+0)
	or	a, a
	jr	nz, 00167$
	ld	hl, #0x0108
	call	_RL
	jp	00206$
00167$:
;E:\supernova\msx\game\rooms2.c:530: else { Wr("There is a "); WrFN(PodumCon); Wr(" on the podium."); Wln(); }
	ld	hl, #___str_15
	call	_Wr
	ld	a, (_PodumCon)
	call	_WrFN
	ld	hl, #___str_16
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\rooms2.c:531: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:532: case 18: if (LOC_HAS(41, 18) && !En(34)) RS(90); break;
00169$:
	ld	a, (#(_g_Loc + 699) + 0)
	bit	1, a
	jp	z, 00206$
	ld	a, #0x22
	call	_En
	or	a, a
	jp	nz, 00206$
	ld	hl, #0x005a
	call	_RS
;E:\supernova\msx\game\rooms2.c:534: break;
	jp	00206$
;E:\supernova\msx\game\rooms2.c:535: case 33:
00174$:
;E:\supernova\msx\game\rooms2.c:536: if (N2 == 68)
	ld	a, (_N2)
	sub	a, #0x44
	jp	nz, 00206$
;E:\supernova\msx\game\rooms2.c:537: if (Pr == 1)
	ld	a, (_Pr)
	dec	a
	jp	nz, 00206$
;E:\supernova\msx\game\rooms2.c:539: if (IN29(Mov, N1))
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00179$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00179$
	ld	de, #_Mov+0
	ld	a, (_N1+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00724$:
	sra	h
	rr	l
	djnz	00724$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00726$
00725$:
	srl	a
00726$:
	djnz	00725$
	rrca
	jr	nc, 00179$
;E:\supernova\msx\game\rooms2.c:541: if (PodumCon == Null) { Van(N1); R[N1] = 41; PodumCon = N1; RL(266); }
	ld	a, (_PodumCon+0)
	or	a, a
	jr	nz, 00176$
	ld	a, (_N1)
	call	_Van
	ld	bc, #_R+0
	ld	a, (_N1)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0x29
	ld	a, (_N1+0)
	ld	(#_PodumCon), a
	ld	hl, #0x010a
	call	_RL
	jr	00206$
00176$:
;E:\supernova\msx\game\rooms2.c:542: else RL(268);
	ld	hl, #0x010c
	call	_RL
	jr	00206$
00179$:
;E:\supernova\msx\game\rooms2.c:544: else Crazy();
	call	_Crazy
;E:\supernova\msx\game\rooms2.c:546: break;
	jr	00206$
;E:\supernova\msx\game\rooms2.c:547: case 75: if (N1 == 68) RL(276); break;
00187$:
	ld	a, -2 (ix)
	or	a, a
	jr	z, 00206$
	ld	hl, #0x0114
	call	_RL
	jr	00206$
;E:\supernova\msx\game\rooms2.c:548: case 50: if (N1 == 68) { RL(277); Walls(8); T[14] = 7; } break;
00190$:
	ld	a, -2 (ix)
	or	a, a
	jr	z, 00206$
	ld	hl, #0x0115
	call	_RL
	ld	a, #0x08
	call	_Walls
	ld	hl, #0x0007
	ld	((_T + 28)), hl
	jr	00206$
;E:\supernova\msx\game\rooms2.c:549: case 39: if (SET_IN(NounSet, 30) && LOC_HAS(41, 18)) R[18] = 41; break;
00193$:
	ld	a, (#(_NounSet + 3) + 0)
	rlca
	rlca
	rlca
	jr	nc, 00206$
	ld	a, (#(_g_Loc + 699) + 0)
	bit	1, a
	jr	z, 00206$
	ld	hl, #_R+18
	ld	(hl), #0x29
;E:\supernova\msx\game\rooms2.c:552: }
00206$:
;E:\supernova\msx\game\rooms2.c:553: }
	ld	sp, ix
	pop	ix
	ret
___str_15:
	.ascii "There is a "
	.db 0x00
___str_16:
	.ascii " on the podium."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
