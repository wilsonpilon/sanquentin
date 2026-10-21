;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module rooms4
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEAD
	.globl _MoveTo
	.globl _SetNoun
	.globl _Crazy
	.globl _Van
	.globl _TransportNoise
	.globl _Val
	.globl _RB2
	.globl _RS
	.globl _RL
	.globl _Door
	.globl _DOpen
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
	.globl _Wherey
	.globl _Wherex
	.globl _Gotoxy
	.globl _Wln
	.globl _WrNum
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
	.globl _Room15
	.globl _Room16
	.globl _Room17
	.globl _Room18
	.globl _Room19
	.globl _Room20
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
;E:\supernova\msx\game\rooms4.c:4: static void MoveObjects(u8 from, u8 to)    // for x:=1 to MMax do if R[x]=from then R[x]:=to
;	---------------------------------
; Function MoveObjects
; ---------------------------------
_MoveObjects:
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	-1 (ix), a
	ld	c, l
;E:\supernova\msx\game\rooms4.c:6: for (x = 1; x <= MMax; x++) if (R[x] == from) R[x] = to;
	ld	hl, #_x
	ld	(hl), #0x01
00104$:
	ld	hl, #_R
	ld	a, (_x)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	sub	a, -1 (ix)
	jr	nz, 00105$
	ld	(hl), c
00105$:
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00104$
;E:\supernova\msx\game\rooms4.c:7: }
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
;E:\supernova\msx\game\rooms4.c:9: void Room15(void)    // Inner Planet
;	---------------------------------
; Function Room15
; ---------------------------------
_Room15::
	call	___sdcc_enter_ix
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;E:\supernova\msx\game\rooms4.c:14: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x03
	ld	a, #0x01
	jr	z, 00458$
	xor	a, a
00458$:
	ld	c, a
	ld	a, (_Vb)
	sub	a, #0x0b
	ld	a, #0x01
	jr	z, 00460$
	xor	a, a
00460$:
	ld	e, a
	ld	a, (_Vb)
	sub	a, #0x0d
	ld	a, #0x01
	jr	z, 00462$
	xor	a, a
00462$:
	ld	l, a
	ld	a, (_Vb)
	sub	a, #0x18
	ld	a, #0x01
	jr	z, 00464$
	xor	a, a
00464$:
	ld	-7 (ix), a
	ld	a, (_Vb)
	sub	a, #0x1c
	ld	a, #0x01
	jr	z, 00466$
	xor	a, a
00466$:
	ld	-6 (ix), a
	ld	a, (_Vb)
	sub	a, #0x2a
	ld	a, #0x01
	jr	z, 00468$
	xor	a, a
00468$:
	ld	-5 (ix), a
	ld	a, (_Vb)
	sub	a, #0x2c
	ld	a, #0x01
	jr	z, 00470$
	xor	a, a
00470$:
	ld	-4 (ix), a
	ld	a, (_Vb)
	sub	a, #0x4b
	ld	a, #0x01
	jr	z, 00472$
	xor	a, a
00472$:
	ld	-3 (ix), a
;E:\supernova\msx\game\rooms4.c:18: case 28: case 24: if (N1 == 131) RL(329); break;
	ld	a, (_N1)
	sub	a, #0x83
	ld	a, #0x01
	jr	z, 00474$
	xor	a, a
00474$:
	ld	-2 (ix), a
;E:\supernova\msx\game\rooms4.c:20: if (N1 == 44) { RL(332); Add(45); Play(20, 99, 7); Play(99, 99, 600); Play(99, 20, 7); Score(10, 95); }
	ld	a, (_N1)
	sub	a, #0x2c
	ld	a, #0x01
	jr	z, 00476$
	xor	a, a
00476$:
	ld	-1 (ix), a
;E:\supernova\msx\game\rooms4.c:11: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x44
	jr	z, 00101$
	cp	a, #0x45
	jp	z, 00119$
	sub	a, #0x46
	jp	z, 00130$
	jp	00151$
;E:\supernova\msx\game\rooms4.c:13: case 68:    // Decontamination
00101$:
;E:\supernova\msx\game\rooms4.c:14: switch (Vb)
	ld	a, c
	or	a, a
	jr	nz, 00103$
	ld	a, (_Vb)
	sub	a, #0x04
	jr	z, 00108$
	ld	a, e
	or	a, a
	jr	nz, 00108$
	or	a, l
	jr	nz, 00103$
	ld	a, -7 (ix)
	or	a, a
	jr	nz, 00110$
	ld	a, -6 (ix)
	or	a, a
	jr	nz, 00110$
	ld	a, -5 (ix)
	or	a, a
	jr	nz, 00115$
	ld	a, -4 (ix)
	or	a, a
	jr	nz, 00115$
	ld	a, -3 (ix)
	or	a, a
	jr	nz, 00115$
	jp	00151$
;E:\supernova\msx\game\rooms4.c:16: case 3: case 13: if (En(45)) Door(65, 20); else RL(331); break;
00103$:
	ld	a, #0x2d
	call	_En
	or	a, a
	jr	z, 00105$
	ld	l, #0x14
	ld	a, #0x41
	call	_Door
	jp	00151$
00105$:
	ld	hl, #0x014b
	call	_RL
	jp	00151$
;E:\supernova\msx\game\rooms4.c:17: case 4: case 11: Door(69, 20); break;
00108$:
	ld	l, #0x14
	ld	a, #0x45
	call	_Door
	jp	00151$
;E:\supernova\msx\game\rooms4.c:18: case 28: case 24: if (N1 == 131) RL(329); break;
00110$:
	ld	a, -2 (ix)
	or	a, a
	jp	z, 00151$
	ld	hl, #0x0149
	call	_RL
	jp	00151$
;E:\supernova\msx\game\rooms4.c:19: case 42: case 44: case 75:
00115$:
;E:\supernova\msx\game\rooms4.c:20: if (N1 == 44) { RL(332); Add(45); Play(20, 99, 7); Play(99, 99, 600); Play(99, 20, 7); Score(10, 95); }
	ld	a, -1 (ix)
	or	a, a
	jp	z, 00151$
	ld	hl, #0x014c
	call	_RL
	ld	a, #0x2d
	call	_Add
	ld	hl, #0x0007
	push	hl
	ld	de, #0x0063
	ld	l, #0x14
	call	_Play
	ld	hl, #0x0258
	push	hl
	ld	de, #0x0063
	ld	h, d
	ld	l, e
	call	_Play
	ld	hl, #0x0007
	push	hl
	ld	de, #0x0014
	ld	l, #0x63
	call	_Play
	ld	de, #0x005f
	ld	hl, #0x000a
	call	_Score
;E:\supernova\msx\game\rooms4.c:23: break;
	jp	00151$
;E:\supernova\msx\game\rooms4.c:25: case 69:    // Waiting Room
00119$:
;E:\supernova\msx\game\rooms4.c:26: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x02
	jr	z, 00121$
	ld	a, c
	or	a, a
	jr	nz, 00123$
	or	a, e
	jr	nz, 00121$
	or	a, l
	jr	nz, 00123$
	ld	a, -7 (ix)
	or	a, a
	jr	nz, 00125$
	ld	a, -6 (ix)
	or	a, a
	jr	nz, 00125$
	jp	00151$
;E:\supernova\msx\game\rooms4.c:28: case 2: case 11: Door(70, 50); break;
00121$:
	ld	l, #0x32
	ld	a, #0x46
	call	_Door
	jp	00151$
;E:\supernova\msx\game\rooms4.c:29: case 3: case 13: Door(68, 20); break;
00123$:
	ld	l, #0x14
	ld	a, #0x44
	call	_Door
	jp	00151$
;E:\supernova\msx\game\rooms4.c:30: case 28: case 24: switch (N1) { case 35: RL(330); break; case 131: RL(329); break; } break;
00125$:
	ld	a, (_N1)
	sub	a, #0x23
	jr	z, 00126$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00127$
	jp	00151$
00126$:
	ld	hl, #0x014a
	call	_RL
	jp	00151$
00127$:
	ld	hl, #0x0149
	call	_RL
;E:\supernova\msx\game\rooms4.c:32: break;
	jp	00151$
;E:\supernova\msx\game\rooms4.c:34: case 70:    // Transporter Booth
00130$:
;E:\supernova\msx\game\rooms4.c:35: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00132$
	ld	a, l
	or	a, a
	jr	nz, 00132$
	ld	a, -7 (ix)
	or	a, a
	jr	nz, 00134$
	ld	a, -6 (ix)
	or	a, a
	jr	nz, 00134$
	ld	a, -5 (ix)
	or	a, a
	jr	nz, 00141$
	ld	a, -4 (ix)
	or	a, a
	jr	nz, 00141$
	ld	a, -3 (ix)
	or	a, a
	jr	nz, 00141$
	jp	00151$
;E:\supernova\msx\game\rooms4.c:37: case 1: case 13: Door(69, 50); break;
00132$:
	ld	l, #0x32
	ld	a, #0x45
	call	_Door
	jp	00151$
;E:\supernova\msx\game\rooms4.c:38: case 28: case 24:
00134$:
;E:\supernova\msx\game\rooms4.c:39: switch (N1) { case 44: RS(140); break; case 93: RL(319); break; case 94: RS(141); break; }
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00135$
	ld	a, (_N1)
	cp	a, #0x5d
	jr	z, 00136$
	sub	a, #0x5e
	jr	z, 00137$
	jp	00151$
00135$:
	ld	hl, #0x008c
	call	_RS
	jp	00151$
00136$:
	ld	hl, #0x013f
	call	_RL
	jp	00151$
00137$:
	ld	hl, #0x008d
	call	_RS
;E:\supernova\msx\game\rooms4.c:40: break;
	jp	00151$
;E:\supernova\msx\game\rooms4.c:41: case 42: case 44: case 75:
00141$:
;E:\supernova\msx\game\rooms4.c:42: if (IN_RANGE(N1, 40, 43))
	ld	a, (_N1+0)
	sub	a, #0x28
	jr	c, 00151$
	ld	a, #0x2b
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00151$
;E:\supernova\msx\game\rooms4.c:44: SET_DEL(Brief, 62); SET_DEL(Brief, 63); SET_DEL(Brief, 78);
	ld	hl, #_Brief + 7
	res	5, (hl)
	res	6, (hl)
	ld	hl, #_Brief + 9
	res	5, (hl)
