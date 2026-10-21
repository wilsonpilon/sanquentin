;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module maptest
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DOSMapper_GetPage2
	.globl _DOSMapper_SetPage2
	.globl _DOSMapper_Alloc
	.globl _DOSMapper_Init
	.globl _DOS_Exit
	.globl _DOS_ReadHandle
	.globl _DOS_CloseHandle
	.globl _DOS_OpenHandle
	.globl _DOS_CharOutput
	.globl _g_Loc
	.globl _g_RN
	.globl _g_A
	.globl _g_P
	.globl _g_N
	.globl _g_V
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
	.globl _g_LocInit
	.globl _g_RNInit
	.globl _g_AInit
	.globl _g_PInit
	.globl _g_NInit
	.globl _g_VInit
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
	.globl _TextPool_Load
	.globl _TextPool_Read
	.globl _Vocab_Init
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
_g_PoolCount:
	.ds 1
_g_PoolFirst:
	.ds 24
_g_PoolSeg:
	.ds 12
_g_TokHi	=	0xcb00
_g_TokLo	=	0xcc00
_g_TokBuf	=	0xcd00
_g_V::
	.ds 192
_g_N::
	.ds 268
_g_P::
	.ds 24
_g_A::
	.ds 10
_g_RN::
	.ds 220
_g_Loc::
	.ds 1870
_Show_tbuf_10000_1114:
	.ds 1400
_main_tbuf_10003_1125:
	.ds 1400
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
;./../textpool.c:20: static void Decode(const u8* src, char* dst) __naked
;	---------------------------------
; Function Decode
; ---------------------------------
_Decode:
;./../textpool.c:53: __endasm;
dec_loop:
	ld a, (hl)
	inc hl
	or a
	jr z, dec_done
	ld c, a
	ld b, #0xCB
	ld a, (bc)
	or a
	jr z, dec_lit
	push hl
	ld h, a
	inc b
	ld a, (bc)
	ld l, a
	ld c, (hl)
	inc hl
	ld b, #0
	ldir
	pop hl
	jr dec_loop
dec_lit:
	ld a, c
	ld (de), a
	inc de
	jr dec_loop
dec_done:
	ld (de), a
	ret
;./../textpool.c:54: }
;./../textpool.c:56: static bool ReadFile(const char* name, void* dst, u16 size)
;	---------------------------------
; Function ReadFile
; ---------------------------------
_ReadFile:
;./../textpool.c:58: u8 f = DOS_OpenHandle(name, O_RDONLY);
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_DOS_OpenHandle
	ld	c, a
	pop	de
;./../textpool.c:59: if (g_DOS_LastError)
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00102$
;./../textpool.c:60: return false;
	xor	a, a
	jp	00103$
00102$:
;./../textpool.c:61: u16 n = DOS_ReadHandle(f, dst, size);
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	a, c
	call	_DOS_ReadHandle
	pop	bc
;./../textpool.c:62: DOS_CloseHandle(f);
	push	de
	ld	a, c
	call	_DOS_CloseHandle
	pop	de
;./../textpool.c:63: return n != 0;
	ld	a, d
	or	a, e
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
00103$:
;./../textpool.c:64: }
	pop	hl
	pop	bc
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
;./../textpool.c:66: bool TextPool_Load()
;	---------------------------------
; Function TextPool_Load
; ---------------------------------
_TextPool_Load::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-58
	add	hl, sp
	ld	sp, hl
;./../textpool.c:69: if (!ReadFile("TXT.IDX", idx, sizeof(idx)) || !ReadFile("TXT.TOK", g_TokBuf, TOK_BUF_SIZE))
	ld	hl, #0x0025
	push	hl
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_2
	call	_ReadFile
	ld	-1 (ix), a
	or	a, a
	jr	z, 00101$
	ld	hl, #0x0578
	push	hl
	ld	de, #_g_TokBuf
	ld	hl, #___str_3
	call	_ReadFile
	or	a, a
	jr	nz, 00133$
00101$:
;./../textpool.c:70: return false;
	xor	a, a
	jp	00119$
;./../textpool.c:71: for (u16 c = 0; c < 256; c++)
00133$:
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
00113$:
	ld	a, -3 (ix)
	sub	a, #0x01
	jr	nc, 00106$
;./../textpool.c:73: u16 p = ((const u16*)g_TokBuf)[c];
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a, #<(_g_TokBuf)
	add	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_TokBuf)
	adc	a, -5 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
;./../textpool.c:74: if (p)
	ld	-1 (ix), a
	or	a, -2 (ix)
	jr	z, 00105$
;./../textpool.c:75: p += (u16)g_TokBuf;
	ld	a, #<(_g_TokBuf)
	add	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_TokBuf)
	adc	a, -1 (ix)
	ld	-1 (ix), a
00105$:
;./../textpool.c:76: g_TokHi[c] = p >> 8;
	ld	bc, #_g_TokHi+0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, bc
	ld	a, -1 (ix)
	ld	(hl), a
;./../textpool.c:77: g_TokLo[c] = p & 0xFF;
	ld	bc, #_g_TokLo+0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, bc
	ld	a, -2 (ix)
	ld	(hl), a
;./../textpool.c:71: for (u16 c = 0; c < 256; c++)
	inc	-4 (ix)
	jr	nz, 00113$
	inc	-3 (ix)
	jp	00113$
00106$:
;./../textpool.c:79: g_PoolCount = idx[0];
	ld	a, -58 (ix)
	ld	(#_g_PoolCount), a
;./../textpool.c:80: if (g_PoolCount > TXT_MAXPOOLS)
	ld	a, #0x0c
	ld	hl, #_g_PoolCount
	sub	a, (hl)
	jr	nc, 00108$
;./../textpool.c:81: return false;
	xor	a, a
	jp	00119$
00108$:
;./../textpool.c:83: char name[] = "TXT0.BIN";
	ld	-21 (ix), #0x54
	ld	-20 (ix), #0x58
	ld	-19 (ix), #0x54
	ld	-18 (ix), #0x30
	ld	-17 (ix), #0x2e
	ld	-16 (ix), #0x42
	ld	-15 (ix), #0x49
	ld	-14 (ix), #0x4e
	ld	-13 (ix), #0x00
;./../textpool.c:84: u8 save = DOSMapper_GetPage2();
	call	_DOSMapper_GetPage2
	ld	-10 (ix), a
;./../textpool.c:85: bool ok = true;
	ld	-2 (ix), #0x01
;./../textpool.c:86: for (u8 i = 0; i < g_PoolCount && ok; i++)
	ld	-1 (ix), #0x00
00117$:
	ld	a, -1 (ix)
	ld	hl, #_g_PoolCount
	sub	a, (hl)
	jp	nc, 00111$
	ld	a, -2 (ix)
	or	a, a
	jp	z, 00111$
;./../textpool.c:88: g_PoolFirst[i] = idx[1 + 2 * i] | (idx[2 + 2 * i] << 8);
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	sla	-3 (ix)
	rl	-2 (ix)
	ld	a, #<(_g_PoolFirst)
	add	a, -3 (ix)
	ld	-9 (ix), a
	ld	a, #>(_g_PoolFirst)
	adc	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-2 (ix), a
	add	a, a
	ld	-3 (ix), a
	inc	a
	ld	-2 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, (hl)
	ld	-2 (ix), a
	inc	-3 (ix)
	inc	-3 (ix)
	ld	a, -3 (ix)
	ld	-6 (ix), a
	rlca
	sbc	a, a
	ld	-5 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	ld	-3 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;./../textpool.c:90: if (!DOSMapper_Alloc(DOS_ALLOC_USER, DOS_SEGSLOT_PRIM, &seg))
	ld	hl, #46
	add	hl, sp
	push	hl
	xor	a, a
	ld	l, a
	call	_DOSMapper_Alloc
	or	a, a
	jr	nz, 00110$
;./../textpool.c:92: ok = false;
	ld	-2 (ix), #0x00
;./../textpool.c:93: break;
	jp	00111$
00110$:
;./../textpool.c:95: g_PoolSeg[i] = seg.Number;
	ld	a, #<(_g_PoolSeg)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_g_PoolSeg)
	adc	a, #0x00
	ld	b, a
	ld	hl, #46
	add	hl, sp
	ld	a, (hl)
	ld	(bc), a
;./../textpool.c:96: name[3] = '0' + i;
	ld	a, -1 (ix)
	add	a, #0x30
	ld	-18 (ix), a
;./../textpool.c:97: DOSMapper_SetPage2(seg.Number);
	ld	a, (hl)
	call	_DOSMapper_SetPage2
;./../textpool.c:98: ok = ReadFile(name, (void*)POOL_ADDR, 16384);
	ld	hl, #0x4000
	push	hl
	ld	de, #0x8000
	ld	hl, #39
	add	hl, sp
	call	_ReadFile
	ld	-2 (ix), a
;./../textpool.c:86: for (u8 i = 0; i < g_PoolCount && ok; i++)
	inc	-1 (ix)
	jp	00117$
00111$:
;./../textpool.c:100: DOSMapper_SetPage2(save);
	ld	a, -10 (ix)
	call	_DOSMapper_SetPage2
;./../textpool.c:101: return ok;
	ld	a, -2 (ix)
00119$:
;./../textpool.c:102: }
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "TXT.IDX"
	.db 0x00
___str_3:
	.ascii "TXT.TOK"
	.db 0x00
;./../textpool.c:104: u16 TextPool_Read(u16 id, char* dst)
;	---------------------------------
; Function TextPool_Read
; ---------------------------------
_TextPool_Read::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	dec	sp
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	c, e
	ld	b, d
;./../textpool.c:106: u8 p = g_PoolCount;
	ld	a, (_g_PoolCount)
	ld	e, a
;./../textpool.c:107: while (p && id < g_PoolFirst[--p]) {}
00102$:
	ld	a, e
	or	a, a
	jr	z, 00104$
	dec	e
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	add	a, #<(_g_PoolFirst)
	ld	l, a
	ld	a, h
	adc	a, #>(_g_PoolFirst)
	ld	h, a
	ld	d, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, -2 (ix)
	sub	a, d
	ld	a, -1 (ix)
	sbc	a, l
	jr	c, 00102$
00104$:
;./../textpool.c:109: u8 save = DOSMapper_GetPage2();
	push	bc
	push	de
	call	_DOSMapper_GetPage2
	ld	-5 (ix), a
	pop	de
	pop	bc
;./../textpool.c:110: DOSMapper_SetPage2(g_PoolSeg[p]);
	ld	hl, #_g_PoolSeg
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	push	bc
	push	de
	call	_DOSMapper_SetPage2
	pop	de
	pop	bc
;./../textpool.c:111: u16 i = id - g_PoolFirst[p];
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	ld	de, #_g_PoolFirst
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -2 (ix)
	sub	a, e
	ld	e, a
	ld	a, -1 (ix)
	sbc	a, d
	ld	d, a
