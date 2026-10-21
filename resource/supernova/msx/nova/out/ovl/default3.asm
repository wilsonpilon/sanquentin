;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module default3
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetR
	.globl _RestartGame
	.globl _SetNoun
	.globl _Say
	.globl _NoSense
	.globl _Crazy
	.globl _Van
	.globl _Restore
	.globl _RS
	.globl _RL
	.globl _Here
	.globl _WrFN
	.globl _Up
	.globl _Blast
	.globl _Walls
	.globl _Play
	.globl _Tune
	.globl _Score
	.globl _Min
	.globl _Add
	.globl _En
	.globl _Bor
	.globl _Bak
	.globl _Col
	.globl _Cur
	.globl _Rnd
	.globl _GetKey
	.globl _Delay
	.globl _NoSound
	.globl _Sound
	.globl _ClrScr
	.globl _Window
	.globl _Gotoxy
	.globl _Wln
	.globl _WrNum
	.globl _WrC
	.globl _Wr
	.globl _UpCase
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
	.globl _Default10
	.globl _Default11
	.globl _Default12
	.globl _Default13
	.globl _Default14
	.globl _DeadMain
	.globl _DEAD
	.globl _Call13
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
;E:\supernova\msx\game\default3.c:5: static u8 InR(u8 v, const u8* r)
;	---------------------------------
; Function InR
; ---------------------------------
_InR:
	ld	c, a
;E:\supernova\msx\game\default3.c:7: while (*r) { if (v >= r[0] && v <= r[1]) return 1; r += 2; }
00104$:
	ld	a, (de)
	ld	l, a
	or	a, a
	jr	z, 00106$
	ld	a, c
	sub	a, l
	jr	c, 00102$
	ld	l, e
	ld	h, d
	inc	hl
	ld	a, (hl)
	sub	a, c
	jr	c, 00102$
	ld	a, #0x01
	ret
00102$:
	inc	de
	inc	de
	jr	00104$
00106$:
;E:\supernova\msx\game\default3.c:8: return 0;
	xor	a, a
;E:\supernova\msx\game\default3.c:9: }
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
;E:\supernova\msx\game\default3.c:19: static void PutInto(const u8* allowed, u8* con, const char* what, u16 full, u16 isMug)
;	---------------------------------
; Function PutInto
; ---------------------------------
_PutInto:
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	hl
;E:\supernova\msx\game\default3.c:22: if (*con == Null)
	ex	de, hl
	push	hl
	ld	a, (hl)
	or	a, a
	jp	nz, 00117$
;E:\supernova\msx\game\default3.c:24: if (InR(N1, allowed))
	pop	hl
	pop	de
	push	de
	push	hl
	ld	a, (_N1)
	call	_InR
	or	a, a
	jp	z, 00114$
;E:\supernova\msx\game\default3.c:26: if (isMug)
	ld	a, 9 (ix)
	or	a, 8 (ix)
	jp	z, 00106$