;E:\supernova\msx\game\rooms4.c:45: RS(138); Min(45);
	ld	hl, #0x008a
	call	_RS
	ld	a, #0x2d
	call	_Min
;E:\supernova\msx\game\rooms4.c:46: TransportNoise();
	call	_TransportNoise
;E:\supernova\msx\game\rooms4.c:47: switch (N1)
	ld	a, (_N1)
	cp	a, #0x28
	jr	z, 00142$
	cp	a, #0x29
	jr	z, 00143$
	sub	a, #0x2b
	jr	z, 00144$
	jr	00151$
;E:\supernova\msx\game\rooms4.c:49: case 40: MoveObjects(70, 78); TFlag = 4; MoveTo(78); Score(15, 97); break;
00142$:
	ld	l, #0x4e
	ld	a, #0x46
	call	_MoveObjects
	ld	hl, #_TFlag
	ld	(hl), #0x04
	ld	a, #0x4e
	call	_MoveTo
	ld	de, #0x0061
	ld	hl, #0x000f
	call	_Score
	jr	00151$
;E:\supernova\msx\game\rooms4.c:50: case 41: MoveObjects(70, 62); TFlag = 2; MoveTo(62); break;
00143$:
	ld	l, #0x3e
	ld	a, #0x46
	call	_MoveObjects
	ld	hl, #_TFlag
	ld	(hl), #0x02
	ld	a, #0x3e
	call	_MoveTo
	jr	00151$
;E:\supernova\msx\game\rooms4.c:51: case 43: MoveObjects(70, 63); TFlag = 2; MoveTo(63); Score(10, 96); break;
00144$:
	ld	l, #0x3f
	ld	a, #0x46
	call	_MoveObjects
	ld	hl, #_TFlag
	ld	(hl), #0x02
	ld	a, #0x3f
	call	_MoveTo
	ld	de, #0x0060
	ld	hl, #0x000a
	call	_Score
;E:\supernova\msx\game\rooms4.c:57: }
00151$:
;E:\supernova\msx\game\rooms4.c:58: }
	ld	sp, ix
	pop	ix
	ret
;E:\supernova\msx\game\rooms4.c:60: static void Elevator(u8 msg, u8 to, u8 from)
;	---------------------------------
; Function Elevator
; ---------------------------------
_Elevator:
;E:\supernova\msx\game\rooms4.c:62: RS(msg); Play(20, 42, 20); Sound(42); Delay(5500); RL(338);
	ld	h, #0x00
	push	hl
	ld	l, a
	call	_RS
	ld	de, #0x0014
	push	de
	ld	de, #0x002a
	ld	hl, #0x0014
	call	_Play
	ld	hl, #0x002a
	call	_Sound
	ld	hl, #0x157c
	call	_Delay
	ld	hl, #0x0152
	call	_RL
;E:\supernova\msx\game\rooms4.c:63: Play(42, 20, 20); Prm = to; MoveObjects(from, to);
	ld	de, #0x0014
	push	de
	ld	hl, #0x002a
	call	_Play
	pop	hl
	ld	a, l
	ld	(_Prm+0), a
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	call	_MoveObjects
;E:\supernova\msx\game\rooms4.c:64: }
	pop	hl
	inc	sp
	jp	(hl)
;E:\supernova\msx\game\rooms4.c:66: void Room16(void)    // Inner Planet
;	---------------------------------
; Function Room16
; ---------------------------------
_Room16::
;E:\supernova\msx\game\rooms4.c:68: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x49
	jr	z, 00101$
	cp	a, #0x4a
	jp	z, 00123$
	cp	a, #0x4b
	jp	z, 00135$
	cp	a, #0x4c
	jp	z, 00141$
	sub	a, #0x4d
	jp	z, 00147$
	ret
;E:\supernova\msx\game\rooms4.c:70: case 73:    // Communications
00101$:
;E:\supernova\msx\game\rooms4.c:71: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00102$
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00103$
	cp	a, #0x1c
	jr	z, 00104$
	sub	a, #0x32
	jr	z, 00110$
	ret
;E:\supernova\msx\game\rooms4.c:73: case 1: MoveTo(74); break;
00102$:
	ld	a, #0x4a
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:74: case 4: Door(66, 20); break;
00103$:
	ld	l, #0x14
	ld	a, #0x42
	jp	_Door
;E:\supernova\msx\game\rooms4.c:75: case 28:
00104$:
;E:\supernova\msx\game\rooms4.c:76: switch (N1)
	ld	a, (_N1)
	cp	a, #0x30
	jr	z, 00105$
	cp	a, #0x73
	jr	z, 00106$
	cp	a, #0x79
	jr	z, 00107$
	sub	a, #0x7f
	jr	z, 00108$
	ret
;E:\supernova\msx\game\rooms4.c:78: case 48: RL(366); Wr("The dial is set at number "); WrNum(CodeSet); Wr("."); Wln(); break;
00105$:
	ld	hl, #0x016e
	call	_RL
	ld	hl, #___str_1
	call	_Wr
	ld	a, (_CodeSet)
	ld	h, #0x00
	ld	l, a
	call	_WrNum
	ld	hl, #___str_2
	call	_Wr
	jp	_Wln
;E:\supernova\msx\game\rooms4.c:79: case 115: RL(350); break;
00106$:
	ld	hl, #0x015e
	jp	_RL
;E:\supernova\msx\game\rooms4.c:80: case 121: RL(367); break;
00107$:
	ld	hl, #0x016f
	jp	_RL
;E:\supernova\msx\game\rooms4.c:81: case 127: RL(351); break;
00108$:
;E:\supernova\msx\game\rooms4.c:83: break;
	ld	hl, #0x015f
	jp	_RL
;E:\supernova\msx\game\rooms4.c:84: case 50:
00110$:
;E:\supernova\msx\game\rooms4.c:85: if (N1 == 48)
	ld	a, (_N1)
	sub	a, #0x30
	ret	nz
;E:\supernova\msx\game\rooms4.c:87: if (Pr > Null)
	ld	a, (_Pr+0)
	or	a, a
	jr	z, 00118$
;E:\supernova\msx\game\rooms4.c:89: if (Code > 0 && Code < 11) { RL(363); CodeSet = (u8)Code; if (Code == 4) Score(10, 98); }
	ld	hl, (_Code)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00519$
	xor	a, #0x80
00519$:
	jp	p, 00114$
	ld	de, #0x000b
	cp	a, a
	sbc	hl, de
	jr	nc, 00114$
	ld	hl, #0x016b
	call	_RL
	ld	a, (_Code+0)
	ld	(#_CodeSet), a
	ld	hl, (_Code)
	ld	a, l
	sub	a, #0x04
	or	a, h
	ret	nz
	ld	de, #0x0062
	ld	hl, #0x000a
	jp	_Score
00114$:
;E:\supernova\msx\game\rooms4.c:90: else RL(362);
	ld	hl, #0x016a
	jp	_RL
00118$:
;E:\supernova\msx\game\rooms4.c:92: else RL(365);
;E:\supernova\msx\game\rooms4.c:96: break;
	ld	hl, #0x016d
	jp	_RL
;E:\supernova\msx\game\rooms4.c:98: case 74:    // Computer Station
00123$:
;E:\supernova\msx\game\rooms4.c:99: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00124$
	cp	a, #0x1c
	jr	z, 00125$
	sub	a, #0x1f
	jr	z, 00131$
	ret
;E:\supernova\msx\game\rooms4.c:101: case 2: MoveTo(73); break;
00124$:
	ld	a, #0x49
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:102: case 28:
00125$:
;E:\supernova\msx\game\rooms4.c:103: switch (N1)
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00126$
	cp	a, #0x26
	jr	z, 00127$
	cp	a, #0x34
	jr	z, 00128$
	sub	a, #0x3b
	jr	z, 00129$
	ret
;E:\supernova\msx\game\rooms4.c:105: case 37: RL(349); break;
00126$:
	ld	hl, #0x015d
	jp	_RL
;E:\supernova\msx\game\rooms4.c:106: case 38: RL(322); break;
00127$:
	ld	hl, #0x0142
	jp	_RL
;E:\supernova\msx\game\rooms4.c:107: case 52: RL(37); break;
00128$:
	ld	hl, #0x0025
	jp	_RL
;E:\supernova\msx\game\rooms4.c:108: case 59: RB2(7, 10); Col(26, 23); RL(364); Score(5, 47); break;
00129$:
	ld	l, #0x0a
	ld	a, #0x07
	call	_RB2
	ld	l, #0x17
	ld	a, #0x1a
	call	_Col
	ld	hl, #0x016c
	call	_RL
	ld	de, #0x002f
;E:\supernova\msx\game\rooms4.c:110: break;
	ld	hl, #0x0005
	jp	_Score
;E:\supernova\msx\game\rooms4.c:111: case 31: if (N1 == 59) { RB2(7, 10); Col(26, 23); RL(364); Add(47); } break;
00131$:
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	l, #0x0a
	ld	a, #0x07
	call	_RB2
	ld	l, #0x17
	ld	a, #0x1a
	call	_Col
	ld	hl, #0x016c
	call	_RL
;E:\supernova\msx\game\rooms4.c:113: break;
	ld	a, #0x2f
	jp	_Add
;E:\supernova\msx\game\rooms4.c:115: case 75:    // Elevator 1st Floor
00135$:
;E:\supernova\msx\game\rooms4.c:116: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00136$
	ld	a, (_Vb)
	cp	a, #0x2a
	jr	z, 00139$
	cp	a, #0x2c
	jr	z, 00139$
	sub	a, #0x4b
	jr	z, 00139$
	ret
;E:\supernova\msx\game\rooms4.c:118: case 1: Door(67, 5); break;
00136$:
	ld	l, #0x05
	ld	a, #0x43
	jp	_Door
;E:\supernova\msx\game\rooms4.c:119: case 42: case 44: case 75: Elevator(143, 76, 75); break;
00139$:
	ld	a, #0x4b
	push	af
	inc	sp
	ld	l, #0x4c
	ld	a, #0x8f
	call	_Elevator
;E:\supernova\msx\game\rooms4.c:121: break;
	ret
;E:\supernova\msx\game\rooms4.c:123: case 76:    // Elevator 2nd Floor
00141$:
;E:\supernova\msx\game\rooms4.c:124: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00142$
	ld	a, (_Vb)
	cp	a, #0x2a
	jr	z, 00145$
	cp	a, #0x2c
	jr	z, 00145$
	sub	a, #0x4b
	jr	z, 00145$
	ret
;E:\supernova\msx\game\rooms4.c:126: case 1: Score(5, 99); Door(77, 5); break;
00142$:
	ld	de, #0x0063
	ld	hl, #0x0005
	call	_Score
	ld	l, #0x05
	ld	a, #0x4d
	jp	_Door
;E:\supernova\msx\game\rooms4.c:127: case 42: case 44: case 75: Elevator(144, 75, 76); break;
00145$:
	ld	a, #0x4c
	push	af
	inc	sp
	ld	l, #0x4b
	ld	a, #0x90
	call	_Elevator
;E:\supernova\msx\game\rooms4.c:129: break;
	ret
;E:\supernova\msx\game\rooms4.c:131: case 77:    // Observatory
00147$:
;E:\supernova\msx\game\rooms4.c:132: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00148$
	cp	a, #0x18
	jr	z, 00156$
	sub	a, #0x1c
	jr	z, 00149$
	ret
;E:\supernova\msx\game\rooms4.c:134: case 2: Door(76, 5); break;
00148$:
	ld	l, #0x05
	ld	a, #0x4c
	jp	_Door
;E:\supernova\msx\game\rooms4.c:135: case 28:
00149$:
;E:\supernova\msx\game\rooms4.c:136: switch (N1)
	ld	a, (_N1)
	cp	a, #0x22
	jr	z, 00150$
	sub	a, #0x68
	jr	z, 00151$
	ret
;E:\supernova\msx\game\rooms4.c:138: case 34: RL(562); break;
00150$:
	ld	hl, #0x0232
	jp	_RL
;E:\supernova\msx\game\rooms4.c:139: case 104: if (StrEq(NStr, "eyepiec")) RL(561); else RS(146); break;
00151$:
	ld	de, #___str_3
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00153$
	ld	hl, #0x0231
	jp	_RL
00153$:
;E:\supernova\msx\game\rooms4.c:141: break;
	ld	hl, #0x0092
	jp	_RS
;E:\supernova\msx\game\rooms4.c:142: case 24:
00156$:
;E:\supernova\msx\game\rooms4.c:143: if (N1 == 104)
	ld	a, (_N1)
	sub	a, #0x68
	ret	nz
;E:\supernova\msx\game\rooms4.c:145: if (IN29(Wear, 20)) { Score(5, 100); RS(147); }
	ld	a, (#(_Wear + 2) + 0)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00158$
	ld	de, #0x0064
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x0093
	jp	_RS
00158$:
;E:\supernova\msx\game\rooms4.c:146: else { RL(368); RL(369); }
	ld	hl, #0x0170
	call	_RL
	ld	hl, #0x0171
;E:\supernova\msx\game\rooms4.c:151: }
;E:\supernova\msx\game\rooms4.c:152: }
	jp	_RL