;./../textpool.c:112: u16 n = 0;
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;./../textpool.c:113: if (i < *(const u16*)POOL_ADDR)
	ld	hl, (#0x8000)
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	nc, 00106$
;./../textpool.c:115: u16 off = ((const u16*)POOL_ADDR)[1 + i];
	inc	de
	ex	de, hl
	add	hl, hl
	ld	a, h
	add	a, #0x80
	ld	h, a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;./../textpool.c:116: const u8* r = (const u8*)(POOL_ADDR + off);
	ld	iy, #0x8000
	add	iy, de
;./../textpool.c:117: n = *(const u16*)r;
	ld	a, 0 (iy)
	ld	-4 (ix), a
	ld	a, 1 (iy)
	ld	-3 (ix), a
;./../textpool.c:118: r += 2;
	push	iy
	pop	hl
	inc	hl
	inc	hl
;./../textpool.c:119: Decode(r, dst);
	ld	e, c
	ld	d, b
	call	_Decode
	jp	00107$
00106$:
;./../textpool.c:122: dst[0] = 0;
	xor	a, a
	ld	(bc), a
00107$:
;./../textpool.c:123: DOSMapper_SetPage2(save);
	ld	a, -5 (ix)
	call	_DOSMapper_SetPage2
;./../textpool.c:124: return n;
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;./../textpool.c:125: }
	ld	sp, ix
	pop	ix
	ret
;./../data/vocab_data.c:532: void Vocab_Init()
;	---------------------------------
; Function Vocab_Init
; ---------------------------------
_Vocab_Init::
;./../data/vocab_data.c:535: for (i = 0; i <= VOCAB_V_MAX; i++) g_V[i] = g_VInit[i];
	ld	c, #0x00
00106$:
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	a, #<(_g_V)
	add	a, l
	ld	e, a
	ld	a, #>(_g_V)
	adc	a, h
	ld	d, a
	ld	a, #<(_g_VInit)
	add	a, l
	ld	l, a
	ld	a, #>(_g_VInit)
	adc	a, h
	ld	h, a
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	ld	(de), a
	inc	de
	ld	a, l
	ld	(de), a
	inc	c
	ld	a, #0x5f
	sub	a, c
	jr	nc, 00106$
;./../data/vocab_data.c:536: for (i = 0; i <= VOCAB_N_MAX; i++) g_N[i] = g_NInit[i];
	ld	c, #0x00
00108$:
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	a, #<(_g_N)
	add	a, l
	ld	e, a
	ld	a, #>(_g_N)
	adc	a, h
	ld	d, a
	ld	a, #<(_g_NInit)
	add	a, l
	ld	l, a
	ld	a, #>(_g_NInit)
	adc	a, h
	ld	h, a
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	ld	(de), a
	inc	de
	ld	a, l
	ld	(de), a
	inc	c
	ld	a, #0x85
	sub	a, c
	jr	nc, 00108$
;./../data/vocab_data.c:537: for (i = 0; i <= VOCAB_P_MAX; i++) g_P[i] = g_PInit[i];
	ld	c, #0x00
00110$:
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	a, #<(_g_P)
	add	a, l
	ld	e, a
	ld	a, #>(_g_P)
	adc	a, h
	ld	d, a
	ld	a, #<(_g_PInit)
	add	a, l
	ld	l, a
	ld	a, #>(_g_PInit)
	adc	a, h
	ld	h, a
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	ld	(de), a
	inc	de
	ld	a, l
	ld	(de), a
	inc	c
	ld	a, #0x0b
	sub	a, c
	jr	nc, 00110$
;./../data/vocab_data.c:538: for (i = 0; i <= VOCAB_A_MAX; i++) g_A[i] = g_AInit[i];
	ld	c, #0x00
00112$:
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	a, #<(_g_A)
	add	a, l
	ld	e, a
	ld	a, #>(_g_A)
	adc	a, h
	ld	d, a
	ld	a, #<(_g_AInit)
	add	a, l
	ld	l, a
	ld	a, #>(_g_AInit)
	adc	a, h
	ld	h, a
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	ld	(de), a
	inc	de
	ld	a, l
	ld	(de), a
	inc	c
	ld	a, #0x04
	sub	a, c
	jr	nc, 00112$
;./../data/vocab_data.c:539: for (i = 0; i <= VOCAB_R_MAX; i++) g_RN[i] = g_RNInit[i];
	ld	c, #0x00
00114$:
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	a, #<(_g_RN)
	add	a, l
	ld	e, a
	ld	a, #>(_g_RN)
	adc	a, h
	ld	d, a
	ld	a, #<(_g_RNInit)
	add	a, l
	ld	l, a
	ld	a, #>(_g_RNInit)
	adc	a, h
	ld	h, a
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	ld	(de), a
	inc	de
	ld	a, l
	ld	(de), a
	inc	c
	ld	a, #0x6d
	sub	a, c
	jr	nc, 00114$
;./../data/vocab_data.c:540: Mem_Copy((const void*)g_LocInit, (void*)g_Loc, sizeof(g_Loc));
	ld	de, #_g_Loc
	ld	hl, #_g_LocInit
	ld	bc, #0x074e
	ldir
;./../data/vocab_data.c:541: }
	ret
_s0:
	.ascii "north"
	.db 0x5c
	.ascii "n"
	.db 0x5c
	.ascii "fore"
	.db 0x5c
	.ascii "f"
	.db 0x5c
	.db 0x00
_s1:
	.ascii "south"
	.db 0x5c
	.ascii "s"
	.db 0x5c
	.ascii "aft"
	.db 0x5c
	.ascii "a"
	.db 0x5c
	.db 0x00
_s2:
	.ascii "east"
	.db 0x5c
	.ascii "e"
	.db 0x5c
	.ascii "starboa"
	.db 0x5c
	.ascii "st"
	.db 0x5c
	.db 0x00
_s3:
	.ascii "west"
	.db 0x5c
	.ascii "w"
	.db 0x5c
	.ascii "port"
	.db 0x5c
	.ascii "p"
	.db 0x5c
	.db 0x00
_s4:
	.ascii "ne"
	.db 0x5c
	.ascii "northea"
	.db 0x5c
	.db 0x00
_s5:
	.ascii "nw"
	.db 0x5c
	.ascii "northwe"
	.db 0x5c
	.db 0x00
_s6:
	.ascii "se"
	.db 0x5c
	.ascii "southea"
	.db 0x5c
	.db 0x00
_s7:
	.ascii "sw"
	.db 0x5c
	.ascii "southwe"
	.db 0x5c
	.db 0x00
_s8:
	.ascii "up"
	.db 0x5c
	.ascii "u"
	.db 0x5c
	.ascii "climb up"
	.db 0x5c
	.ascii "climb u"
	.db 0x5c
	.db 0x00
_s9:
	.ascii "down"
	.db 0x5c
	.ascii "d"
	.db 0x5c
	.ascii "climb down"
	.db 0x5c
	.ascii "climb d"
	.db 0x5c
	.db 0x00
_s10:
	.ascii "enter"
	.db 0x5c
	.ascii "in"
	.db 0x5c
	.ascii "land in"
	.db 0x5c
	.ascii "land on"
	.db 0x5c
	.db 0x00
_s11:
	.ascii "land"
	.db 0x5c
	.ascii "cross"
	.db 0x5c
	.ascii "across"
	.db 0x5c
	.db 0x00
_s12:
	.ascii "exit"
	.db 0x5c
	.ascii "out"
	.db 0x5c
	.ascii "leave"
	.db 0x5c
	.ascii "retreat"
	.db 0x5c
	.db 0x00
_s13:
	.ascii "escape"
	.db 0x5c
	.db 0x00
_s14:
	.ascii "wait"
	.db 0x5c
	.ascii "z"
	.db 0x5c
	.ascii "rest"
	.db 0x5c
	.ascii "relax"
	.db 0x5c
	.db 0x00
_s15:
	.ascii "invento"
	.db 0x5c
	.ascii "i"
	.db 0x5c
	.ascii "ex invento"
	.db 0x5c
	.ascii "inv"
	.db 0x5c
	.db 0x00
_s16:
	.ascii "drop all but"
	.db 0x5c
	.ascii "drop all except"
	.db 0x5c
	.db 0x00
_s17:
	.ascii "drop"
	.db 0x5c
	.ascii "get rid"
	.db 0x5c
	.ascii "put down"
	.db 0x5c
	.ascii "let go"
	.db 0x5c
	.db 0x00
_s18:
	.ascii "take off"
	.db 0x5c
	.ascii "remove"
	.db 0x5c
	.db 0x00
_s19:
	.ascii "l behind"
	.db 0x5c
	.ascii "ex behind"
	.db 0x5c
	.ascii "l beside"
	.db 0x5c
	.db 0x00
_s20:
	.ascii "talk to"
	.db 0x5c
	.ascii "talk"
	.db 0x5c
	.ascii "speak to"
	.db 0x5c
	.ascii "greet"
	.db 0x5c
	.db 0x00
_s21:
	.ascii "l above"
	.db 0x5c
	.ascii "ex on"
	.db 0x5c
	.ascii "l on top"
	.db 0x5c
	.db 0x00
_s22:
	.ascii "ex above"
	.db 0x5c
	.ascii "ex top"
	.db 0x5c
	.ascii "l on"
	.db 0x5c
	.db 0x00
_s23:
	.ascii "l in"
	.db 0x5c
	.ascii "ex in"
	.db 0x5c
	.ascii "l through"
	.db 0x5c
	.ascii "l out"
	.db 0x5c
	.db 0x00
_s24:
	.ascii "say"
	.db 0x5c
	.ascii "speak"
	.db 0x5c
	.db 0x00
_s25:
	.ascii "l under"
	.db 0x5c
	.ascii "ex underne"
	.db 0x5c
	.ascii "ex under"
	.db 0x5c
	.db 0x00
_s26:
	.ascii "l underne"
	.db 0x5c
	.ascii "ex below"
	.db 0x5c
	.db 0x00
_s27:
	.ascii "ex"
	.db 0x5c
	.ascii "search"
	.db 0x5c
	.ascii "l at"
	.db 0x5c
	.ascii "describ"
	.db 0x5c
	.db 0x00
_s28:
	.ascii "study"
	.db 0x5c
	.ascii "check"
	.db 0x5c
	.ascii "inspect"
	.db 0x5c
	.db 0x00
_s29:
	.ascii "l around"
	.db 0x5c
	.ascii "l"
	.db 0x5c
	.db 0x00
_s30:
	.ascii "read"
	.db 0x5c
	.db 0x00
_s31:
	.ascii "stand up"
	.db 0x5c
	.ascii "get up"
	.db 0x5c
	.ascii "stand"
	.db 0x5c
	.db 0x00
_s32:
	.ascii "put"
	.db 0x5c
	.ascii "pour"
	.db 0x5c
	.ascii "lay"
	.db 0x5c
	.ascii "fill"
	.db 0x5c
	.ascii "insert"
	.db 0x5c
	.db 0x00
_s33:
	.ascii "place"
	.db 0x5c
	.ascii "slide"
	.db 0x5c
	.ascii "stick"
	.db 0x5c
	.db 0x00
_s34:
	.ascii "sit on"
	.db 0x5c
	.ascii "sit in"
	.db 0x5c
	.ascii "sit down at"
	.db 0x5c
	.db 0x00
_s35:
	.ascii "get in"
	.db 0x5c
	.ascii "sit at"
	.db 0x5c
	.ascii "sit"
	.db 0x5c
	.ascii "sit down"
	.db 0x5c
	.db 0x00
_s36:
	.ascii "get all but"
	.db 0x5c
	.ascii "get all except"
	.db 0x5c
	.db 0x00
_s37:
	.ascii "take all but"
	.db 0x5c
	.ascii "get everyth but"
	.db 0x5c
	.db 0x00