;E:\supernova\msx\game\default3.c:28: Wr("The "); WrFN(N1); Wr(" is now in the mug."); Wln();
	ld	hl, #___str_1
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_2
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:29: if (IN29(Mov, N1)) Van(N1);
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00102$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00102$
	ld	de, #_Mov+0
	ld	a, (_N1+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00193$:
	sra	h
	rr	l
	djnz	00193$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00195$
00194$:
	srl	a
00195$:
	djnz	00194$
	rrca
	jr	nc, 00102$
	ld	a, (_N1)
	call	_Van
00102$:
;E:\supernova\msx\game\default3.c:30: LOC_ADD(Prm, N1); *con = N1;
	ld	bc, #_g_Loc+0
	ld	iy, #_Prm
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	a, (_N1+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00197$:
	sra	d
	rr	e
	djnz	00197$
	add	hl, de
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00199$
00198$:
	add	a, a
00199$:
	djnz	00198$
	ld	c, (hl)
	or	a, c
	ld	(hl), a
	pop	hl
	push	hl
	ld	a, (_N1)
	ld	(hl), a
	jp	00119$
00106$:
;E:\supernova\msx\game\default3.c:34: Van(N1); LOC_ADD(Prm, N1); *con = N1;
	ld	a, (_N1)
	call	_Van
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
	ld	a, (_N1+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00200$:
	sra	d
	rr	e
	djnz	00200$
	add	hl, de
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00202$
00201$:
	add	a, a
00202$:
	djnz	00201$
	or	a, (hl)
	ld	(hl), a
	pop	hl
	push	hl
	ld	a, (_N1)
	ld	(hl), a
;E:\supernova\msx\game\default3.c:35: Wr("The "); WrFN(N1); Wr(" is now in the "); Wr(what); Wr("."); Wln();
	ld	hl, #___str_1
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_3
	call	_Wr
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	call	_Wr
	ld	hl, #___str_4
	call	_Wr
	call	_Wln
	jr	00119$
00114$:
;E:\supernova\msx\game\default3.c:38: else if (IN29(Mov, N1)) RL(137);
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00109$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00109$
	ld	de, #_Mov+0
	ld	a, (_N1+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00203$:
	sra	h
	rr	l
	djnz	00203$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00205$
00204$:
	srl	a
00205$:
	djnz	00204$
	rrca
	jr	nc, 00109$
	ld	hl, #0x0089
	call	_RL
	jr	00119$
00109$:
;E:\supernova\msx\game\default3.c:39: else Crazy();
	call	_Crazy
	jr	00119$
00117$:
;E:\supernova\msx\game\default3.c:41: else RL(full);
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	call	_RL
00119$:
;E:\supernova\msx\game\default3.c:42: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	pop	af
	jp	(hl)
_k_On:
	.db #0x20	; 32
	.db #0x25	; 37
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x53	; 83	'S'
	.db #0x57	; 87	'W'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x5d	; 93
	.db #0x5d	; 93
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x00	; 0
_k_Beside:
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x42	; 66	'B'
	.db #0x49	; 73	'I'
	.db #0x50	; 80	'P'
	.db #0x57	; 87	'W'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5e	; 94
	.db #0x62	; 98	'b'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x78	; 120	'x'
	.db #0x7a	; 122	'z'
	.db #0x7d	; 125
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x00	; 0
_k_Under:
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x53	; 83	'S'
	.db #0x56	; 86	'V'
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
_k_Cont:
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x4f	; 79	'O'
	.db #0x4f	; 79	'O'
	.db #0x63	; 99	'c'
	.db #0x63	; 99	'c'
	.db #0x00	; 0
_k_Satch:
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x00	; 0
_k_Holst:
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x00	; 0
___str_1:
	.ascii "The "
	.db 0x00
___str_2:
	.ascii " is now in the mug."
	.db 0x00
___str_3:
	.ascii " is now in the "
	.db 0x00
___str_4:
	.ascii "."
	.db 0x00
;E:\supernova\msx\game\default3.c:44: void Default10(void)
;	---------------------------------
; Function Default10
; ---------------------------------
_Default10::
;E:\supernova\msx\game\default3.c:46: switch (Vb)
	ld	a, (_Vb)
;E:\supernova\msx\game\default3.c:50: SFlag = 0;
	sub	a, #0x21
	ret	nz
	ld	(#_SFlag), a
;E:\supernova\msx\game\default3.c:51: if (StrEq(VStr, "fill")) { x = N1; N1 = N2; N2 = x; }
	ld	de, #___str_5
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00103$
	ld	a, (_N1+0)
	ld	(#_x), a
	ld	a, (_N2+0)
	ld	(#_N1), a
	ld	a, (_x+0)
	ld	(#_N2), a
00103$:
;E:\supernova\msx\game\default3.c:52: if ((IN29(Mov, N1) && IN29(Inv, N1)) || N1 == 66 || N1 == 79)
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00170$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00170$
	ld	hl, #_Mov+0
	ld	a, (_N1+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00536$:
	sra	d
	rr	e
	djnz	00536$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00538$
00537$:
	srl	a
00538$:
	djnz	00537$
	rrca
	jr	nc, 00170$
	ld	hl, #_Inv+0
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00541$
00540$:
	srl	a
00541$:
	djnz	00540$
	rrca
	jr	c, 00162$
00170$:
	ld	a, (_N1)
	cp	a, #0x42
	jr	z, 00162$
	sub	a, #0x4f
	jp	nz, 00163$
00162$:
;E:\supernova\msx\game\default3.c:54: switch (N2)
	ld	a, (_N2)
	cp	a, #0x05
	jp	z, 00159$
	cp	a, #0x07
	jp	z, 00160$
	cp	a, #0x1d
	jp	z, 00158$
	cp	a, #0x23
	jp	z, 00139$
	cp	a, #0x2a
	jp	z, 00157$
	cp	a, #0x3e
	jp	z, 00146$
	cp	a, #0x40
	jr	z, 00104$
	cp	a, #0x42
	jp	z, 00153$
	cp	a, #0x78
	jp	z, 00145$
	sub	a, #0x7e
	jr	z, 00121$
	jp	00164$
;E:\supernova\msx\game\default3.c:56: case 64:
00104$:
;E:\supernova\msx\game\default3.c:57: if (Prm == 34)
	ld	a, (_Prm)
	sub	a, #0x22
	jp	nz, 00164$
;E:\supernova\msx\game\default3.c:59: if (N1 == 3 || N1 == 8 || N1 == 9)
	ld	a, (_N1)
	cp	a, #0x03
	jr	z, 00114$
	cp	a, #0x08
	jr	z, 00114$
	sub	a, #0x09
	jr	nz, 00115$
00114$:
;E:\supernova\msx\game\default3.c:61: if (Pr == 5)
	ld	a, (_Pr)
	sub	a, #0x05
	jr	nz, 00112$
;E:\supernova\msx\game\default3.c:63: if (PyraCon == Null)
	ld	a, (_PyraCon+0)
	or	a, a
	jr	nz, 00109$
;E:\supernova\msx\game\default3.c:65: Van(N1); SetR(N1, 34); PyraCon = N1;
	ld	a, (_N1)
	call	_Van
	ld	l, #0x22
	ld	a, (_N1)
	call	_SetR
	ld	a, (_N1+0)
	ld	(#_PyraCon), a
;E:\supernova\msx\game\default3.c:66: if (N1 == 9) { RS(83); Walls(8); Add(30); } else RL(224);
	ld	a, (_N1)
	sub	a, #0x09
	jr	nz, 00106$
	ld	hl, #0x0053
	call	_RS
	ld	a, #0x08
	call	_Walls
	ld	a, #0x1e
	call	_Add
	jp	00164$
00106$:
	ld	hl, #0x00e0
	call	_RL
	jp	00164$
00109$:
;E:\supernova\msx\game\default3.c:68: else RL(223);
	ld	hl, #0x00df
	call	_RL
	jp	00164$
00112$:
;E:\supernova\msx\game\default3.c:70: else RL(222);
	ld	hl, #0x00de
	call	_RL
	jp	00164$
00115$:
;E:\supernova\msx\game\default3.c:72: else RL(221);
	ld	hl, #0x00dd
	call	_RL
;E:\supernova\msx\game\default3.c:74: break;
	jp	00164$
;E:\supernova\msx\game\default3.c:75: case 126:
00121$:
;E:\supernova\msx\game\default3.c:76: if (En(31))
	ld	a, #0x1f
	call	_En
	or	a, a
	jr	z, 00137$
;E:\supernova\msx\game\default3.c:78: if (N1 == 3 || N1 == 8 || N1 == 9)
	ld	a, (_N1)
	cp	a, #0x03
	jr	z, 00131$
	cp	a, #0x08
	jr	z, 00131$
	sub	a, #0x09
	jr	nz, 00132$
00131$:
;E:\supernova\msx\game\default3.c:80: if (Pr == 1 || Pr == 5 || Pr == 7 || Pr == 10)
	ld	a, (_Pr)
	dec	a
	jr	z, 00125$
	ld	a, (_Pr)
	cp	a, #0x05
	jr	z, 00125$
	cp	a, #0x07
	jr	z, 00125$
	sub	a, #0x0a
	jr	nz, 00126$
00125$:
;E:\supernova\msx\game\default3.c:82: if (HingeCon == Null) { Van(N1); SetR(N1, 34); HingeCon = N1; RL(231); }
	ld	a, (_HingeCon+0)
	or	a, a
	jr	nz, 00123$
	ld	a, (_N1)
	call	_Van
	ld	l, #0x22
	ld	a, (_N1)
	call	_SetR
	ld	a, (_N1+0)
	ld	(#_HingeCon), a
	ld	hl, #0x00e7
	call	_RL
	jp	00164$
00123$:
;E:\supernova\msx\game\default3.c:83: else RL(230);
	ld	hl, #0x00e6
	call	_RL
	jp	00164$
00126$:
;E:\supernova\msx\game\default3.c:85: else NoSense();
	call	_NoSense
	jp	00164$
00132$:
;E:\supernova\msx\game\default3.c:87: else RL(229);
	ld	hl, #0x00e5
	call	_RL
	jp	00164$
00137$:
;E:\supernova\msx\game\default3.c:89: else RL(232);
	ld	hl, #0x00e8
	call	_RL
;E:\supernova\msx\game\default3.c:90: break;
	jp	00164$
;E:\supernova\msx\game\default3.c:91: case 35:
00139$:
;E:\supernova\msx\game\default3.c:92: if (Prm == 1)
	ld	a, (_Prm)
	dec	a
	jp	nz, 00164$
;E:\supernova\msx\game\default3.c:94: if (N1 == 16) { Van(16); Add(6); R[16] = 1; RL(144); Score(5, 25); }
	ld	a, (_N1)
	sub	a, #0x10
	jr	nz, 00141$
	ld	a, #0x10
	call	_Van
	ld	a, #0x06
	call	_Add
	ld	hl, #_R+16
	ld	(hl), #0x01
	ld	hl, #0x0090
	call	_RL
	ld	de, #0x0019
	ld	hl, #0x0005
	call	_Score
	jp	00164$
00141$:
;E:\supernova\msx\game\default3.c:95: else { RL(143); Van(N1); SetR(N1, 1); }
	ld	hl, #0x008f
	call	_RL
	ld	a, (_N1)
	call	_Van
	ld	l, #0x01
	ld	a, (_N1)
	call	_SetR
;E:\supernova\msx\game\default3.c:97: break;
	jp	00164$
;E:\supernova\msx\game\default3.c:98: case 120: RL(550); Van(N1); break;
00145$:
	ld	hl, #0x0226
	call	_RL
	ld	a, (_N1)
	call	_Van
	jp	00164$
;E:\supernova\msx\game\default3.c:99: case 62:
00146$:
;E:\supernova\msx\game\default3.c:100: if (Prm == 22 || Prm == 24)
	ld	a, (_Prm)
	cp	a, #0x16
	jr	z, 00150$
	sub	a, #0x18
	jp	nz, 00164$
00150$:
;E:\supernova\msx\game\default3.c:102: if (En(23)) { Van(N1); SetR(N1, 2); RL(134); } else RL(99);
	ld	a, #0x17
	call	_En
	or	a, a
	jr	z, 00148$
	ld	a, (_N1)
	call	_Van
	ld	l, #0x02
	ld	a, (_N1)
	call	_SetR
	ld	hl, #0x0086
	call	_RL
	jp	00164$
00148$:
	ld	hl, #0x0063
	call	_RL
;E:\supernova\msx\game\default3.c:104: break;
	jp	00164$
;E:\supernova\msx\game\default3.c:105: case 66: if (Rnd(2) == 0) RL(375); else RL(376); Van(N1); break;
00153$:
	ld	hl, #0x0002
	call	_Rnd
	ld	a, d
	or	a, e
	jr	nz, 00155$
	ld	hl, #0x0177
	call	_RL
	jr	00156$
00155$:
	ld	hl, #0x0178
	call	_RL
00156$:
	ld	a, (_N1)
	call	_Van
	jr	00164$
;E:\supernova\msx\game\default3.c:106: case 42: RL(495); break;
00157$:
	ld	hl, #0x01ef
	call	_RL
	jr	00164$
;E:\supernova\msx\game\default3.c:107: case 29: PutInto(k_Cont, &MugCon, "mug", 136, 1); break;
00158$:
	ld	hl, #0x0001
	push	hl
	ld	l, #0x88
	push	hl
	ld	hl, #___str_6
	push	hl
	ld	de, #_MugCon
	ld	hl, #_k_Cont
	call	_PutInto
	jr	00164$
;E:\supernova\msx\game\default3.c:108: case 5: PutInto(k_Satch, &SatchCon, "brown satchel", 138, 0); break;
00159$:
	ld	hl, #0x0000
	push	hl
	ld	l, #0x8a
	push	hl
	ld	hl, #___str_7
	push	hl
	ld	de, #_SatchCon
	ld	hl, #_k_Satch
	call	_PutInto
	jr	00164$
;E:\supernova\msx\game\default3.c:109: case 7: PutInto(k_Holst, &HolstCon, "holster", 581, 0); break;
00160$:
	ld	bc, #___str_8+0
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x0245
	push	hl
	push	bc
	ld	de, #_HolstCon
	ld	hl, #_k_Holst
	call	_PutInto
;E:\supernova\msx\game\default3.c:110: }
	jr	00164$
00163$:
;E:\supernova\msx\game\default3.c:112: else { Wr("First you must have the "); WrFN(N1); Wr("."); Wln(); }
	ld	hl, #___str_9
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	call	_Wln
00164$:
;E:\supernova\msx\game\default3.c:114: if (!SFlag)
	ld	a, (_SFlag+0)
	or	a, a
	ret	nz
;E:\supernova\msx\game\default3.c:115: switch (Pr)
	ld	a, (_Pr)
	dec	a
	jr	z, 00172$
	ld	a, (_Pr)
	cp	a, #0x05
	jr	z, 00176$
	cp	a, #0x07
	jr	z, 00177$
	sub	a, #0x0a
	jp	z, 00181$
	jp	_Crazy
;E:\supernova\msx\game\default3.c:117: case 1:
00172$:
;E:\supernova\msx\game\default3.c:118: if (InR(N2, k_On))
	ld	de, #_k_On
	ld	a, (_N2)
	call	_InR
	or	a, a
	jr	z, 00174$
;E:\supernova\msx\game\default3.c:120: Van(N1); SetR(N1, Prm);
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
;E:\supernova\msx\game\default3.c:121: Wr("The "); WrFN(N1); Wr(" is now on the "); WrFN(N2); Wr("."); Wln();
	ld	hl, #___str_11
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_12
	call	_Wr
	ld	a, (_N2)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	jp	_Wln
00174$:
;E:\supernova\msx\game\default3.c:123: else RL(139);
;E:\supernova\msx\game\default3.c:124: break;
	ld	hl, #0x008b
	jp	_RL
;E:\supernova\msx\game\default3.c:125: case 5: RL(139); break;
00176$:
	ld	hl, #0x008b
	jp	_RL
;E:\supernova\msx\game\default3.c:126: case 7:
00177$:
;E:\supernova\msx\game\default3.c:127: if (InR(N2, k_Beside))
	ld	de, #_k_Beside
	ld	a, (_N2)
	call	_InR
	or	a, a
	jr	z, 00179$
;E:\supernova\msx\game\default3.c:129: Van(N1); SetR(N1, Prm);
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
;E:\supernova\msx\game\default3.c:130: Wr("The "); WrFN(N1); Wr(" is now beside the "); WrFN(N2); Wr("."); Wln();
	ld	hl, #___str_11
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_13
	call	_Wr
	ld	a, (_N2)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	jp	_Wln
00179$:
;E:\supernova\msx\game\default3.c:132: else RL(139);
;E:\supernova\msx\game\default3.c:133: break;
	ld	hl, #0x008b
	jp	_RL
;E:\supernova\msx\game\default3.c:134: case 10:
00181$:
;E:\supernova\msx\game\default3.c:135: if (InR(N2, k_Under))
	ld	de, #_k_Under
	ld	a, (_N2)
	call	_InR
	or	a, a
	jr	z, 00183$
;E:\supernova\msx\game\default3.c:137: Van(N1); SetR(N1, Prm);
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
;E:\supernova\msx\game\default3.c:138: Wr("The "); WrFN(N1); Wr(" is now under the "); WrFN(N2); Wr("."); Wln();
	ld	hl, #___str_11
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_14
	call	_Wr
	ld	a, (_N2)
	call	_WrFN
	ld	hl, #___str_10
	call	_Wr
	jp	_Wln
00183$:
;E:\supernova\msx\game\default3.c:140: else RL(139);
;E:\supernova\msx\game\default3.c:141: break;
	ld	hl, #0x008b
;E:\supernova\msx\game\default3.c:142: default: Crazy();
;E:\supernova\msx\game\default3.c:145: }
;E:\supernova\msx\game\default3.c:146: }
	jp	_RL
___str_5:
	.ascii "fill"
	.db 0x00
___str_6:
	.ascii "mug"
	.db 0x00
___str_7:
	.ascii "brown satchel"
	.db 0x00
___str_8:
	.ascii "holster"
	.db 0x00
___str_9:
	.ascii "First you must have the "
	.db 0x00
___str_10:
	.ascii "."
	.db 0x00
___str_11:
	.ascii "The "
	.db 0x00
___str_12:
	.ascii " is now on the "
	.db 0x00
___str_13:
	.ascii " is now beside the "
	.db 0x00
___str_14:
	.ascii " is now under the "
	.db 0x00
;E:\supernova\msx\game\default3.c:148: void Default11(void)
;	---------------------------------
; Function Default11
; ---------------------------------
_Default11::
;E:\supernova\msx\game\default3.c:150: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x2a
	jp	z, 00139$
	cp	a, #0x2c
	jr	z, 00101$
	cp	a, #0x49
	jp	z, 00182$
	cp	a, #0x56
	jp	z, 00170$
	cp	a, #0x59
	jp	z, 00174$
	cp	a, #0x5a
	jp	z, 00175$
	sub	a, #0x5e
	jp	z, 00156$
	ret
;E:\supernova\msx\game\default3.c:153: case 44:
00101$:
;E:\supernova\msx\game\default3.c:154: if (StrEq(VStr, "turn on") || StrEq(VStr, "activat"))
	ld	de, #___str_15
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00135$
	ld	de, #___str_16
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jp	z, 00136$
00135$:
;E:\supernova\msx\game\default3.c:156: switch (N1)
	ld	a, (_N1)
	cp	a, #0x02
	jr	z, 00102$
	cp	a, #0x25
	jp	z, 00116$
	cp	a, #0x26
	jp	z, 00116$
	cp	a, #0x30
	jp	z, 00118$
	cp	a, #0x62
	jp	z, 00118$
	sub	a, #0x7f
	jp	z, 00122$
	ret
;E:\supernova\msx\game\default3.c:158: case 2:
00102$:
;E:\supernova\msx\game\default3.c:159: RL(460); Score(5, 117);
	ld	hl, #0x01cc
	call	_RL
	ld	de, #0x0075
	ld	hl, #0x0005
	call	_Score
;E:\supernova\msx\game\default3.c:160: switch (Rnd(4))
	ld	hl, #0x0004
	call	_Rnd
	ld	c, e
	ld	b, d
	ld	a, b
	or	a, c
	jr	z, 00103$
	ld	a, c
	dec	a
	or	a, b
	jr	z, 00105$
	ld	a, c
	sub	a, #0x02
	or	a, b
	jp	z, 00107$
	ld	a, c
	sub	a, #0x03
	or	a, b
	jp	z, 00110$
	jp	00112$
;E:\supernova\msx\game\default3.c:162: case 0: j = Rnd(250) + 420; for (i = 400; i <= j; i++) Play(400, i, 1); break;
00103$:
	ld	hl, #0x00fa
	call	_Rnd
	ld	hl, #0x01a4
	add	hl, de
	ld	(_j), hl
	ld	hl, #0x0190
	ld	(_i), hl
00190$:
	ld	hl, #_j
	ld	a, (hl)
	ld	iy, #_i
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jp	po, 00661$
	xor	a, #0x80
00661$:
	jp	m, 00112$
	ld	hl, #0x0001
	push	hl
	ld	de, (_i)
	ld	hl, #0x0190
	call	_Play
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	jr	00190$
;E:\supernova\msx\game\default3.c:163: case 1:
00105$:
;E:\supernova\msx\game\default3.c:164: y = Rnd(35) + 2;
	ld	hl, #0x0023
	call	_Rnd
	ld	a, e
	add	a, #0x02
	ld	(#_y), a
;E:\supernova\msx\game\default3.c:165: for (x = 1; x <= 99; x++) { i = Rnd(9000) + 60; Play(i, i, y); Delay(y); }
	ld	hl, #_x
	ld	(hl), #0x01
00192$:
	ld	hl, #0x2328
	call	_Rnd
	ld	hl, #0x003c
	add	hl, de
	ld	(_i), hl
	ld	a, (_y)
	ld	b, #0x00
	ld	c, a
	push	bc
	ld	de, (_i)
	ld	hl, (_i)
	call	_Play
	ld	a, (_y)
	ld	h, #0x00
	ld	l, a
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x63
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00192$
;E:\supernova\msx\game\default3.c:166: break;
	jp	00112$
;E:\supernova\msx\game\default3.c:167: case 2:
00107$:
;E:\supernova\msx\game\default3.c:168: j = Rnd(230) + 21;
	ld	hl, #0x00e6
	call	_Rnd
	ld	hl, #0x0015
	add	hl, de
	ld	(_j), hl
;E:\supernova\msx\game\default3.c:169: for (x = 1; x <= j; x++)
	ld	hl, #_x
	ld	(hl), #0x01
00198$:
	ld	a, (_x)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_j
	ld	a, (hl)
	inc	hl
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jp	po, 00662$
	xor	a, #0x80
00662$:
	jp	m, 00112$
;E:\supernova\msx\game\default3.c:171: i = Rnd(230) + 22;
	ld	hl, #0x00e6
	call	_Rnd
	ld	hl, #0x0016
	add	hl, de
	ld	(_i), hl
;E:\supernova\msx\game\default3.c:172: for (y = 1; y <= i; y++) Sound((u16)(x * y));
	ld	hl, #_y
	ld	(hl), #0x01
00195$:
	ld	a, (_y)
	ld	c, a
	ld	b, #0x00
	ld	hl, #_i
	ld	a, (hl)
	inc	hl
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jp	po, 00663$
	xor	a, #0x80
00663$:
	jp	m, 00199$
	ld	a, (#_y + 0)
	ld	e, a
	ld	a, (#_x + 0)
	ld	h, a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00664$:
	add	hl, hl
	jr	nc, 00665$
	add	hl, de
00665$:
	djnz	00664$
	call	_Sound
	ld	hl, #_y
	inc	(hl)
	jr	00195$
00199$:
;E:\supernova\msx\game\default3.c:169: for (x = 1; x <= j; x++)
	ld	hl, #_x
	inc	(hl)
	jr	00198$
;E:\supernova\msx\game\default3.c:175: case 3:
00110$:
;E:\supernova\msx\game\default3.c:176: j = Rnd(9999) + 999;
	ld	hl, #0x270f
	call	_Rnd
	ld	hl, #0x03e7
	add	hl, de
	ld	(_j), hl
;E:\supernova\msx\game\default3.c:177: for (i = 1; i <= j; i++) Sound(Rnd(i) + i);
	ld	hl, #0x0001
	ld	(_i), hl
00201$:
	ld	hl, #_j
	ld	a, (hl)
	ld	iy, #_i
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jp	po, 00666$
	xor	a, #0x80
00666$:
	jp	m, 00112$
	ld	hl, (_i)
	call	_Rnd
	ld	hl, (_i)
	add	hl, de
	call	_Sound
	ld	hl, (_i)
	inc	hl
	ld	(_i), hl
	jr	00201$
;E:\supernova\msx\game\default3.c:179: }
00112$:
;E:\supernova\msx\game\default3.c:180: NoSound(); if (Region == 5) Sound(60);
	call	_NoSound
	ld	a, (_Region)
	sub	a, #0x05
	ret	nz
;E:\supernova\msx\game\default3.c:181: break;
	ld	hl, #0x003c
	jp	_Sound
;E:\supernova\msx\game\default3.c:182: case 37: case 38: RL(373); break;
00116$:
	ld	hl, #0x0175
	jp	_RL
;E:\supernova\msx\game\default3.c:183: case 98: case 48:
00118$:
;E:\supernova\msx\game\default3.c:184: if (Prm == SinkRm) Say("water", "flowing out");
	ld	a, (_Prm)
	ld	hl, #_SinkRm
	sub	a, (hl)
	jr	nz, 00120$
	ld	de, #___str_18
	ld	hl, #___str_17
	jp	_Say
00120$:
;E:\supernova\msx\game\default3.c:185: else { SinkRm = Prm; LOC_ADD(Prm, 79); RL(82); }
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
;E:\supernova\msx\game\default3.c:186: break;
	ld	hl, #0x0052
	jp	_RL
;E:\supernova\msx\game\default3.c:187: case 127: if (!StrEq(NStr, "window")) RL(360); else RL(164); break;
00122$:
	ld	de, #___str_19
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	nz, 00124$
	ld	hl, #0x0168
	jp	_RL
00124$:
;E:\supernova\msx\game\default3.c:188: }
	ld	hl, #0x00a4
	jp	_RL
00136$:
;E:\supernova\msx\game\default3.c:191: switch (N1)
	ld	a, (_N1)
	cp	a, #0x74
	jr	z, 00127$
	sub	a, #0x7b
	jr	z, 00132$
	jr	00133$
;E:\supernova\msx\game\default3.c:193: case 116: if (IN_RANGE(Prm, 42, 50)) RL(282); else RL(281); break;
00127$:
	ld	a, (_Prm+0)
	sub	a, #0x2a
	jr	c, 00129$
	ld	a, #0x32
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00129$
	ld	hl, #0x011a
	jp	_RL
00129$:
	ld	hl, #0x0119
	jp	_RL
;E:\supernova\msx\game\default3.c:194: case 123: RL(472); break;
00132$:
	ld	hl, #0x01d8
	jp	_RL
;E:\supernova\msx\game\default3.c:195: default: RL(103);
00133$:
;E:\supernova\msx\game\default3.c:197: break;
	ld	hl, #0x0067
	jp	_RL
;E:\supernova\msx\game\default3.c:200: case 42:
00139$:
;E:\supernova\msx\game\default3.c:201: if (StrEq(VStr, "turn off") || StrEq(VStr, "deactiv"))
	ld	de, #___str_20
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00152$
	ld	de, #___str_21
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00153$
00152$:
;E:\supernova\msx\game\default3.c:203: switch (N1)
	ld	a, (_N1)
	cp	a, #0x30
	jr	z, 00142$
	cp	a, #0x4f
	jr	z, 00142$
	cp	a, #0x62
	jr	z, 00142$
	sub	a, #0x7f
	jr	z, 00146$
	jr	00150$
;E:\supernova\msx\game\default3.c:205: case 98: case 48: case 79:
00142$:
;E:\supernova\msx\game\default3.c:206: if (Prm != SinkRm) Say("water", "off");
	ld	a, (_Prm)
	ld	hl, #_SinkRm
	sub	a, (hl)
	jr	z, 00144$
	ld	de, #___str_22
	ld	hl, #___str_17
	jp	_Say
00144$:
;E:\supernova\msx\game\default3.c:207: else { SinkRm = Null; LOC_DEL(Prm, 79); RL(81); }
	xor	a, a
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
;E:\supernova\msx\game\default3.c:208: break;
	ld	hl, #0x0051
	jp	_RL
;E:\supernova\msx\game\default3.c:209: case 127: if (!StrEq(NStr, "window")) RL(360); else RL(165); break;
00146$:
	ld	de, #___str_19
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	nz, 00148$
	ld	hl, #0x0168
	jp	_RL
00148$:
	ld	hl, #0x00a5
	jp	_RL
;E:\supernova\msx\game\default3.c:210: default: RL(165);
00150$:
;E:\supernova\msx\game\default3.c:211: }
	ld	hl, #0x00a5
	jp	_RL
00153$:
;E:\supernova\msx\game\default3.c:213: else RL(103);
;E:\supernova\msx\game\default3.c:214: break;
	ld	hl, #0x0067
	jp	_RL
;E:\supernova\msx\game\default3.c:217: case 94:
00156$:
;E:\supernova\msx\game\default3.c:218: switch (N1)
	ld	a, (_N1)
	cp	a, #0x12
	jr	z, 00157$
	cp	a, #0x50
	jr	z, 00166$
	cp	a, #0x62
	jr	z, 00167$
	sub	a, #0x7e
	jr	z, 00163$
	jr	00168$
;E:\supernova\msx\game\default3.c:220: case 18:
00157$:
;E:\supernova\msx\game\default3.c:221: if (En(34)) RL(265);
	ld	a, #0x22
	call	_En
	or	a, a
	jr	z, 00161$
	ld	hl, #0x0109
	jp	_RL
00161$:
;E:\supernova\msx\game\default3.c:224: if (LOC_HAS(41, 18)) R[18] = 41;
	ld	a, (#(_g_Loc + 699) + 0)
	bit	1, a
	jr	z, 00159$
	ld	hl, #_R+18
	ld	(hl), #0x29
00159$:
;E:\supernova\msx\game\default3.c:225: Score(15, 34);
	ld	de, #0x0022
	ld	hl, #0x000f
	call	_Score
;E:\supernova\msx\game\default3.c:226: RS(91); SetNoun(18, 4);
	ld	hl, #0x005b
	call	_RS
	ld	l, #0x04
;E:\supernova\msx\game\default3.c:228: break;
	ld	a, #0x12
	jp	_SetNoun
;E:\supernova\msx\game\default3.c:229: case 126: if (StrEq(NStr, "bar")) RL(167); break;
00163$:
	ld	de, #___str_23
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	ret	z
	ld	hl, #0x00a7
	jp	_RL
;E:\supernova\msx\game\default3.c:230: case 80: RL(166); break;
00166$:
	ld	hl, #0x00a6
	jp	_RL
;E:\supernova\msx\game\default3.c:231: case 98: RL(168); break;
00167$:
	ld	hl, #0x00a8
	jp	_RL
;E:\supernova\msx\game\default3.c:232: default: Wr("The "); Wr(NStr); Wr(" doesn't need to be cleaned."); Wln();
00168$:
	ld	hl, #___str_24
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_25
	call	_Wr
;E:\supernova\msx\game\default3.c:234: break;
	jp	_Wln
;E:\supernova\msx\game\default3.c:237: case 86:
00170$:
;E:\supernova\msx\game\default3.c:238: Bor(1, 0); Cur(2);
	ld	l, #0x00
	ld	a, #0x01
	call	_Bor
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\default3.c:239: Wr("Are you sure you want to restart your game? ");
	ld	hl, #___str_26
	call	_Wr
;E:\supernova\msx\game\default3.c:240: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;E:\supernova\msx\game\default3.c:241: if (UpCase(CFlag) != 'Y') RL(169);
	ld	a, (_CFlag)
	call	_UpCase
	cp	a, #0x59
	jr	z, 00172$
	ld	hl, #0x00a9
	call	_RL
	jr	00173$
00172$:
;E:\supernova\msx\game\default3.c:244: RL(170); Delay(2000); Window(1, 1, 80, 25); ClrScr(); Bor(0, 0); NoSound();
	ld	hl, #0x00aa
	call	_RL
	ld	hl, #0x07d0
	call	_Delay
	ld	hl, #0x1950
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
	call	_ClrScr
	xor	a, a
	ld	l, a
	call	_Bor
	call	_NoSound
;E:\supernova\msx\game\default3.c:245: RestartGame();
	call	_RestartGame
00173$:
;E:\supernova\msx\game\default3.c:247: Bor(0, 0);
	xor	a, a
;E:\supernova\msx\game\default3.c:248: break;
	ld	l, a
	jp	_Bor
;E:\supernova\msx\game\default3.c:250: case 89: RL(171); break;      // SHOOT
00174$:
	ld	hl, #0x00ab
	jp	_RL
;E:\supernova\msx\game\default3.c:253: case 90:
00175$:
;E:\supernova\msx\game\default3.c:254: if (StrEq(VStr, "tie")) RL(172); else if (StrEq(VStr, "untie")) RL(173); else RL(437);
	ld	de, #___str_27
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00180$
	ld	hl, #0x00ac
	jp	_RL
00180$:
	ld	de, #___str_28
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00177$
	ld	hl, #0x00ad
	jp	_RL
00177$:
;E:\supernova\msx\game\default3.c:255: break;
	ld	hl, #0x01b5
	jp	_RL
;E:\supernova\msx\game\default3.c:258: case 73:
00182$:
;E:\supernova\msx\game\default3.c:259: if (IN29(Inv, N1)) { Wr("You are carrying the "); Wr(NStr); Wr("."); Wln(); }
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00184$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00184$
	ld	a, (_N1+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00684$:
	sra	d
	rr	e
	djnz	00684$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00686$
00685$:
	srl	a
00686$:
	djnz	00685$
	rrca
	jr	nc, 00184$
	ld	hl, #___str_29
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_30
	call	_Wr
	jp	_Wln
00184$:
;E:\supernova\msx\game\default3.c:260: else { Wr("The "); Wr(NStr); Wr(" is close by, just look around."); Wln(); }
	ld	hl, #___str_24
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_31
	call	_Wr
;E:\supernova\msx\game\default3.c:262: }
;E:\supernova\msx\game\default3.c:263: }
	jp	_Wln
___str_15:
	.ascii "turn on"
	.db 0x00
___str_16:
	.ascii "activat"
	.db 0x00
___str_17:
	.ascii "water"
	.db 0x00
___str_18:
	.ascii "flowing out"
	.db 0x00
___str_19:
	.ascii "window"
	.db 0x00
___str_20:
	.ascii "turn off"
	.db 0x00
___str_21:
	.ascii "deactiv"
	.db 0x00
___str_22:
	.ascii "off"
	.db 0x00
___str_23:
	.ascii "bar"
	.db 0x00
___str_24:
	.ascii "The "
	.db 0x00
___str_25:
	.ascii " doesn't need to be cleaned."
	.db 0x00
___str_26:
	.ascii "Are you sure you want to restart your game? "
	.db 0x00
___str_27:
	.ascii "tie"
	.db 0x00
___str_28:
	.ascii "untie"
	.db 0x00
___str_29:
	.ascii "You are carrying the "
	.db 0x00
___str_30:
	.ascii "."
	.db 0x00
___str_31:
	.ascii " is close by, just look around."
	.db 0x00
;E:\supernova\msx\game\default3.c:265: void Default12(void)
;	---------------------------------
; Function Default12
; ---------------------------------
_Default12::
;E:\supernova\msx\game\default3.c:267: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x30
	jp	z, 00138$
	sub	a, #0x36
	ret	nz
;E:\supernova\msx\game\default3.c:271: if (N2 != Null)
	ld	a, (_N2+0)
	or	a, a
	jp	z, 00136$
;E:\supernova\msx\game\default3.c:273: if (IN29(Mov, N2) || N2 == 60)
	ld	a, #0x1d
	ld	hl, #_N2
	sub	a, (hl)
	jr	c, 00128$
	ld	de, #_Mov+0
	ld	a, (_N2+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00683$:
	sra	h
	rr	l
	djnz	00683$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N2+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00685$
00684$:
	srl	a
00685$:
	djnz	00684$
	rrca
	jr	c, 00123$
00128$:
	ld	a, (_N2)
	sub	a, #0x3c
	jp	nz, _Crazy
00123$:
;E:\supernova\msx\game\default3.c:275: if (N1 != N2)
	ld	a, (_N1)
	ld	hl, #_N2
	sub	a, (hl)
	jp	z, _Crazy
;E:\supernova\msx\game\default3.c:277: if (Pr == 3 || Pr == 6)
	ld	a, (_Pr)
	cp	a, #0x03
	jr	z, 00116$
	sub	a, #0x06
	jp	nz, _NoSense
00116$:
;E:\supernova\msx\game\default3.c:278: switch (N1)
	ld	a, (_N1)
	dec	a
	jr	z, 00102$
	ld	a, (_N1)
	cp	a, #0x12
	jr	z, 00107$
	sub	a, #0x7b
	jr	z, 00113$
	jr	00114$
;E:\supernova\msx\game\default3.c:280: case 1: if (Prm == 56 && LOC_HAS(56, 1)) RL(300); else RL(83); break;
00102$:
	ld	a, (_Prm)
	sub	a, #0x38
	jr	nz, 00104$
	ld	a, (#(_g_Loc + 952) + 0)
	rrca
	jr	nc, 00104$
	ld	hl, #0x012c
	jp	_RL
00104$:
	ld	hl, #0x0053
	jp	_RL
;E:\supernova\msx\game\default3.c:281: case 18:
00107$:
;E:\supernova\msx\game\default3.c:282: if (N2 == 10 || N2 == 11 || N2 == 29) { RS(97); Van(18); R[4] = Prm; }
	ld	a, (_N2)
	cp	a, #0x0a
	jr	z, 00108$
	cp	a, #0x0b
	jr	z, 00108$
	sub	a, #0x1d
	jr	nz, 00109$
00108$:
	ld	hl, #0x0061
	call	_RS
	ld	a, #0x12
	call	_Van
	ld	hl, #(_R + 4)
	ld	a, (_Prm)
	ld	(hl), a
	ret
00109$:
;E:\supernova\msx\game\default3.c:283: else RL(272);
;E:\supernova\msx\game\default3.c:284: break;
	ld	hl, #0x0110
	jp	_RL
;E:\supernova\msx\game\default3.c:285: case 123: RL(416); break;
00113$:
	ld	hl, #0x01a0
	jp	_RL
;E:\supernova\msx\game\default3.c:286: default: RL(273);
00114$:
;E:\supernova\msx\game\default3.c:287: }
;E:\supernova\msx\game\default3.c:288: else NoSense();
;E:\supernova\msx\game\default3.c:290: else Crazy();
;E:\supernova\msx\game\default3.c:292: else Crazy();
	ld	hl, #0x0111
	jp	_RL
00136$:
;E:\supernova\msx\game\default3.c:295: switch (N1)    // N2 = Null
	ld	a, (_N1)
	sub	a, #0x12
	jr	nz, 00130$
;E:\supernova\msx\game\default3.c:297: case 18: RL(274); break;
	ld	hl, #0x0112
	jp	_RL
;E:\supernova\msx\game\default3.c:298: default:
00130$:
;E:\supernova\msx\game\default3.c:299: if (Rnd(3) == 0) { Wr("At the last moment you decide to spare the "); Wr(NStr); Wr("'s life!"); Wln(); }
	ld	hl, #0x0003
	call	_Rnd
	ld	a, d
	or	a, e
	jr	nz, 00132$
	ld	hl, #___str_32
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_33
	call	_Wr
	jp	_Wln
00132$:
;E:\supernova\msx\game\default3.c:300: else { Wr("Hitting the "); Wr(NStr); Wr(" doesn't help."); Wln(); }
	ld	hl, #___str_34
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_35
	call	_Wr
;E:\supernova\msx\game\default3.c:302: break;
	jp	_Wln
;E:\supernova\msx\game\default3.c:305: case 48:
00138$:
;E:\supernova\msx\game\default3.c:306: if (N2 != Null)
	ld	a, (_N2+0)
	or	a, a
	jp	z, 00210$
;E:\supernova\msx\game\default3.c:308: if (IN29(Inv, N1))
	ld	a, (_N1+0)
	sub	a, #0x01
	jp	c, 00205$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jp	c, 00205$
	ld	hl, #_Inv+0
	ld	a, (_N1+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00706$:
	sra	d
	rr	e
	djnz	00706$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00708$
00707$:
	srl	a
00708$:
	djnz	00707$
	rrca
	jp	nc, 00205$
;E:\supernova\msx\game\default3.c:310: if (IN29(Mov, N1))
	ld	hl, #_Mov+0
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00711$
00710$:
	srl	a
00711$:
	djnz	00710$
	rrca
	jp	nc, _Crazy
;E:\supernova\msx\game\default3.c:312: if (N1 != N2)
	ld	a, (_N1)
	ld	hl, #_N2
	sub	a, (hl)
	jp	z, _Crazy
;E:\supernova\msx\game\default3.c:314: if (IN_RANGE(Pr, 1, 5))
	ld	a, (_Pr+0)
	sub	a, #0x01
	jp	c, _NoSense
	ld	a, #0x05
	ld	hl, #_Pr
	sub	a, (hl)
	jp	c, _NoSense
;E:\supernova\msx\game\default3.c:316: if (N1 == 29 && (MugCon == 79 || MugCon == 92 || MugCon == 99)) { MugCon = Null; RL(585); SFlag = 0; }
	ld	a, (_N1)
	sub	a, #0x1d
	jr	nz, 00140$
	ld	a, (_MugCon)
	cp	a, #0x4f
	jr	z, 00139$
	cp	a, #0x5c
	jr	z, 00139$
	sub	a, #0x63
	jr	nz, 00140$
00139$:
	xor	a, a
	ld	(#_MugCon), a
	ld	hl, #0x0249
	call	_RL
	xor	a, a
	ld	(#_SFlag), a
00140$:
;E:\supernova\msx\game\default3.c:317: if (N2 == 1 && Prm == 56 && LOC_HAS(56, 1)) { Van(N1); SetR(N1, 56); RL(301); }
	ld	a, (_N2)
	dec	a
	jr	nz, 00145$
	ld	a, (_Prm)
	sub	a, #0x38
	jr	nz, 00145$
	ld	a, (#(_g_Loc + 952) + 0)
	rrca
	jr	nc, 00145$
	ld	a, (_N1)
	call	_Van
	ld	l, #0x38
	ld	a, (_N1)
	call	_SetR
	ld	hl, #0x012d
	call	_RL
00145$:
;E:\supernova\msx\game\default3.c:318: if (N2 == 49 && Prm == 56 && (N1 == 1 || N1 == 10 || N1 == 18 || N1 == 29)) { RS(112); Add(128); }
	ld	a, (_N2)
	sub	a, #0x31
	jr	nz, 00149$
	ld	a, (_Prm)
	sub	a, #0x38
	jr	nz, 00149$
	ld	a, (_N1)
	dec	a
	jr	z, 00148$
	ld	a, (_N1)
	cp	a, #0x0a
	jr	z, 00148$
	cp	a, #0x12
	jr	z, 00148$
	sub	a, #0x1d
	jr	nz, 00149$
00148$:
	ld	hl, #0x0070
	call	_RS
	ld	a, #0x80
	call	_Add
00149$:
;E:\supernova\msx\game\default3.c:319: if (N2 == 69 && Prm == 91)
	ld	a, (_N2)
	sub	a, #0x45
	jr	nz, 00156$
	ld	a, (_Prm)
	sub	a, #0x5b
	jr	nz, 00156$
;E:\supernova\msx\game\default3.c:321: RS(160); LOC_ADD(91, 123);
	ld	hl, #0x00a0
	call	_RS
	ld	bc, #_g_Loc + 1562
	ld	a, (bc)
	set	2, a
	ld	(bc), a
;E:\supernova\msx\game\default3.c:322: LOC_DEL(91, 44); LOC_DEL(91, 129); T[23] = 15; Add(51); Van(N1); SetR(N1, 91);
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
	ld	a, #0x33
	call	_Add
	ld	a, (_N1)
	call	_Van
	ld	l, #0x5b
	ld	a, (_N1)
	call	_SetR
00156$:
;E:\supernova\msx\game\default3.c:324: if (N1 == 1 || IN_RANGE(N1, 22, 25)) { Van(N1); RL(430); }
	ld	a, (_N1)
	dec	a
	jr	z, 00158$
	ld	a, (_N1+0)
	sub	a, #0x16
	jr	c, 00159$
	ld	a, #0x19
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00159$
00158$:
	ld	a, (_N1)
	call	_Van
	ld	hl, #0x01ae
	call	_RL
00159$:
;E:\supernova\msx\game\default3.c:325: if (N2 == 46 && (Prm == 99 || Prm == 101))
	ld	a, (_N2)
	sub	a, #0x2e
	jr	nz, 00166$
	ld	a, (_Prm)
	cp	a, #0x63
	jr	z, 00165$
	sub	a, #0x65
	jr	nz, 00166$
00165$:
;E:\supernova\msx\game\default3.c:327: RL(514); Blast();
	ld	hl, #0x0202
	call	_RL
	call	_Blast
;E:\supernova\msx\game\default3.c:328: if (Prm == 99) T[27] = 2000; else T[28] = 2000;
	ld	a, (_Prm)
	sub	a, #0x63
	jr	nz, 00163$
	ld	hl, #0x07d0
	ld	((_T + 54)), hl
	jr	00164$
00163$:
	ld	hl, #0x07d0
	ld	((_T + 56)), hl
00164$:
;E:\supernova\msx\game\default3.c:329: Van(N1);
	ld	a, (_N1)
	call	_Van
00166$:
;E:\supernova\msx\game\default3.c:331: switch (N2)
	ld	a, (_N2)
	dec	a
	jr	z, 00173$
	ld	a, (_N2)
	cp	a, #0x16
	jr	z, 00173$
	cp	a, #0x17
	jr	z, 00173$
	cp	a, #0x18
	jr	z, 00173$
	cp	a, #0x19
	jr	z, 00173$
	cp	a, #0x2a
	jr	z, 00174$
	cp	a, #0x42
	jr	z, 00175$
	cp	a, #0x6f
	jr	z, 00176$
	cp	a, #0x78
	jr	z, 00177$
	cp	a, #0x7b
	jr	z, 00178$
	cp	a, #0x7c
	jr	z, 00179$
	sub	a, #0x7f
	jp	z, 00180$
	jp	00186$
;E:\supernova\msx\game\default3.c:333: case 1: case 22: case 23: case 24: case 25: Van(N2); RL(431); break;
00173$:
	ld	a, (_N2)
	call	_Van
	ld	hl, #0x01af
	call	_RL
	jp	00186$
;E:\supernova\msx\game\default3.c:334: case 42: Van(N1); RL(515); break;
00174$:
	ld	a, (_N1)
	call	_Van
	ld	hl, #0x0203
	call	_RL
	jp	00186$
;E:\supernova\msx\game\default3.c:335: case 66: RL(375); Van(N1); break;
00175$:
	ld	hl, #0x0177
	call	_RL
	ld	a, (_N1)
	call	_Van
	jr	00186$
;E:\supernova\msx\game\default3.c:336: case 111: RL(449); Van(N1); break;
00176$:
	ld	hl, #0x01c1
	call	_RL
	ld	a, (_N1)
	call	_Van
	jr	00186$
;E:\supernova\msx\game\default3.c:337: case 120: RL(550); Van(N1); break;
00177$:
	ld	hl, #0x0226
	call	_RL
	ld	a, (_N1)
	call	_Van
	jr	00186$
;E:\supernova\msx\game\default3.c:338: case 123: RL(450); RL(451); Van(N1); SetR(N1, Prm); break;
00178$:
	ld	hl, #0x01c2
	call	_RL
	ld	hl, #0x01c3
	call	_RL
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
	jr	00186$
;E:\supernova\msx\game\default3.c:339: case 124: RL(452); RL(453); Van(N1); SetR(N1, Prm); break;
00179$:
	ld	hl, #0x01c4
	call	_RL
	ld	hl, #0x01c5
	call	_RL
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
	jr	00186$
;E:\supernova\msx\game\default3.c:340: case 127: if (Prm == 64) { if (Md == 3) { RL(537); Add(128); } else RL(538); } break;
00180$:
	ld	a, (_Prm)
	sub	a, #0x40
	jr	nz, 00186$
	ld	a, (_Md)
	sub	a, #0x03
	jr	nz, 00182$
	ld	hl, #0x0219
	call	_RL
	ld	a, #0x80
	call	_Add
	jr	00186$
00182$:
	ld	hl, #0x021a
	call	_RL
;E:\supernova\msx\game\default3.c:341: }
00186$:
;E:\supernova\msx\game\default3.c:342: if (N1 == 18 || N2 == 18) { Van(N1); SetR(N1, Prm); Van(18); RS(97); R[4] = Prm; }
	ld	a, (_N1)
	sub	a, #0x12
	jr	z, 00187$
	ld	a, (_N2)
	sub	a, #0x12
	jr	nz, 00188$
00187$:
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
	ld	a, #0x12
	call	_Van
	ld	hl, #0x0061
	call	_RS
	ld	hl, #(_R + 4)
	ld	a, (_Prm)
	ld	(hl), a
00188$:
;E:\supernova\msx\game\default3.c:343: if (!SFlag)
	ld	a, (_SFlag+0)
	or	a, a
	ret	nz
;E:\supernova\msx\game\default3.c:345: Wr("The "); WrFN(N1); Wr(" collides with the "); WrFN(N2); Wr(", but nothing interesting happens."); Wln();
	ld	hl, #___str_36
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_37
	call	_Wr
	ld	a, (_N2)
	call	_WrFN
	ld	hl, #___str_38
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:346: Van(N1); SetR(N1, Prm);
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
;E:\supernova\msx\game\default3.c:349: else NoSense();
;E:\supernova\msx\game\default3.c:351: else Crazy();
;E:\supernova\msx\game\default3.c:353: else Crazy();
	ld	a, (_N1)
	jp	_SetR
00205$:
;E:\supernova\msx\game\default3.c:355: else { Wr("First you must have the "); WrFN(N1); Wr("."); Wln(); }
	ld	hl, #___str_39
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_40
	call	_Wr
	jp	_Wln
00210$:
;E:\supernova\msx\game\default3.c:357: else { Van(N1); SetR(N1, Prm); RL(275); }
	ld	a, (_N1)
	call	_Van
	ld	a, (_Prm)
	ld	l, a
	ld	a, (_N1)
	call	_SetR
	ld	hl, #0x0113
;E:\supernova\msx\game\default3.c:359: }
;E:\supernova\msx\game\default3.c:360: }
	jp	_RL
___str_32:
	.ascii "At the last moment you decide to spare the "
	.db 0x00
___str_33:
	.ascii "'s life!"
	.db 0x00
___str_34:
	.ascii "Hitting the "
	.db 0x00
___str_35:
	.ascii " doesn't help."
	.db 0x00
___str_36:
	.ascii "The "
	.db 0x00
___str_37:
	.ascii " collides with the "
	.db 0x00
___str_38:
	.ascii ", but nothing interesting happens."
	.db 0x00
___str_39:
	.ascii "First you must have the "
	.db 0x00
___str_40:
	.ascii "."
	.db 0x00
;E:\supernova\msx\game\default3.c:362: void Default13(void)
;	---------------------------------
; Function Default13
; ---------------------------------
_Default13::
	call	___sdcc_enter_ix
	push	af
	push	af
;E:\supernova\msx\game\default3.c:418: if (IN29(Inv, N1))
	ld	a, (_N1+0)
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	c, a
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	ld	a, #0x00
	rla
	ld	-4 (ix), a
	ld	a, (_N1+0)
	ld	l, a
	ld	h, #0x00
;E:\supernova\msx\game\default3.c:422: SET_ADD(Wear, N1); Wr("You are now wearing the "); WrFN(N1); Wr("."); Wln();
;E:\supernova\msx\game\default3.c:418: if (IN29(Inv, N1))
	dec	hl
	ld	a, (_N1+0)
	ld	b, a
	ld	a, (_N1+0)
	ld	e, a
	ld	a, b
	dec	a
;E:\supernova\msx\game\default3.c:422: SET_ADD(Wear, N1); Wr("You are now wearing the "); WrFN(N1); Wr("."); Wln();
	dec	e
;E:\supernova\msx\game\default3.c:418: if (IN29(Inv, N1))
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	b, #0x03
00650$:
	sra	-2 (ix)
	rr	-3 (ix)
	djnz	00650$
	and	a, #0x07
	ld	-1 (ix), a
;E:\supernova\msx\game\default3.c:422: SET_ADD(Wear, N1); Wr("You are now wearing the "); WrFN(N1); Wr("."); Wln();
	ld	a, e
	and	a, #0x07
	ld	b, a
	ld	e, #0x01
	inc	b
	jr	00652$
00651$:
	sla	e
00652$:
	djnz	00651$
;E:\supernova\msx\game\default3.c:364: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x13
	jp	z, 00190$
	cp	a, #0x35
	jr	z, 00101$
	cp	a, #0x38
	jp	z, 00199$
	cp	a, #0x48
	jp	z, 00169$
	cp	a, #0x4a
	jp	z, 00160$
	cp	a, #0x4e
	jr	z, 00106$
	sub	a, #0x5b
	jp	z, 00161$
	jp	00205$
;E:\supernova\msx\game\default3.c:367: case 53:
00101$:
;E:\supernova\msx\game\default3.c:368: switch (N1)
	ld	a, (_N1)
	cp	a, #0x05
	jr	z, 00102$
	sub	a, #0x38
	jr	z, 00103$
	jr	00104$
;E:\supernova\msx\game\default3.c:370: case 5: RL(289); break;
00102$:
	ld	hl, #0x0121
	call	_RL
	jp	00205$
;E:\supernova\msx\game\default3.c:371: case 56: RL(92); break;
00103$:
	ld	hl, #0x005c
	call	_RL
	jp	00205$
;E:\supernova\msx\game\default3.c:372: default: Wr("The "); Wr(NStr); Wr(" is not something that can be closed."); Wln();
00104$:
	ld	hl, #___str_41
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_42
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:374: break;
	jp	00205$
;E:\supernova\msx\game\default3.c:377: case 78:
00106$:
;E:\supernova\msx\game\default3.c:378: Col(11, 7);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\default3.c:379: Wr("In "); Col(12, 9); WrNum(Tic); Col(11, 7);
	ld	hl, #___str_43
	call	_Wr
	ld	l, #0x09
	ld	a, #0x0c
	call	_Col
	ld	hl, (_Tic)
	call	_WrNum
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\default3.c:380: Wr(" moves you scored "); Col(12, 9); WrNum(Sc); Col(11, 7);
	ld	hl, #___str_44
	call	_Wr
	ld	l, #0x09
	ld	a, #0x0c
	call	_Col
	ld	hl, (_Sc)
	call	_WrNum
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\default3.c:381: Wr(" out of a possible 1000 points."); Wln();
	ld	hl, #___str_45
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:382: Wr("This score earns you the rank of "); Col(12, 9);
	ld	hl, #___str_46
	call	_Wr
	ld	l, #0x09
	ld	a, #0x0c
	call	_Col
;E:\supernova\msx\game\default3.c:383: if (IN_RANGE(Sc, 0, 9)) { Up("ABSOLUTE BEGINNER!"); Wln(); }
	ld	hl, (_Sc)
	bit	7, h
	jr	nz, 00155$
	ld	a, #0x09
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00155$
	ld	hl, #___str_47
	call	_Up
	call	_Wln
	jp	00156$
00155$:
;E:\supernova\msx\game\default3.c:384: else if (IN_RANGE(Sc, 10, 99)) Wr("Rookie");
	ld	a, l
	sub	a, #0x0a
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00151$
	ld	a, #0x63
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00151$
	ld	hl, #___str_48
	call	_Wr
	jp	00156$
00151$:
;E:\supernova\msx\game\default3.c:385: else if (IN_RANGE(Sc, 100, 179)) Wr("Struggling");
	ld	a, l
	sub	a, #0x64
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00147$
	ld	a, #0xb3
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	c, 00147$
	ld	hl, #___str_49
	call	_Wr
	jp	00156$
00147$:
;E:\supernova\msx\game\default3.c:386: else if (IN_RANGE(Sc, 180, 259)) Wr("Novice");
	ld	a, l
	sub	a, #0xb4
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00143$
	ld	a, #0x03
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	c, 00143$
	ld	hl, #___str_50
	call	_Wr
	jp	00156$
00143$:
;E:\supernova\msx\game\default3.c:387: else if (IN_RANGE(Sc, 260, 349)) Wr("Competent");
	ld	a, l
	sub	a, #0x04
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	c, 00139$
	ld	a, #0x5d
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	c, 00139$
	ld	hl, #___str_51
	call	_Wr
	jp	00156$
00139$:
;E:\supernova\msx\game\default3.c:388: else if (IN_RANGE(Sc, 350, 449)) Wr("Fair");
	ld	a, l
	sub	a, #0x5e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	c, 00135$
	ld	a, #0xc1
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	c, 00135$
	ld	hl, #___str_52
	call	_Wr
	jp	00156$
00135$:
;E:\supernova\msx\game\default3.c:389: else if (IN_RANGE(Sc, 450, 549)) Wr("Good");
	ld	a, l
	sub	a, #0xc2
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x81
	jr	c, 00131$
	ld	a, #0x25
	cp	a, l
	ld	a, #0x02
	sbc	a, h
	jr	c, 00131$
	ld	hl, #___str_53
	call	_Wr
	jp	00156$
00131$:
;E:\supernova\msx\game\default3.c:390: else if (IN_RANGE(Sc, 550, 649)) Wr("Great");
	ld	a, l
	sub	a, #0x26
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x82
	jr	c, 00127$
	ld	a, #0x89
	cp	a, l
	ld	a, #0x02
	sbc	a, h
	jr	c, 00127$
	ld	hl, #___str_54
	call	_Wr
	jp	00156$
00127$:
;E:\supernova\msx\game\default3.c:391: else if (IN_RANGE(Sc, 650, 744)) Wr("Brilliant");
	ld	a, l
	sub	a, #0x8a
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x82
	jr	c, 00123$
	ld	a, #0xe8
	cp	a, l
	ld	a, #0x02
	sbc	a, h
	jr	c, 00123$
	ld	hl, #___str_55
	call	_Wr
	jr	00156$
00123$:
;E:\supernova\msx\game\default3.c:392: else if (IN_RANGE(Sc, 745, 829)) Wr("Genius");
	ld	a, l
	sub	a, #0xe9
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x82
	jr	c, 00119$
	ld	a, #0x3d
	cp	a, l
	ld	a, #0x03
	sbc	a, h
	jr	c, 00119$
	ld	hl, #___str_56
	call	_Wr
	jr	00156$
00119$:
;E:\supernova\msx\game\default3.c:393: else if (IN_RANGE(Sc, 830, 899)) Wr("Elite");
	ld	a, l
	sub	a, #0x3e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x83
	jr	c, 00115$
	ld	a, #0x83
	cp	a, l
	ld	a, #0x03
	sbc	a, h
	jr	c, 00115$
	ld	hl, #___str_57
	call	_Wr
	jr	00156$
00115$:
;E:\supernova\msx\game\default3.c:394: else if (IN_RANGE(Sc, 900, 949)) Wr("Champion");
	ld	a, l
	sub	a, #0x84
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x83
	jr	c, 00111$
	ld	a, #0xb5
	cp	a, l
	ld	a, #0x03
	sbc	a, h
	jr	c, 00111$
	ld	hl, #___str_58
	call	_Wr
	jr	00156$
00111$:
;E:\supernova\msx\game\default3.c:395: else if (IN_RANGE(Sc, 950, 1000)) Wr("Galaxy Class");
	ld	a, l
	sub	a, #0xb6
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x83
	jr	c, 00156$
	ld	a, #0xe8
	cp	a, l
	ld	a, #0x03
	sbc	a, h
	jr	c, 00156$
	ld	hl, #___str_59
	call	_Wr
00156$:
;E:\supernova\msx\game\default3.c:396: if (Sc > 9) { Wr(" Adventurer."); Wln(); }
	ld	hl, (_Sc)
	ld	a, #0x09
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00662$
	xor	a, #0x80
00662$:
	jp	p, 00205$
	ld	hl, #___str_60
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:397: break;
	jp	00205$
;E:\supernova\msx\game\default3.c:400: case 74: RL(357); break;
00160$:
	ld	hl, #0x0165
	call	_RL
	jp	00205$
;E:\supernova\msx\game\default3.c:403: case 91:
00161$:
;E:\supernova\msx\game\default3.c:404: if (StrEq(VStr, "follow"))
	ld	de, #___str_61
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00167$
;E:\supernova\msx\game\default3.c:405: switch (N1)
	ld	a, (_N1)
	cp	a, #0x7b
	jr	z, 00162$
	sub	a, #0x7c
	jr	z, 00163$
	jr	00164$
;E:\supernova\msx\game\default3.c:407: case 123: RL(358); break;
00162$:
	ld	hl, #0x0166
	call	_RL
	jp	00205$
;E:\supernova\msx\game\default3.c:408: case 124: RL(359); break;
00163$:
	ld	hl, #0x0167
	call	_RL
	jp	00205$
;E:\supernova\msx\game\default3.c:409: default: Wr("Why, did the "); Wr(NStr); Wr(" leave?"); Wln();
00164$:
	ld	hl, #___str_62
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_63
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:410: }
	jp	00205$
00167$:
;E:\supernova\msx\game\default3.c:411: else RL(432 + Rnd(5));   // for Scott in VOCAB!
	ld	hl, #0x0005
	call	_Rnd
	ld	hl, #0x01b0
	add	hl, de
	call	_RL
;E:\supernova\msx\game\default3.c:412: break;
	jp	00205$
;E:\supernova\msx\game\default3.c:415: case 72:
00169$:
;E:\supernova\msx\game\default3.c:416: if (N1 == 7 || N1 == 20 || N1 == 26 || N1 == 28)
	ld	a, (_N1)
	cp	a, #0x07
	jr	z, 00184$
	cp	a, #0x14
	jr	z, 00184$
	cp	a, #0x1a
	jr	z, 00184$
	sub	a, #0x1c
	jp	nz, 00185$
00184$:
;E:\supernova\msx\game\default3.c:418: if (IN29(Inv, N1))
	bit	0, c
	jp	nz, 00180$
	bit	0, -4 (ix)
	jp	nz, 00180$
	ld	bc, #_Inv+0
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	a, (hl)
	ld	b, -1 (ix)
	inc	b
	jr	00671$
00670$:
	srl	a
00671$:
	djnz	00670$
	rrca
	jr	nc, 00180$
;E:\supernova\msx\game\default3.c:420: if (!IN29(Wear, N1))
	ld	bc, #_Wear+0
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	a, (hl)
	ld	b, -1 (ix)
	inc	b
	jr	00674$
00673$:
	srl	a
00674$:
	djnz	00673$
	rrca
	jr	c, 00175$
;E:\supernova\msx\game\default3.c:422: SET_ADD(Wear, N1); Wr("You are now wearing the "); WrFN(N1); Wr("."); Wln();
	ld	bc, #_Wear+0
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	a, (hl)
	or	a, e
	ld	(hl), a
	ld	hl, #___str_64
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_65
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:423: if (IN_RANGE(Prm, 102, 105) && N1 == 20) RL(503);
	ld	a, (_Prm+0)
	sub	a, #0x66
	jp	c, 00205$
	ld	a, #0x69
	ld	hl, #_Prm
	sub	a, (hl)
	jp	c, 00205$
	ld	a, (_N1)
	sub	a, #0x14
	jp	nz, 00205$
	ld	hl, #0x01f7
	call	_RL
	jp	00205$
00175$:
;E:\supernova\msx\game\default3.c:425: else { Wr("You are already wearing the "); WrFN(N1); Wr("."); Wln(); }
	ld	hl, #___str_66
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_65
	call	_Wr
	call	_Wln
	jp	00205$
00180$:
;E:\supernova\msx\game\default3.c:427: else { Wr("First you must have the "); WrFN(N1); Wr("."); Wln(); }
	ld	hl, #___str_67
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_65
	call	_Wr
	call	_Wln
	jp	00205$
00185$:
;E:\supernova\msx\game\default3.c:429: else Crazy();
	call	_Crazy
;E:\supernova\msx\game\default3.c:430: break;
	jp	00205$
;E:\supernova\msx\game\default3.c:433: case 19:
00190$:
;E:\supernova\msx\game\default3.c:434: if (IN29(Wear, N1))
	bit	0, c
	jr	nz, 00195$
	bit	0, -4 (ix)
	jr	nz, 00195$
	ld	bc, #_Wear+0
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	c, (hl)
	ld	b, -1 (ix)
	ld	a, c
	inc	b
	jr	00680$
00679$:
	srl	a
00680$:
	djnz	00679$
	rrca
	jr	nc, 00195$
;E:\supernova\msx\game\default3.c:436: SET_DEL(Wear, N1);
	ld	a, e
	cpl
	and	a, c
	ld	(hl), a
;E:\supernova\msx\game\default3.c:437: Wr("You are no longer wearing the "); WrFN(N1); Wr("."); Wln();
	ld	hl, #___str_68
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_65
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:438: if (IN_RANGE(Prm, 102, 105)) RL(492);
	ld	a, (_Prm+0)
	sub	a, #0x66
	jr	c, 00205$
	ld	a, #0x69
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00205$
	ld	hl, #0x01ec
	call	_RL
	jr	00205$
00195$:
;E:\supernova\msx\game\default3.c:440: else { Wr("You are not wearing the "); WrFN(N1); Wr(" to begin with."); Wln(); }
	ld	hl, #___str_69
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_70
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:441: break;
	jr	00205$
;E:\supernova\msx\game\default3.c:444: case 56:
00199$:
;E:\supernova\msx\game\default3.c:445: if (Here(37) || Here(52)) RL(273); else RL(361);
	ld	a, #0x25
	call	_Here
	or	a, a
	jr	nz, 00200$
	ld	a, #0x34
	call	_Here
	or	a, a
	jr	z, 00201$
00200$:
	ld	hl, #0x0111
	call	_RL
	jr	00205$
00201$:
	ld	hl, #0x0169
	call	_RL
;E:\supernova\msx\game\default3.c:447: }
00205$:
;E:\supernova\msx\game\default3.c:448: }
	ld	sp, ix
	pop	ix
	ret
___str_41:
	.ascii "The "
	.db 0x00
___str_42:
	.ascii " is not something that can be closed."
	.db 0x00
___str_43:
	.ascii "In "
	.db 0x00
___str_44:
	.ascii " moves you scored "
	.db 0x00
___str_45:
	.ascii " out of a possible 1000 points."
	.db 0x00
___str_46:
	.ascii "This score earns you the rank of "
	.db 0x00
___str_47:
	.ascii "ABSOLUTE BEGINNER!"
	.db 0x00
___str_48:
	.ascii "Rookie"
	.db 0x00
___str_49:
	.ascii "Struggling"
	.db 0x00
___str_50:
	.ascii "Novice"
	.db 0x00
___str_51:
	.ascii "Competent"
	.db 0x00
___str_52:
	.ascii "Fair"
	.db 0x00
___str_53:
	.ascii "Good"
	.db 0x00
___str_54:
	.ascii "Great"
	.db 0x00
___str_55:
	.ascii "Brilliant"
	.db 0x00
___str_56:
	.ascii "Genius"
	.db 0x00
___str_57:
	.ascii "Elite"
	.db 0x00
___str_58:
	.ascii "Champion"
	.db 0x00
___str_59:
	.ascii "Galaxy Class"
	.db 0x00
___str_60:
	.ascii " Adventurer."
	.db 0x00
___str_61:
	.ascii "follow"
	.db 0x00
___str_62:
	.ascii "Why, did the "
	.db 0x00
___str_63:
	.ascii " leave?"
	.db 0x00
___str_64:
	.ascii "You are now wearing the "
	.db 0x00
___str_65:
	.ascii "."
	.db 0x00
___str_66:
	.ascii "You are already wearing the "
	.db 0x00
___str_67:
	.ascii "First you must have the "
	.db 0x00
___str_68:
	.ascii "You are no longer wearing the "
	.db 0x00
___str_69:
	.ascii "You are not wearing the "
	.db 0x00
___str_70:
	.ascii " to begin with."
	.db 0x00
;E:\supernova\msx\game\default3.c:450: void Default14(void)
;	---------------------------------
; Function Default14
; ---------------------------------
_Default14::
;E:\supernova\msx\game\default3.c:452: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x15
	jp	z, 00177$
	cp	a, #0x19
	jp	z, 00191$
	cp	a, #0x31
	jr	z, 00101$
	cp	a, #0x3b
	jp	z, 00119$
	sub	a, #0x5c
	jp	z, 00170$
	ret
;E:\supernova\msx\game\default3.c:455: case 49:
00101$:
;E:\supernova\msx\game\default3.c:456: if (N2 == 46 || N2 == 111 || N2 == 123 || N2 == 124)
	ld	a, (_N2)
	sub	a, #0x2e
	ld	a, #0x01
	jr	z, 00596$
	xor	a, a
00596$:
	ld	c, a
	or	a, a
	jr	nz, 00113$
	ld	a, (_N2)
	cp	a, #0x6f
	jr	z, 00113$
	cp	a, #0x7b
	jr	z, 00113$
	sub	a, #0x7c
	jp	nz, _Crazy
00113$:
;E:\supernova\msx\game\default3.c:458: if (Pr == 1)
	ld	a, (_Pr)
	dec	a
	jp	nz, _NoSense
;E:\supernova\msx\game\default3.c:459: switch (N2)
	ld	a, c
	or	a, a
	jr	nz, 00102$
	ld	a, (_N2)
	cp	a, #0x6f
	jr	z, 00103$
	cp	a, #0x7b
	jr	z, 00108$
	sub	a, #0x7c
	jr	z, 00107$
	ret
;E:\supernova\msx\game\default3.c:461: case 46: RL(447); break;
00102$:
	ld	hl, #0x01bf
	jp	_RL
;E:\supernova\msx\game\default3.c:462: case 111:
00103$:
;E:\supernova\msx\game\default3.c:463: if (N1 == 8) { SET_ADD(Inv, 29); Van(8); Score(10, 21); RS(11); T[1] = 21; Add(9); Add(16); }
	ld	a, (_N1)
	sub	a, #0x08
	jr	nz, 00105$
	ld	hl, #_Inv+3
	set	4, (hl)
	ld	a, #0x08
	call	_Van
	ld	de, #0x0015
	ld	hl, #0x000a
	call	_Score
	ld	hl, #0x000b
	call	_RS
	ld	hl, #0x0015
	ld	((_T + 2)), hl
	ld	a, #0x09
	call	_Add
	ld	a, #0x10
	jp	_Add
00105$:
;E:\supernova\msx\game\default3.c:464: else RL(444);
;E:\supernova\msx\game\default3.c:465: break;
	ld	hl, #0x01bc
	jp	_RL
;E:\supernova\msx\game\default3.c:466: case 124: RL(445); break;
00107$:
	ld	hl, #0x01bd
	jp	_RL
;E:\supernova\msx\game\default3.c:467: case 123: RL(446); break;
00108$:
;E:\supernova\msx\game\default3.c:468: }
;E:\supernova\msx\game\default3.c:469: else NoSense();
;E:\supernova\msx\game\default3.c:471: else Crazy();
;E:\supernova\msx\game\default3.c:472: break;
	ld	hl, #0x01be
	jp	_RL
;E:\supernova\msx\game\default3.c:475: case 59:
00119$:
;E:\supernova\msx\game\default3.c:476: if (N1 != Null)
	ld	a, (_N1+0)
	or	a, a
	jp	z, 00168$
;E:\supernova\msx\game\default3.c:478: if (StrEq(VStr, "jump over") || StrEq(VStr, "leap over") || StrEq(VStr, "jump across"))
	ld	de, #___str_71
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00158$
	ld	de, #___str_72
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	nz, 00158$
	ld	de, #___str_73
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00159$
00158$:
;E:\supernova\msx\game\default3.c:480: if (IN_RANGE(N1, 1, 29) || N1 == 36 || N1 == 49 || N1 == 51 || N1 == 69 || N1 == 71 || N1 == 73 || N1 == 132)
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00124$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	nc, 00120$
00124$:
	ld	a, (_N1)
	cp	a, #0x24
	jr	z, 00120$
	cp	a, #0x31
	jr	z, 00120$
	cp	a, #0x33
	jr	z, 00120$
	cp	a, #0x45
	jr	z, 00120$
	cp	a, #0x47
	jr	z, 00120$
	cp	a, #0x49
	jr	z, 00120$
	sub	a, #0x84
	jp	nz, _Crazy
00120$:
;E:\supernova\msx\game\default3.c:481: { Wr("You land on the other side of the "); Wr(NStr); Wr("."); Wln(); }
	ld	hl, #___str_74
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_75
	call	_Wr
;E:\supernova\msx\game\default3.c:482: else Crazy();
	jp	_Wln
00159$:
;E:\supernova\msx\game\default3.c:484: else if (StrEq(VStr, "jump off") && En(8)) { RL(475); Min(8); }
	ld	de, #___str_76
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00155$
	ld	a, #0x08
	call	_En
	or	a, a
	jr	z, 00155$
	ld	hl, #0x01db
	call	_RL
	ld	a, #0x08
	jp	_Min
00155$:
;E:\supernova\msx\game\default3.c:485: else if (N1 == 34 || N1 == 56 || N1 == 60 || N1 == 62 || N1 == 68 || N1 == 72 || N1 == 82 || N1 == 92) Crazy();
	ld	a, (_N1)
	sub	a, #0x22
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x38
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x3c
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x3e
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x44
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x48
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x52
	jp	z, _Crazy
	ld	a, (_N1)
	sub	a, #0x5c
	jp	z, _Crazy
;E:\supernova\msx\game\default3.c:486: else if (IN_RANGE(N1, 1, 29) && !IN29(Inv, N1)) { Wr("You land on the "); Wr(NStr); Wr("."); Wln(); }
	ld	a, (_N1+0)
	sub	a, #0x01
	jr	c, 00138$
	ld	a, #0x1d
	ld	hl, #_N1
	sub	a, (hl)
	jr	c, 00138$
	ld	de, #_Inv+0
	ld	a, (_N1+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00625$:
	sra	h
	rr	l
	djnz	00625$
	add	hl, de
	ld	c, (hl)
	ld	a, (_N1+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00627$
00626$:
	srl	a
00627$:
	djnz	00626$
	rrca
	jr	c, 00138$
	ld	hl, #___str_77
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_75
	call	_Wr
	jp	_Wln
00138$:
;E:\supernova\msx\game\default3.c:487: else if (StrEq(NStr, "quicksa")) { RL(582); Add(128); }
	ld	de, #___str_78
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00135$
	ld	hl, #0x0246
	call	_RL
	ld	a, #0x80
	jp	_Add
00135$:
;E:\supernova\msx\game\default3.c:488: else if (StrEq(NStr, "swamp")) { RL(583); Add(128); }
	ld	de, #___str_79
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00132$
	ld	hl, #0x0247
	call	_RL
	ld	a, #0x80
	jp	_Add
00132$:
;E:\supernova\msx\game\default3.c:489: else RL(476);
	ld	hl, #0x01dc
	jp	_RL
00168$:
;E:\supernova\msx\game\default3.c:491: else if (StrEq(VStr, "jump off") && En(8)) { RL(475); Min(8); }
	ld	de, #___str_76
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00164$
	ld	a, #0x08
	call	_En
	or	a, a
	jr	z, 00164$
	ld	hl, #0x01db
	call	_RL
	ld	a, #0x08
	jp	_Min
00164$:
;E:\supernova\msx\game\default3.c:492: else RL(539);
;E:\supernova\msx\game\default3.c:493: break;
	ld	hl, #0x021b
	jp	_RL
;E:\supernova\msx\game\default3.c:496: case 92:
00170$:
;E:\supernova\msx\game\default3.c:497: switch (N1)
	ld	a, (_N1)
	cp	a, #0x31
	jr	z, 00173$
	cp	a, #0x74
	jr	z, 00173$
	cp	a, #0x78
	jr	z, 00174$
	sub	a, #0x7a
	jp	nz, _Crazy
;E:\supernova\msx\game\default3.c:499: case 49: case 116: case 122: RL(556); break;
00173$:
	ld	hl, #0x022c
	jp	_RL
;E:\supernova\msx\game\default3.c:500: case 120: RL(557); break;
00174$:
;E:\supernova\msx\game\default3.c:501: default: Crazy();
;E:\supernova\msx\game\default3.c:503: break;
	ld	hl, #0x022d
	jp	_RL
;E:\supernova\msx\game\default3.c:506: case 21:
00177$:
;E:\supernova\msx\game\default3.c:507: if (StrEq(VStr, "greet"))
	ld	de, #___str_80
	ld	hl, #_VStr
	call	_StrEq
	or	a, a
	jr	z, 00189$
;E:\supernova\msx\game\default3.c:508: switch (N1)
	ld	a, (_N1)
	cp	a, #0x6f
	jr	z, 00178$
	cp	a, #0x7b
	jr	z, 00180$
	sub	a, #0x7c
	jr	z, 00179$
	jp	_Crazy
;E:\supernova\msx\game\default3.c:510: case 111: RL(51); break;
00178$:
	ld	hl, #0x0033
	jp	_RL
;E:\supernova\msx\game\default3.c:511: case 124: RL(46); break;
00179$:
	ld	hl, #0x002e
	jp	_RL
;E:\supernova\msx\game\default3.c:512: case 123: RL(441); break;
00180$:
;E:\supernova\msx\game\default3.c:513: default: Crazy();
;E:\supernova\msx\game\default3.c:514: }
	ld	hl, #0x01b9
	jp	_RL
00189$:
;E:\supernova\msx\game\default3.c:515: else if (N1 == 111 || N1 == 123 || N1 == 124)
	ld	a, (_N1)
	cp	a, #0x6f
	jr	z, 00183$
	cp	a, #0x7b
	jr	z, 00183$
	sub	a, #0x7c
	jp	nz, _Crazy
00183$:
;E:\supernova\msx\game\default3.c:517: Wr("To talk to the "); WrFN(N1); Wr(" enter:"); Wln();
	ld	hl, #___str_81
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_82
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:518: WrFN(N1); Wr(", < what you want to say goes here >"); Wln();
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_83
	call	_Wr
;E:\supernova\msx\game\default3.c:520: else Crazy();
;E:\supernova\msx\game\default3.c:521: break;
	jp	_Wln
;E:\supernova\msx\game\default3.c:523: case 25: RS(245); break;
00191$:
	ld	hl, #0x00f5
;E:\supernova\msx\game\default3.c:524: }
;E:\supernova\msx\game\default3.c:525: }
	jp	_RS
___str_71:
	.ascii "jump over"
	.db 0x00
___str_72:
	.ascii "leap over"
	.db 0x00
___str_73:
	.ascii "jump across"
	.db 0x00
___str_74:
	.ascii "You land on the other side of the "
	.db 0x00
___str_75:
	.ascii "."
	.db 0x00
___str_76:
	.ascii "jump off"
	.db 0x00
___str_77:
	.ascii "You land on the "
	.db 0x00
___str_78:
	.ascii "quicksa"
	.db 0x00
___str_79:
	.ascii "swamp"
	.db 0x00
___str_80:
	.ascii "greet"
	.db 0x00
___str_81:
	.ascii "To talk to the "
	.db 0x00
___str_82:
	.ascii " enter:"
	.db 0x00
___str_83:
	.ascii ", < what you want to say goes here >"
	.db 0x00
;E:\supernova\msx\game\default3.c:527: void DeadMain(void)
;	---------------------------------
; Function DeadMain
; ---------------------------------
_DeadMain::
;E:\supernova\msx\game\default3.c:529: Wln();
	call	_Wln
;E:\supernova\msx\game\default3.c:530: Gotoxy(1, 20); for (x = 5; x >= 1; x--) { Wln(); Delay(99); Sound(300 + (x * 50)); Bor(x, 7); }
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
	ld	hl, #_x
	ld	(hl), #0x05
00120$:
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
	ld	bc, #0x012c
	add	hl, bc
	call	_Sound
	ld	l, #0x07
	ld	a, (_x)
	call	_Bor
	ld	hl, #_x
	dec	(hl)
	ld	a, (_x+0)
	sub	a, #0x01
	jr	nc, 00120$
;E:\supernova\msx\game\default3.c:531: do x = Rnd(14) + 1; while (x == 4 || x == 12);
00103$:
	ld	hl, #0x000e
	call	_Rnd
	ld	a, e
	inc	a
	ld	(#_x), a
	ld	a, (_x)
	sub	a, #0x04
	jr	z, 00103$
	ld	a, (_x)
	sub	a, #0x0c
	jr	z, 00103$
;E:\supernova\msx\game\default3.c:532: Gotoxy(1, 15); Col(x, 15); Bak(4, 7);
	ld	l, #0x0f
	ld	a, #0x01
	call	_Gotoxy
	ld	l, #0x0f
	ld	a, (_x)
	call	_Col
	ld	l, #0x07
	ld	a, #0x04
	call	_Bak
;E:\supernova\msx\game\default3.c:533: Wr("***************************************"); Wr("***************************************"); Wln();
	ld	hl, #___str_84
	call	_Wr
	ld	hl, #___str_84
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default3.c:534: Delay(99); Sound(300); Bor(6, 0);
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x012c
	call	_Sound
	ld	l, #0x00
	ld	a, #0x06
	call	_Bor
;E:\supernova\msx\game\default3.c:535: Gotoxy(1, 16);
	ld	l, #0x10
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\default3.c:536: for (x = 3; x >= 1; x--)
	ld	hl, #_x
	ld	(hl), #0x03
00122$:
;E:\supernova\msx\game\default3.c:538: Wr("*                                      "); Wr("                                      *");
	ld	hl, #___str_85
	call	_Wr
	ld	hl, #___str_86
	call	_Wr
;E:\supernova\msx\game\default3.c:539: Delay(99); Sound(100 + (x * 50)); Bor(x + 8, 15);
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
	ld	bc, #0x0064
	add	hl, bc
	call	_Sound
	ld	a, (_x)
	add	a, #0x08
	ld	l, #0x0f
	call	_Bor
;E:\supernova\msx\game\default3.c:536: for (x = 3; x >= 1; x--)
	ld	hl, #_x
	dec	(hl)
	ld	a, (_x+0)
	sub	a, #0x01
	jr	nc, 00122$
;E:\supernova\msx\game\default3.c:541: Gotoxy(1, 19);
	ld	l, #0x13
	ld	a, #0x01
	call	_Gotoxy
;E:\supernova\msx\game\default3.c:542: Wr("***************************************"); Wr("***************************************");
	ld	hl, #___str_84
	call	_Wr
	ld	hl, #___str_84
	call	_Wr
;E:\supernova\msx\game\default3.c:543: Delay(99); Sound(100); Bor(14, 0);
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x0064
	call	_Sound
	ld	l, #0x00
	ld	a, #0x0e
	call	_Bor
;E:\supernova\msx\game\default3.c:544: Gotoxy(30, 17); Col(16, 31); Wr("YOU HAVE DIED!!!"); Delay(99); Sound(50);
	ld	l, #0x11
	ld	a, #0x1e
	call	_Gotoxy
	ld	l, #0x1f
	ld	a, #0x10
	call	_Col
	ld	hl, #___str_87
	call	_Wr
	ld	hl, #0x0063
	call	_Delay
	ld	hl, #0x0032
	call	_Sound
;E:\supernova\msx\game\default3.c:545: Gotoxy(1, 20); Bak(0, 0); Col(11, 7); Bor(12, 7); Wln(); Delay(99); NoSound();
	ld	l, #0x14
	ld	a, #0x01
	call	_Gotoxy
	xor	a, a
	ld	l, a
	call	_Bak
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	ld	l, #0x07
	ld	a, #0x0c
	call	_Bor
	call	_Wln
	ld	hl, #0x0063
	call	_Delay
	call	_NoSound
;E:\supernova\msx\game\default3.c:546: Delay(999); i = Rnd(3) + 2;
	ld	hl, #0x03e7
	call	_Delay
	ld	hl, #0x0003
	call	_Rnd
	ex	de, hl
	inc	hl
	inc	hl
	ld	(_i), hl
;E:\supernova\msx\game\default3.c:547: Tune(i, 3, 830); Tune(i, 3, 770); Tune(i, 3, 200); Tune(i, 3, 0); Delay(800);
	ld	hl, #0x033e
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0302
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x00c8
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0000
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0320
	call	_Delay
;E:\supernova\msx\game\default3.c:548: Tune(i, 6, 400); Tune(i, 5, 400); Tune(i, 5, 400);
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0006
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0005
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0005
	ld	hl, (_i)
	call	_Tune
;E:\supernova\msx\game\default3.c:549: Tune(i, 3, 400); Tune(i, 3, 400); Tune(i, 2, 400); Tune(i, 3, 810);
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x0190
	push	hl
	ld	de, #0x0002
	ld	hl, (_i)
	call	_Tune
	ld	hl, #0x032a
	push	hl
	ld	de, #0x0003
	ld	hl, (_i)
	call	_Tune
00124$:
;E:\supernova\msx\game\default3.c:552: Col(11, 7); Cur(2);
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\default3.c:553: do
00109$:
;E:\supernova\msx\game\default3.c:555: Wr("Would you like to "); Col(14, 15); Wr("S"); Col(11, 7);
	ld	hl, #___str_88
	call	_Wr
	ld	l, #0x0f
	ld	a, #0x0e
	call	_Col
	ld	hl, #___str_89
	call	_Wr
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\default3.c:556: Wr("tart a new game, "); Col(14, 15); Wr("R"); Col(11, 7);
	ld	hl, #___str_90
	call	_Wr
	ld	l, #0x0f
	ld	a, #0x0e
	call	_Col
	ld	hl, #___str_91
	call	_Wr
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\default3.c:557: Wr("estore or "); Col(14, 15); Wr("Q"); Col(11, 7); Wr("uit? ");
	ld	hl, #___str_92
	call	_Wr
	ld	l, #0x0f
	ld	a, #0x0e
	call	_Col
	ld	hl, #___str_93
	call	_Wr
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
	ld	hl, #___str_94
	call	_Wr
;E:\supernova\msx\game\default3.c:558: CFlag = (char)(GetKey() & 0xFF); CFlag = UpCase(CFlag); Col(9, 15); WrC(CFlag); Wln();
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
	ld	a, (_CFlag)
	call	_UpCase
	ld	(#_CFlag), a
	ld	l, #0x0f
	ld	a, #0x09
	call	_Col
	ld	a, (_CFlag)
	call	_WrC
	call	_Wln
;E:\supernova\msx\game\default3.c:559: Play(500, 500, 40); Col(11, 7);
	ld	hl, #0x0028
	push	hl
	ld	de, #0x01f4
	ld	h, d
	ld	l, e
	call	_Play
	ld	l, #0x07
	ld	a, #0x0b
	call	_Col
;E:\supernova\msx\game\default3.c:560: } while (!(CFlag == 'S' || CFlag == 'R' || CFlag == 'Q'));
	ld	a, (_CFlag)
	sub	a, #0x53
	jr	z, 00111$
	ld	a, (_CFlag)
	sub	a, #0x52
	jr	z, 00111$
	ld	a, (_CFlag)
	sub	a, #0x51
	jp	nz, 00109$
00111$:
;E:\supernova\msx\game\default3.c:561: Bor(0, 0); Cur(3);
	xor	a, a
	ld	l, a
	call	_Bor
	ld	a, #0x03
	call	_Cur
;E:\supernova\msx\game\default3.c:562: switch (CFlag)
	ld	a, (_CFlag)
	sub	a, #0x51
	jr	z, 00116$
	ld	a, (_CFlag)
	sub	a, #0x52
	jr	z, 00113$
	ld	a, (_CFlag)
	sub	a, #0x53
	jp	nz, 00124$
;E:\supernova\msx\game\default3.c:565: RL(170); Delay(1500); Window(1, 1, 80, 25); ClrScr();
	ld	hl, #0x00aa
	call	_RL
	ld	hl, #0x05dc
	call	_Delay
	ld	hl, #0x1950
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
	call	_ClrScr
;E:\supernova\msx\game\default3.c:566: RestartGame();
;E:\supernova\msx\game\default3.c:567: return;
	jp	_RestartGame
;E:\supernova\msx\game\default3.c:568: case 'R':
00113$:
;E:\supernova\msx\game\default3.c:569: Min(126); Restore();
	ld	a, #0x7e
	call	_Min
	call	_Restore
;E:\supernova\msx\game\default3.c:570: if (En(126)) return;
	ld	a, #0x7e
	call	_En
	or	a, a
	jp	z, 00124$
	ret
;E:\supernova\msx\game\default3.c:572: case 'Q':
00116$:
;E:\supernova\msx\game\default3.c:573: Window(1, 1, 80, 25); ClrScr(); Col(3, 7);
	ld	hl, #0x1950
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
	call	_ClrScr
	ld	l, #0x07
	ld	a, #0x03
	call	_Col
;E:\supernova\msx\game\default3.c:574: Wr("In "); WrNum(Tic); Wr(" moves you scored "); WrNum(Sc); Wr(" out of a possible 1000 points."); Wln(); Wln();
	ld	hl, #___str_95
	call	_Wr
	ld	hl, (_Tic)
	call	_WrNum
	ld	hl, #___str_96
	call	_Wr
	ld	hl, (_Sc)
	call	_WrNum
	ld	hl, #___str_97
	call	_Wr
	call	_Wln
	call	_Wln
;E:\supernova\msx\game\default3.c:575: Col(31, 16); Bak(1, 7); Wr("Good-bye!"); Wln(); Wln(); Cur(1);
	ld	l, #0x10
	ld	a, #0x1f
	call	_Col
	ld	l, #0x07
	ld	a, #0x01
	call	_Bak
	ld	hl, #___str_98
	call	_Wr
	call	_Wln
	call	_Wln
	ld	a, #0x01
	call	_Cur
;E:\supernova\MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;E:\supernova\msx\game\default3.c:577: return;
;E:\supernova\msx\game\default3.c:578: }
;E:\supernova\msx\game\default3.c:580: }
	ret
___str_84:
	.ascii "***************************************"
	.db 0x00
___str_85:
	.ascii "*                                      "
	.db 0x00
___str_86:
	.ascii "                                      *"
	.db 0x00
___str_87:
	.ascii "YOU HAVE DIED!!!"
	.db 0x00
___str_88:
	.ascii "Would you like to "
	.db 0x00
___str_89:
	.ascii "S"
	.db 0x00
___str_90:
	.ascii "tart a new game, "
	.db 0x00
___str_91:
	.ascii "R"
	.db 0x00
___str_92:
	.ascii "estore or "
	.db 0x00
___str_93:
	.ascii "Q"
	.db 0x00
___str_94:
	.ascii "uit? "
	.db 0x00
___str_95:
	.ascii "In "
	.db 0x00
___str_96:
	.ascii " moves you scored "
	.db 0x00
___str_97:
	.ascii " out of a possible 1000 points."
	.db 0x00
___str_98:
	.ascii "Good-bye!"
	.db 0x00
;E:\supernova\msx\game\default3.c:582: void DEAD(void) { DeadMain(); }
;	---------------------------------
; Function DEAD
; ---------------------------------
_DEAD::
	jp	_DeadMain
;E:\supernova\msx\game\default3.c:583: void Call13(void) { Default13(); }
;	---------------------------------
; Function Call13
; ---------------------------------
_Call13::
	jp	_Default13
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