___str_1:
	.ascii "The dial is set at number "
	.db 0x00
___str_2:
	.ascii "."
	.db 0x00
___str_3:
	.ascii "eyepiec"
	.db 0x00
;E:\supernova\msx\game\rooms4.c:154: void Room17(void)    // Planetship
;	---------------------------------
; Function Room17
; ---------------------------------
_Room17::
	call	___sdcc_enter_ix
	push	af
;E:\supernova\msx\game\rooms4.c:159: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x1c
	ld	a, #0x01
	jr	z, 00553$
	xor	a, a
00553$:
	ld	c, a
;E:\supernova\msx\game\rooms4.c:156: switch (Prm)
	ld	a, (_Prm)
	sub	a, #0x4e
	jr	z, 00101$
;E:\supernova\msx\game\rooms4.c:178: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x04
	ld	a, #0x01
	jr	z, 00556$
	xor	a, a
00556$:
	ld	e, a
	ld	a, (_Vb)
	sub	a, #0x0d
	ld	a, #0x01
	jr	z, 00558$
	xor	a, a
00558$:
	ld	-2 (ix), a
	ld	a, (_Vb)
	sub	a, #0x2c
	ld	a, #0x01
	jr	z, 00560$
	xor	a, a
00560$:
	ld	-1 (ix), a
;E:\supernova\msx\game\rooms4.c:182: switch (N1) { case 44: RL(383); break; case 64: RL(384); break; case 116: RL(600); break; }
	ld	a, (_N1)
	sub	a, #0x74
	ld	a, #0x01
	jr	z, 00562$
	xor	a, a
00562$:
	ld	b, a
;E:\supernova\msx\game\rooms4.c:156: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x4f
	jp	z, 00116$
	sub	a, #0x50
	jp	z, 00139$
	jp	00165$
;E:\supernova\msx\game\rooms4.c:158: case 78:    // Icy Platform
00101$:
;E:\supernova\msx\game\rooms4.c:159: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00103$
	sub	a, #0x0b
	jr	z, 00103$
;E:\supernova\msx\game\rooms4.c:163: switch (N1)
	ld	a, (_N1)
	sub	a, #0x36
	ld	a, #0x01
	jr	z, 00568$
	xor	a, a
00568$:
	ld	b, a
;E:\supernova\msx\game\rooms4.c:159: switch (Vb)
	ld	a, c
	or	a, a
	jr	nz, 00104$
	ld	a, (_Vb)
	sub	a, #0x3b
	jr	z, 00112$
	jp	00165$
;E:\supernova\msx\game\rooms4.c:161: case 3: case 11: Door(79, 25); break;
00103$:
	ld	l, #0x19
	ld	a, #0x4f
	call	_Door
	jp	00165$
;E:\supernova\msx\game\rooms4.c:162: case 28:
00104$:
;E:\supernova\msx\game\rooms4.c:163: switch (N1)
	ld	a, b
	or	a, a
	jr	nz, 00105$
	ld	a, (_N1)
	cp	a, #0x5d
	jr	z, 00106$
	cp	a, #0x60
	jr	z, 00107$
	cp	a, #0x67
	jr	z, 00108$
	cp	a, #0x73
	jr	z, 00109$
	sub	a, #0x76
	jr	z, 00110$
	jp	00165$
;E:\supernova\msx\game\rooms4.c:165: case 54: RL(379); break;
00105$:
	ld	hl, #0x017b
	call	_RL
	jp	00165$
;E:\supernova\msx\game\rooms4.c:166: case 93: RL(380); break;
00106$:
	ld	hl, #0x017c
	call	_RL
	jp	00165$
;E:\supernova\msx\game\rooms4.c:167: case 96: RL(381); break;
00107$:
	ld	hl, #0x017d
	call	_RL
	jp	00165$
;E:\supernova\msx\game\rooms4.c:168: case 103: RL(500); break;
00108$:
	ld	hl, #0x01f4
	call	_RL
	jp	00165$
;E:\supernova\msx\game\rooms4.c:169: case 115: RL(350); break;
00109$:
	ld	hl, #0x015e
	call	_RL
	jp	00165$
;E:\supernova\msx\game\rooms4.c:170: case 118: RL(382); break;
00110$:
	ld	hl, #0x017e
	call	_RL
;E:\supernova\msx\game\rooms4.c:172: break;
	jp	00165$
;E:\supernova\msx\game\rooms4.c:173: case 59: if (N1 == 54) { RL(400); DEAD(); } break;
00112$:
	ld	a, b
	or	a, a
	jp	z, 00165$
	ld	hl, #0x0190
	call	_RL
	call	_DEAD
;E:\supernova\msx\game\rooms4.c:175: break;
	jp	00165$
;E:\supernova\msx\game\rooms4.c:177: case 79:    // Confirmation Port
00116$:
;E:\supernova\msx\game\rooms4.c:178: switch (Vb)
	ld	a, e
	or	a, a
	jr	nz, 00118$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00118$
;E:\supernova\msx\game\rooms4.c:182: switch (N1) { case 44: RL(383); break; case 64: RL(384); break; case 116: RL(600); break; }
	ld	a, (_N1)
	sub	a, #0x2c
	ld	a, #0x01
	jr	z, 00576$
	xor	a, a
00576$:
	ld	e, a
;E:\supernova\msx\game\rooms4.c:178: switch (Vb)
	ld	a, c
	or	a, a
	jr	nz, 00119$
	ld	a, (_Vb)
	sub	a, #0x21
	jp	z, 00128$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00125$
	ld	a, (_Vb)
	sub	a, #0x4b
	jr	z, 00125$
	jp	00165$
;E:\supernova\msx\game\rooms4.c:180: case 4: case 13: Door(78, 25); break;
00118$:
	ld	l, #0x19
	ld	a, #0x4e
	call	_Door
	jp	00165$
;E:\supernova\msx\game\rooms4.c:181: case 28:
00119$:
;E:\supernova\msx\game\rooms4.c:182: switch (N1) { case 44: RL(383); break; case 64: RL(384); break; case 116: RL(600); break; }
	ld	a, e
	or	a, a
	jr	nz, 00120$
	ld	a, (_N1)
	sub	a, #0x40
	jr	z, 00121$
	ld	a, b
	or	a, a
	jr	nz, 00122$
	jp	00165$
00120$:
	ld	hl, #0x017f
	call	_RL
	jp	00165$
00121$:
	ld	hl, #0x0180
	call	_RL
	jp	00165$
00122$:
	ld	hl, #0x0258
	call	_RL
;E:\supernova\msx\game\rooms4.c:183: break;
	jp	00165$
;E:\supernova\msx\game\rooms4.c:184: case 44: case 75:
00125$:
;E:\supernova\msx\game\rooms4.c:185: if (N1 == 44)
	ld	a, e
	or	a, a
	jp	z, 00165$
;E:\supernova\msx\game\rooms4.c:187: RS(156); Score(10, 50);
	ld	hl, #0x009c
	call	_RS
	ld	de, #0x0032
	ld	hl, #0x000a
	call	_Score
;E:\supernova\msx\game\rooms4.c:188: Play(20, 99, 7); Play(99, 99, 600); Play(99, 20, 7);
	ld	hl, #0x0007
	push	hl
	ld	de, #0x0063
	ld	l, #0x14
	call	_Play
	ld	hl, #0x0258
	push	hl
	ld	de, #0x0063
	ld	h, d
	ld	l, e
	call	_Play
	ld	hl, #0x0007
	push	hl
	ld	de, #0x0014
	ld	l, #0x63
	call	_Play