_s38:
	.ascii "get"
	.db 0x5c
	.ascii "take"
	.db 0x5c
	.ascii "grab"
	.db 0x5c
	.ascii "steal"
	.db 0x5c
	.ascii "pick up"
	.db 0x5c
	.db 0x00
_s39:
	.ascii "catch"
	.db 0x5c
	.ascii "grasp"
	.db 0x5c
	.ascii "snatch"
	.db 0x5c
	.db 0x00
_s40:
	.ascii "open"
	.db 0x5c
	.ascii "unfaste"
	.db 0x5c
	.db 0x00
_s41:
	.ascii "pull on"
	.db 0x5c
	.ascii "flick"
	.db 0x5c
	.ascii "pull"
	.db 0x5c
	.ascii "flip off"
	.db 0x5c
	.db 0x00
_s42:
	.ascii "flip"
	.db 0x5c
	.ascii "turn off"
	.db 0x5c
	.ascii "deactiv"
	.db 0x5c
	.db 0x00
_s43:
	.ascii "push"
	.db 0x5c
	.ascii "move"
	.db 0x5c
	.ascii "press"
	.db 0x5c
	.ascii "turn on"
	.db 0x5c
	.db 0x00
_s44:
	.ascii "activat"
	.db 0x5c
	.ascii "flip on"
	.db 0x5c
	.ascii "push on"
	.db 0x5c
	.db 0x00
_s45:
	.ascii "drink some"
	.db 0x5c
	.ascii "drink from"
	.db 0x5c
	.ascii "drink"
	.db 0x5c
	.db 0x00
_s46:
	.ascii "eat"
	.db 0x5c
	.ascii "swallow"
	.db 0x5c
	.ascii "digest"
	.db 0x5c
	.ascii "consume"
	.db 0x5c
	.db 0x00
_s47:
	.ascii "throw"
	.db 0x5c
	.ascii "toss"
	.db 0x5c
	.db 0x00
_s48:
	.ascii "give"
	.db 0x5c
	.ascii "offer"
	.db 0x5c
	.ascii "show"
	.db 0x5c
	.ascii "hand"
	.db 0x5c
	.db 0x00
_s49:
	.ascii "turn"
	.db 0x5c
	.ascii "rotate"
	.db 0x5c
	.ascii "set"
	.db 0x5c
	.ascii "spin"
	.db 0x5c
	.db 0x00
_s50:
	.ascii "climb in"
	.db 0x5c
	.ascii "climb over"
	.db 0x5c
	.db 0x00
_s51:
	.ascii "climb on"
	.db 0x5c
	.ascii "climb"
	.db 0x5c
	.db 0x00
_s52:
	.ascii "close"
	.db 0x5c
	.ascii "shut"
	.db 0x5c
	.ascii "fasten"
	.db 0x5c
	.ascii "connect"
	.db 0x5c
	.db 0x00
_s53:
	.ascii "destroy"
	.db 0x5c
	.ascii "punch"
	.db 0x5c
	.ascii "knock on"
	.db 0x5c
	.ascii "break"
	.db 0x5c
	.db 0x00
_s54:
	.ascii "hit"
	.db 0x5c
	.ascii "knock"
	.db 0x5c
	.ascii "smash"
	.db 0x5c
	.ascii "strike"
	.db 0x5c
	.db 0x00
_s55:
	.ascii "type in coordin"
	.db 0x5c
	.ascii "type coordin"
	.db 0x5c
	.db 0x00
_s56:
	.ascii "type in keyboar"
	.db 0x5c
	.ascii "type in"
	.db 0x5c
	.db 0x00
_s57:
	.ascii "type on"
	.db 0x5c
	.ascii "type on keyboar"
	.db 0x5c
	.ascii "type"
	.db 0x5c
	.db 0x00
_s58:
	.ascii "jump in"
	.db 0x5c
	.ascii "jump over"
	.db 0x5c
	.ascii "jump on"
	.db 0x5c
	.db 0x00
_s59:
	.ascii "jump off"
	.db 0x5c
	.ascii "leap over"
	.db 0x5c
	.ascii "hop"
	.db 0x5c
	.db 0x00
_s60:
	.ascii "jump across"
	.db 0x5c
	.ascii "jump"
	.db 0x5c
	.ascii "leap"
	.db 0x5c
	.ascii "hop"
	.db 0x5c
	.db 0x00
_s61:
	.ascii "sleep in"
	.db 0x5c
	.ascii "lie down"
	.db 0x5c
	.ascii "sleep on"
	.db 0x5c
	.db 0x00
_s62:
	.ascii "sleep"
	.db 0x5c
	.db 0x00
_s63:
	.ascii "buy"
	.db 0x5c
	.ascii "purchas"
	.db 0x5c
	.ascii "pay for"
	.db 0x5c
	.ascii "order"
	.db 0x5c
	.db 0x00
_s64:
	.ascii "listen to"
	.db 0x5c
	.ascii "listen"
	.db 0x5c
	.ascii "hear"
	.db 0x5c
	.db 0x00
_s65:
	.ascii "bartend"
	.db 0x5c
	.ascii "waiter"
	.db 0x5c
	.db 0x00
_s66:
	.ascii "two aliens"
	.db 0x5c
	.ascii "alien"
	.db 0x5c
	.ascii "aliens"
	.db 0x5c
	.db 0x00
_s67:
	.ascii "scienti"
	.db 0x5c
	.ascii "man"
	.db 0x5c
	.ascii "him"
	.db 0x5c
	.db 0x00
_s68:
	.ascii "robot"
	.db 0x5c
	.ascii "droid"
	.db 0x5c
	.db 0x00
_s69:
	.ascii "help me"
	.db 0x5c
	.ascii "pray"
	.db 0x5c
	.ascii "clue"
	.db 0x5c
	.ascii "help"
	.db 0x5c
	.db 0x00
_s70:
	.ascii "compute"
	.db 0x5c
	.db 0x00
_s71:
	.ascii "wear"
	.db 0x5c
	.ascii "don"
	.db 0x5c
	.db 0x00
_s72:
	.ascii "find"
	.db 0x5c
	.ascii "where is"
	.db 0x5c
	.ascii "where"
	.db 0x5c
	.db 0x00
_s73:
	.ascii "repair"
	.db 0x5c
	.ascii "fix"
	.db 0x5c
	.db 0x00
_s74:
	.ascii "touch in"
	.db 0x5c
	.ascii "feel"
	.db 0x5c
	.ascii "touch"
	.db 0x5c
	.ascii "rub"
	.db 0x5c
	.db 0x00
_s75:
	.ascii "reach in"
	.db 0x5c
	.ascii "reach under"
	.db 0x5c
	.ascii "reach"
	.db 0x5c
	.db 0x00
_s76:
	.ascii "descrip"
	.db 0x5c
	.ascii "rd"
	.db 0x5c
	.ascii "r d"
	.db 0x5c
	.db 0x00
_s77:
	.ascii "score"
	.db 0x5c
	.ascii "rank"
	.db 0x5c
	.db 0x00
_s78:
	.ascii "quit"
	.db 0x5c
	.ascii "stop"
	.db 0x5c
	.ascii "q"
	.db 0x5c
	.db 0x00
_s79:
	.ascii "hi"
	.db 0x5c
	.ascii "hello"
	.db 0x5c
	.ascii "bye"
	.db 0x5c
	.ascii "good bye"
	.db 0x5c
	.db 0x00
_s80:
	.ascii "yes"
	.db 0x5c
	.ascii "no"
	.db 0x5c
	.ascii "maybe"
	.db 0x5c
	.db 0x00
_s81:
	.ascii "save"
	.db 0x5c
	.db 0x00
_s82:
	.ascii "smell"
	.db 0x5c
	.ascii "sniff"
	.db 0x5c
	.db 0x00
_s83:
	.ascii "taste"
	.db 0x5c
	.ascii "lick"
	.db 0x5c
	.db 0x00
_s84:
	.ascii "wake up"
	.db 0x5c
	.ascii "awaken"
	.db 0x5c
	.ascii "wake"
	.db 0x5c
	.db 0x00
_s85:
	.ascii "restart"
	.db 0x5c
	.db 0x00
_s86:
	.ascii "restore"
	.db 0x5c
	.ascii "resume"
	.db 0x5c
	.db 0x00
_s87:
	.ascii "unlock"
	.db 0x5c
	.db 0x00
_s88:
	.ascii "shoot at"
	.db 0x5c
	.ascii "shoot"
	.db 0x5c
	.ascii "blast"
	.db 0x5c
	.db 0x00
_s89:
	.ascii "tie"
	.db 0x5c
	.ascii "untie"
	.db 0x5c
	.ascii "damn"
	.db 0x5c
	.ascii "shit"
	.db 0x5c
	.ascii "hell"
	.db 0x5c
	.db 0x00
_s90:
	.ascii "follow"
	.db 0x5c
	.ascii "scott miller"
	.db 0x5c
	.ascii "scott"
	.db 0x5c
	.db 0x00
_s91:
	.ascii "dig in"
	.db 0x5c
	.ascii "dig"
	.db 0x5c
	.ascii "shovel"
	.db 0x5c
	.db 0x00
_s92:
	.ascii "attack"
	.db 0x5c
	.ascii "kill"
	.db 0x5c
	.ascii "fight"
	.db 0x5c
	.db 0x00
_s93:
	.ascii "clean"
	.db 0x5c
	.ascii "wipe off"
	.db 0x5c
	.ascii "wipe"
	.db 0x5c
	.db 0x00
_s94:
	.ascii "command"
	.db 0x5c
	.ascii "verbs"
	.db 0x5c
	.ascii "verb"
	.db 0x5c
	.ascii "words"
	.db 0x5c
	.db 0x00
_s95:
	.ascii "clear crystal"
	.db 0x5c
	.ascii "clear"
	.db 0x5c
	.ascii "crystal"
	.db 0x5c
	.db 0x00
_s96:
	.ascii "device"
	.db 0x5c
	.db 0x00
_s97:
	.ascii "rusty key"
	.db 0x5c
	.ascii "rusty"
	.db 0x5c
	.db 0x00
_s98:
	.ascii "shiney key"
	.db 0x5c
	.ascii "shiney"
	.db 0x5c
	.db 0x00
_s99:
	.ascii "brown satchel"
	.db 0x5c
	.ascii "satchel"
	.db 0x5c
	.ascii "brown"
	.db 0x5c
	.db 0x00
_s100:
	.ascii "dried food"
	.db 0x5c
	.ascii "food"
	.db 0x5c
	.ascii "dried"
	.db 0x5c
	.ascii "loaf"
	.db 0x5c
	.db 0x00
_s101:
	.ascii "holster"
	.db 0x5c
	.ascii "gun strap"
	.db 0x5c
	.ascii "strap"
	.db 0x5c
	.db 0x00
_s102:
	.ascii "goolaa"
	.db 0x5c
	.ascii "coin"
	.db 0x5c
	.ascii "money"
	.db 0x5c
	.db 0x00
_s103:
	.ascii "red jewel"
	.db 0x5c
	.ascii "jewel"
	.db 0x5c
	.ascii "red"
	.db 0x5c
	.db 0x00
_s104:
	.ascii "skull"
	.db 0x5c
	.ascii "skulls"
	.db 0x5c
	.ascii "head"
	.db 0x5c
	.ascii "heads"
	.db 0x5c
	.db 0x00
