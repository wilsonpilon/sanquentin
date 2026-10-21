;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module proto
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DOSMapper_GetPage
	.globl _DOSMapper_SetPage2
	.globl _DOSMapper_Alloc
	.globl _DOSMapper_Init
	.globl _Txt_ClearRow
	.globl _Txt_Scroll
	.globl _Txt_Draw
	.globl _Txt_SetColor
	.globl _Txt_Init
	.globl _VDP_CommandSetupR36
	.globl _VDP_CommandWait
	.globl _VDP_SetPaletteEntry
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _VDP_SetMode
	.globl _BIOS_Exit
	.globl _Keyboard_Read
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
;./proto.c:17: static void U16ToStr(u16 v, c8* out)
;	---------------------------------
; Function U16ToStr
; ---------------------------------
_U16ToStr:
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-9
	add	iy, sp
	ld	sp, iy
	ld	c, l
	ld	b, h
	ld	-3 (ix), e
	ld	-2 (ix), d
;./proto.c:20: do { t[n++] = '0' + v % 10; v /= 10; } while (v);
	ld	-1 (ix), #0x00
00101$:
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
;./proto.c:22: while (n) out[i++] = t[--n];
	or	a, d
	jr	nz, 00101$
	ld	c, a
	ld	b, -1 (ix)
00104$:
	ld	a, c
	add	a, -3 (ix)
	ld	e, a
	ld	a, #0x00
	adc	a, -2 (ix)
	ld	d, a
	ld	a, b
	or	a, a
	jr	z, 00106$
	inc	c
	dec	b
	push	de
	ld	e, b
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	ld	(de), a
	jp	00104$
00106$:
;./proto.c:23: out[i] = 0;
	xor	a, a
	ld	(de), a
;./proto.c:24: }
	ld	sp, ix
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
_g_Line:
	.ascii "The quick brown fox jumps over the lazy dog. SUPERNOVA text "
	.ascii "engine on SCREEN 7!"
	.db 0x00
_g_Cols:
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x07	; 7
;./proto.c:26: static void Report(u8 row, const c8* label, u16 v)
;	---------------------------------
; Function Report
; ---------------------------------
_Report:
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
	ld	c, a
;./proto.c:29: Txt_ClearRow(row, 1);
	push	bc
	push	de
	ld	l, #0x01
	ld	a, c
	call	_Txt_ClearRow
	pop	de
	pop	bc
;./proto.c:30: Txt_Draw(1, row, label);
	push	bc
	push	de
	ld	l, c
	ld	a, #0x01
	call	_Txt_Draw
	pop	bc
;./proto.c:31: U16ToStr(v, num);
	ld	hl, #0
	add	hl, sp
	push	bc
	ex	de, hl
	push	de
	ld	hl, #14
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_U16ToStr
	pop	de
	pop	bc
;./proto.c:32: Txt_Draw(60, row, num);
	push	de
	ld	l, c
	ld	a, #0x3c
	call	_Txt_Draw
;./proto.c:33: }
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	pop	hl
	pop	af
	jp	(hl)
;./proto.c:35: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-18
	add	hl, sp
	ld	sp, hl
;./proto.c:37: VDP_SetMode(VDP_MODE_SCREEN7);
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
;./proto.c:41: for (u8 i = 0; i < 16; i++)
	ld	bc, #_g_Pal+0
	ld	-1 (ix), #0x00
00129$:
	ld	a, -1 (ix)
	sub	a, #0x10
	jr	nc, 00101$
;./proto.c:42: VDP_SetPaletteEntry(i, g_Pal[i]);
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	bc
	ld	a, -1 (ix)
	call	_VDP_SetPaletteEntry
	pop	bc
;./proto.c:41: for (u8 i = 0; i < 16; i++)
	inc	-1 (ix)
	jp	00129$
00101$:
;E:\supernova\MSXgl\engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	h, #0x02
	ld	((_g_VDP_Command + 8)), hl
;E:\supernova\MSXgl\engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	hl, #0x00d4
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
;./proto.c:44: VDP_CommandWait();
	call	_VDP_CommandWait
;./proto.c:45: Txt_Init();
	call	_Txt_Init
;./proto.c:49: u8 savedP2 = 0;
	ld	-14 (ix), #0x00
;./proto.c:50: if (DOSMapper_Init())
	call	_DOSMapper_Init
	or	a, a
	jr	z, 00105$