;E:\supernova\msx\game\rooms4.c:190: break;
	jp	00165$
;E:\supernova\msx\game\rooms4.c:191: case 33:
00128$:
;E:\supernova\msx\game\rooms4.c:192: if (N2 == 64)
	ld	a, (_N2)
	sub	a, #0x40
	jp	nz, 00165$
;E:\supernova\msx\game\rooms4.c:193: if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	jp	nz, 00165$
;E:\supernova\msx\game\rooms4.c:195: if (N1 == 17)
	ld	a, (_N1)
	sub	a, #0x11
	jp	nz, 00132$
;E:\supernova\msx\game\rooms4.c:197: Explode(1); Sound(50); RS(151);
	ld	a, #0x01
	call	_Explode
	ld	hl, #0x0032
	call	_Sound
	ld	hl, #0x0097
	call	_RS
;E:\supernova\msx\game\rooms4.c:198: for (i = 9000; i >= 1; i--)
	ld	hl, #0x2328
	ld	(_i), hl
00163$:
;E:\supernova\msx\game\rooms4.c:199: for (j = 1; j <= 4; j++) Sound(Rnd(i / 2 + 400) + i);
	ld	hl, #0x0001
	ld	(_j), hl
00161$:
	ld	hl, (_i)
	ld	e, l
	ld	d, h
	bit	7, h
	jr	z, 00167$
	ex	de, hl
	inc	de
00167$:
	sra	d
	rr	e
	ld	hl, #0x0190
	add	hl, de
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, (_j)
	inc	hl
	ld	(_j), hl
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00586$
	xor	a, #0x80
00586$:
	jp	p, 00161$
;E:\supernova\msx\game\rooms4.c:198: for (i = 9000; i >= 1; i--)
	ld	hl, (_i)
	dec	hl
	ld	(_i), hl
	ld	bc, (_i)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00163$
;E:\supernova\msx\game\rooms4.c:200: NoSound();
	call	_NoSound
;E:\supernova\msx\game\rooms4.c:201: Van(17); LOC_ADD(80, 17); MoveTo(80); Add(7); T[22] = 3; T[26] = 91;
	ld	a, #0x11
	call	_Van
	ld	bc, #_g_Loc+1362
	ld	a, (bc)
	set	0, a
	ld	(bc), a
	ld	a, #0x50
	call	_MoveTo
	ld	a, #0x07
	call	_Add
	ld	hl, #0x0003
	ld	((_T + 44)), hl
	ld	l, #0x5b
	ld	((_T + 52)), hl
;E:\supernova\msx\game\rooms4.c:202: Delay(900); Sound(70); RL(399); Delay(999); NoSound(); Score(25, 101);
	ld	hl, #0x0384
	call	_Delay
	ld	hl, #0x0046
	call	_Sound
	ld	hl, #0x018f
	call	_RL
	ld	hl, #0x03e7
	call	_Delay
	call	_NoSound
	ld	de, #0x0065
	ld	hl, #0x0019
	call	_Score
;E:\supernova\msx\game\rooms4.c:203: SetNoun(40, 6);
	ld	l, #0x06
	ld	a, #0x28
	call	_SetNoun
;E:\supernova\msx\game\rooms4.c:204: SetNoun(82, 14);
	ld	l, #0x0e
	ld	a, #0x52
	call	_SetNoun
;E:\supernova\msx\game\rooms4.c:205: SetNoun(110, 8);
	ld	l, #0x08
	ld	a, #0x6e
	call	_SetNoun
	jp	00165$
00132$:
;E:\supernova\msx\game\rooms4.c:207: else RL(137);
	ld	hl, #0x0089
	call	_RL
;E:\supernova\msx\game\rooms4.c:211: break;
	jp	00165$
;E:\supernova\msx\game\rooms4.c:213: case 80:    // Inspection Lobby
00139$:
;E:\supernova\msx\game\rooms4.c:214: switch (Vb)
	ld	a, e
	or	a, a
	jr	nz, 00141$
	ld	a, (_Vb)
	sub	a, #0x09
	jr	z, 00142$
	ld	a, -2 (ix)
	or	a, a
	jr	nz, 00141$
;E:\supernova\msx\game\rooms4.c:219: switch (N1)
	ld	a, (_N1)
	sub	a, #0x37
	ld	a, #0x01
	jr	z, 00589$
	xor	a, a
00589$:
	ld	e, a
;E:\supernova\msx\game\rooms4.c:214: switch (Vb)
	ld	a, c
	or	a, a
	jr	nz, 00143$
	ld	a, (_Vb)
	cp	a, #0x29
	jr	z, 00156$
	cp	a, #0x2a
	jr	z, 00156$
	sub	a, #0x2b
	jr	z, 00156$
	ld	a, -1 (ix)
	or	a, a
	jr	nz, 00156$
	ld	a, (_Vb)
	cp	a, #0x35
	jr	z, 00156$
	sub	a, #0x58
	jr	z, 00156$
	jr	00165$
;E:\supernova\msx\game\rooms4.c:216: case 4: case 13: Door(81, 65); break;
00141$:
	ld	l, #0x41
	ld	a, #0x51
	call	_Door
	jr	00165$
;E:\supernova\msx\game\rooms4.c:217: case 9: RL(523); break;
00142$:
	ld	hl, #0x020b
	call	_RL
	jr	00165$
;E:\supernova\msx\game\rooms4.c:218: case 28:
00143$:
;E:\supernova\msx\game\rooms4.c:219: switch (N1)
	ld	a, e
	or	a, a
	jr	nz, 00144$
	ld	a, (_N1)
	cp	a, #0x48
	jr	z, 00149$
	sub	a, #0x56
	jr	z, 00145$
	ld	a, b
	or	a, a
	jr	nz, 00149$
	jr	00165$
;E:\supernova\msx\game\rooms4.c:221: case 55: RL(385); break;
00144$:
	ld	hl, #0x0181
	call	_RL
	jr	00165$
;E:\supernova\msx\game\rooms4.c:222: case 86: if (LOC_HAS(80, 17)) RL(395); break;
00145$:
	ld	a, (#(_g_Loc + 1362) + 0)
	rrca
	jr	nc, 00165$
	ld	hl, #0x018b
	call	_RL
	jr	00165$
;E:\supernova\msx\game\rooms4.c:223: case 72: case 116: RS(148); break;
00149$:
	ld	hl, #0x0094
	call	_RS
;E:\supernova\msx\game\rooms4.c:225: break;
	jr	00165$
;E:\supernova\msx\game\rooms4.c:226: case 41: case 42: case 43: case 44: case 88: case 53: if (N1 == 55) RL(405); break;
00156$:
	ld	a, e
	or	a, a
	jr	z, 00165$
	ld	hl, #0x0195
	call	_RL
;E:\supernova\msx\game\rooms4.c:229: }
00165$:
;E:\supernova\msx\game\rooms4.c:230: }
	pop	af
	pop	ix
	ret
;E:\supernova\msx\game\rooms4.c:232: void Room18(void)    // Planetship
;	---------------------------------
; Function Room18
; ---------------------------------
_Room18::
;E:\supernova\msx\game\rooms4.c:235: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x51
	jr	z, 00101$
	cp	a, #0x52
	jr	z, 00110$
	cp	a, #0x53
	jp	z, 00120$
	cp	a, #0x5d
	jp	z, 00130$
	cp	a, #0x5f
	jp	z, 00177$
	sub	a, #0x60
	jp	z, 00193$
	ret
;E:\supernova\msx\game\rooms4.c:237: case 81:    // Circular Corridor
00101$:
;E:\supernova\msx\game\rooms4.c:238: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00102$
	cp	a, #0x03
	jr	z, 00104$
	cp	a, #0x06
	jr	z, 00105$
	cp	a, #0x0b
	jr	z, 00104$
	sub	a, #0x1c
	jr	z, 00106$
	ret
;E:\supernova\msx\game\rooms4.c:240: case 2: MoveTo(82); break;
00102$:
	ld	a, #0x52
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:241: case 3: case 11: Door(80, 65); break;
00104$:
	ld	l, #0x41
	ld	a, #0x50
	jp	_Door
;E:\supernova\msx\game\rooms4.c:242: case 6: MoveTo(88); break;
00105$:
	ld	a, #0x58
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:243: case 28: if (N1 == 72) RL(386); break;
00106$:
	ld	a, (_N1)
	sub	a, #0x48
	ret	nz
;E:\supernova\msx\game\rooms4.c:245: break;
	ld	hl, #0x0182
	jp	_RL
;E:\supernova\msx\game\rooms4.c:247: case 82:    // Circular Corridor
00110$:
;E:\supernova\msx\game\rooms4.c:248: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00111$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00112$
	cp	a, #0x04
	jr	z, 00113$
	cp	a, #0x08
	jr	z, 00114$
	sub	a, #0x1c
	jr	z, 00115$
	ret
;E:\supernova\msx\game\rooms4.c:250: case 1: MoveTo(81); break;
00111$:
	ld	a, #0x51
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:251: case 3: Door(96, 50); break;
00112$:
	ld	l, #0x32
	ld	a, #0x60
	jp	_Door
;E:\supernova\msx\game\rooms4.c:252: case 4: Door(93, 5); break;
00113$:
	ld	l, #0x05
	ld	a, #0x5d
	jp	_Door
;E:\supernova\msx\game\rooms4.c:253: case 8: MoveTo(83); break;
00114$:
	ld	a, #0x53
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:254: case 28: if (N1 == 72 || N1 == 103) RL(387); break;
00115$:
	ld	a, (_N1)
	cp	a, #0x48
	jr	z, 00116$
	sub	a, #0x67
	ret	nz
00116$:
;E:\supernova\msx\game\rooms4.c:256: break;
	ld	hl, #0x0183
	jp	_RL
;E:\supernova\msx\game\rooms4.c:258: case 83:    // Circular Corridor
00120$:
;E:\supernova\msx\game\rooms4.c:259: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00122$
	cp	a, #0x04
	jr	z, 00123$
	cp	a, #0x05
	jr	z, 00124$
	cp	a, #0x0b
	jr	z, 00122$
	sub	a, #0x1c
	jr	z, 00125$
	ret
