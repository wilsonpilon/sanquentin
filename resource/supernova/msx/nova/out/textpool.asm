;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module textpool
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Page2Set
	.globl _DOSMapper_Alloc
	.globl _DOS_ReadHandle
	.globl _DOS_CloseHandle
	.globl _DOS_OpenHandle
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
	.globl _TextPool_Load
	.globl _TextPool_Read
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
;./../textpool.c:21: static void Decode(const u8* src, char* dst) __naked
;	---------------------------------
; Function Decode
; ---------------------------------
_Decode:
;./../textpool.c:54: __endasm;
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
;./../textpool.c:55: }
;./../textpool.c:57: static u16 ReadFileLen(const char* name, void* dst, u16 size)
;	---------------------------------
; Function ReadFileLen
; ---------------------------------
_ReadFileLen:
;./../textpool.c:59: u8 f = DOS_OpenHandle(name, O_RDONLY);
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_DOS_OpenHandle
	ld	c, a
	pop	de
;./../textpool.c:60: if (g_DOS_LastError)
	ld	a, (_g_DOS_LastError+0)
	or	a, a
	jr	z, 00102$
;./../textpool.c:61: return 0;
	ld	de, #0x0000
	jr	00103$
00102$:
;./../textpool.c:62: u16 n = DOS_ReadHandle(f, dst, size);
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
;./../textpool.c:63: DOS_CloseHandle(f);
	push	de
	ld	a, c
	call	_DOS_CloseHandle
	pop	de
;./../textpool.c:64: return n;
00103$:
;./../textpool.c:65: }
	pop	hl
	pop	af
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
;./../textpool.c:67: static bool ReadFile(const char* name, void* dst, u16 size)
;	---------------------------------
; Function ReadFile
; ---------------------------------
_ReadFile:
;./../textpool.c:69: return ReadFileLen(name, dst, size) != 0;
	ld	iy, #2
	add	iy, sp
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	push	bc
	call	_ReadFileLen
	ld	a, d
	or	a, e
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
;./../textpool.c:70: }
	pop	hl
	pop	bc
	jp	(hl)
;./../textpool.c:72: bool TextPool_Load()
;	---------------------------------
; Function TextPool_Load
; ---------------------------------
_TextPool_Load::
	call	___sdcc_enter_ix
	ld	hl, #-58
	add	hl, sp
	ld	sp, hl
;./../textpool.c:76: if (!ReadFile("TXT.IDX", idx, sizeof(idx)))
	ld	hl, #0x0025
	push	hl
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #___str_2
	call	_ReadFile
	ld	-1 (ix), a
;./../textpool.c:77: return false;
	or	a,a
	jp	z, 00121$
;./../textpool.c:78: tokLen = ReadFileLen("TXT.TOK", g_Scratch, sizeof(g_Scratch));
	ld	hl, #0x0578
	push	hl
	ld	de, #_g_Scratch
	ld	hl, #___str_3
	call	_ReadFileLen
;./../textpool.c:79: if (tokLen <= 512 || tokLen - 512 > TOK_BUF_SIZE)
	xor	a, a
	cp	a, e
	ld	a, #0x02
	sbc	a, d
	jr	nc, 00103$
	ld	c, e
	ld	a, d
	add	a, #0xfe
	ld	b, a
	ld	a, #0xbc
	cp	a, c
	ld	a, #0x02
	sbc	a, b
	jr	nc, 00104$
00103$:
;./../textpool.c:80: return false;
	xor	a, a
	jp	00121$
00104$:
;./../textpool.c:81: Mem_Copy(g_Scratch + 512, g_TokBuf, tokLen - 512);
	ld	de, #_g_TokBuf
	ld	hl, #(_g_Scratch + 512)
	ld	a, b
	or	a, c
	jr	z, 00204$
	ldir
00204$:
;./../textpool.c:82: for (u16 c = 0; c < 256; c++)
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00115$:
	ld	a, -1 (ix)
	sub	a, #0x01
	jp	nc, 00108$
;./../textpool.c:84: u16 p = ((const u16*)g_Scratch)[c];
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a, #<(_g_Scratch)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_Scratch)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
;./../textpool.c:85: if (p)
	ld	-5 (ix), a
	or	a, -6 (ix)
	jr	z, 00107$
;./../textpool.c:86: p = p - 512 + (u16)g_TokBuf;
	ld	a, -6 (ix)
	add	a, #0x00
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xfe
	ld	-3 (ix), a
	ld	de, #_g_TokBuf
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
00107$:
;./../textpool.c:87: g_TokHi[c] = p >> 8;
	ld	bc, #_g_TokHi+0
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, bc
	ld	a, -5 (ix)
	ld	(hl), a
;./../textpool.c:88: g_TokLo[c] = p & 0xFF;
	ld	bc, #_g_TokLo+0
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, bc
	ld	a, -6 (ix)
	ld	(hl), a
;./../textpool.c:82: for (u16 c = 0; c < 256; c++)
	inc	-2 (ix)
	jp	nz, 00115$
	inc	-1 (ix)
	jp	00115$