_s105:
	.ascii "rod"
	.db 0x5c
	.ascii "thick rod"
	.db 0x5c
	.ascii "pole"
	.db 0x5c
	.db 0x00
_s106:
	.ascii "plastic access card"
	.db 0x5c
	.db 0x00
_s107:
	.ascii "plastic access"
	.db 0x5c
	.ascii "card"
	.db 0x5c
	.db 0x00
_s108:
	.ascii "access card"
	.db 0x5c
	.ascii "plastic card"
	.db 0x5c
	.db 0x00
_s109:
	.ascii "access"
	.db 0x5c
	.ascii "plastic"
	.db 0x5c
	.db 0x00
_s110:
	.ascii "worn cushion"
	.db 0x5c
	.ascii "cushion"
	.db 0x5c
	.ascii "worn"
	.db 0x5c
	.db 0x00
_s111:
	.ascii "grey disk"
	.db 0x5c
	.ascii "disk"
	.db 0x5c
	.ascii "grey"
	.db 0x5c
	.db 0x00
_s112:
	.ascii "dusty ball"
	.db 0x5c
	.ascii "ball"
	.db 0x5c
	.ascii "dusty"
	.db 0x5c
	.db 0x00
_s113:
	.ascii "paper"
	.db 0x5c
	.ascii "piece paper"
	.db 0x5c
	.ascii "piece"
	.db 0x5c
	.db 0x00
_s114:
	.ascii "set of goggles"
	.db 0x5c
	.ascii "set goggles"
	.db 0x5c
	.db 0x00
_s115:
	.ascii "goggles"
	.db 0x5c
	.ascii "set"
	.db 0x5c
	.ascii "glasses"
	.db 0x5c
	.ascii "band"
	.db 0x5c
	.db 0x00
_s116:
	.ascii "orange crystal"
	.db 0x5c
	.ascii "orange"
	.db 0x5c
	.db 0x00
_s117:
	.ascii "green crystal"
	.db 0x5c
	.ascii "green"
	.db 0x5c
	.db 0x00
_s118:
	.ascii "yellow crystal"
	.db 0x5c
	.ascii "yellow"
	.db 0x5c
	.db 0x00
_s119:
	.ascii "blue crystal"
	.db 0x5c
	.ascii "blue"
	.db 0x5c
	.db 0x00
_s120:
	.ascii "pair of gloves"
	.db 0x5c
	.ascii "pair gloves"
	.db 0x5c
	.db 0x00
_s121:
	.ascii "gloves"
	.db 0x5c
	.ascii "glove"
	.db 0x5c
	.ascii "pair"
	.db 0x5c
	.db 0x00
_s122:
	.ascii "security suit"
	.db 0x5c
	.ascii "suit"
	.db 0x5c
	.ascii "badge"
	.db 0x5c
	.db 0x00
_s123:
	.ascii "mug"
	.db 0x5c
	.ascii "cup"
	.db 0x5c
	.ascii "drink"
	.db 0x5c
	.db 0x00
_s124:
	.ascii "all"
	.db 0x5c
	.ascii "everyth"
	.db 0x5c
	.ascii "object"
	.db 0x5c
	.ascii "objects"
	.db 0x5c
	.db 0x00
_s125:
	.ascii "securit suit"
	.db 0x5c
	.ascii "securit"
	.db 0x5c
	.db 0x00
_s126:
	.ascii "containers"
	.db 0x5c
	.ascii "crate"
	.db 0x5c
	.ascii "crates"
	.db 0x5c
	.db 0x00
_s127:
	.ascii "cargo"
	.db 0x5c
	.ascii "contain"
	.db 0x5c
	.ascii "storage"
	.db 0x5c
	.db 0x00
_s128:
	.ascii "ceiling"
	.db 0x5c
	.ascii "roof"
	.db 0x5c
	.ascii "up"
	.db 0x5c
	.db 0x00
_s129:
	.ascii "seat"
	.db 0x5c
	.ascii "command chair"
	.db 0x5c
	.ascii "chair"
	.db 0x5c
	.db 0x00
_s130:
	.ascii "chairs"
	.db 0x5c
	.ascii "seats"
	.db 0x5c
	.ascii "toilet"
	.db 0x5c
	.db 0x00
_s131:
	.ascii "computer"
	.db 0x5c
	.ascii "termina"
	.db 0x5c
	.ascii "compute"
	.db 0x5c
	.db 0x00
_s132:
	.ascii "controls"
	.db 0x5c
	.ascii "machine"
	.db 0x5c
	.db 0x00
_s133:
	.ascii "control panel"
	.db 0x5c
	.ascii "control"
	.db 0x5c
	.db 0x00
_s134:
	.ascii "cyan button"
	.db 0x5c
	.ascii "cyan"
	.db 0x5c
	.db 0x00
_s135:
	.ascii "tan button"
	.db 0x5c
	.ascii "tan"
	.db 0x5c
	.db 0x00
_s136:
	.ascii "energy flow"
	.db 0x5c
	.ascii "energy"
	.db 0x5c
	.ascii "flow"
	.db 0x5c
	.db 0x00
_s137:
	.ascii "purple button"
	.db 0x5c
	.ascii "purple"
	.db 0x5c
	.ascii "violet"
	.db 0x5c
	.db 0x00
_s138:
	.ascii "button"
	.db 0x5c
	.ascii "white button"
	.db 0x5c
	.ascii "white"
	.db 0x5c
	.db 0x00
_s139:
	.ascii "buttons"
	.db 0x5c
	.db 0x00
_s140:
	.ascii "robot"
	.db 0x5c
	.ascii "defense robot"
	.db 0x5c
	.ascii "defense"
	.db 0x5c
	.db 0x00
_s141:
	.ascii "vines"
	.db 0x5c
	.ascii "vine"
	.db 0x5c
	.ascii "branche"
	.db 0x5c
	.ascii "branch"
	.db 0x5c
	.db 0x00
_s142:
	.ascii "dial"
	.db 0x5c
	.ascii "knob"
	.db 0x5c
	.ascii "dials"
	.db 0x5c
	.ascii "knobs"
	.db 0x5c
	.ascii "tap"
	.db 0x5c
	.db 0x00
_s143:
	.ascii "ground"
	.db 0x5c
	.ascii "floor"
	.db 0x5c
	.ascii "earth"
	.db 0x5c
	.ascii "deck"
	.db 0x5c
	.ascii "bay"
	.db 0x5c
	.db 0x00
_s144:
	.ascii "glass floor"
	.db 0x5c
	.ascii "rocks"
	.db 0x5c
	.ascii "down"
	.db 0x5c
	.db 0x00
_s145:
	.ascii "equipment"
	.db 0x5c
	.ascii "equipme"
	.db 0x5c
	.db 0x00
_s146:
	.ascii "numeric keypad"
	.db 0x5c
	.ascii "keypad"
	.db 0x5c
	.db 0x00
_s147:
	.ascii "numeric"
	.db 0x5c
	.ascii "numbers"
	.db 0x5c
	.ascii "keyboar"
	.db 0x5c
	.db 0x00
_s148:
	.ascii "rail"
	.db 0x5c
	.ascii "railing"
	.db 0x5c
	.ascii "column"
	.db 0x5c
	.db 0x00
_s149:
	.ascii "panel"
	.db 0x5c
	.ascii "compart"
	.db 0x5c
	.db 0x00
_s150:
	.ascii "door"
	.db 0x5c
	.ascii "swingin door"
	.db 0x5c
	.ascii "doors"
	.db 0x5c
	.db 0x00
_s151:
	.ascii "swingin doors"
	.db 0x5c
	.ascii "hatch"
	.db 0x5c
	.ascii "swingin"
	.db 0x5c
	.db 0x00
_s152:
	.ascii "key"
	.db 0x5c
	.ascii "keys"
	.db 0x5c
	.ascii "round recess"
	.db 0x5c
	.db 0x00
_s153:
	.ascii "screen"
	.db 0x5c
	.ascii "monitor"
	.db 0x5c
	.ascii "screens"
	.db 0x5c
	.ascii "data"
	.db 0x5c
	.db 0x00
_s154:
	.ascii "player"
	.db 0x5c
	.ascii "self"
	.db 0x5c
	.ascii "waist"
	.db 0x5c
	.ascii "me"
	.db 0x5c
	.ascii "myself"
	.db 0x5c
	.db 0x00
_s155:
	.ascii "hand"
	.db 0x5c
	.ascii "hands"
	.db 0x5c
	.ascii "arm"
	.db 0x5c
	.ascii "feet"
	.db 0x5c
	.ascii "foot"
	.db 0x5c
	.db 0x00
_s156:
	.ascii "ship"
	.db 0x5c
	.ascii "my ship"
	.db 0x5c
	.ascii "shuttle"
	.db 0x5c
	.ascii "vehicle"
	.db 0x5c
	.db 0x00
_s157:
	.ascii "space ship"
	.db 0x5c
	.ascii "space craft"
	.db 0x5c
	.ascii "craft"
	.db 0x5c
	.db 0x00
_s158:
	.ascii "slot"
	.db 0x5c
	.ascii "opening"
	.db 0x5c
	.ascii "hole"
	.db 0x5c
	.ascii "round"
	.db 0x5c
	.db 0x00
_s159:
	.ascii "niche"
	.db 0x5c
	.ascii "holes"
	.db 0x5c
	.ascii "recess"
	.db 0x5c
	.db 0x00
_s160:
	.ascii "acid water"
	.db 0x5c
	.ascii "acid river"
	.db 0x5c
	.ascii "stream"
	.db 0x5c
	.db 0x00
_s161:
	.ascii "acid stream"
	.db 0x5c
	.ascii "river"
	.db 0x5c
	.ascii "acid"
	.db 0x5c
	.ascii "gap"
	.db 0x5c
	.db 0x00
_s162:
	.ascii "pyramid"
	.db 0x5c
	.ascii "podium"
	.db 0x5c
	.ascii "structure"
	.db 0x5c
	.db 0x00
_s163:
	.ascii "cryo tube"
	.db 0x5c
	.ascii "cryogen tube"
	.db 0x5c
	.db 0x00
_s164:
	.ascii "cryogen"
	.db 0x5c
	.ascii "cryo"
	.db 0x5c
	.ascii "tube"
	.db 0x5c
	.ascii "tubes"
	.db 0x5c
	.db 0x00
_s165:
	.ascii "steps"
	.db 0x5c
	.ascii "step"
	.db 0x5c
	.ascii "stairs"
	.db 0x5c
	.ascii "ladder"
	.db 0x5c
	.db 0x00
_s166:
	.ascii "picture"
	.db 0x5c
	.ascii "mural"
	.db 0x5c
	.ascii "drawing"
	.db 0x5c
	.db 0x00
_s167:
	.ascii "bones"
	.db 0x5c
	.ascii "bone"
	.db 0x5c
	.ascii "skeleto"
	.db 0x5c
	.ascii "remains"
	.db 0x5c
	.db 0x00
_s168:
	.ascii "flash"
	.db 0x5c
	.ascii "blindin flash"
	.db 0x5c
	.ascii "blindin"
	.db 0x5c
	.db 0x00
_s169:
	.ascii "creature"
	.db 0x5c
	.ascii "hairy creatur"
	.db 0x5c
	.ascii "hairy"
	.db 0x5c
	.db 0x00