;E:\supernova\msx\game\rooms4.c:261: case 2: case 11: Door(95, 25); break;
00122$:
	ld	l, #0x19
	ld	a, #0x5f
	jp	_Door
;E:\supernova\msx\game\rooms4.c:262: case 4: MoveTo(84); break;
00123$:
	ld	a, #0x54
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:263: case 5: MoveTo(82); break;
00124$:
	ld	a, #0x52
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:264: case 28: if (N1 == 72 || N1 == 115) RL(388); break;
00125$:
	ld	a, (_N1)
	cp	a, #0x48
	jr	z, 00126$
	sub	a, #0x73
	ret	nz
00126$:
;E:\supernova\msx\game\rooms4.c:266: break;
	ld	hl, #0x0184
	jp	_RL
;E:\supernova\msx\game\rooms4.c:268: case 93:    // Central Elevator
00130$:
;E:\supernova\msx\game\rooms4.c:269: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00133$
	cp	a, #0x0b
	jr	z, 00133$
	cp	a, #0x0d
	jr	z, 00133$
	cp	a, #0x1c
	jp	z, 00160$
	sub	a, #0x38
	jp	z, 00164$
	ret
;E:\supernova\msx\game\rooms4.c:271: case 3: case 11: case 13:
00133$:
;E:\supernova\msx\game\rooms4.c:272: if (Floor == 1) Door(82, 5);
	ld	hl, (_Floor)
	ld	a, l
	dec	a
	or	a, h
	jr	nz, 00158$
	ld	l, #0x05
	ld	a, #0x52
	jp	_Door
00158$:
;E:\supernova\msx\game\rooms4.c:273: else if (IN_RANGE(Floor, 2, 5) || IN_RANGE(Floor, 30, 40) || IN_RANGE(Floor, 89, 95) || IN_RANGE(Floor, 170, 230) ||
	ld	a, l
	sub	a, #0x02
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00146$
	ld	a, #0x05
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00141$
00146$:
	ld	a, l
	sub	a, #0x1e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00148$
	ld	a, #0x28
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00141$
00148$:
	ld	a, l
	sub	a, #0x59
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00150$
	ld	a, #0x5f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00141$
00150$:
	ld	a, l
	sub	a, #0xaa
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00152$
	ld	a, #0xe6
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00141$
00152$:
;E:\supernova\msx\game\rooms4.c:274: IN_RANGE(Floor, 333, 444) || IN_RANGE(Floor, 543, 600) || IN_RANGE(Floor, 793, 812)) RL(413);
	ld	a, l
	sub	a, #0x4d
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	c, 00154$
	ld	a, #0xbc
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	nc, 00141$
00154$:
	ld	a, l
	sub	a, #0x1f
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x82
	jr	c, 00156$
	ld	a, #0x58
	cp	a, l
	ld	a, #0x02
	sbc	a, h
	jr	nc, 00141$
00156$:
	ld	a, l
	sub	a, #0x19
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x83
	jr	c, 00142$
	ld	a, #0x2c
	cp	a, l
	ld	a, #0x03
	sbc	a, h
	jr	c, 00142$
00141$:
	ld	hl, #0x019d
	jp	_RL
00142$:
;E:\supernova\msx\game\rooms4.c:275: else if (Floor == 480)
	ld	de, #0x01e0
	cp	a, a
	sbc	hl, de
	jr	nz, 00139$
;E:\supernova\msx\game\rooms4.c:277: if (En(64))
	ld	a, #0x40
	call	_En
	or	a, a
	jr	z, 00136$
;E:\supernova\msx\game\rooms4.c:279: Door(98, 5); Delay(999); RS(217); Score(20, 102);
	ld	l, #0x05
	ld	a, #0x62
	call	_Door
	ld	hl, #0x03e7
	call	_Delay
	ld	hl, #0x00d9
	call	_RS
	ld	de, #0x0066
	ld	hl, #0x0014
	call	_Score
;E:\supernova\msx\game\rooms4.c:280: for (x = 1; x <= 7; x++) { i = Rnd(7000) + 1500; j = Rnd(600) + 400; Play(i, i, j); }
	ld	hl, #_x
	ld	(hl), #0x01
00205$:
	ld	hl, #0x1b58
	call	_Rnd
	ld	hl, #0x05dc
	add	hl, de
	ld	(_i), hl
	ld	hl, #0x0258
	call	_Rnd
	ld	hl, #0x0190
	add	hl, de
	ld	(_j), hl
	push	hl
	ld	de, (_i)
	ld	hl, (_i)
	call	_Play
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x07
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00205$
;E:\supernova\msx\game\rooms4.c:281: RL(516);
	ld	hl, #0x0204
	jp	_RL
00136$:
;E:\supernova\msx\game\rooms4.c:283: else RL(413);
	ld	hl, #0x019d
	jp	_RL
00139$:
;E:\supernova\msx\game\rooms4.c:285: else { Door(97, 5); Score(5, 103); }
	ld	l, #0x05
	ld	a, #0x61
	call	_Door
	ld	de, #0x0067
;E:\supernova\msx\game\rooms4.c:286: break;
	ld	hl, #0x0005
	jp	_Score
;E:\supernova\msx\game\rooms4.c:287: case 28: if (N1 == 44 || N1 == 52) RS(188); break;
00160$:
	ld	a, (_N1)
	cp	a, #0x2c
	jr	z, 00161$
	sub	a, #0x34
	ret	nz
00161$:
	ld	hl, #0x00bc
	jp	_RS
;E:\supernova\msx\game\rooms4.c:288: case 56:
00164$:
;E:\supernova\msx\game\rooms4.c:289: Val(Input, &i, &TestC);
	ld	hl, #_TestC
	push	hl
	ld	de, #_i
	ld	hl, #_Input
	call	_Val
;E:\supernova\msx\game\rooms4.c:290: if (TestC == 0)
	ld	a, (_TestC+1)
	ld	hl, #_TestC
	or	a, (hl)
	jp	nz, _Crazy
;E:\supernova\msx\game\rooms4.c:292: if (i > 0 && i < 837)
	ld	hl, (_i)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00783$
	xor	a, #0x80
00783$:
	jp	p, 00170$
	ld	de, #0x0345
	cp	a, a
	sbc	hl, de
	jp	nc, 00170$
;E:\supernova\msx\game\rooms4.c:294: if (i != Floor)
	ld	a, (_i)
	ld	iy, #_Floor
	sub	a, 0 (iy)
	jr	nz, 00784$
	ld	a, (_i + 1)
	sub	a, 1 (iy)
	jp	z, 00167$
00784$:
;E:\supernova\msx\game\rooms4.c:296: j = i; i = Floor > i ? Floor - i : i - Floor; Floor = j; RL(411); Play(20, 36, 35);
	ld	hl, (_i)
	ld	(_j), hl
	ld	hl, #_i
	ld	a, (hl)
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jp	po, 00785$
	xor	a, #0x80
00785$:
	jp	p, 00211$
	ld	de, (_i)
	ld	hl, (_Floor)
	cp	a, a
	sbc	hl, de
	jr	00212$
00211$:
	ld	de, (_Floor)
	ld	hl, (_i)
	cp	a, a
	sbc	hl, de
00212$:
	ld	(_i), hl
	ld	hl, (_j)
	ld	(_Floor), hl
	ld	hl, #0x019b
	call	_RL
	ld	hl, #0x0023
	push	hl
	ld	de, #0x0024
	ld	l, #0x14
	call	_Play
;E:\supernova\msx\game\rooms4.c:297: Sound(37);
	ld	hl, #0x0025
	call	_Sound
;E:\supernova\msx\game\rooms4.c:298: k = i / 4;
	ld	hl, (_i)
	ld	e, l
	ld	d, h
	bit	7, h
	jr	z, 00213$
	ex	de, hl
	inc	de
	inc	de
	inc	de
00213$:
	sra	d
	rr	e
	sra	d
	rr	e
;E:\supernova\msx\game\rooms4.c:299: for (x = 1; x <= 200; x++) Delay(k);
	ld	hl, #_x
	ld	(hl), #0x01
00207$:
	ex	de, hl
	push	hl
	call	_Delay
	pop	de
	ld	hl, #_x
	inc	(hl)
	ld	a, #0xc8
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00207$
;E:\supernova\msx\game\rooms4.c:300: RL(412); Play(36, 20, 35);
	ld	hl, #0x019c
	call	_RL
	ld	hl, #0x0023
	push	hl
	ld	de, #0x0014
	ld	l, #0x24
	call	_Play
	ret
00167$:
;E:\supernova\msx\game\rooms4.c:302: else RL(410);
	ld	hl, #0x019a
	jp	_RL
00170$:
;E:\supernova\msx\game\rooms4.c:304: else RL(410);
;E:\supernova\msx\game\rooms4.c:306: else Crazy();
;E:\supernova\msx\game\rooms4.c:309: break;
	ld	hl, #0x019a
	jp	_RL
;E:\supernova\msx\game\rooms4.c:311: case 95:    // Transmission Room
00177$:
;E:\supernova\msx\game\rooms4.c:312: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00179$
	ld	a, (_Vb)
	cp	a, #0x0d
	jr	z, 00179$
	cp	a, #0x1c
	jr	z, 00180$
	cp	a, #0x2a
	jr	z, 00186$
	cp	a, #0x2c
	jr	z, 00186$
	sub	a, #0x4b
	jr	z, 00186$
	ret
;E:\supernova\msx\game\rooms4.c:314: case 1: case 13: Door(83, 25); break;
00179$:
	ld	l, #0x19
	ld	a, #0x53
	jp	_Door
;E:\supernova\msx\game\rooms4.c:315: case 28: if (N1 == 38 || N1 == 121) RS(191); break;
00180$:
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00181$
	sub	a, #0x79
	ret	nz
00181$:
	ld	hl, #0x00bf
	jp	_RS
;E:\supernova\msx\game\rooms4.c:316: case 42: case 44: case 75:
00186$:
;E:\supernova\msx\game\rooms4.c:317: if (N1 == 44)
	ld	a, (_N1)
	sub	a, #0x2c
	ret	nz
;E:\supernova\msx\game\rooms4.c:319: Score(5, 104); RL(404); Play(1200, 1200, 99);
	ld	de, #0x0068
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x0194
	call	_RL
	ld	hl, #0x0063
	push	hl
	ld	de, #0x04b0
	ld	h, d
	ld	l, e
	call	_Play
