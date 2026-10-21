;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module txt
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VDP_CommandSetupR36
	.globl _VDP_CommandSetupR32
	.globl _VDP_CommandWait
	.globl _g_TabC
	.globl _g_TabB
	.globl _g_TabA
	.globl _g_Plane
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
	.globl _Txt_SetColor
	.globl _Txt_Init
	.globl _Txt_Draw
	.globl _Txt_ClearRow
	.globl _Txt_Scroll
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
_g_Plane	=	0xc000
_g_TabA	=	0xc800
_g_TabB	=	0xc900
_g_TabC	=	0xca00
_s_Str:
	.ds 2
_s_Vram:
	.ds 2
_s_Len:
	.ds 1
_s_Row:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_s_Fg:
	.ds 1
_s_Bg:
	.ds 1
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
;E:\supernova\msx\txt.c:20: void Txt_SetColor(u8 fg, u8 bg)
;	---------------------------------
; Function Txt_SetColor
; ---------------------------------
_Txt_SetColor::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
	dec	sp
	ld	-2 (ix), a
	ld	-3 (ix), l
;E:\supernova\msx\txt.c:22: if (fg == s_Fg && bg == s_Bg)
	ld	a, (_s_Fg)
	sub	a, -2 (ix)
	jr	nz, 00102$
	ld	a, (_s_Bg)
	sub	a, -3 (ix)
	jp	z, 00116$
;E:\supernova\msx\txt.c:23: return;
00102$:
;E:\supernova\msx\txt.c:24: s_Fg = fg;
	ld	a, -2 (ix)
	ld	(#_s_Fg), a
;E:\supernova\msx\txt.c:25: s_Bg = bg;
	ld	a, -3 (ix)
	ld	(#_s_Bg), a
;E:\supernova\msx\txt.c:27: t[0] = (bg << 4) | bg;
	ld	a, -3 (ix)
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
	or	a, -3 (ix)
	ld	-7 (ix), a
;E:\supernova\msx\txt.c:28: t[1] = (bg << 4) | fg;
	ld	a, c
	or	a, -2 (ix)
	ld	-6 (ix), a
;E:\supernova\msx\txt.c:29: t[2] = (fg << 4) | bg;
	ld	a, -2 (ix)
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
	or	a, -3 (ix)
	ld	-5 (ix), a
;E:\supernova\msx\txt.c:30: t[3] = (fg << 4) | fg;
	ld	a, c
	or	a, -2 (ix)
	ld	-4 (ix), a
;E:\supernova\msx\txt.c:31: for (u8 i = 0; i < 4; i++)
	ld	c, #0x00
00108$:
	ld	a, c
	sub	a, #0x04
	jr	nc, 00104$
;E:\supernova\msx\txt.c:32: Mem_Set(t[i], &g_TabA[i * 64], 64);
	ld	de, #_g_TabA+0
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	iy, #0
	add	iy, sp
	push	bc
	ld	b, #0x00
	add	iy, bc
	pop	bc
	ld	e, (iy)
	ld	b, #0x40
00189$:
	ld	(hl), e
	inc	hl
	djnz	00189$
;E:\supernova\msx\txt.c:31: for (u8 i = 0; i < 4; i++)
	inc	c
	jr	00108$
00104$:
;E:\supernova\msx\txt.c:33: for (u8 i = 0; i < 16; i++)
	ld	c, #0x00
00111$:
	ld	a, c
	sub	a, #0x10
	jr	nc, 00105$
;E:\supernova\msx\txt.c:34: Mem_Set(t[i & 3], &g_TabB[i * 16], 16);
	ld	e, c
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_g_TabB
	add	hl, de
	pop	de
	push	hl
	pop	iy
	ld	a, e
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	e, (hl)
	push	iy
	pop	hl
	ld	b, #0x10
00191$:
	ld	(hl), e
	inc	hl
	djnz	00191$
;E:\supernova\msx\txt.c:33: for (u8 i = 0; i < 16; i++)
	inc	c
	jr	00111$
00105$:
;E:\supernova\msx\txt.c:35: for (u8 i = 0; i < 64; i++)
	ld	-1 (ix), #0x00
00114$:
	ld	a, -1 (ix)
	sub	a, #0x40
	jr	nc, 00116$
;E:\supernova\msx\txt.c:36: Mem_Set(t[i & 3], &g_TabC[i * 4], 4);
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	ld	de, #_g_TabC
	add	hl, de
	ex	de, hl
	ld	a, c
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, bc
	ld	c, (hl)
	ex	de, hl
	ld	b, #0x04
00193$:
	ld	(hl), c
	inc	hl
	djnz	00193$
;E:\supernova\msx\txt.c:35: for (u8 i = 0; i < 64; i++)
	inc	-1 (ix)
	jr	00114$
00116$:
;E:\supernova\msx\txt.c:39: }
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
;E:\supernova\msx\txt.c:42: void Txt_Init(const u8* f)
;	---------------------------------
; Function Txt_Init
; ---------------------------------
_Txt_Init::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\supernova\msx\txt.c:44: for (u16 c = 0; c < 255; c++)
	ld	bc, #0x0000
00107$:
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0xff
	ld	a, d
	sbc	a, #0x00
	jr	nc, 00102$
;E:\supernova\msx\txt.c:45: for (u8 r = 0; r < 8; r++)
	ld	e, #0x00
00104$:
	ld	a, e
	sub	a, #0x08
	jr	nc, 00108$
;E:\supernova\msx\txt.c:46: g_Plane[r][c] = f[c * 8 + r];
	ld	h, e
	ld	l, #<(_g_Plane)
	ld	a, #>(_g_Plane)
	add	a, h
	ld	h, a
	add	hl, bc
	ex	(sp), hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, e
	ld	d, #0x00
	add	a, l
	ld	l, a
	ld	a, d
	adc	a, h
	ld	h, a
	ld	a, l
	add	a, -2 (ix)
	ld	l, a
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
	ld	a, (hl)
	pop	hl
	push	hl
	ld	(hl), a
;E:\supernova\msx\txt.c:45: for (u8 r = 0; r < 8; r++)
	inc	e
	jr	00104$
00108$:
;E:\supernova\msx\txt.c:44: for (u16 c = 0; c < 255; c++)
	inc	bc
	jr	00107$
00102$:
;E:\supernova\msx\txt.c:47: s_Fg = 255;
	ld	hl, #_s_Fg
	ld	(hl), #0xff
;E:\supernova\msx\txt.c:48: Txt_SetColor(7, 0);
	ld	l, #0x00
	ld	a, #0x07
	call	_Txt_SetColor
;E:\supernova\msx\txt.c:49: }
	ld	sp, ix
	pop	ix
	ret