_s170:
	.ascii "scaled creatur"
	.db 0x5c
	.ascii "creatur"
	.db 0x5c
	.db 0x00
_s171:
	.ascii "scaled"
	.db 0x5c
	.db 0x00
_s172:
	.ascii "wheel"
	.db 0x5c
	.ascii "handle"
	.db 0x5c
	.db 0x00
_s173:
	.ascii "water"
	.db 0x5c
	.db 0x00
_s174:
	.ascii "bed"
	.db 0x5c
	.ascii "bunk"
	.db 0x5c
	.ascii "beds"
	.db 0x5c
	.ascii "bunks"
	.db 0x5c
	.db 0x00
_s175:
	.ascii "sign"
	.db 0x5c
	.ascii "post"
	.db 0x5c
	.ascii "menu"
	.db 0x5c
	.ascii "message"
	.db 0x5c
	.ascii "note"
	.db 0x5c
	.db 0x00
_s176:
	.ascii "solar map"
	.db 0x5c
	.ascii "map"
	.db 0x5c
	.ascii "solar"
	.db 0x5c
	.ascii "drawing"
	.db 0x5c
	.db 0x00
_s177:
	.ascii "western table"
	.db 0x5c
	.ascii "western"
	.db 0x5c
	.db 0x00
_s178:
	.ascii "middle table"
	.db 0x5c
	.ascii "middle"
	.db 0x5c
	.db 0x00
_s179:
	.ascii "eastern table"
	.db 0x5c
	.ascii "eastern"
	.db 0x5c
	.db 0x00
_s180:
	.ascii "table"
	.db 0x5c
	.ascii "tables"
	.db 0x5c
	.db 0x00
_s181:
	.ascii "shelf"
	.db 0x5c
	.ascii "shelves"
	.db 0x5c
	.db 0x00
_s182:
	.ascii "gun"
	.db 0x5c
	.ascii "ray gun"
	.db 0x5c
	.ascii "signpos"
	.db 0x5c
	.db 0x00
_s183:
	.ascii "statue"
	.db 0x5c
	.ascii "dog statue"
	.db 0x5c
	.ascii "dog"
	.db 0x5c
	.db 0x00
_s184:
	.ascii "serum dispenser"
	.db 0x5c
	.ascii "dispens"
	.db 0x5c
	.db 0x00
_s185:
	.ascii "serum dispens"
	.db 0x5c
	.db 0x00
_s186:
	.ascii "serum"
	.db 0x5c
	.ascii "medicin"
	.db 0x5c
	.ascii "cure"
	.db 0x5c
	.ascii "liquid"
	.db 0x5c
	.db 0x00
_s187:
	.ascii "platform"
	.db 0x5c
	.ascii "platfor"
	.db 0x5c
	.db 0x00
_s188:
	.ascii "booth"
	.db 0x5c
	.ascii "transpo"
	.db 0x5c
	.db 0x00
_s189:
	.ascii "wristband"
	.db 0x5c
	.ascii "wristba"
	.db 0x5c
	.ascii "transla"
	.db 0x5c
	.db 0x00
_s190:
	.ascii "building"
	.db 0x5c
	.ascii "buildin"
	.db 0x5c
	.ascii "complex"
	.db 0x5c
	.db 0x00
_s191:
	.ascii "store"
	.db 0x5c
	.ascii "station"
	.db 0x5c
	.ascii "tavern"
	.db 0x5c
	.db 0x00
_s192:
	.ascii "sink"
	.db 0x5c
	.ascii "basin"
	.db 0x5c
	.ascii "tap"
	.db 0x5c
	.ascii "faucet"
	.db 0x5c
	.ascii "spout"
	.db 0x5c
	.db 0x00
_s193:
	.ascii "glunk lite"
	.db 0x5c
	.ascii "lite"
	.db 0x5c
	.ascii "glunk"
	.db 0x5c
	.ascii "beer"
	.db 0x5c
	.db 0x00
_s194:
	.ascii "Drink"
	.db 0x5c
	.ascii "ambross"
	.db 0x5c
	.db 0x00
_s195:
	.ascii "pink ztulctw"
	.db 0x5c
	.ascii "ztulctw"
	.db 0x5c
	.ascii "pink"
	.db 0x5c
	.db 0x00
_s196:
	.ascii "bloody foeboz"
	.db 0x5c
	.ascii "foeboz"
	.db 0x5c
	.ascii "bloody"
	.db 0x5c
	.db 0x00
_s197:
	.ascii "red star"
	.db 0x5c
	.ascii "red"
	.db 0x5c
	.ascii "star"
	.db 0x5c
	.ascii "flare"
	.db 0x5c
	.db 0x00
_s198:
	.ascii "telescope"
	.db 0x5c
	.ascii "telesco"
	.db 0x5c
	.ascii "eyepiec"
	.db 0x5c
	.db 0x00
_s199:
	.ascii "outer planet"
	.db 0x5c
	.ascii "inner planet"
	.db 0x5c
	.db 0x00
_s200:
	.ascii "line planet"
	.db 0x5c
	.ascii "fifth planet"
	.db 0x5c
	.db 0x00
_s201:
	.ascii "ringed planet"
	.db 0x5c
	.ascii "ringed"
	.db 0x5c
	.db 0x00
_s202:
	.ascii "inner"
	.db 0x5c
	.ascii "fifth"
	.db 0x5c
	.ascii "line"
	.db 0x5c
	.ascii "outer"
	.db 0x5c
	.db 0x00
_s203:
	.ascii "planets"
	.db 0x5c
	.ascii "planet"
	.db 0x5c
	.ascii "last"
	.db 0x5c
	.db 0x00
_s204:
	.ascii "keyhole"
	.db 0x5c
	.db 0x00
_s205:
	.ascii "bartender"
	.db 0x5c
	.ascii "bartend"
	.db 0x5c
	.ascii "waiter"
	.db 0x5c
	.db 0x00
_s206:
	.ascii "trees"
	.db 0x5c
	.ascii "tree"
	.db 0x5c
	.ascii "forest"
	.db 0x5c
	.ascii "jungle"
	.db 0x5c
	.db 0x00
_s207:
	.ascii "path"
	.db 0x5c
	.ascii "passage"
	.db 0x5c
	.ascii "tunnel"
	.db 0x5c
	.ascii "road"
	.db 0x5c
	.db 0x00
_s208:
	.ascii "corrido"
	.db 0x5c
	.ascii "lobby"
	.db 0x5c
	.ascii "chamber"
	.db 0x5c
	.ascii "air"
	.db 0x5c
	.db 0x00
_s209:
	.ascii "antenna"
	.db 0x5c
	.ascii "dish"
	.db 0x5c
	.ascii "hollow"
	.db 0x5c
	.db 0x00
_s210:
	.ascii "wall"
	.db 0x5c
	.ascii "south wall"
	.db 0x5c
	.ascii "north wall"
	.db 0x5c
	.db 0x00
_s211:
	.ascii "east wall"
	.db 0x5c
	.ascii "west wall"
	.db 0x5c
	.ascii "walls"
	.db 0x5c
	.db 0x00
_s212:
	.ascii "ice"
	.db 0x5c
	.ascii "snow"
	.db 0x5c
	.db 0x00
_s213:
	.ascii "writing"
	.db 0x5c
	.ascii "chart"
	.db 0x5c
	.ascii "list"
	.db 0x5c
	.db 0x00
_s214:
	.ascii "swamp"
	.db 0x5c
	.ascii "quicksa"
	.db 0x5c
	.db 0x00
_s215:
	.ascii "radio"
	.db 0x5c
	.ascii "transmi"
	.db 0x5c
	.db 0x00
_s216:
	.ascii "dirt"
	.db 0x5c
	.ascii "sand"
	.db 0x5c
	.ascii "dust"
	.db 0x5c
	.ascii "desert"
	.db 0x5c
	.ascii "rocks"
	.db 0x5c
	.db 0x00
_s217:
	.ascii "scientist"
	.db 0x5c
	.ascii "scienti"
	.db 0x5c
	.ascii "him"
	.db 0x5c
	.ascii "man"
	.db 0x5c
	.db 0x00
_s218:
	.ascii "aliens"
	.db 0x5c
	.ascii "two aliens"
	.db 0x5c
	.ascii "alien"
	.db 0x5c
	.db 0x00
_s219:
	.ascii "fence"
	.db 0x5c
	.ascii "wire fence"
	.db 0x5c
	.ascii "wire"
	.db 0x5c
	.db 0x00
_s220:
	.ascii "bar"
	.db 0x5c
	.db 0x00
_s221:
	.ascii "window"
	.db 0x5c
	.ascii "windows"
	.db 0x5c
	.ascii "alarm"
	.db 0x5c
	.ascii "siren"
	.db 0x5c
	.db 0x00
_s222:
	.ascii "reactor"
	.db 0x5c
	.ascii "regulat"
	.db 0x5c
	.db 0x00
_s223:
	.ascii "gas"
	.db 0x5c
	.ascii "fumes"
	.db 0x5c
	.ascii "icy mist"
	.db 0x5c
	.ascii "mist"
	.db 0x5c
	.ascii "icy"
	.db 0x5c
	.db 0x00
_s224:
	.ascii "spears"
	.db 0x5c
	.ascii "spear"
	.db 0x5c
	.db 0x00
_s225:
	.ascii "light"
	.db 0x5c
	.ascii "glow"
	.db 0x5c
	.ascii "lights"
	.db 0x5c
	.ascii "catwalk"
	.db 0x5c
	.db 0x00
_s226:
	.ascii "drazil tracks"
	.db 0x5c
	.ascii "tracks"
	.db 0x5c
	.ascii "drazil"
	.db 0x5c
	.db 0x00
_s227:
	.ascii "droid"
	.db 0x5c
	.ascii "sensor"
	.db 0x5c
	.ascii "probe"
	.db 0x5c
	.db 0x00
_s228:
	.ascii "on top"
	.db 0x5c
	.ascii "around"
	.db 0x5c
	.ascii "above"
	.db 0x5c
	.ascii "over"
	.db 0x5c
	.db 0x00
_s229:
	.ascii "across"
	.db 0x5c
	.ascii "on"
	.db 0x5c
	.ascii "to"
	.db 0x5c
	.ascii "onto"
	.db 0x5c
	.db 0x00
_s230:
	.ascii "against"
	.db 0x5c
	.ascii "at"
	.db 0x5c
	.ascii "toward"
	.db 0x5c
	.ascii "towards"
	.db 0x5c
	.db 0x00
_s231:
	.ascii "in directi"
	.db 0x5c
	.db 0x00
_s232:
	.ascii "in"
	.db 0x5c
	.ascii "through"
	.db 0x5c
	.ascii "down"
	.db 0x5c
	.db 0x00
_s233:
	.ascii "using"
	.db 0x5c
	.ascii "with"
	.db 0x5c
	.ascii "making use"
	.db 0x5c
	.ascii "by"
	.db 0x5c
	.db 0x00
_s234:
	.ascii "beside"
	.db 0x5c
	.ascii "near"
	.db 0x5c
	.ascii "close to"
	.db 0x5c
	.ascii "next to"
	.db 0x5c
	.db 0x00
_s235:
	.ascii "leaning against"
	.db 0x5c
	.db 0x00
_s236:
	.ascii "off"
	.db 0x5c
	.ascii "from"
	.db 0x5c
	.db 0x00