00108$:
;./../textpool.c:90: g_PoolCount = idx[0];
	ld	a, -58 (ix)
	ld	(#_g_PoolCount), a
;./../textpool.c:91: if (g_PoolCount > TXT_MAXPOOLS)
	ld	a, #0x0c
	ld	hl, #_g_PoolCount
	sub	a, (hl)
	jr	nc, 00110$
;./../textpool.c:92: return false;
	xor	a, a
	jp	00121$
00110$:
;./../textpool.c:94: char name[] = "TXT0.BIN";
	ld	-21 (ix), #0x54
	ld	-20 (ix), #0x58
	ld	-19 (ix), #0x54
	ld	-18 (ix), #0x30
	ld	-17 (ix), #0x2e
	ld	-16 (ix), #0x42
	ld	-15 (ix), #0x49
	ld	-14 (ix), #0x4e
	ld	-13 (ix), #0x00
;./../textpool.c:95: u8 save = g_Page2;
	ld	a, (_g_Page2+0)
	ld	-10 (ix), a
;./../textpool.c:96: bool ok = true;
	ld	-2 (ix), #0x01
;./../textpool.c:97: for (u8 i = 0; i < g_PoolCount && ok; i++)
	ld	-1 (ix), #0x00
00119$:
	ld	a, -1 (ix)
	ld	hl, #_g_PoolCount
	sub	a, (hl)
	jp	nc, 00113$
	ld	a, -2 (ix)
	or	a, a
	jp	z, 00113$
;./../textpool.c:99: g_PoolFirst[i] = idx[1 + 2 * i] | (idx[2 + 2 * i] << 8);
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
;./../textpool.c:101: if (!DOSMapper_Alloc(DOS_ALLOC_USER, DOS_SEGSLOT_PRIM, &seg))
	ld	hl, #46
	add	hl, sp
	push	hl
	xor	a, a
	ld	l, a
	call	_DOSMapper_Alloc
	or	a, a
	jr	nz, 00112$
;./../textpool.c:103: ok = false;
	ld	-2 (ix), #0x00
;./../textpool.c:104: break;
	jr	00113$
00112$:
;./../textpool.c:106: g_PoolSeg[i] = seg.Number;
	ld	a, #<(_g_PoolSeg)
	add	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, #>(_g_PoolSeg)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, -12 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
;./../textpool.c:107: name[3] = '0' + i;
	ld	a, -1 (ix)
	add	a, #0x30
	ld	-18 (ix), a
;./../textpool.c:108: Page2Set(seg.Number);
	ld	a, -12 (ix)
	call	_Page2Set
;./../textpool.c:109: ok = ReadFile(name, (void*)POOL_ADDR, 16384);
	ld	hl, #0x4000
	push	hl
	ld	de, #0x8000
	ld	hl, #39
	add	hl, sp
	call	_ReadFile
	ld	-2 (ix), a
;./../textpool.c:97: for (u8 i = 0; i < g_PoolCount && ok; i++)
	inc	-1 (ix)
	jp	00119$
00113$:
;./../textpool.c:111: Page2Set(save);
	ld	a, -10 (ix)
	call	_Page2Set
;./../textpool.c:112: return ok;
	ld	a, -2 (ix)
00121$:
;./../textpool.c:113: }
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "TXT.IDX"
	.db 0x00
___str_3:
	.ascii "TXT.TOK"
	.db 0x00
;./../textpool.c:115: u16 TextPool_Read(u16 id, char* dst)
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
;./../textpool.c:117: u8 p = g_PoolCount;
	ld	a, (_g_PoolCount)
	ld	e, a
;./../textpool.c:118: while (p && id < g_PoolFirst[--p]) {}
00102$:
	ld	a, e
	or	a, a
	jr	z, 00104$
	dec	e
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	push	de
	ld	de, #_g_PoolFirst
	add	hl, de
	pop	de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, -2 (ix)
	sub	a, l
	ld	a, -1 (ix)
	sbc	a, h
	jr	c, 00102$
00104$:
;./../textpool.c:120: u8 save = g_Page2;
	ld	a, (_g_Page2+0)
	ld	-5 (ix), a
;./../textpool.c:121: Page2Set(g_PoolSeg[p]);
	ld	hl, #_g_PoolSeg
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
	push	bc
	push	de
	call	_Page2Set
	pop	de
	pop	bc
;./../textpool.c:122: u16 i = id - g_PoolFirst[p];
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
;./../textpool.c:123: u16 n = 0;
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;./../textpool.c:124: if (i < *(const u16*)POOL_ADDR)
	ld	hl, (#0x8000)
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	nc, 00106$
;./../textpool.c:126: u16 off = ((const u16*)POOL_ADDR)[1 + i];
	inc	de
	ex	de, hl
	add	hl, hl
	ld	de, #0x8000
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;./../textpool.c:127: const u8* r = (const u8*)(POOL_ADDR + off);
	ld	iy, #0x8000
	add	iy, de
;./../textpool.c:128: n = *(const u16*)r;
	ld	a, 0 (iy)
	ld	-4 (ix), a
	ld	a, 1 (iy)
	ld	-3 (ix), a
;./../textpool.c:129: r += 2;
	push	iy
	pop	hl
	inc	hl
	inc	hl
;./../textpool.c:130: Decode(r, dst);
	ld	e, c
	ld	d, b
	call	_Decode
	jr	00107$
00106$:
;./../textpool.c:133: dst[0] = 0;
	xor	a, a
	ld	(bc), a
00107$:
;./../textpool.c:134: Page2Set(save);
	ld	a, -5 (ix)
	call	_Page2Set
;./../textpool.c:135: return n;
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;./../textpool.c:136: }
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