;./proto.c:53: savedP2 = DOSMapper_GetPage(2);
	ld	a, #0x02
	call	_DOSMapper_GetPage
	ld	-14 (ix), a
;./proto.c:54: if (DOSMapper_Alloc(DOS_ALLOC_USER, DOS_SEGSLOT_PRIM, &seg))
	ld	hl, #2
	add	hl, sp
	push	hl
	xor	a, a
	ld	l, a
	call	_DOSMapper_Alloc
	or	a, a
	jr	z, 00105$
;./proto.c:56: DOSMapper_SetPage2(seg.Number);
	ld	a, -16 (ix)
	call	_DOSMapper_SetPage2
;./proto.c:57: Mem_Set(0xAA, (void*)0x8000, 0x4000);
	ld	hl, #0x8000
	ld	(hl), #0xaa
	ld	e, l
	ld	d, h
	inc	de
	ld	bc, #0x3fff
	ldir
00105$:
;./proto.c:62: u16 t0 = g_JIFFY;
	ld	hl, (_g_JIFFY)
	ld	-2 (ix), l
	ld	-1 (ix), h
;./proto.c:63: for (u8 y = 0; y < TXT_ROWS; y++)
	ld	c, #0x00
00132$:
;./proto.c:65: Txt_SetColor(g_Cols[y & 7], (y == 1 || y == 2) ? 4 : 0);
	ld	a, c
	cp	a, #0x19
	jr	nc, 00106$
	dec	a
	jr	z, 00162$
	ld	a, c
	sub	a, #0x02
	jr	nz, 00159$
00162$:
	ld	l, #0x04
	jp	00160$
00159$:
	ld	l, #0x00
00160$:
	ld	a, c
	and	a, #0x07
	add	a, #<(_g_Cols)
	ld	e, a
	ld	a, #0x00
	adc	a, #>(_g_Cols)
	ld	d, a
	ld	a, (de)
	push	bc
	call	_Txt_SetColor
	pop	bc
;./proto.c:66: Txt_Draw(0, y, g_Line);
	push	bc
	ld	hl, #_g_Line
	push	hl
	ld	l, c
	xor	a, a
	call	_Txt_Draw
	pop	bc
;./proto.c:63: for (u8 y = 0; y < TXT_ROWS; y++)
	inc	c
	jp	00132$
00106$:
;./proto.c:68: u16 tA = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, -1 (ix)
	ld	-12 (ix), a
;./proto.c:71: t0 = g_JIFFY;
	ld	bc, (_g_JIFFY)
;./proto.c:72: for (u8 n = 0; n < 20; n++)
	ld	e, #0x00
00135$:
	ld	a, e
	sub	a, #0x14
	jr	nc, 00107$
;./proto.c:73: Txt_Scroll(4, 23, 1);
	push	bc
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	l, #0x17
	ld	a, #0x04
	call	_Txt_Scroll
	pop	de
	pop	bc
;./proto.c:72: for (u8 n = 0; n < 20; n++)
	inc	e
	jp	00135$
00107$:
;./proto.c:74: u16 tB = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, c
	ld	-11 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, b
	ld	-10 (ix), a
;./proto.c:77: t0 = g_JIFFY;
	ld	hl, (_g_JIFFY)
	ld	-2 (ix), l
	ld	-1 (ix), h
;./proto.c:78: for (u8 n = 0; n < 20; n++)
	ld	c, #0x00
00138$:
	ld	a, c
	sub	a, #0x14
	jr	nc, 00108$
;./proto.c:79: Txt_Scroll(4, 23, 6);
	push	bc
	ld	a, #0x06
	push	af
	inc	sp
	ld	l, #0x17
	ld	a, #0x04
	call	_Txt_Scroll
	pop	bc
;./proto.c:78: for (u8 n = 0; n < 20; n++)
	inc	c
	jp	00138$
00108$:
;./proto.c:80: u16 tC = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, -2 (ix)
	ld	-9 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, -1 (ix)
	ld	-8 (ix), a
;./proto.c:83: t0 = g_JIFFY;
	ld	hl, (_g_JIFFY)
	ld	-2 (ix), l
	ld	-1 (ix), h
;./proto.c:84: for (u8 n = 0; n < 10; n++)
	ld	e, #0x00
00144$:
	ld	a, e
	sub	a, #0x0a
	jr	nc, 00110$