_s237:
	.ascii "under"
	.db 0x5c
	.ascii "underne"
	.db 0x5c
	.ascii "beneath"
	.db 0x5c
	.ascii "below"
	.db 0x5c
	.db 0x00
_s238:
	.ascii "a"
	.db 0x5c
	.ascii "for"
	.db 0x5c
	.db 0x00
_s239:
	.ascii "gently1careful2softly3calmly4quietly5lightly6easily7"
	.db 0x00
_s240:
	.ascii "slowly1leisure2slow3with care4cautiou5closely6"
	.db 0x00
_s241:
	.ascii "strongl1firmly2solidly3powerfu4with force5hard6"
	.db 0x00
_s242:
	.ascii "quickly1fast2rapidly3speedil4very fast5"
	.db 0x00
_s243:
	.ascii "Bridge"
	.db 0x00
_s244:
	.ascii "Forward Corridor"
	.db 0x00
_s245:
	.ascii "Rear Corridor"
	.db 0x00
_s246:
	.ascii "Ship's Lab"
	.db 0x00
_s247:
	.ascii "Sanitary Facilities"
	.db 0x00
_s248:
	.ascii "Sleep Chamber"
	.db 0x00
_s249:
	.ascii "Cargo Area"
	.db 0x00
_s250:
	.ascii "Tavern"
	.db 0x00
_s251:
	.ascii "West Hallway"
	.db 0x00
_s252:
	.ascii "Central Hallway"
	.db 0x00
_s253:
	.ascii "East Hallway"
	.db 0x00
_s254:
	.ascii "Suite #4"
	.db 0x00
_s255:
	.ascii "Crossroads"
	.db 0x00
_s256:
	.ascii "Dusty Road"
	.db 0x00
_s257:
	.ascii "Gravel Road"
	.db 0x00
_s258:
	.ascii "Paved Road"
	.db 0x00
_s259:
	.ascii "General Store"
	.db 0x00
_s260:
	.ascii "Gravel Lot"
	.db 0x00
_s261:
	.ascii "Top of Ship"
	.db 0x00
_s262:
	.ascii "Deep Pit"
	.db 0x00
_s263:
	.ascii "Sandy Clearing"
	.db 0x00
_s264:
	.ascii "Winding Path"
	.db 0x00
_s265:
	.ascii "Top of Tree"
	.db 0x00
_s266:
	.ascii "Quicksand Pit"
	.db 0x00
_s267:
	.ascii "Front of Pyramid"
	.db 0x00
_s268:
	.ascii "Vestibule"
	.db 0x00
_s269:
	.ascii "Descending Stairs"
	.db 0x00
_s270:
	.ascii "Halcyon Hall"
	.db 0x00
_s271:
	.ascii "Departure Room"
	.db 0x00
_s272:
	.ascii "Holey Hall"
	.db 0x00
_s273:
	.ascii "Pyramid Lobby"
	.db 0x00
_s274:
	.ascii "Treasure's Keeper"
	.db 0x00
_s275:
	.ascii "Ladder Room"
	.db 0x00
_s276:
	.ascii "Shifting Room"
	.db 0x00
_s277:
	.ascii "Stairway Room"
	.db 0x00
_s278:
	.ascii "Lower Stairway"
	.db 0x00
_s279:
	.ascii "Misty Passage"
	.db 0x00
_s280:
	.ascii "Damp Passage"
	.db 0x00
_s281:
	.ascii "Dark Passage"
	.db 0x00
_s282:
	.ascii "Circular Chamber"
	.db 0x00
_s283:
	.ascii "The Erusaert"
	.db 0x00
_s284:
	.ascii "Solar Chamber"
	.db 0x00
_s285:
	.ascii "Eternal Trap"
	.db 0x00
_s286:
	.ascii "Overgrown Path"
	.db 0x00
_s287:
	.ascii "Antenna Building"
	.db 0x00
_s288:
	.ascii "Monitor Outpost"
	.db 0x00
_s289:
	.ascii "Booth"
	.db 0x00
_s290:
	.ascii "Lobby"
	.db 0x00
_s291:
	.ascii "North Corridor"
	.db 0x00
_s292:
	.ascii "Central Corridor"
	.db 0x00
_s293:
	.ascii "South Corridor"
	.db 0x00
_s294:
	.ascii "Decontamination"
	.db 0x00
_s295:
	.ascii "Waiting Room"
	.db 0x00
_s296:
	.ascii "Transporter Booth"
	.db 0x00
_s297:
	.ascii "Monitor Station"
	.db 0x00
_s298:
	.ascii "Reactor Control"
	.db 0x00
_s299:
	.ascii "Communications"
	.db 0x00
_s300:
	.ascii "Computer Station"
	.db 0x00
_s301:
	.ascii "Elevator  1st Floor"
	.db 0x00
_s302:
	.ascii "Elevator  2nd Floor"
	.db 0x00
_s303:
	.ascii "Observatory"
	.db 0x00
_s304:
	.ascii "Icy Platform"
	.db 0x00
_s305:
	.ascii "Confirmation Port"
	.db 0x00
_s306:
	.ascii "Inspection Lobby"
	.db 0x00
_s307:
	.ascii "Circular Corridor"
	.db 0x00
_s308:
	.ascii "Reactors West"
	.db 0x00
_s309:
	.ascii "Reactors East"
	.db 0x00
_s310:
	.ascii "Emergency Override"
	.db 0x00
_s311:
	.ascii "Climate Control"
	.db 0x00
_s312:
	.ascii "Elevator"
	.db 0x00
_s313:
	.ascii "Maintenance"
	.db 0x00
_s314:
	.ascii "Transmission Room"
	.db 0x00
_s315:
	.ascii "Station Control"
	.db 0x00
_s316:
	.ascii "Cryogenic Chamber"
	.db 0x00
_s317:
	.ascii "Indentity Booth"
	.db 0x00
_s318:
	.ascii "Security Tunnel #1"
	.db 0x00
_s319:
	.ascii "Security Tunnel #2"
	.db 0x00
_s320:
	.ascii "Security Tunnel #3"
	.db 0x00
_s321:
	.ascii "North Catwalk"
	.db 0x00
_s322:
	.ascii "East Catwalk"
	.db 0x00
_s323:
	.ascii "South Catwalk"
	.db 0x00
_s324:
	.ascii "West Catwalk"
	.db 0x00
_s325:
	.ascii "Junction"
	.db 0x00
_s326:
	.ascii "Conference Room"
	.db 0x00
_s327:
	.ascii "Reactor Regulators"
	.db 0x00
_s328:
	.ascii "Medical Quarters #6"
	.db 0x00
_g_VInit:
	.dw #0x0000
	.dw _s0
	.dw _s1
	.dw _s2
	.dw _s3
	.dw _s4
	.dw _s5
	.dw _s6
	.dw _s7
	.dw _s8
	.dw _s9
	.dw _s10
	.dw _s11
	.dw _s12
	.dw _s13
	.dw _s14
	.dw _s15
	.dw _s16
	.dw _s17
	.dw _s18
	.dw _s19
	.dw _s20
	.dw _s21
	.dw _s22
	.dw _s23
	.dw _s24
	.dw _s25
	.dw _s26
	.dw _s27
	.dw _s28
	.dw _s29
	.dw _s30
	.dw _s31
	.dw _s32
	.dw _s33
	.dw _s34
	.dw _s35
	.dw _s36
	.dw _s37
	.dw _s38
	.dw _s39
	.dw _s40
	.dw _s41
	.dw _s42
	.dw _s43
	.dw _s44
	.dw _s45
	.dw _s46
	.dw _s47
	.dw _s48
	.dw _s49
	.dw _s50
	.dw _s51
	.dw _s52
	.dw _s53
	.dw _s54
	.dw _s55
	.dw _s56
	.dw _s57
	.dw _s58
	.dw _s59
	.dw _s60
	.dw _s61
	.dw _s62
	.dw _s63
	.dw _s64
	.dw _s65
	.dw _s66
	.dw _s67
	.dw _s68
	.dw _s69
	.dw _s70
	.dw _s71
	.dw _s72
	.dw _s73
	.dw _s74
	.dw _s75
	.dw _s76
	.dw _s77
	.dw _s78
	.dw _s79
	.dw _s80
	.dw _s81
	.dw _s82
	.dw _s83
	.dw _s84
	.dw _s85
	.dw _s86
	.dw _s87
	.dw _s88
	.dw _s89
	.dw _s90
	.dw _s91
	.dw _s92
	.dw _s93
	.dw _s94
_g_NInit:
	.dw #0x0000
	.dw _s95
	.dw _s96
	.dw _s97
	.dw _s98
	.dw _s99
	.dw _s100
	.dw _s101
	.dw _s102
	.dw _s103
	.dw _s104
	.dw _s105
	.dw _s106
	.dw _s107
	.dw _s108
	.dw _s109
	.dw _s110
	.dw _s111
	.dw _s112
	.dw _s113
	.dw _s114
	.dw _s115
	.dw _s116
	.dw _s117
	.dw _s118
	.dw _s119
	.dw _s120
	.dw _s121
	.dw _s122
	.dw _s123
	.dw _s124
	.dw _s125
	.dw _s126
	.dw _s127
	.dw _s128
	.dw _s129
	.dw _s130
	.dw _s131
	.dw _s132
	.dw _s133
	.dw _s134
	.dw _s135
	.dw _s136
	.dw _s137
	.dw _s138
	.dw _s139
	.dw _s140
	.dw _s141
	.dw _s142
	.dw _s143
	.dw _s144
	.dw _s145
	.dw _s146
	.dw _s147
	.dw _s148
	.dw _s149
	.dw _s150
	.dw _s151
	.dw _s152
	.dw _s153
	.dw _s154
	.dw _s155
	.dw _s156
	.dw _s157
	.dw _s158
	.dw _s159
	.dw _s160
	.dw _s161
	.dw _s162
	.dw _s163
	.dw _s164
	.dw _s165
	.dw _s166
	.dw _s167
	.dw _s168
	.dw _s169
	.dw _s170
	.dw _s171
	.dw _s172
	.dw _s173
	.dw _s174
	.dw _s175
	.dw _s176
	.dw _s177
	.dw _s178
	.dw _s179
	.dw _s180
	.dw _s181
	.dw _s182
	.dw _s183
	.dw _s184
	.dw _s185
	.dw _s186
	.dw _s187
	.dw _s188
	.dw _s189
	.dw _s190
	.dw _s191
	.dw _s192
	.dw _s193
	.dw _s194
	.dw _s195
	.dw _s196
	.dw _s197
	.dw _s198
	.dw _s199
	.dw _s200
	.dw _s201
	.dw _s202
	.dw _s203
	.dw _s204
	.dw _s205
	.dw _s206
	.dw _s207
	.dw _s208
	.dw _s209
	.dw _s210
	.dw _s211
	.dw _s212
	.dw _s213
	.dw _s214
	.dw _s215
	.dw _s216
	.dw _s217
	.dw _s218
	.dw _s219
	.dw _s220
	.dw _s221
	.dw _s222
	.dw _s223
	.dw _s224
	.dw _s225
	.dw _s226
	.dw _s227
_g_PInit:
	.dw #0x0000
	.dw _s228
	.dw _s229
	.dw _s230
	.dw _s231
	.dw _s232
	.dw _s233
	.dw _s234
	.dw _s235
	.dw _s236
	.dw _s237
	.dw _s238