;E:\supernova\msx\game\rooms4.c:320: if (En(48)) Min(48); else Add(48);
	ld	a, #0x30
	call	_En
	or	a, a
	jr	z, 00188$
	ld	a, #0x30
	jp	_Min
00188$:
;E:\supernova\msx\game\rooms4.c:324: break;
	ld	a, #0x30
	jp	_Add
;E:\supernova\msx\game\rooms4.c:326: case 96:    // Station Control
00193$:
;E:\supernova\msx\game\rooms4.c:327: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00195$
	cp	a, #0x0d
	jr	z, 00195$
	cp	a, #0x1c
	jr	z, 00196$
	sub	a, #0x1f
	jr	z, 00200$
	ret
;E:\supernova\msx\game\rooms4.c:329: case 4: case 13: Door(82, 50); break;
00195$:
	ld	l, #0x32
	ld	a, #0x52
	jp	_Door
;E:\supernova\msx\game\rooms4.c:330: case 28:
00196$:
;E:\supernova\msx\game\rooms4.c:331: switch (N1) { case 38: RS(192); break; case 59: Score(5, 105); RB2(11, 5); Pause(); break; }
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00197$
	sub	a, #0x3b
	jr	z, 00198$
	ret
00197$:
	ld	hl, #0x00c0
	jp	_RS
00198$:
	ld	de, #0x0069
	ld	hl, #0x0005
	call	_Score
	ld	l, #0x05
	ld	a, #0x0b
	call	_RB2
;E:\supernova\msx\game\rooms4.c:332: break;
	jp	_Pause
;E:\supernova\msx\game\rooms4.c:333: case 31: if (N1 == 59) { Score(5, 105); RB2(11, 5); Pause(); } break;
00200$:
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	de, #0x0069
	ld	hl, #0x0005
	call	_Score
	ld	l, #0x05
	ld	a, #0x0b
	call	_RB2
;E:\supernova\msx\game\rooms4.c:336: }
;E:\supernova\msx\game\rooms4.c:337: }
	jp	_Pause
;E:\supernova\msx\game\rooms4.c:339: void Room19(void)    // Planetship
;	---------------------------------
; Function Room19
; ---------------------------------
_Room19::
;E:\supernova\msx\game\rooms4.c:341: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x54
	jr	z, 00101$
	cp	a, #0x55
	jr	z, 00111$
	cp	a, #0x56
	jp	z, 00120$
	cp	a, #0x57
	jp	z, 00147$
	cp	a, #0x58
	jp	z, 00156$
	sub	a, #0x59
	jp	z, 00165$
	ret
;E:\supernova\msx\game\rooms4.c:343: case 84:    // Circular Corridor
00101$:
;E:\supernova\msx\game\rooms4.c:344: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x03
	jr	z, 00104$
	cp	a, #0x06
	jr	z, 00105$
	cp	a, #0x0b
	jr	z, 00103$
	sub	a, #0x1c
	jr	z, 00106$
	ret
;E:\supernova\msx\game\rooms4.c:346: case 2: case 11: Door(94, 65); break;
00103$:
	ld	l, #0x41
	ld	a, #0x5e
	jp	_Door
;E:\supernova\msx\game\rooms4.c:347: case 3: MoveTo(83); break;
00104$:
	ld	a, #0x53
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:348: case 6: MoveTo(85); break;
00105$:
	ld	a, #0x55
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:349: case 28: if (N1 == 72 || N1 == 46) RL(389); break;
00106$:
	ld	a, (_N1)
	cp	a, #0x48
	jr	z, 00107$
	sub	a, #0x2e
	ret	nz
00107$:
;E:\supernova\msx\game\rooms4.c:351: break;
	ld	hl, #0x0185
	jp	_RL
;E:\supernova\msx\game\rooms4.c:353: case 85:    // Circular Corridor
00111$:
;E:\supernova\msx\game\rooms4.c:354: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00112$
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00114$
	cp	a, #0x07
	jr	z, 00115$
	cp	a, #0x0b
	jr	z, 00114$
	sub	a, #0x1c
	jr	z, 00116$
	ret
;E:\supernova\msx\game\rooms4.c:356: case 1: MoveTo(86); break;
00112$:
	ld	a, #0x56
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:357: case 4: case 11: Door(92, 65); break;
00114$:
	ld	l, #0x41
	ld	a, #0x5c
	jp	_Door
;E:\supernova\msx\game\rooms4.c:358: case 7: MoveTo(84); break;
00115$:
	ld	a, #0x54
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:359: case 28: if (N1 == 72) RL(390); break;
00116$:
	ld	a, (_N1)
	sub	a, #0x48
	ret	nz
;E:\supernova\msx\game\rooms4.c:361: break;
	ld	hl, #0x0186
	jp	_RL
;E:\supernova\msx\game\rooms4.c:363: case 86:    // Circular Corridor
00120$:
;E:\supernova\msx\game\rooms4.c:364: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00121$
	cp	a, #0x04
	jr	z, 00123$
	cp	a, #0x05
	jr	z, 00129$
	cp	a, #0x0b
	jr	z, 00123$
	cp	a, #0x1c
	jr	z, 00130$
	sub	a, #0x21
	jr	z, 00138$
	ret