;./proto.c:86: Txt_Scroll(4, 23, 6);
	push	de
	ld	a, #0x06
	push	af
	inc	sp
	ld	l, #0x17
	ld	a, #0x04
	call	_Txt_Scroll
	pop	de
;./proto.c:87: for (u8 l = 0; l < 6; l++)
	ld	d, #0x00
00141$:
	ld	a, d
	sub	a, #0x06
	jr	nc, 00145$
;./proto.c:89: Txt_SetColor(g_Cols[l], 0);
	ld	a, #<(_g_Cols)
	add	a, d
	ld	l, a
	ld	a, #>(_g_Cols)
	adc	a, #0x00
	ld	h, a
	ld	a, (hl)
	push	de
	ld	l, #0x00
	call	_Txt_SetColor
	pop	de
;./proto.c:90: Txt_Draw(1, 18 + l, g_Line);
	ld	a, d
	add	a, #0x12
	push	de
	ld	hl, #_g_Line
	push	hl
	ld	l, a
	ld	a, #0x01
	call	_Txt_Draw
	pop	de
;./proto.c:87: for (u8 l = 0; l < 6; l++)
	inc	d
	jp	00141$
00145$:
;./proto.c:84: for (u8 n = 0; n < 10; n++)
	inc	e
	jp	00144$
00110$:
;./proto.c:93: u16 tD = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, -2 (ix)
	ld	-7 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, -1 (ix)
	ld	-6 (ix), a
;./proto.c:96: t0 = g_JIFFY;
	ld	bc, (_g_JIFFY)
;./proto.c:97: for (u8 n = 0; n < 20; n++)
	ld	e, #0x00
00147$:
	ld	a, e
	sub	a, #0x14
	jr	nc, 00111$
;./proto.c:98: Txt_ClearRow(10, 0);
	push	bc
	push	de
	ld	l, #0x00
	ld	a, #0x0a
	call	_Txt_ClearRow
	pop	de
	pop	bc
;./proto.c:97: for (u8 n = 0; n < 20; n++)
	inc	e
	jp	00147$
00111$:
;./proto.c:99: u16 tE = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, c
	ld	-5 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, b
	ld	-4 (ix), a
;./proto.c:102: t0 = g_JIFFY;
	ld	bc, (_g_JIFFY)
;./proto.c:103: Txt_SetColor(11, 0);
	push	bc
	ld	l, #0x00
	ld	a, #0x0b
	call	_Txt_SetColor
	pop	bc
;./proto.c:104: for (u8 y = 0; y < TXT_ROWS; y++)
	ld	l, #0x00
00150$:
	ld	a, l
	sub	a, #0x19
	jr	nc, 00112$
;./proto.c:105: Txt_Draw(0, y, g_Line);
	push	hl
	push	bc
	ld	de, #_g_Line
	push	de
	xor	a, a
	call	_Txt_Draw
	pop	bc
	pop	hl
;./proto.c:104: for (u8 y = 0; y < TXT_ROWS; y++)
	inc	l
	jp	00150$
00112$:
;./proto.c:106: u16 tF = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, c
	ld	-3 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, b
	ld	-2 (ix), a
;./proto.c:109: t0 = g_JIFFY;
	ld	bc, (_g_JIFFY)
;./proto.c:110: for (u8 n = 0; n < 100; n++)
	ld	-1 (ix), #0x00
00153$:
	ld	a, -1 (ix)
	sub	a, #0x64
	jr	nc, 00113$
;./proto.c:111: Txt_SetColor(g_Cols[n & 7], 0);
	ld	a, -1 (ix)
	and	a, #0x07
	add	a, #<(_g_Cols)
	ld	l, a
	ld	a, #0x00
	adc	a, #>(_g_Cols)
	ld	h, a
	ld	a, (hl)
	push	bc
	ld	l, #0x00
	call	_Txt_SetColor
	pop	bc
;./proto.c:110: for (u8 n = 0; n < 100; n++)
	inc	-1 (ix)
	jp	00153$
00113$:
;./proto.c:112: u16 tG = g_JIFFY - t0;
	ld	a, (_g_JIFFY+0)
	sub	a, c
	ld	-18 (ix), a
	ld	a, (_g_JIFFY+1)
	sbc	a, b
	ld	-17 (ix), a