_g_AInit:
	.dw #0x0000
	.dw _s239
	.dw _s240
	.dw _s241
	.dw _s242
_g_RNInit:
	.dw #0x0000
	.dw _s243
	.dw _s244
	.dw _s245
	.dw _s246
	.dw _s247
	.dw _s248
	.dw _s249
	.dw _s250
	.dw _s251
	.dw _s252
	.dw _s253
	.dw _s254
	.dw _s255
	.dw _s256
	.dw _s256
	.dw _s257
	.dw _s257
	.dw _s258
	.dw _s258
	.dw _s259
	.dw _s260
	.dw _s261
	.dw _s262
	.dw _s261
	.dw _s263
	.dw _s264
	.dw _s264
	.dw _s264
	.dw _s264
	.dw _s265
	.dw _s266
	.dw _s264
	.dw _s264
	.dw _s267
	.dw _s268
	.dw _s269
	.dw _s270
	.dw _s271
	.dw _s272
	.dw _s273
	.dw _s274
	.dw _s275
	.dw _s276
	.dw _s276
	.dw _s276
	.dw _s276
	.dw _s276
	.dw _s276
	.dw _s276
	.dw _s277
	.dw _s278
	.dw _s279
	.dw _s280
	.dw _s281
	.dw _s282
	.dw _s283
	.dw _s284
	.dw _s285
	.dw _s286
	.dw _s287
	.dw _s288
	.dw _s289
	.dw _s289
	.dw _s290
	.dw _s291
	.dw _s292
	.dw _s293
	.dw _s294
	.dw _s295
	.dw _s296
	.dw _s297
	.dw _s298
	.dw _s299
	.dw _s300
	.dw _s301
	.dw _s302
	.dw _s303
	.dw _s304
	.dw _s305
	.dw _s306
	.dw _s307
	.dw _s307
	.dw _s307
	.dw _s307
	.dw _s307
	.dw _s307
	.dw _s307
	.dw _s307
	.dw _s308
	.dw _s309
	.dw _s310
	.dw _s311
	.dw _s312
	.dw _s313
	.dw _s314
	.dw _s315
	.dw _s316
	.dw _s317
	.dw _s318
	.dw _s319
	.dw _s320
	.dw _s321
	.dw _s322
	.dw _s323
	.dw _s324
	.dw _s325
	.dw _s326
	.dw _s327
	.dw _s328
_g_LocInit:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xfe	; 254
	.db #0x0d	; 13
	.db #0xc9	; 201
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0xa8	; 168
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x4d	; 77	'M'
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x26	; 38
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x80	; 128
	.db #0x4c	; 76	'L'
	.db #0x40	; 64
	.db #0x49	; 73	'I'
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xc9	; 201
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x89	; 137
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x8d	; 141
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xb0	; 176
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x42	; 66	'B'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x82	; 130
	.db #0x0d	; 13
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x28	; 40
	.db #0x41	; 65	'A'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x82	; 130
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x43	; 67	'C'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x42	; 66	'B'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xa1	; 161
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x82	; 130
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x82	; 130
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x32	; 50	'2'
	.db #0x08	; 8
	.db #0x8d	; 141
	.db #0x8c	; 140
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x42	; 66	'B'
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x89	; 137
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x85	; 133
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x89	; 137
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x43	; 67	'C'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0xc1	; 193
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0xc1	; 193
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x82	; 130
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x04	; 4
;./maptest.c:14: static void Print(const char* s) { while (*s) DOS_CharOutput(*s++); DOS_CharOutput('\r'); DOS_CharOutput('\n'); }
;	---------------------------------
; Function Print
; ---------------------------------
_Print:
00101$:
	ld	a, (hl)
	or	a, a
	jr	z, 00103$
	inc	hl
	push	hl
	call	_DOS_CharOutput
	pop	hl
	jp	00101$
00103$:
	ld	a, #0x0d
	call	_DOS_CharOutput
	ld	a, #0x0a
	jp	_DOS_CharOutput
;./maptest.c:16: static void PrintNum(u16 v)
;	---------------------------------
; Function PrintNum
; ---------------------------------
_PrintNum:
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-7
	add	iy, sp
	ld	sp, iy
	ld	c, l
	ld	b, h
;./maptest.c:19: do { t[n++] = '0' + v % 10; v /= 10; } while (v);
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
	or	a, d
	jr	nz, 00101$
;./maptest.c:20: while (n) DOS_CharOutput(t[--n]);
	ld	c, -1 (ix)
00104$:
	ld	a, c
	or	a, a
	jr	z, 00106$
	dec	c
	ld	e, c
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	push	bc
	call	_DOS_CharOutput
	pop	bc
	jp	00104$
00106$:
;./maptest.c:21: DOS_CharOutput('\r'); DOS_CharOutput('\n');
	ld	a, #0x0d
	call	_DOS_CharOutput
	ld	a, #0x0a
	call	_DOS_CharOutput
;./maptest.c:22: }
	ld	sp, ix
	pop	ix
	ret
;./maptest.c:24: static void PrintHex(u16 v)
;	---------------------------------
; Function PrintHex
; ---------------------------------
_PrintHex:
;./maptest.c:26: for (i8 s = 12; s >= 0; s -= 4) { u8 d = (v >> s) & 15; DOS_CharOutput(d < 10 ? '0' + d : 'A' + d - 10); }
	ld	c, #0x0c
00103$:
	bit	7, c
	jr	nz, 00101$
	ld	b, c
	ld	a, l
	ld	e, h
	inc	b
	jp	00135$
00134$:
	srl	e
	rr	a
00135$:
	djnz	00134$
	and	a, #0x0f
	ld	e, a
	sub	a, #0x0a
	jr	nc, 00107$
	ld	a, e
	add	a, #0x30
	ld	e, a
	jp	00108$
00107$:
	ld	a, e
	add	a, #0x37
	ld	e, a
00108$:
	push	hl
	push	bc
	ld	a, e
	call	_DOS_CharOutput
	pop	bc
	pop	hl
	ld	a, c
	add	a, #0xfc
	ld	c, a
	jp	00103$
00101$:
;./maptest.c:27: DOS_CharOutput('\r'); DOS_CharOutput('\n');
	ld	a, #0x0d
	call	_DOS_CharOutput
	ld	a, #0x0a
;./maptest.c:28: }
	jp	_DOS_CharOutput
;./maptest.c:32: static u8 LoadOverlay(const char* name, u8 seg)
;	---------------------------------
; Function LoadOverlay
; ---------------------------------
_LoadOverlay:
;./maptest.c:34: DOSMapper_SetPage2(seg);
	push	hl
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	call	_DOSMapper_SetPage2
	pop	hl
;./maptest.c:35: u8 f = DOS_OpenHandle(name, O_RDONLY);
	ld	a, #0x01
	push	af
	inc	sp
	call	_DOS_OpenHandle
	ld	c, a
;./maptest.c:36: if (g_DOS_LastError) return 0;
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00102$
	xor	a, a
	jp	00103$
00102$:
;./maptest.c:37: u16 n = DOS_ReadHandle(f, (void*)OVL_ADDR, 16384);
	push	bc
	ld	hl, #0x4000
	push	hl
	ld	de, #0x8000
	ld	a, c
	call	_DOS_ReadHandle
	pop	bc
;./maptest.c:38: DOS_CloseHandle(f);
	push	de
	ld	a, c
	call	_DOS_CloseHandle
	pop	de
;./maptest.c:39: return n != 0;
	ld	a, d
	or	a, e
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
00103$:
;./maptest.c:40: }
	pop	hl
	inc	sp
	jp	(hl)
_g_Api:
	.dw _Print
	.dw _PrintNum
	.dw _TextPool_Read
;./maptest.c:43: static void Show(const char* what, u16 id)
;	---------------------------------
; Function Show
; ---------------------------------
_Show:
	ld	c, e
	ld	b, d
;./maptest.c:46: u16 n = TextPool_Read(id, tbuf);
	push	hl
	ld	de, #_Show_tbuf_10000_1114
	ld	l, c
	ld	h, b
	call	_TextPool_Read
	pop	hl
;./maptest.c:47: Print(what);
	push	de
	call	_Print
	pop	de
;./maptest.c:48: if (n > 60) tbuf[60] = 0;
	ld	c, e
	ld	b, d
	ld	a, #0x3c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	nc, 00102$
	ld	hl, #_Show_tbuf_10000_1114 + 60
	ld	(hl), #0x00
00102$:
;./maptest.c:49: Print(tbuf);
	push	de
	ld	hl, #_Show_tbuf_10000_1114
	call	_Print
	pop	de
;./maptest.c:50: PrintNum(n);
	ex	de, hl
;./maptest.c:51: }
	jp	_PrintNum
;./maptest.c:53: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;./maptest.c:56: Print("MAPPER OVERLAY + TEXT POOL TEST");
	ld	hl, #___str_335
	call	_Print
;./maptest.c:57: if (!DOSMapper_Init()) { Print("No mapper extended BIOS!"); DOS_Exit(1); }
	call	_DOSMapper_Init
	or	a, a
	jr	nz, 00102$
	ld	hl, #___str_336
	call	_Print
	ld	a, #0x01
	call	_DOS_Exit
00102$:
;./maptest.c:58: Print("Mapper segments total/free:");
	ld	hl, #___str_337
	call	_Print
;./maptest.c:59: PrintNum(g_DOS_VarTable->NumSeg);
	ld	hl, (_g_DOS_VarTable)
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	call	_PrintNum
;./maptest.c:60: PrintNum(g_DOS_VarTable->FreeSeg);
	ld	hl, (_g_DOS_VarTable)
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	call	_PrintNum
;./maptest.c:62: if (!DOSMapper_Alloc(DOS_ALLOC_USER, DOS_SEGSLOT_PRIM, &segA)) { Print("alloc A failed"); DOS_Exit(1); }
	ld	hl, #0
	add	hl, sp
	push	hl
	xor	a, a
	ld	l, a
	call	_DOSMapper_Alloc
	or	a, a
	jr	nz, 00104$
	ld	hl, #___str_338
	call	_Print
	ld	a, #0x01
	call	_DOS_Exit
00104$:
;./maptest.c:63: if (!DOSMapper_Alloc(DOS_ALLOC_USER, DOS_SEGSLOT_PRIM, &segB)) { Print("alloc B failed"); DOS_Exit(1); }
	ld	hl, #2
	add	hl, sp
	push	hl
	xor	a, a
	ld	l, a
	call	_DOSMapper_Alloc
	or	a, a
	jr	nz, 00106$
	ld	hl, #___str_339
	call	_Print
	ld	a, #0x01
	call	_DOS_Exit
00106$:
;./maptest.c:64: u8 okA = LoadOverlay("OVLA.BIN", segA.Number);
	ld	a, -16 (ix)
	ld	-1 (ix), a
	push	af
	inc	sp
	ld	hl, #___str_333
	call	_LoadOverlay
	ld	-2 (ix), a
;./maptest.c:65: u8 okB = LoadOverlay("OVLB.BIN", segB.Number);
	ld	a, -14 (ix)
	ld	-1 (ix), a
	push	af
	inc	sp
	ld	hl, #___str_334
	call	_LoadOverlay
	ld	c, a