;E:\supernova\msx\game\rooms4.c:366: case 2: MoveTo(85); break;
00121$:
	ld	a, #0x55
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:367: case 4: case 11:
00123$:
;E:\supernova\msx\game\rooms4.c:368: if (T[21] > 1) { Score(15, 107); MoveTo(91); if (En(52)) T[23] = 2; }
	ld	hl, (#_T + 42)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00774$
	xor	a, #0x80
00774$:
	jp	p, 00127$
	ld	de, #0x006b
	ld	hl, #0x000f
	call	_Score
	ld	a, #0x5b
	call	_MoveTo
	ld	a, #0x34
	call	_En
	or	a, a
	ret	z
	ld	hl, #0x0002
	ld	((_T + 46)), hl
	ret
00127$:
;E:\supernova\msx\game\rooms4.c:369: else RL(92);
;E:\supernova\msx\game\rooms4.c:370: break;
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms4.c:371: case 5: MoveTo(87); break;
00129$:
	ld	a, #0x57
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:372: case 28:
00130$:
;E:\supernova\msx\game\rooms4.c:373: switch (N1)
	ld	a, (_N1)
	cp	a, #0x38
	jr	z, 00131$
	cp	a, #0x40
	jr	z, 00134$
	cp	a, #0x45
	jr	z, 00136$
	sub	a, #0x48
	jr	z, 00136$
	ret
;E:\supernova\msx\game\rooms4.c:375: case 56: if (T[21] > 1) RL(370); break;
00131$:
	ld	hl, (#(_T + 42) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00779$
	xor	a, #0x80
00779$:
	ret	p
	ld	hl, #0x0172
	jp	_RL
;E:\supernova\msx\game\rooms4.c:376: case 64: RL(335); break;
00134$:
	ld	hl, #0x014f
	jp	_RL
;E:\supernova\msx\game\rooms4.c:377: case 72: case 69: RL(391); break;
00136$:
;E:\supernova\msx\game\rooms4.c:379: break;
	ld	hl, #0x0187
	jp	_RL
;E:\supernova\msx\game\rooms4.c:380: case 33:
00138$:
;E:\supernova\msx\game\rooms4.c:381: if (N2 == 64)
	ld	a, (_N2)
	sub	a, #0x40
	ret	nz
;E:\supernova\msx\game\rooms4.c:382: if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\rooms4.c:384: if (N1 == 12) { RL(336); T[21] = 3; DOpen(15); Score(5, 106); }
	ld	a, (_N1)
	sub	a, #0x0c
	jr	nz, 00140$
	ld	hl, #0x0150
	call	_RL
	ld	hl, #0x0003
	ld	((_T + 42)), hl
	ld	a, #0x0f
	call	_DOpen
	ld	de, #0x006a
	ld	hl, #0x0005
	jp	_Score
00140$:
;E:\supernova\msx\game\rooms4.c:385: else RL(137);
;E:\supernova\msx\game\rooms4.c:389: break;
	ld	hl, #0x0089
	jp	_RL
;E:\supernova\msx\game\rooms4.c:391: case 87:    // Circular Corridor
00147$:
;E:\supernova\msx\game\rooms4.c:392: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00149$
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00150$
	cp	a, #0x08
	jr	z, 00151$
	cp	a, #0x0b
	jr	z, 00149$
	sub	a, #0x1c
	jr	z, 00152$
	ret
;E:\supernova\msx\game\rooms4.c:394: case 1: case 11: Door(89, 65); break;
00149$:
	ld	l, #0x41
	ld	a, #0x59
	jp	_Door
;E:\supernova\msx\game\rooms4.c:395: case 3: MoveTo(88); break;
00150$:
	ld	a, #0x58
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:396: case 8: MoveTo(86); break;
00151$:
	ld	a, #0x56
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:397: case 28: if (N1 == 72) RL(392); break;
00152$:
	ld	a, (_N1)
	sub	a, #0x48
	ret	nz
;E:\supernova\msx\game\rooms4.c:399: break;
	ld	hl, #0x0188
	jp	_RL
;E:\supernova\msx\game\rooms4.c:401: case 88:    // Circular Corridor
00156$:
;E:\supernova\msx\game\rooms4.c:402: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00158$
	ld	a, (_Vb)
	cp	a, #0x04
	jr	z, 00159$
	cp	a, #0x07
	jr	z, 00160$
	cp	a, #0x0b
	jr	z, 00158$
	sub	a, #0x1c
	jr	z, 00161$
	ret
;E:\supernova\msx\game\rooms4.c:404: case 1: case 11: Door(90, 65); break;
00158$:
	ld	l, #0x41
	ld	a, #0x5a
	jp	_Door
;E:\supernova\msx\game\rooms4.c:405: case 4: MoveTo(87); break;
00159$:
	ld	a, #0x57
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:406: case 7: MoveTo(81); break;
00160$:
	ld	a, #0x51
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:407: case 28: if (N1 == 72) RL(392); break;
00161$:
	ld	a, (_N1)
	sub	a, #0x48
	ret	nz
;E:\supernova\msx\game\rooms4.c:409: break;
	ld	hl, #0x0188
	jp	_RL
;E:\supernova\msx\game\rooms4.c:411: case 89:    // Reactors West
00165$:
;E:\supernova\msx\game\rooms4.c:412: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00167$
	cp	a, #0x03
	jr	z, 00168$
	cp	a, #0x0d
	jr	z, 00167$
	cp	a, #0x1c
	jr	z, 00169$
	cp	a, #0x1f
	jr	z, 00174$
	cp	a, #0x2a
	jp	z, 00193$
	cp	a, #0x2c
	jp	z, 00183$
	sub	a, #0x4b
	jp	z, 00183$
	ret
;E:\supernova\msx\game\rooms4.c:414: case 2: case 13: Door(87, 65); break;
00167$:
	ld	l, #0x41
	ld	a, #0x57
	jp	_Door
;E:\supernova\msx\game\rooms4.c:415: case 3: MoveTo(90); break;
00168$:
	ld	a, #0x5a
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:416: case 28:
00169$:
;E:\supernova\msx\game\rooms4.c:417: switch (N1) { case 38: RL(414); break; case 59: RL(401); break; case 128: RS(189); break; }
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00170$
	cp	a, #0x3b
	jr	z, 00171$
	sub	a, #0x80
	jr	z, 00172$
	ret
00170$:
	ld	hl, #0x019e
	jp	_RL
00171$:
	ld	hl, #0x0191
	jp	_RL
00172$:
;E:\supernova\msx\game\rooms4.c:418: break;
	ld	hl, #0x00bd
	jp	_RS
;E:\supernova\msx\game\rooms4.c:419: case 31:
00174$:
;E:\supernova\msx\game\rooms4.c:420: if (N1 == 59)
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
;E:\supernova\msx\game\rooms4.c:421: switch (ScrnSet)
	ld	a, (_ScrnSet)
	dec	a
	jr	z, 00175$
	ld	a, (_ScrnSet)
	cp	a, #0x02
	jr	z, 00176$
	cp	a, #0x03
	jr	z, 00177$
	sub	a, #0x04
	jr	z, 00178$
	ret
;E:\supernova\msx\game\rooms4.c:423: case 1: RB2(8, 6); break;      // orange crystal
00175$:
	ld	l, #0x06
	ld	a, #0x08
	jp	_RB2
;E:\supernova\msx\game\rooms4.c:424: case 2: RB2(10, 10); break;    // green crystal
00176$:
	ld	a,#0x0a
	ld	l,a
	jp	_RB2
;E:\supernova\msx\game\rooms4.c:425: case 3: RB2(12, 14); break;    // yellow crystal
00177$:
	ld	l, #0x0e
	ld	a, #0x0c
	jp	_RB2
;E:\supernova\msx\game\rooms4.c:426: case 4:                        // blue crystal (cracked)
00178$:
;E:\supernova\msx\game\rooms4.c:427: RB2(14, 9);
	ld	l, #0x09
	ld	a, #0x0e
	call	_RB2
;E:\supernova\msx\game\rooms4.c:428: x = Wherex(); y = Wherey(); Gotoxy(40, 14); Col(25, 23); Wr("LACITIRC");
	call	_Wherex
	ld	(#_x), a
	call	_Wherey
	ld	(#_y), a
	ld	l, #0x0e
	ld	a, #0x28
	call	_Gotoxy
	ld	l, #0x17
	ld	a, #0x19
	call	_Col
	ld	hl, #___str_4
	call	_Wr
;E:\supernova\msx\game\rooms4.c:429: Gotoxy(x, y); Score(20, 108);
	ld	a, (_y)
	ld	l, a
	ld	a, (_x)
	call	_Gotoxy
	ld	de, #0x006c
;E:\supernova\msx\game\rooms4.c:432: break;
	ld	hl, #0x0014
	jp	_Score
;E:\supernova\msx\game\rooms4.c:433: case 44: case 75:
00183$:
;E:\supernova\msx\game\rooms4.c:434: if (N1 == 44)
	ld	a, (_N1)
	sub	a, #0x2c
	jr	nz, 00191$
;E:\supernova\msx\game\rooms4.c:436: RL(402); ScrnSet++; if (ScrnSet > 4) ScrnSet = 1;
	ld	hl, #0x0192
	call	_RL
	ld	hl, #_ScrnSet
	inc	(hl)
	ld	a, #0x04
	ld	iy, #_ScrnSet
	sub	a, 0 (iy)
	jr	nc, 00185$
	ld	(hl), #0x01
00185$:
;E:\supernova\msx\game\rooms4.c:437: for (x = 1; x <= 30; x++) { i = Rnd(7000) + 999; Play(i, i, 50); Delay(Rnd(15) + 5); }
	ld	hl, #_x
	ld	(hl), #0x01
00199$:
	ld	hl, #0x1b58
	call	_Rnd
	ld	hl, #0x03e7
	add	hl, de
	ld	(_i), hl
	ld	hl, #0x0032
	push	hl
	ld	de, (_i)
	ld	hl, (_i)
	call	_Play
	ld	hl, #0x000f
	call	_Rnd
	ld	hl, #0x0005
	add	hl, de
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x1e
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00199$
	ret
00191$:
;E:\supernova\msx\game\rooms4.c:439: else if (N1 == 38 || N1 == 128) RL(403);
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00187$
	sub	a, #0x80
	ret	nz
00187$:
;E:\supernova\msx\game\rooms4.c:440: break;
	ld	hl, #0x0193
	jp	_RL
;E:\supernova\msx\game\rooms4.c:441: case 42: if (N1 == 38 || N1 == 128) RL(403); break;
00193$:
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00194$
	sub	a, #0x80
	ret	nz
00194$:
	ld	hl, #0x0193
;E:\supernova\msx\game\rooms4.c:444: }
;E:\supernova\msx\game\rooms4.c:445: }
	jp	_RL
___str_4:
	.ascii "LACITIRC"
	.db 0x00
;E:\supernova\msx\game\rooms4.c:447: void Room20(void)    // Planetship
;	---------------------------------
; Function Room20
; ---------------------------------
_Room20::
;E:\supernova\msx\game\rooms4.c:449: switch (Prm)
	ld	a, (_Prm)
	cp	a, #0x5a
	jr	z, 00101$
	cp	a, #0x5b
	jp	z, 00120$
	sub	a, #0x5c
	jp	z, 00213$
	ret
;E:\supernova\msx\game\rooms4.c:451: case 90:    // Reactors East
00101$:
;E:\supernova\msx\game\rooms4.c:452: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x04
	jr	z, 00104$
	cp	a, #0x0d
	jr	z, 00103$
	cp	a, #0x1c
	jr	z, 00105$
	cp	a, #0x1f
	jr	z, 00110$
	cp	a, #0x2a
	jr	z, 00115$
	cp	a, #0x2c
	jr	z, 00115$
	sub	a, #0x4b
	jr	z, 00115$
	ret
;E:\supernova\msx\game\rooms4.c:454: case 2: case 13: Door(88, 65); break;
00103$:
	ld	l, #0x41
	ld	a, #0x58
	jp	_Door
;E:\supernova\msx\game\rooms4.c:455: case 4: MoveTo(89); break;
00104$:
	ld	a, #0x59
	jp	_MoveTo
;E:\supernova\msx\game\rooms4.c:456: case 28:
00105$:
;E:\supernova\msx\game\rooms4.c:457: switch (N1) { case 38: RL(393); break; case 59: RL(402); break; case 128: RS(190); break; }
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00106$
	cp	a, #0x3b
	jr	z, 00107$
	sub	a, #0x80
	jr	z, 00108$
	ret
00106$:
	ld	hl, #0x0189
	jp	_RL
00107$:
	ld	hl, #0x0192
	jp	_RL
00108$:
;E:\supernova\msx\game\rooms4.c:458: break;
	ld	hl, #0x00be
	jp	_RS
;E:\supernova\msx\game\rooms4.c:459: case 31: if (N1 == 59) { Score(5, 109); RB2(9, Rnd(14) + 1); } break;
00110$:
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	de, #0x006d
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x000e
	call	_Rnd
	ld	l, e
	inc	l
	ld	a, #0x09
	jp	_RB2
;E:\supernova\msx\game\rooms4.c:460: case 42: case 44: case 75: if (N1 == 38 || N1 == 128) RL(403); break;
00115$:
	ld	a, (_N1)
	cp	a, #0x26
	jr	z, 00116$
	sub	a, #0x80
	ret	nz
00116$:
;E:\supernova\msx\game\rooms4.c:462: break;
	ld	hl, #0x0193
	jp	_RL
;E:\supernova\msx\game\rooms4.c:464: case 91:    // Emergency Override
00120$:
;E:\supernova\msx\game\rooms4.c:465: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00122$
	cp	a, #0x04
	jp	z, 00129$
	cp	a, #0x0b
	jp	z, 00129$
	cp	a, #0x0d
	jr	z, 00122$
	cp	a, #0x18
	jp	z, 00148$
	cp	a, #0x1c
	jp	z, 00130$
	cp	a, #0x1f
	jp	z, 00145$
	cp	a, #0x21
	jp	z, 00205$
	cp	a, #0x27
	jp	z, 00190$
	cp	a, #0x29
	jp	z, 00184$
	cp	a, #0x2a
	jp	z, 00176$
	cp	a, #0x2c
	jp	z, 00176$
	cp	a, #0x31
	jp	z, 00193$
	cp	a, #0x36
	jp	z, 00160$
	cp	a, #0x4b
	jp	z, 00154$
	sub	a, #0x58
	jp	z, 00184$
	ret
;E:\supernova\msx\game\rooms4.c:467: case 3: case 13:
00122$:
;E:\supernova\msx\game\rooms4.c:468: if (T[25] > 2) { Col(10, 7); RL(424); T[25] = Null; T[24] = Null; T[26] = 14; Add(52); }
	ld	hl, (#(_T + 50) + 0)
	ld	a, #0x02
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00851$
	xor	a, #0x80
00851$:
	jp	p, 00124$
	ld	l, #0x07
	ld	a, #0x0a
	call	_Col
	ld	hl, #0x01a8
	call	_RL
	ld	hl, #0x0000
	ld	((_T + 50)), hl
	ld	((_T + 48)), hl
	ld	l, #0x0e
	ld	((_T + 52)), hl
	ld	a, #0x34
	call	_Add
00124$:
;E:\supernova\msx\game\rooms4.c:469: Door(86, 15);
	ld	l, #0x0f
	ld	a, #0x56
	call	_Door
;E:\supernova\msx\game\rooms4.c:470: if (T[24] > 0 && !En(64)) { T[24] = Null; T[26] = 14; Add(52); }
	ld	hl, (#(_T + 48) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	po, 00852$
	xor	a, #0x80
00852$:
	ret	p
	ld	a, #0x40
	call	_En
	or	a, a
	ret	nz
	ld	hl, #0x0000
	ld	((_T + 48)), hl
	ld	l, #0x0e
	ld	((_T + 52)), hl
;E:\supernova\msx\game\rooms4.c:471: break;
	ld	a, #0x34
	jp	_Add
;E:\supernova\msx\game\rooms4.c:472: case 4: case 11: RL(92); break;
00129$:
	ld	hl, #0x005c
	jp	_RL
;E:\supernova\msx\game\rooms4.c:473: case 28:
00130$:
;E:\supernova\msx\game\rooms4.c:474: switch (N1)
	ld	a, (_N1)
	cp	a, #0x25
	jr	z, 00133$
	cp	a, #0x26
	jr	z, 00133$
	cp	a, #0x2c
	jr	z, 00134$
	cp	a, #0x33
	jr	z, 00133$
	cp	a, #0x3b
	jr	z, 00135$
	cp	a, #0x40
	jr	z, 00136$
	sub	a, #0x45
	jr	z, 00137$
	ret
;E:\supernova\msx\game\rooms4.c:476: case 37: case 38: case 51: RL(393); break;
00133$:
	ld	hl, #0x0189
	jp	_RL
;E:\supernova\msx\game\rooms4.c:477: case 44: RL(469); break;
00134$:
	ld	hl, #0x01d5
	jp	_RL
;E:\supernova\msx\game\rooms4.c:478: case 59: RL(468); break;
00135$:
	ld	hl, #0x01d4
	jp	_RL
;E:\supernova\msx\game\rooms4.c:479: case 64: RL(335); break;
00136$:
	ld	hl, #0x014f
	jp	_RL
;E:\supernova\msx\game\rooms4.c:480: case 69: if (En(51)) RL(426); else if (Md == 1) RL(467); else RS(182); break;
00137$:
	ld	a, #0x33
	call	_En
	or	a, a
	jr	z, 00142$
	ld	hl, #0x01aa
	jp	_RL
00142$:
	ld	a, (_Md)
	dec	a
	jr	nz, 00139$
	ld	hl, #0x01d3
	jp	_RL
00139$:
;E:\supernova\msx\game\rooms4.c:482: break;
	ld	hl, #0x00b6
	jp	_RS
;E:\supernova\msx\game\rooms4.c:483: case 31: if (N1 == 59) RL(468); break;
00145$:
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	hl, #0x01d4
	jp	_RL
;E:\supernova\msx\game\rooms4.c:484: case 24: if (N1 == 69) { if (En(51)) Crazy(); else RL(427); } break;
00148$:
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
	ld	a, #0x33
	call	_En
	or	a, a
	jp	nz, _Crazy
	ld	hl, #0x01ab
	jp	_RL
;E:\supernova\msx\game\rooms4.c:485: case 75: if (N1 == 69) { if (En(51)) Crazy(); else RL(428); } break;
00154$:
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
	ld	a, #0x33
	call	_En
	or	a, a
	jp	nz, _Crazy
	ld	hl, #0x01ac
	jp	_RL
;E:\supernova\msx\game\rooms4.c:486: case 54:
00160$:
;E:\supernova\msx\game\rooms4.c:487: if (N1 == 69)
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
;E:\supernova\msx\game\rooms4.c:489: if (En(51)) RL(426);
	ld	a, #0x33
	call	_En
	or	a, a
	jr	z, 00171$
	ld	hl, #0x01aa
	jp	_RL
00171$:
;E:\supernova\msx\game\rooms4.c:490: else if (N2 == 0 || N2 == 60) RL(601);
	ld	a, (_N2+0)
	or	a, a
	jr	z, 00166$
	ld	a, (_N2)
	sub	a, #0x3c
	jr	nz, 00167$
00166$:
	ld	hl, #0x0259
	jp	_RL
00167$:
;E:\supernova\msx\game\rooms4.c:491: else if (!(N2 == 10 || N2 == 18 || N2 == 29)) RL(602);
	ld	a, (_N2)
	cp	a, #0x0a
	jr	z, 00162$
	cp	a, #0x12
	jr	z, 00162$
	sub	a, #0x1d
	jr	z, 00162$
	ld	hl, #0x025a
	jp	_RL
00162$:
;E:\supernova\msx\game\rooms4.c:494: RS(160); LOC_ADD(91, 123); LOC_DEL(91, 44); LOC_DEL(91, 129); T[23] = 15;
	ld	hl, #0x00a0
	call	_RS
	ld	bc, #_g_Loc + 1562
	ld	a, (bc)
	set	2, a
	ld	(bc), a
	ld	bc, #_g_Loc + 1552
	ld	a, (bc)
	res	3, a
	ld	(bc), a
	ld	bc, #_g_Loc + 1563
	ld	a, (bc)
	res	0, a
	ld	(bc), a
	ld	hl, #0x000f
	ld	((_T + 46)), hl
;E:\supernova\msx\game\rooms4.c:495: Add(51);
;E:\supernova\msx\game\rooms4.c:498: break;
	ld	a, #0x33
	jp	_Add
;E:\supernova\msx\game\rooms4.c:499: case 42: case 44:
00176$:
;E:\supernova\msx\game\rooms4.c:500: if (N1 == 69 && !En(51)) RL(470);
	ld	a, (_N1)
	sub	a, #0x45
	jr	nz, 00180$
	ld	a, #0x33
	call	_En
	or	a, a
	jr	nz, 00180$
	ld	hl, #0x01d6
	jp	_RL
00180$:
;E:\supernova\msx\game\rooms4.c:501: else if (N1 == 44) { RL(471); Play(20, 440, 1); Play(440, 440, 500); Play(440, 20, 1); }
	ld	a, (_N1)
	sub	a, #0x2c
	ret	nz
	ld	hl, #0x01d7
	call	_RL
	ld	hl, #0x0001
	push	hl
	ld	de, #0x01b8
	ld	l, #0x14
	call	_Play
	ld	hl, #0x01f4
	push	hl
	ld	de, #0x01b8
	ld	l, #0xb8
	call	_Play
	ld	hl, #0x0001
	push	hl
	ld	de, #0x0014
	ld	hl, #0x01b8
	call	_Play
;E:\supernova\msx\game\rooms4.c:502: break;
	ret
;E:\supernova\msx\game\rooms4.c:503: case 41: case 88: if (N1 == 69) { if (En(51)) Crazy(); else RL(467); } break;
00184$:
	ld	a, (_N1)
	sub	a, #0x45
	ret	nz
	ld	a, #0x33
	call	_En
	or	a, a
	jp	nz, _Crazy
	ld	hl, #0x01d3
	jp	_RL
;E:\supernova\msx\game\rooms4.c:504: case 39: if (N1 == 95) RL(442); break;
00190$:
	ld	a, (_N1)
	sub	a, #0x5f
	ret	nz
	ld	hl, #0x01ba
	jp	_RL
;E:\supernova\msx\game\rooms4.c:505: case 49:
00193$:
;E:\supernova\msx\game\rooms4.c:506: if (N2 == 123)
	ld	a, (_N2)
	sub	a, #0x7b
	ret	nz
;E:\supernova\msx\game\rooms4.c:507: if (Pr == 1)
	ld	a, (_Pr)
	dec	a
	ret	nz
;E:\supernova\msx\game\rooms4.c:509: if (N1 == 1)
	ld	a, (_N1)
	dec	a
	jr	nz, 00199$
;E:\supernova\msx\game\rooms4.c:511: if (T[24] > 1 && T[24] < 6) { T[24] = Null; T[25] = 7; RS(181); }
	ld	hl, (#(_T + 48) + 0)
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00889$
	xor	a, #0x80
00889$:
	jp	p, 00195$
	ld	de, #0x0006
	cp	a, a
	sbc	hl, de
	jr	nc, 00195$
	ld	hl, #0x0000
	ld	((_T + 48)), hl
	ld	l, #0x07
	ld	((_T + 50)), hl
	ld	l, #0xb5
	jp	_RS
00195$:
;E:\supernova\msx\game\rooms4.c:512: else RL(429);
	ld	hl, #0x01ad
	jp	_RL
00199$:
;E:\supernova\msx\game\rooms4.c:514: else RL(425);
;E:\supernova\msx\game\rooms4.c:516: break;
	ld	hl, #0x01a9
	jp	_RL
;E:\supernova\msx\game\rooms4.c:517: case 33:
00205$:
;E:\supernova\msx\game\rooms4.c:518: if (N2 == 64)
	ld	a, (_N2)
	sub	a, #0x40
	ret	nz
;E:\supernova\msx\game\rooms4.c:519: if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\rooms4.c:520: if (N1 == 12) RL(577);
	ld	a, (_N1)
	sub	a, #0x0c
	ret	nz
;E:\supernova\msx\game\rooms4.c:523: break;
	ld	hl, #0x0241
	jp	_RL
;E:\supernova\msx\game\rooms4.c:525: case 92:    // Climate Control
00213$:
;E:\supernova\msx\game\rooms4.c:526: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x03
	jr	z, 00215$
	cp	a, #0x0d
	jr	z, 00215$
	cp	a, #0x1c
	jr	z, 00217$
	sub	a, #0x1f
	jr	z, 00217$
	ret
;E:\supernova\msx\game\rooms4.c:528: case 3: case 13: Door(85, 65); break;
00215$:
	ld	l, #0x41
	ld	a, #0x55
	jp	_Door
;E:\supernova\msx\game\rooms4.c:529: case 28: case 31: if (N1 == 59) RS(152); break;
00217$:
	ld	a, (_N1)
	sub	a, #0x3b
	ret	nz
	ld	hl, #0x0098
;E:\supernova\msx\game\rooms4.c:532: }
;E:\supernova\msx\game\rooms4.c:533: }
	jp	_RS
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