;./proto.c:114: Txt_SetColor(15, 1);
	ld	l, #0x01
	ld	a, #0x0f
	call	_Txt_SetColor
;./proto.c:115: Report(0, "A: redraw 25x78 (25 lines, color/line)   frames", tA);
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	push	hl
	ld	de, #___str_2
	xor	a, a
	call	_Report
;./proto.c:116: Report(1, "B: 20 x scroll window 20 rows by 1       frames", tB);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	push	hl
	ld	de, #___str_3
	ld	a, #0x01
	call	_Report
;./proto.c:117: Report(2, "C: 20 x scroll window by 6 rows          frames", tC);
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	push	hl
	ld	de, #___str_4
	ld	a, #0x02
	call	_Report
;./proto.c:118: Report(3, "D: 10 x (scroll 6 + draw 6 lines)        frames", tD);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	push	hl
	ld	de, #___str_5
	ld	a, #0x03
	call	_Report
;./proto.c:119: Report(4, "E: 20 x clear row                         frames", tE);
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	push	hl
	ld	de, #___str_6
	ld	a, #0x04
	call	_Report
;./proto.c:120: Report(5, "F: redraw 25x78 same color (no rebuild)   frames", tF);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	push	hl
	ld	de, #___str_7
	ld	a, #0x05
	call	_Report
;./proto.c:121: Report(6, "G: 100 x SetColor change, no drawing      frames", tG);
	pop	hl
	push	hl
	push	hl
	ld	de, #___str_8
	ld	a, #0x06
	call	_Report
;./proto.c:122: Txt_SetColor(13, 0);
	ld	l, #0x00
	ld	a, #0x0d
	call	_Txt_SetColor
;./proto.c:123: Txt_Draw(1, 8, "Blink test (palette 13 toggles red/blue): BLINKING");
	ld	hl, #___str_9
	push	hl
	ld	l, #0x08
	ld	a, #0x01
	call	_Txt_Draw
;./proto.c:125: if (savedP2) DOSMapper_SetPage2(savedP2);
	ld	a, -14 (ix)
	or	a, a
	jr	z, 00217$
	ld	a, -14 (ix)
	call	_DOSMapper_SetPage2
;./proto.c:127: while (!Keyboard_IsKeyPressed(KEY_ESC))
00217$:
	ld	c, #0x00
00118$:
;E:\supernova\MSXgl\engine/src/keyboard.h:202: inline bool Keyboard_IsKeyPressed(u8 key) { return (Keyboard_Read(KEY_ROW(key)) & (u8)(1 << KEY_IDX(key))) == 0; }
	ld	l, #0x07
	call	_Keyboard_Read
	ld	a, l
	and	a, #0x04
	jr	z, 00120$
;./proto.c:127: while (!Keyboard_IsKeyPressed(KEY_ESC))
;E:\supernova\MSXgl\engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./proto.c:130: if ((++f & 31) == 0)
	inc	c
	ld	a, c
	and	a, #0x1f
	jr	nz, 00118$
;./proto.c:131: VDP_SetPaletteEntry(13, (f & 32) ? RGB16(7,0,0) : RGB16(0,0,7));
	bit	5, c
	jr	z, 00164$
	ld	de, #0x0070
	jp	00165$
00164$:
	ld	de, #0x0007
00165$:
	push	bc
	ld	a, #0x0d
	call	_VDP_SetPaletteEntry
	pop	bc
	jp	00118$
00120$:
;./proto.c:133: BIOS_Exit(0);
	xor	a, a
	call	_BIOS_Exit
;./proto.c:134: }
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "A: redraw 25x78 (25 lines, color/line)   frames"
	.db 0x00
___str_3:
	.ascii "B: 20 x scroll window 20 rows by 1       frames"
	.db 0x00
___str_4:
	.ascii "C: 20 x scroll window by 6 rows          frames"
	.db 0x00
___str_5:
	.ascii "D: 10 x (scroll 6 + draw 6 lines)        frames"
	.db 0x00
___str_6:
	.ascii "E: 20 x clear row                         frames"
	.db 0x00
___str_7:
	.ascii "F: redraw 25x78 same color (no rebuild)   frames"
	.db 0x00
___str_8:
	.ascii "G: 100 x SetColor change, no drawing      frames"
	.db 0x00
___str_9:
	.ascii "Blink test (palette 13 toggles red/blue): BLINKING"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