;./maptest.c:66: Print(okA && okB ? "Overlays loaded" : "OVERLAY LOAD FAILED");
	ld	a, -2 (ix)
	or	a, a
	jr	z, 00117$
	ld	a, c
	or	a, a
	jr	z, 00117$
	ld	hl, #___str_340+0
	jp	00118$
00117$:
	ld	hl, #___str_341+0
00118$:
	call	_Print
;./maptest.c:68: u16 t0 = g_JIFFY;
	ld	bc, (_g_JIFFY)
;./maptest.c:69: bool okT = TextPool_Load();
	push	bc
	call	_TextPool_Load
	ld	e, a
	pop	bc
;./maptest.c:70: Print(okT ? "Text pools loaded, frames:" : "TEXT LOAD FAILED");
	ld	a, e
	or	a, a
	jr	z, 00122$
	ld	hl, #___str_342+0
	ld	-2 (ix), l
	ld	-1 (ix), h
	jp	00123$
00122$:
	ld	hl, #___str_343+0
	ld	-2 (ix), l
	ld	-1 (ix), h
00123$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	bc
	call	_Print
	pop	bc
;./maptest.c:71: PrintNum(g_JIFFY - t0);
	ld	hl, (_g_JIFFY)
	cp	a, a
	sbc	hl, bc
	call	_PrintNum
;./maptest.c:72: Print("Free segments now:");
	ld	hl, #___str_344
	call	_Print
;./maptest.c:73: PrintNum(g_DOS_VarTable->FreeSeg);
	ld	hl, (_g_DOS_VarTable)
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	call	_PrintNum
;./maptest.c:76: DOSMapper_SetPage2(segA.Number);
	ld	a, -16 (ix)
	call	_DOSMapper_SetPage2
;./maptest.c:77: Show("Room 1 (R1+R2):", TK_R + 1);
	ld	de, #0x0001
	ld	hl, #___str_345
	call	_Show
;./maptest.c:78: Show("Line 5:", TK_L + 5);
	ld	de, #0x016c
	ld	hl, #___str_346
	call	_Show
;./maptest.c:79: Show("Special 3:", TK_S + 3);
	ld	de, #0x0071
	ld	hl, #___str_347
	call	_Show
;./maptest.c:80: Show("Clue 5:", TK_C + 5);
	ld	de, #0x03c8
	ld	hl, #___str_348
	call	_Show
;./maptest.c:81: Show("B block 1:", TK_B + 1);
	ld	de, #0x0440
	ld	hl, #___str_349
	call	_Show
;./maptest.c:82: Show("Last record:", TK_TOTAL - 1);
	ld	de, #0x044e
	ld	hl, #___str_350
	call	_Show
;./maptest.c:83: Show("Past the end (expect empty, 0):", TK_TOTAL);
	ld	de, #0x044f
	ld	hl, #___str_351
	call	_Show
;./maptest.c:84: Print("page 2 still overlay A? (1=yes):"); PrintNum(DOSMapper_GetPage2() == segA.Number);
	ld	hl, #___str_352
	call	_Print
	call	_DOSMapper_GetPage2
	ld	c, -16 (ix)
	sub	a, c
	ld	a, #0x01
	jr	z, 00275$
	xor	a, a
00275$:
	ld	h, #0x00
	ld	l, a
	call	_PrintNum
;./maptest.c:88: u16 sum = 0, nonEmpty = 0, longest = 0;
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;./maptest.c:89: t0 = g_JIFFY;
	ld	hl, (_g_JIFFY)
	ld	-10 (ix), l
	ld	-9 (ix), h
;./maptest.c:90: for (u16 id = 0; id < TK_TOTAL; id++)
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00113$:
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sub	a, #0x4f
	ld	a, -7 (ix)
	sbc	a, #0x04
	jr	nc, 00111$
;./maptest.c:92: u16 n = TextPool_Read(id, tbuf);
	ld	de, #_main_tbuf_10003_1125
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_TextPool_Read
;./maptest.c:93: sum += n;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
;./maptest.c:94: if (n) nonEmpty++;
	ld	a, d
	or	a, e
	jr	z, 00108$
	inc	-4 (ix)
	jr	nz, 00276$
	inc	-3 (ix)
00276$:
00108$:
;./maptest.c:95: if (n > longest) longest = n;
	ld	a, -12 (ix)
	sub	a, e
	ld	a, -11 (ix)
	sbc	a, d
	jr	nc, 00114$
	ld	-12 (ix), e
	ld	-11 (ix), d
00114$:
;./maptest.c:90: for (u16 id = 0; id < TK_TOTAL; id++)
	inc	-2 (ix)
	jr	nz, 00113$
	inc	-1 (ix)
	jp	00113$
00111$:
;./maptest.c:97: Print("All records read, frames:"); PrintNum(g_JIFFY - t0);
	ld	hl, #___str_353
	call	_Print
	ld	a, (_g_JIFFY+0)
	sub	a, -10 (ix)
	ld	c, a
	ld	a, (_g_JIFFY+1)
	sbc	a, -9 (ix)
	ld	l, c
	ld	h, a
	call	_PrintNum
;./maptest.c:98: Print("byte sum mod 65536 (expect 51036):"); PrintNum(sum);
	ld	hl, #___str_354
	call	_Print
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	call	_PrintNum
;./maptest.c:99: Print("non-empty / longest:"); PrintNum(nonEmpty); PrintNum(longest);
	ld	hl, #___str_355
	call	_Print
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_PrintNum
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	call	_PrintNum
;./maptest.c:102: Vocab_Init();
	call	_Vocab_Init
;./maptest.c:103: Print(g_V[1]); Print(g_V[95]); Print(g_N[133]); Print(g_P[11]); Print(g_A[4]); Print(g_RN[24]); Print(g_RN[109]);
	ld	hl, (#_g_V + 2)
	call	_Print
	ld	hl, (#_g_V + 190)
	call	_Print
	ld	hl, (#_g_N + 266)
	call	_Print
	ld	hl, (#(_g_P + 22) + 0)
	call	_Print
	ld	hl, (#(_g_A + 8) + 0)
	call	_Print
	ld	hl, (#_g_RN + 48)
	call	_Print
	ld	hl, (#_g_RN + 218)
	call	_Print
;./maptest.c:104: Print(LOC_HAS(62, 56) && LOC_HAS(63, 20) && !LOC_HAS(61, 20) && !LOC_HAS(17, 56) && LOC_HAS(17, 131) ? "sets OK" : "sets BAD");
	ld	a, (#_g_Loc + 1060)
	rlca
	and	a, #0x01
	ld	c, a
	ld	de, #_g_Loc + 305
	ld	a, c
	or	a, a
	jr	z, 00124$
	ld	a, (#_g_Loc + 1073)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00124$
	ld	a, (#_g_Loc + 1039)
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00124$
	ld	a, (#_g_Loc + 295)
	rlca
	jr	c, 00124$
	ld	a, (de)
	rrca
	rrca
	and	a, #0x01
	jr	z, 00124$
	ld	hl, #___str_356+0
	jp	00125$
00124$:
	ld	hl, #___str_357+0
00125$:
	push	de
	call	_Print
	pop	de
;./maptest.c:105: g_N[126] = "hinged mouth\mouth\hinge\\"; LOC_ADD(17, 5); LOC_DEL(17, 131);
	ld	hl, #___str_358
	ld	((_g_N + 252)), hl
	ld	hl, #_g_Loc + 289
	set	4, (hl)
	ld	a, (hl)
	ld	a, (de)
	res	2, a
	ld	(de), a
;./maptest.c:106: Print(LOC_HAS(17, 5) && !LOC_HAS(17, 131) ? "set ops OK" : "set ops BAD");
	ld	a, (hl)
	rrca
	rrca
	rrca
	rrca
	and	a, #0x01
	jr	z, 00138$
	ld	a, (de)
	rrca
	rrca
	and	a, #0x01
	jr	nz, 00138$
	ld	hl, #___str_359+0
	jp	00139$
00138$:
	ld	hl, #___str_360+0
00139$:
	call	_Print
;./maptest.c:110: DOSMapper_SetPage2(segA.Number); r = entry(&g_Api); Print("A returned (hex):"); PrintHex(r);
	ld	a, -16 (ix)
	call	_DOSMapper_SetPage2
	ld	hl, #_g_Api
	call	0x8000
	push	de
	ld	hl, #___str_361
	call	_Print
	pop	de
	ex	de, hl
	call	_PrintHex
;./maptest.c:111: DOSMapper_SetPage2(segB.Number); r = entry(&g_Api); Print("B returned (hex):"); PrintHex(r);
	ld	a, -14 (ix)
	call	_DOSMapper_SetPage2
	ld	hl, #_g_Api
	call	0x8000
	push	de
	ld	hl, #___str_362
	call	_Print
	pop	de
	ex	de, hl
	call	_PrintHex
;./maptest.c:112: Print("DONE");
	ld	hl, #___str_363
	call	_Print
;./maptest.c:113: DOS_Exit(0);
	xor	a, a
	call	_DOS_Exit
;./maptest.c:114: }
	ld	sp, ix
	pop	ix
	ret
___str_333:
	.ascii "OVLA.BIN"
	.db 0x00
___str_334:
	.ascii "OVLB.BIN"
	.db 0x00
___str_335:
	.ascii "MAPPER OVERLAY + TEXT POOL TEST"
	.db 0x00
___str_336:
	.ascii "No mapper extended BIOS!"
	.db 0x00
___str_337:
	.ascii "Mapper segments total/free:"
	.db 0x00
___str_338:
	.ascii "alloc A failed"
	.db 0x00
___str_339:
	.ascii "alloc B failed"
	.db 0x00
___str_340:
	.ascii "Overlays loaded"
	.db 0x00
___str_341:
	.ascii "OVERLAY LOAD FAILED"
	.db 0x00
___str_342:
	.ascii "Text pools loaded, frames:"
	.db 0x00
___str_343:
	.ascii "TEXT LOAD FAILED"
	.db 0x00
___str_344:
	.ascii "Free segments now:"
	.db 0x00
___str_345:
	.ascii "Room 1 (R1+R2):"
	.db 0x00
___str_346:
	.ascii "Line 5:"
	.db 0x00
___str_347:
	.ascii "Special 3:"
	.db 0x00
___str_348:
	.ascii "Clue 5:"
	.db 0x00
___str_349:
	.ascii "B block 1:"
	.db 0x00
___str_350:
	.ascii "Last record:"
	.db 0x00
___str_351:
	.ascii "Past the end (expect empty, 0):"
	.db 0x00
___str_352:
	.ascii "page 2 still overlay A? (1=yes):"
	.db 0x00
___str_353:
	.ascii "All records read, frames:"
	.db 0x00
___str_354:
	.ascii "byte sum mod 65536 (expect 51036):"
	.db 0x00
___str_355:
	.ascii "non-empty / longest:"
	.db 0x00
___str_356:
	.ascii "sets OK"
	.db 0x00
___str_357:
	.ascii "sets BAD"
	.db 0x00
___str_358:
	.ascii "hinged mouthmouthhinge"
	.db 0x5c
	.db 0x00
___str_359:
	.ascii "set ops OK"
	.db 0x00
___str_360:
	.ascii "set ops BAD"
	.db 0x00
___str_361:
	.ascii "A returned (hex):"
	.db 0x00
___str_362:
	.ascii "B returned (hex):"
	.db 0x00
___str_363:
	.ascii "DONE"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