;E:\supernova\msx\txt.c:53: static void Blit() __naked
;	---------------------------------
; Function Blit
; ---------------------------------
_Blit:
;E:\supernova\msx\txt.c:115: __endasm;
	ld a, (_s_Len)
	or a
	ret z
	ld c, #0xC0
	xor a
	ld (_s_Row), a
blit_row:
	ld hl, (_s_Vram)
	ld a, (_s_Row)
	add a, h
	ld h, a
	di
	rlca
	rlca
	and a, #3
	out (#0x99), a
	ld a, #0x8E
	out (#0x99), a
	ld a, l
	out (#0x99), a
	ld a, h
	and a, #0x3F
	or a, #0x40
	out (#0x99), a
	ei
	ld de, (_s_Str)
	ld a, (_s_Len)
	ld b, a
1$:
	ld a, (de)
	inc de
	ld h, c
	ld l, a
	ld a, (hl)
	ld l, a
	ld h, #0xC8
	ld a, (hl)
	out (#0x98), a
	inc h
	ld a, (hl)
	out (#0x98), a
	inc h
	ld a, (hl)
	out (#0x98), a
	djnz 1$
	inc c
	ld a, (_s_Row)
	inc a
	ld (_s_Row), a
	cp a, #8
	jr nz, blit_row
	di
	xor a
	out (#0x99), a
	ld a, #0x8E
	out (#0x99), a
	ei
	ret
;E:\supernova\msx\txt.c:116: }
;E:\supernova\msx\txt.c:118: void Txt_Draw(u8 col, u8 row, const c8* str)
;	---------------------------------
; Function Txt_Draw
; ---------------------------------
_Txt_Draw::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
	ld	c, a
	ld	-1 (ix), l
;E:\supernova\msx\txt.c:121: while (str[len]) len++;
	ld	e, #0x00
00101$:
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	z, 00114$
	inc	e
	jr	00101$
00114$:
	ld	b, e
;E:\supernova\msx\txt.c:122: if (col + len > TXT_COLS) len = TXT_COLS - col;
	ld	-3 (ix), c
	ld	-2 (ix), #0x00
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ld	a, #0x50
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00105$
	ld	a, #0x50
	sub	a, c
	ld	b, a
00105$:
;E:\supernova\msx\txt.c:123: s_Len = len;
	ld	hl, #_s_Len
	ld	(hl), b
;E:\supernova\msx\txt.c:124: s_Str = (const u8*)str;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	(_s_Str), hl
;E:\supernova\msx\txt.c:125: s_Vram = (u16)(Y0 + row * 8) * 256 + X0B + col * 3;
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0006
	add	hl, bc
	ld	h, l
	ld	c, #0x08
	ld	b, h
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	(_s_Vram), hl
;E:\supernova\msx\txt.c:126: Blit();
	call	_Blit
;E:\supernova\msx\txt.c:127: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\supernova\msx\txt.c:129: void Txt_ClearRow(u8 row, u8 bg)
;	---------------------------------
; Function Txt_ClearRow
; ---------------------------------
_Txt_ClearRow::
	ld	e, a
;E:\supernova\msx\txt.c:131: VDP_CommandHMMV(X0B * 2, Y0 + row * 8, TXT_COLS * 6, 8, (bg << 4) | bg);
	ld	a, l
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	or	a, l
	ld	c, a
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0x0006
	add	hl, de
;E:\supernova\MSXgl/engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	de, #0x0010
	ld	((_g_VDP_Command + 4)), de
;E:\supernova\MSXgl/engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), hl
;E:\supernova\MSXgl/engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	hl, #0x01e0
	ld	((_g_VDP_Command + 8)), hl
;E:\supernova\MSXgl/engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:\supernova\MSXgl/engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), c
;E:\supernova\MSXgl/engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	hl, #_g_VDP_Command + 13
	ld	(hl), #0x00
;E:\supernova\MSXgl/engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #_g_VDP_Command + 14
	ld	(hl), #0xc0
;E:\supernova\MSXgl/engine/src/vdp_inl.h:174: VDP_CommandSetupR36();
	call	_VDP_CommandSetupR36
;E:\supernova\msx\txt.c:132: VDP_CommandWait();
;E:\supernova\msx\txt.c:133: }
	jp	_VDP_CommandWait
;E:\supernova\msx\txt.c:135: void Txt_Scroll(u8 row0, u8 row1, u8 n)
;	---------------------------------
; Function Txt_Scroll
; ---------------------------------
_Txt_Scroll::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
;E:\supernova\msx\txt.c:137: VDP_CommandHMMM(X0B * 2, Y0 + (row0 + n) * 8, X0B * 2, Y0 + row0 * 8, TXT_COLS * 6, (row1 - row0 + 1 - n) * 8);
	ld	h, #0x00
	ld	c, a
	ld	b, #0x00
	cp	a, a
	sbc	hl, bc
	ex	de, hl
	inc	de
	ld	l, 4 (ix)
	ld	h, #0x00
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	inc	sp
	inc	sp
	push	de
	ld	e, c
	ld	d, b
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	a, e
	add	a, #0x06
	ld	e, a
	jr	nc, 00105$
	inc	d
00105$:
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0006
	add	hl, bc
;E:\supernova\MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	bc, #0x0010
	ld	(_g_VDP_Command), bc
;E:\supernova\MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), hl
;E:\supernova\MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #0x0010
	ld	((_g_VDP_Command + 4)), hl
;E:\supernova\MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:\supernova\MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x01e0
	ld	((_g_VDP_Command + 8)), hl
;E:\supernova\MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\supernova\MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #_g_VDP_Command + 13
	ld	(hl), #0x00
;E:\supernova\MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #_g_VDP_Command + 14
	ld	(hl), #0xd0
;E:\supernova\MSXgl/engine/src/vdp_inl.h:113: VDP_CommandSetupR32();
	call	_VDP_CommandSetupR32
;E:\supernova\msx\txt.c:138: VDP_CommandWait();
	call	_VDP_CommandWait
;E:\supernova\msx\txt.c:139: }
	pop	af
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__s_Fg:
	.db #0xff	; 255
__xinit__s_Bg:
	.db #0xff	; 255
	.area _CABS (ABS)
