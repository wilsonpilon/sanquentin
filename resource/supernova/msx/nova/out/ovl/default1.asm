;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module default1
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Describe
	.globl _Crazy
	.globl _Van
	.globl _Restore
	.globl _Save
	.globl _RB2
	.globl _RB
	.globl _RR
	.globl _RS
	.globl _RL
	.globl _WrFN
	.globl _Up
	.globl _Walls
	.globl _RegionSoundOn
	.globl _Pause
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
	.globl _Wherey
	.globl _Gotoxy
	.globl _Wln
	.globl _WrNum
	.globl _Wr
	.globl _UpCase
	.globl _StrEq
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
	.globl _Default0
	.globl _Default1
	.globl _Default2
	.globl _Default3
	.globl _Default4
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
;E:\supernova\msx\game\default1.c:4: void Default0(void)
;	---------------------------------
; Function Default0
; ---------------------------------
_Default0::
;E:\supernova\msx\game\default1.c:6: switch (Vb)
	ld	a, (_Vb)
	dec	a
	jr	z, 00108$
	ld	a, (_Vb)
	cp	a, #0x02
	jr	z, 00108$
	cp	a, #0x03
	jr	z, 00108$
	cp	a, #0x04
	jr	z, 00108$
	cp	a, #0x05
	jr	z, 00108$
	cp	a, #0x06
	jr	z, 00108$
	cp	a, #0x07
	jr	z, 00108$
	cp	a, #0x08
	jr	z, 00108$
	cp	a, #0x1e
	jr	z, 00123$
	sub	a, #0x52
	jp	z, _Save
	ld	a, (_Vb)
	sub	a, #0x57
	jp	z, _Restore
	ret
;E:\supernova\msx\game\default1.c:9: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
00108$:
;E:\supernova\msx\game\default1.c:10: if (IN_RANGE(Prm, 14, 19)) RL(26);
	ld	a, (_Prm+0)
	sub	a, #0x0e
	jr	c, 00120$
	ld	a, #0x13
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00120$
	ld	hl, #0x001a
	jp	_RL
00120$:
;E:\supernova\msx\game\default1.c:11: else if (Prm == 21) RL(27);
	ld	a, (_Prm)
	sub	a, #0x15
	jr	nz, 00117$
	ld	hl, #0x001b
	jp	_RL
00117$:
;E:\supernova\msx\game\default1.c:12: else if (IN_RANGE(Prm, 42, 50)) RL(279);
	ld	a, (_Prm+0)
	sub	a, #0x2a
	jr	c, 00113$
	ld	a, #0x32
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00113$
	ld	hl, #0x0117
	jp	_RL
00113$:
;E:\supernova\msx\game\default1.c:13: else if (Prm > 7) { Wr("There is not a path leading "); Up(g_Dir[Vb]); Wr("."); Wln(); }
	ld	a, #0x07
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nc, 00110$
	ld	hl, #___str_1
	call	_Wr
	ld	bc, #_g_Dir+0
	ld	a, (_Vb)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_Up
	ld	hl, #___str_2
	call	_Wr
	jp	_Wln
00110$:
;E:\supernova\msx\game\default1.c:14: else { Wr("There is not passage in that direction."); Wln(); }
	ld	hl, #___str_3
	call	_Wr
;E:\supernova\msx\game\default1.c:15: break;
	jp	_Wln
;E:\supernova\msx\game\default1.c:18: case 30:
00123$:
;E:\supernova\msx\game\default1.c:19: SET_DEL(Brief, Prm); Describe(Prm);
	ld	de, #_Brief+0
	ld	a, (_Prm)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00297$:
	sra	h
	rr	l
	djnz	00297$
	add	hl, de
	ld	c, (hl)
	ld	a, (_Prm+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00299$
00298$:
	add	a, a
00299$:
	djnz	00298$
	cpl
	and	a, c
	ld	(hl), a
	ld	a, (_Prm)
	call	_Describe
;E:\supernova\msx\game\default1.c:20: if (Prm == 56 && T[17] > 4) { RS(114); RS(115); Pause(); }
	ld	a, (_Prm)
	sub	a, #0x38
	ret	nz
	ld	hl, (#(_T + 34) + 0)
	ld	a, #0x04
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00302$
	xor	a, #0x80
00302$:
	ret	p
	ld	hl, #0x0072
	call	_RS
	ld	hl, #0x0073
	call	_RS
;E:\supernova\msx\game\default1.c:21: break;
;E:\supernova\msx\game\default1.c:23: case 82: Save(); break;       // SAVE
;E:\supernova\msx\game\default1.c:24: case 87: Restore(); break;    // RESTORE
;E:\supernova\msx\game\default1.c:25: }
;E:\supernova\msx\game\default1.c:26: }
	jp	_Pause
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
___str_1:
	.ascii "There is not a path leading "
	.db 0x00
___str_2:
	.ascii "."
	.db 0x00
___str_3:
	.ascii "There is not passage in that direction."
	.db 0x00
;E:\supernova\msx\game\default1.c:28: static void DropIt(void)
;	---------------------------------
; Function DropIt
; ---------------------------------
_DropIt:
;E:\supernova\msx\game\default1.c:30: WrFN(o); Wr(":  ");
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_4
	call	_Wr
;E:\supernova\msx\game\default1.c:31: if (IN29(Wear, o)) { Wr("First you must remove the "); WrFN(o); Wr("."); Wln(); }
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00102$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00102$
	ld	de, #_Wear+0
	ld	a, (_o+0)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00132$:
	sra	h
	rr	l
	djnz	00132$
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00134$
00133$:
	srl	a
00134$:
	djnz	00133$
	rrca
	jr	nc, 00102$
	ld	hl, #___str_5
	call	_Wr
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_6
	call	_Wr
	jp	_Wln
00102$:
;E:\supernova\msx\game\default1.c:32: else { Wr("Dropped."); Wln(); SET_DEL(Inv, o); R[o] = Prm; }
	ld	hl, #___str_7
	call	_Wr
	call	_Wln
	ld	de, #_Inv+0
	ld	a, (_o)
	ld	l, a
	ld	h, #0x00
	dec	hl
	ld	b, #0x03
00136$:
	sra	h
	rr	l
	djnz	00136$
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00138$
00137$:
	add	a, a
00138$:
	djnz	00137$
	cpl
	and	a, c
	ld	(hl), a
	ld	bc, #_R+0
	ld	a, (_o)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, (_Prm)
	ld	(hl), a
;E:\supernova\msx\game\default1.c:33: }
	ret
___str_4:
	.ascii ":  "
	.db 0x00
___str_5:
	.ascii "First you must remove the "
	.db 0x00
___str_6:
	.ascii "."
	.db 0x00
___str_7:
	.ascii "Dropped."
	.db 0x00
;E:\supernova\msx\game\default1.c:35: void Default1(void)
;	---------------------------------
; Function Default1
; ---------------------------------
_Default1::
;E:\supernova\msx\game\default1.c:37: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x10
	jr	z, 00101$
	cp	a, #0x11
	jp	z, 00146$
	sub	a, #0x12
	jp	z, 00127$
	ret
;E:\supernova\msx\game\default1.c:40: case 16:
00101$:
;E:\supernova\msx\game\default1.c:41: if (!SetEmpty(Inv, 4))
	ld	a, #0x04
	push	af
	inc	sp
	ld	hl, #_Inv
	call	_SetEmpty
	or	a, a
	jp	nz, 00125$
;E:\supernova\msx\game\default1.c:43: Wr("You have in your possession..."); Wln();
	ld	hl, #___str_8
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default1.c:44: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00154$:
;E:\supernova\msx\game\default1.c:45: if (IN29(Inv, o))
	ld	a, (_o+0)
	sub	a, #0x01
	jp	c, 00155$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	c, 00155$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00463$:
	sra	d
	rr	e
	djnz	00463$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00465$
00464$:
	srl	a
00465$:
	djnz	00464$
	rrca
	jp	nc, 00155$
;E:\supernova\msx\game\default1.c:47: if (o == 6) { Wr("  some "); WrFN(o); } else { Wr("  a "); WrFN(o); }
	ld	a, (_o)
	sub	a, #0x06
	jr	nz, 00103$
	ld	hl, #___str_9
	call	_Wr
	ld	a, (_o)
	call	_WrFN
	jr	00104$
00103$:
	ld	hl, #___str_10
	call	_Wr
	ld	a, (_o)
	call	_WrFN
00104$:
;E:\supernova\msx\game\default1.c:48: if (IN29(Wear, o)) Wr("  (being worn)");
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00106$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00106$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00469$:
	sra	d
	rr	e
	djnz	00469$
	ld	hl, #_Wear
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00471$
00470$:
	srl	a
00471$:
	djnz	00470$
	rrca
	jr	nc, 00106$
	ld	hl, #___str_11
	call	_Wr
00106$:
;E:\supernova\msx\game\default1.c:49: switch (o)
	ld	a, (_o)
	cp	a, #0x05
	jr	z, 00109$
	cp	a, #0x07
	jr	z, 00112$
	sub	a, #0x1d
	jr	z, 00115$
	jr	00118$
;E:\supernova\msx\game\default1.c:51: case 5: if (SatchCon != Null) Wr("  (contains something)"); break;
00109$:
	ld	a, (_SatchCon+0)
	or	a, a
	jr	z, 00118$
	ld	hl, #___str_12
	call	_Wr
	jr	00118$
;E:\supernova\msx\game\default1.c:52: case 7: if (HolstCon != Null) Wr("  (contains something)"); break;
00112$:
	ld	a, (_HolstCon+0)
	or	a, a
	jr	z, 00118$
	ld	hl, #___str_12
	call	_Wr
	jr	00118$
;E:\supernova\msx\game\default1.c:53: case 29: if (MugCon != Null) Wr("  (has something in it)"); break;
00115$:
	ld	a, (_MugCon+0)
	or	a, a
	jr	z, 00118$
	ld	hl, #___str_13
	call	_Wr
;E:\supernova\msx\game\default1.c:54: }
00118$:
;E:\supernova\msx\game\default1.c:55: Wln();
	call	_Wln
00155$:
;E:\supernova\msx\game\default1.c:44: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00154$
	ret
00125$:
;E:\supernova\msx\game\default1.c:58: else RL(28);
;E:\supernova\msx\game\default1.c:59: break;
	ld	hl, #0x001c
	jp	_RL
;E:\supernova\msx\game\default1.c:62: case 18:
00127$:
;E:\supernova\msx\game\default1.c:63: if (!SET_IN(NounSet, 30))
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	jr	c, 00144$
;E:\supernova\msx\game\default1.c:65: for (o = 1; o <= NMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00156$:
;E:\supernova\msx\game\default1.c:66: if (SET_IN(NounSet, o))
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00476$:
	sra	d
	rr	e
	djnz	00476$
	ld	hl, #_NounSet
	add	hl, de
	ld	l, (hl)
;E:\supernova\msx\game\default1.c:45: if (IN29(Inv, o))
	ld	a, (_o+0)
;E:\supernova\msx\game\default1.c:66: if (SET_IN(NounSet, o))
	dec	a
	and	a, #0x07
	ld	c, a
	ld	b, c
	ld	a, l
	inc	b
	jr	00478$
00477$:
	srl	a
00478$:
	djnz	00477$
	rrca
	jr	nc, 00157$
;E:\supernova\msx\game\default1.c:68: if (IN29(Inv, o)) DropIt();
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00129$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00129$
	ld	hl, #_Inv
	add	hl, de
	ld	a, (hl)
	inc	c
	jr	00481$
00480$:
	srl	a
00481$:
	dec	c
	jr	nz, 00480$
	rrca
	jr	nc, 00129$
	call	_DropIt
	jr	00157$
00129$:
;E:\supernova\msx\game\default1.c:69: else { Wr("You don't have the "); WrFN(o); Wr("."); Wln(); }
	ld	hl, #___str_14
	call	_Wr
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_15
	call	_Wr
	call	_Wln
00157$:
;E:\supernova\msx\game\default1.c:65: for (o = 1; o <= NMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x85
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00156$
	ret
00144$:
;E:\supernova\msx\game\default1.c:74: Min(17);   // DROP ALL
	ld	a, #0x11
	call	_Min
;E:\supernova\msx\game\default1.c:75: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00158$:
;E:\supernova\msx\game\default1.c:76: if (IN29(Inv, o)) { Add(17); DropIt(); }
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00159$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00159$
	ld	a, (_o+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00483$:
	sra	d
	rr	e
	djnz	00483$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00485$
00484$:
	srl	a
00485$:
	djnz	00484$
	rrca
	jr	nc, 00159$
	ld	a, #0x11
	call	_Add
	call	_DropIt
00159$:
;E:\supernova\msx\game\default1.c:75: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00158$
;E:\supernova\msx\game\default1.c:77: if (!En(17)) RL(303);
	ld	a, #0x11
	call	_En
	or	a, a
	ret	nz
;E:\supernova\msx\game\default1.c:79: break;
	ld	hl, #0x012f
	jp	_RL
;E:\supernova\msx\game\default1.c:82: case 17:
00146$:
;E:\supernova\msx\game\default1.c:83: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00160$:
;E:\supernova\msx\game\default1.c:84: if (IN29(Inv, o) && !SET_IN(NounSet, o)) DropIt();
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00161$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00161$
	ld	a, (_o+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00487$:
	sra	d
	rr	e
	djnz	00487$
	ld	hl, #_Inv
	add	hl, de
	ld	l, (hl)
;E:\supernova\msx\game\default1.c:45: if (IN29(Inv, o))
	ld	a, (_o+0)
;E:\supernova\msx\game\default1.c:66: if (SET_IN(NounSet, o))
	dec	a
	and	a, #0x07
	ld	c, a
;E:\supernova\msx\game\default1.c:84: if (IN29(Inv, o) && !SET_IN(NounSet, o)) DropIt();
	ld	b, c
	ld	a, l
	inc	b
	jr	00489$
00488$:
	srl	a
00489$:
	djnz	00488$
	rrca
	jr	nc, 00161$
	ld	hl, #_NounSet
	add	hl, de
	ld	a, (hl)
	inc	c
	jr	00492$
00491$:
	srl	a
00492$:
	dec	c
	jr	nz, 00491$
	rrca
	jr	c, 00161$
	call	_DropIt
00161$:
;E:\supernova\msx\game\default1.c:83: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	nc, 00160$
;E:\supernova\msx\game\default1.c:86: }
;E:\supernova\msx\game\default1.c:87: }
	ret
___str_8:
	.ascii "You have in your possession..."
	.db 0x00
___str_9:
	.ascii "  some "
	.db 0x00
___str_10:
	.ascii "  a "
	.db 0x00
___str_11:
	.ascii "  (being worn)"
	.db 0x00
___str_12:
	.ascii "  (contains something)"
	.db 0x00
___str_13:
	.ascii "  (has something in it)"
	.db 0x00
___str_14:
	.ascii "You don't have the "
	.db 0x00
___str_15:
	.ascii "."
	.db 0x00
;E:\supernova\msx\game\default1.c:89: void Default2(void)
;	---------------------------------
; Function Default2
; ---------------------------------
_Default2::
;E:\supernova\msx\game\default1.c:91: switch (Vb)
	ld	a, (_Vb)
	sub	a, #0x09
	ld	a, #0x01
	jr	z, 00649$
	xor	a, a
00649$:
	ld	c, a
	or	a, a
	jp	nz, 00167$
	ld	a, (_Vb)
	sub	a, #0x0a
	jp	z, 00186$
	ld	a, (_Vb)
	sub	a, #0x0b
	jp	z, 00191$
	ld	a, (_Vb)
	sub	a, #0x0d
	jp	z, 00191$
	ld	a, (_Vb)
	sub	a, #0x0f
	jp	z, 00192$
	ld	a, (_Vb)
	sub	a, #0x20
	jp	z, 00162$
	ld	a, (_Vb)
	sub	a, #0x23
	jp	z, 00141$
	ld	a, (_Vb)
	sub	a, #0x33
	jp	z, 00167$
	ld	a, (_Vb)
	sub	a, #0x3e
	jp	z, 00109$
	ld	a, (_Vb)
	sub	a, #0x4d
	jr	z, 00101$
	ld	a, (_Vb)
	sub	a, #0x4f
	jr	z, 00105$
	ret
;E:\supernova\msx\game\default1.c:94: case 77:
00101$:
;E:\supernova\msx\game\default1.c:95: if (!En(1)) { Add(1); RL(14); }
	ld	a, #0x01
	call	_En
	or	a, a
	jr	nz, 00103$
	ld	a, #0x01
	call	_Add
	ld	hl, #0x000e
	jp	_RL
00103$:
;E:\supernova\msx\game\default1.c:96: else { Min(1); RL(15); }
	ld	a, #0x01
	call	_Min
;E:\supernova\msx\game\default1.c:97: break;
	ld	hl, #0x000f
	jp	_RL
;E:\supernova\msx\game\default1.c:100: case 79:
00105$:
;E:\supernova\msx\game\default1.c:101: Bor(1, 0);
	ld	l, #0x00
	ld	a, #0x01
	call	_Bor
;E:\supernova\msx\game\default1.c:102: Wr("In "); WrNum(Tic); Wr(" moves you scored "); WrNum(Sc); Wr(" out of a possible 1000 points."); Wln();
	ld	hl, #___str_16
	call	_Wr
	ld	hl, (_Tic)
	call	_WrNum
	ld	hl, #___str_17
	call	_Wr
	ld	hl, (_Sc)
	call	_WrNum
	ld	hl, #___str_18
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default1.c:103: Wr("If you want to continue this game at a later date you should first use the"); Wln();
	ld	hl, #___str_19
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default1.c:104: Wr("SAVE command."); Wln();
	ld	hl, #___str_20
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default1.c:105: Wr("Are you still sure you want to QUIT?  ");
	ld	hl, #___str_21
	call	_Wr
;E:\supernova\msx\game\default1.c:106: Cur(2);
	ld	a, #0x02
	call	_Cur
;E:\supernova\msx\game\default1.c:107: CFlag = (char)(GetKey() & 0xFF);
	call	_GetKey
	ld	hl, #_CFlag
	ld	(hl), e
;E:\supernova\msx\game\default1.c:108: if (UpCase(CFlag) == 'Y')
	ld	a, (_CFlag)
	call	_UpCase
	cp	a, #0x59
	jr	nz, 00107$
;E:\supernova\msx\game\default1.c:110: RL(12); Delay(2200);
	ld	hl, #0x000c
	call	_RL
	ld	hl, #0x0898
	call	_Delay
;E:\supernova\msx\game\default1.c:111: Window(1, 1, 80, 25); NoSound(); ClrScr(); Cur(1); Bor(0, 0); Gotoxy(2, 2);
	ld	hl, #0x1950
	push	hl
	ld	a,#0x01
	ld	l,a
	call	_Window
	call	_NoSound
	call	_ClrScr
	ld	a, #0x01
	call	_Cur
	xor	a, a
	ld	l, a
	call	_Bor
	ld	a,#0x02
	ld	l,a
	call	_Gotoxy
;E:\supernova\msx\game\default1.c:112: Col(31, 16); Bak(4, 7); Wr("Good-bye!"); Wln(); Halt();
	ld	l, #0x10
	ld	a, #0x1f
	call	_Col
	ld	l, #0x07
	ld	a, #0x04
	call	_Bak
	ld	hl, #___str_22
	call	_Wr
	call	_Wln
;E:\supernova\MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;E:\supernova\msx\game\default1.c:112: Col(31, 16); Bak(4, 7); Wr("Good-bye!"); Wln(); Halt();
	jr	00108$
00107$:
;E:\supernova\msx\game\default1.c:114: else RL(13);
	ld	hl, #0x000d
	call	_RL
00108$:
;E:\supernova\msx\game\default1.c:115: Bor(0, 0);
	xor	a, a
;E:\supernova\msx\game\default1.c:116: break;
	ld	l, a
	jp	_Bor
;E:\supernova\msx\game\default1.c:119: case 62:
00109$:
;E:\supernova\msx\game\default1.c:120: if (T[5] > 32 && T[8] < 1)
	ld	hl, (#(_T + 10) + 0)
	ld	a, #0x20
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00662$
	xor	a, #0x80
00662$:
	jp	p, 00138$
	ld	bc, (#_T + 16)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00138$
;E:\supernova\msx\game\default1.c:122: if (N1 == 19 || N1 == 27 || N1 == 49 || N1 == 69 || N1 == 80 || N1 == 113)
	ld	a, (_N1)
	sub	a, #0x13
	jr	z, 00110$
	ld	a, (_N1)
	sub	a, #0x1b
	jr	z, 00110$
	ld	a, (_N1)
	sub	a, #0x31
	jr	z, 00110$
	ld	a, (_N1)
	sub	a, #0x45
	jr	z, 00110$
	ld	a, (_N1)
	sub	a, #0x50
	jr	z, 00110$
	ld	a, (_N1)
	sub	a, #0x71
	jr	nz, 00111$
00110$:
;E:\supernova\msx\game\default1.c:124: T[2] = 6; Add(7);
	ld	hl, #0x0006
	ld	((_T + 4)), hl
	ld	a, #0x07
	call	_Add
;E:\supernova\msx\game\default1.c:125: Wr("You lie down on the "); Wr(NStr); Wr(" and fall asleep within a few minutes."); Wln();
	ld	hl, #___str_23
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_24
	call	_Wr
	jp	_Wln
00111$:
;E:\supernova\msx\game\default1.c:127: else RL(16);
	ld	hl, #0x0010
	jp	_RL
00138$:
;E:\supernova\msx\game\default1.c:129: else if (N1 == 69 || N1 == 80)
	ld	a, (_N1)
	sub	a, #0x45
	jr	z, 00133$
	ld	a, (_N1)
	sub	a, #0x50
	jp	nz, 00134$
00133$:
;E:\supernova\msx\game\default1.c:131: T[5] = 230; SET_DEL(PStat, 5); Bor(0, 0); Add(7);
	ld	hl, #0x00e6
	ld	((_T + 10)), hl
	ld	bc, #_PStat+0
	ld	a, (bc)
	res	4, a
	ld	(bc), a
	xor	a, a
	ld	l, a
	call	_Bor
	ld	a, #0x07
	call	_Add
;E:\supernova\msx\game\default1.c:132: switch (N1)
	ld	a, (_N1)
	sub	a, #0x45
	jr	z, 00118$
	ld	a, (_N1)
	sub	a, #0x50
	jr	z, 00122$
	ret
;E:\supernova\msx\game\default1.c:134: case 69:
00118$:
;E:\supernova\msx\game\default1.c:135: if (T[8] < 1) { RS(41); Add(128); }
	ld	bc, (#_T + 16)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00120$
	ld	hl, #0x0029
	call	_RS
	ld	a, #0x80
	jp	_Add
00120$:
;E:\supernova\msx\game\default1.c:136: else { RS(42); Add(7); Add(10); }
	ld	hl, #0x002a
	call	_RS
	ld	a, #0x07
	call	_Add
;E:\supernova\msx\game\default1.c:137: break;
	ld	a, #0x0a
	jp	_Add
;E:\supernova\msx\game\default1.c:138: case 80:
00122$:
;E:\supernova\msx\game\default1.c:139: if (T[8] < 1)
	ld	bc, (#_T + 16)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00130$
;E:\supernova\msx\game\default1.c:141: if (!En(18)) RS(218);
	ld	a, #0x12
	call	_En
	or	a, a
	jr	nz, 00127$
	ld	hl, #0x00da
	jp	_RS
00127$:
;E:\supernova\msx\game\default1.c:142: else switch (Rnd(2)) { case 0: RS(218); break; case 1: RS(219); break; }
	ld	hl, #0x0002
	call	_Rnd
	ld	a, d
	or	a, e
	jr	z, 00123$
	ld	a, e
	dec	a
	or	a, d
	jr	z, 00124$
	ret
00123$:
	ld	hl, #0x00da
	jp	_RS
00124$:
	ld	hl, #0x00db
	jp	_RS
00130$:
;E:\supernova\msx\game\default1.c:144: else { RS(220); Add(128); }
	ld	hl, #0x00dc
	call	_RS
;E:\supernova\msx\game\default1.c:146: }
	ld	a, #0x80
	jp	_Add
00134$:
;E:\supernova\msx\game\default1.c:148: else { Wr("The "); WrFN(N1); Wr(" is not a suitable place to sleep."); Wln(); }
	ld	hl, #___str_25
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_26
	call	_Wr
;E:\supernova\msx\game\default1.c:149: break;
	jp	_Wln
;E:\supernova\msx\game\default1.c:152: case 35:
00141$:
;E:\supernova\msx\game\default1.c:153: if (N1 == 16 || N1 == 32 || N1 == 35 || N1 == 49 || N1 == 54 || N1 == 69 || N1 == 71 || N1 == 80 ||
	ld	a, (_N1)
	sub	a, #0x10
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x20
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x23
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x31
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x36
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x45
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x47
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x50
	jr	z, 00148$
;E:\supernova\msx\game\default1.c:154: IN_RANGE(N1, 83, 86) || N1 == 98 || N1 == 110)
	ld	a, (_N1+0)
	sub	a, #0x53
	jr	c, 00160$
	ld	a, #0x56
	ld	hl, #_N1
	sub	a, (hl)
	jr	nc, 00148$
00160$:
	ld	a, (_N1)
	sub	a, #0x62
	jr	z, 00148$
	ld	a, (_N1)
	sub	a, #0x6e
	jr	nz, 00149$
00148$:
;E:\supernova\msx\game\default1.c:156: Add(7);
	ld	a, #0x07
	call	_Add
;E:\supernova\msx\game\default1.c:157: if (N1 == 69)
	ld	a, (_N1)
	sub	a, #0x45
	jr	nz, 00146$
;E:\supernova\msx\game\default1.c:159: if (T[8] < 1) { RS(41); Add(128); }
	ld	bc, (#_T + 16)
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	nc, 00143$
	ld	hl, #0x0029
	call	_RS
	ld	a, #0x80
	jp	_Add
00143$:
;E:\supernova\msx\game\default1.c:160: else { RS(42); T[5] = 160; SET_DEL(PStat, 5); Add(7); Add(10); }
	ld	hl, #0x002a
	call	_RS
	ld	hl, #0x00a0
	ld	((_T + 10)), hl
	ld	bc, #_PStat+0
	ld	a, (bc)
	res	4, a
	ld	(bc), a
	ld	a, #0x07
	call	_Add
	ld	a, #0x0a
	jp	_Add
00146$:
;E:\supernova\msx\game\default1.c:162: else { Wr("You sit down on the "); Wr(NStr); Wr("."); Wln(); }
	ld	hl, #___str_27
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_28
	call	_Wr
	jp	_Wln
00149$:
;E:\supernova\msx\game\default1.c:164: else RL(17);
;E:\supernova\msx\game\default1.c:165: break;
	ld	hl, #0x0011
	jp	_RL
;E:\supernova\msx\game\default1.c:168: case 32:
00162$:
;E:\supernova\msx\game\default1.c:169: if (En(7)) { Min(7); Min(2); Min(3); Min(19); T[6] = Null; RL(18); }
	ld	a, #0x07
	call	_En
	or	a, a
	jr	z, 00164$
	ld	a, #0x07
	call	_Min
	ld	a, #0x02
	call	_Min
	ld	a, #0x03
	call	_Min
	ld	a, #0x13
	call	_Min
	ld	hl, #0x0000
	ld	((_T + 12)), hl
	ld	l, #0x12
	jp	_RL
00164$:
;E:\supernova\msx\game\default1.c:170: else RL(19);
;E:\supernova\msx\game\default1.c:171: break;
	ld	hl, #0x0013
	jp	_RL
;E:\supernova\msx\game\default1.c:174: case 9: case 51:
00167$:
;E:\supernova\msx\game\default1.c:175: if (N1 == 32 || N1 == 35 || N1 == 54 || N1 == 68 || N1 == 71 || N1 == 80 || N1 == 81 ||
	ld	a, (_N1)
	sub	a, #0x20
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x23
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x36
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x44
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x47
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x50
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x51
	jr	z, 00171$
;E:\supernova\msx\game\default1.c:176: IN_RANGE(N1, 83, 86) || N1 == 89 || N1 == 98 || N1 == 112 || N1 == 125)
	ld	a, (_N1+0)
	sub	a, #0x53
	jr	c, 00182$
	ld	a, #0x56
	ld	hl, #_N1
	sub	a, (hl)
	jr	nc, 00171$
00182$:
	ld	a, (_N1)
	sub	a, #0x59
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x62
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x70
	jr	z, 00171$
	ld	a, (_N1)
	sub	a, #0x7d
	jr	nz, 00172$
00171$:
;E:\supernova\msx\game\default1.c:178: Add(8);
	ld	a, #0x08
	call	_Add
;E:\supernova\msx\game\default1.c:179: Wr("You manage to climb up the "); Wr(NStr); Wr("."); Wln();
	ld	hl, #___str_29
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_28
	call	_Wr
	jp	_Wln
00172$:
;E:\supernova\msx\game\default1.c:181: else if (Vb == 9) { Wr("There is not a path in that direction."); Wln(); }
	ld	a, c
	or	a, a
	jr	z, 00169$
	ld	hl, #___str_30
	call	_Wr
	jp	_Wln
00169$:
;E:\supernova\msx\game\default1.c:182: else RL(20);
;E:\supernova\msx\game\default1.c:183: break;
	ld	hl, #0x0014
	jp	_RL
;E:\supernova\msx\game\default1.c:186: case 10:
00186$:
;E:\supernova\msx\game\default1.c:187: if (En(8)) { Min(8); RL(21); }
	ld	a, #0x08
	call	_En
	or	a, a
	jr	z, 00188$
	ld	a, #0x08
	call	_Min
	ld	hl, #0x0015
	jp	_RL
00188$:
;E:\supernova\msx\game\default1.c:188: else { Wr("There is not a path in that direction."); Wln(); }
	ld	hl, #___str_30
	call	_Wr
;E:\supernova\msx\game\default1.c:189: break;
	jp	_Wln
;E:\supernova\msx\game\default1.c:192: case 11: case 13:
00191$:
;E:\supernova\msx\game\default1.c:193: Wr("Due to the multiple paths you will have to be more specific."); Wln();
	ld	hl, #___str_31
	call	_Wr
;E:\supernova\msx\game\default1.c:194: break;
	jp	_Wln
;E:\supernova\msx\game\default1.c:197: case 15:
00192$:
;E:\supernova\msx\game\default1.c:198: Wr("Time passes"); Wln(); y = Wherey();
	ld	hl, #___str_32
	call	_Wr
	call	_Wln
	call	_Wherey
	ld	(#_y), a
;E:\supernova\msx\game\default1.c:199: for (x = 1; x <= 6; x++) { Gotoxy(11 + x, y - 1); Wr("."); Sound(x * 99); Delay(30); }
	ld	hl, #_x
	ld	(hl), #0x01
00196$:
	ld	a, (_y)
	ld	l, a
	dec	l
	ld	a, (_x+0)
	add	a, #0x0b
	call	_Gotoxy
	ld	hl, #___str_28
	call	_Wr
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
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	call	_Sound
	ld	hl, #0x001e
	call	_Delay
	ld	hl, #_x
	inc	(hl)
	ld	a, #0x06
	ld	hl, #_x
	sub	a, (hl)
	jr	nc, 00196$
;E:\supernova\msx\game\default1.c:200: NoSound(); Wln();
	call	_NoSound
	call	_Wln
;E:\supernova\msx\game\default1.c:201: RegionSoundOn();
;E:\supernova\msx\game\default1.c:203: }
;E:\supernova\msx\game\default1.c:204: }
	jp	_RegionSoundOn
___str_16:
	.ascii "In "
	.db 0x00
___str_17:
	.ascii " moves you scored "
	.db 0x00
___str_18:
	.ascii " out of a possible 1000 points."
	.db 0x00
___str_19:
	.ascii "If you want to continue this game at a later date you should"
	.ascii " first use the"
	.db 0x00
___str_20:
	.ascii "SAVE command."
	.db 0x00
___str_21:
	.ascii "Are you still sure you want to QUIT?  "
	.db 0x00
___str_22:
	.ascii "Good-bye!"
	.db 0x00
___str_23:
	.ascii "You lie down on the "
	.db 0x00
___str_24:
	.ascii " and fall asleep within a few minutes."
	.db 0x00
___str_25:
	.ascii "The "
	.db 0x00
___str_26:
	.ascii " is not a suitable place to sleep."
	.db 0x00
___str_27:
	.ascii "You sit down on the "
	.db 0x00
___str_28:
	.ascii "."
	.db 0x00
___str_29:
	.ascii "You manage to climb up the "
	.db 0x00
___str_30:
	.ascii "There is not a path in that direction."
	.db 0x00
___str_31:
	.ascii "Due to the multiple paths you will have to be more specific."
	.db 0x00
___str_32:
	.ascii "Time passes"
	.db 0x00
;E:\supernova\msx\game\default1.c:206: static void ExamineNothing(void)
;	---------------------------------
; Function ExamineNothing
; ---------------------------------
_ExamineNothing:
;E:\supernova\msx\game\default1.c:209: u16 r = Rnd(20);
	ld	hl, #0x0014
	call	_Rnd
	ld	c, e
	ld	b, d
;E:\supernova\msx\game\default1.c:210: if (r <= 6) { Wr("You can't find anything unusual about the "); WrFN(N1); Wr("."); Wln(); }
	ld	a, #0x06
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	c, 00108$
	ld	hl, #___str_33
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_34
	call	_Wr
	jp	_Wln
00108$:
;E:\supernova\msx\game\default1.c:211: else if (r <= 14) { Wr("You see nothing special about the "); WrFN(N1); Wr("."); Wln(); }
	ld	a, #0x0e
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	c, 00105$
	ld	hl, #___str_35
	call	_Wr
	ld	a, (_N1)
	call	_WrFN
	ld	hl, #___str_34
	call	_Wr
	jp	_Wln
00105$:
;E:\supernova\msx\game\default1.c:212: else if (r <= 17) { Wr("It looks like any other "); Wr(NStr); Wr(" you've ever seen."); Wln(); }
	ld	a, #0x11
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	c, 00102$
	ld	hl, #___str_36
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_37
	call	_Wr
	jp	_Wln
00102$:
;E:\supernova\msx\game\default1.c:213: else { Wr("It looks like an ordinary "); Wr(NStr); Wr("."); Wln(); }
	ld	hl, #___str_38
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_34
	call	_Wr
;E:\supernova\msx\game\default1.c:214: }
	jp	_Wln
___str_33:
	.ascii "You can't find anything unusual about the "
	.db 0x00
___str_34:
	.ascii "."
	.db 0x00
___str_35:
	.ascii "You see nothing special about the "
	.db 0x00
___str_36:
	.ascii "It looks like any other "
	.db 0x00
___str_37:
	.ascii " you've ever seen."
	.db 0x00
___str_38:
	.ascii "It looks like an ordinary "
	.db 0x00
;E:\supernova\msx\game\default1.c:216: void Default3(void)
;	---------------------------------
; Function Default3
; ---------------------------------
_Default3::
;E:\supernova\msx\game\default1.c:218: SFlag = 0;
	xor	a, a
	ld	(#_SFlag), a
;E:\supernova\msx\game\default1.c:219: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x1c
	jr	z, 00101$
	sub	a, #0x2f
	jp	z, 00198$
	ret
;E:\supernova\msx\game\default1.c:222: case 28:
00101$:
;E:\supernova\msx\game\default1.c:223: switch (N1)
	ld	a, (_N1)
	dec	a
	jp	z, 00102$
	ld	a, (_N1)
	cp	a, #0x02
	jp	z, 00106$
	cp	a, #0x03
	jp	z, 00107$
	cp	a, #0x04
	jp	z, 00108$
	cp	a, #0x05
	jp	z, 00109$
	cp	a, #0x06
	jp	z, 00115$
	cp	a, #0x07
	jp	z, 00121$
	cp	a, #0x08
	jp	z, 00125$
	cp	a, #0x09
	jp	z, 00126$
	cp	a, #0x0a
	jp	z, 00127$
	cp	a, #0x0b
	jp	z, 00128$
	cp	a, #0x0c
	jp	z, 00129$
	cp	a, #0x10
	jp	z, 00130$
	cp	a, #0x11
	jp	z, 00131$
	cp	a, #0x12
	jp	z, 00132$
	cp	a, #0x13
	jp	z, 00136$
	cp	a, #0x14
	jp	z, 00137$
	cp	a, #0x16
	jp	z, 00138$
	cp	a, #0x17
	jp	z, 00143$
	cp	a, #0x18
	jp	z, 00148$
	cp	a, #0x19
	jp	z, 00153$
	cp	a, #0x1a
	jp	z, 00158$
	cp	a, #0x1c
	jp	z, 00159$
	cp	a, #0x1d
	jp	z, 00166$
	cp	a, #0x2a
	jp	z, 00170$
	cp	a, #0x36
	jp	z, 00171$
	cp	a, #0x38
	jp	z, 00174$
	cp	a, #0x3e
	jp	z, 00178$
	cp	a, #0x63
	jp	z, 00184$
	cp	a, #0x67
	jp	z, 00185$
	cp	a, #0x71
	jp	z, 00192$
	cp	a, #0x7b
	jp	z, 00193$
	sub	a, #0x7c
	jp	z, 00194$
	jp	00195$
;E:\supernova\msx\game\default1.c:225: case 1: if (En(41)) RS(116); else { RS(116); RS(132); Score(5, 41); } break;
00102$:
	ld	a, #0x29
	call	_En
	or	a, a
	jr	z, 00104$
	ld	hl, #0x0074
	call	_RS
	jp	00195$
00104$:
	ld	hl, #0x0074
	call	_RS
	ld	hl, #0x0084
	call	_RS
	ld	de, #0x0029
	ld	hl, #0x0005
	call	_Score
	jp	00195$
;E:\supernova\msx\game\default1.c:226: case 2: RL(454); break;
00106$:
	ld	hl, #0x01c6
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:227: case 3: RL(45); break;
00107$:
	ld	hl, #0x002d
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:228: case 4: RL(294); break;
00108$:
	ld	hl, #0x0126
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:229: case 5:
00109$:
;E:\supernova\msx\game\default1.c:230: RL(105);
	ld	hl, #0x0069
	call	_RL
;E:\supernova\msx\game\default1.c:231: if (SatchCon != Null)
	ld	a, (_SatchCon+0)
	or	a, a
	jp	z, 00195$
;E:\supernova\msx\game\default1.c:233: if (SatchCon == 6) { Wr("The satchel contains "); WrFN(SatchCon); Wr("."); Wln(); }
	ld	a, (_SatchCon)
	sub	a, #0x06
	jr	nz, 00111$
	ld	hl, #___str_39
	call	_Wr
	ld	a, (_SatchCon)
	call	_WrFN
	ld	hl, #___str_40
	call	_Wr
	call	_Wln
	jp	00195$
00111$:
;E:\supernova\msx\game\default1.c:234: else { Wr("The satchel contains a "); WrFN(SatchCon); Wr("."); Wln(); }
	ld	hl, #___str_41
	call	_Wr
	ld	a, (_SatchCon)
	call	_WrFN
	ld	hl, #___str_40
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default1.c:236: break;
	jp	00195$
;E:\supernova\msx\game\default1.c:237: case 6:
00115$:
;E:\supernova\msx\game\default1.c:238: RL(54);
	ld	hl, #0x0036
	call	_RL
;E:\supernova\msx\game\default1.c:239: switch (FoodCon) { case 1: RL(55); break; case 2: RL(56); break; case 3: RL(57); break; case 4: RL(58); break; }
	ld	a, (_FoodCon)
	dec	a
	jr	z, 00116$
	ld	a, (_FoodCon)
	cp	a, #0x02
	jr	z, 00117$
	cp	a, #0x03
	jr	z, 00118$
	sub	a, #0x04
	jr	z, 00119$
	jp	00195$
00116$:
	ld	hl, #0x0037
	call	_RL
	jp	00195$
00117$:
	ld	hl, #0x0038
	call	_RL
	jp	00195$
00118$:
	ld	hl, #0x0039
	call	_RL
	jp	00195$
00119$:
	ld	hl, #0x003a
	call	_RL
;E:\supernova\msx\game\default1.c:240: break;
	jp	00195$
;E:\supernova\msx\game\default1.c:241: case 7:
00121$:
;E:\supernova\msx\game\default1.c:242: RL(579);
	ld	hl, #0x0243
	call	_RL
;E:\supernova\msx\game\default1.c:243: if (HolstCon == Null) RL(580);
	ld	a, (_HolstCon+0)
	or	a, a
	jr	nz, 00123$
	ld	hl, #0x0244
	call	_RL
	jp	00195$
00123$:
;E:\supernova\msx\game\default1.c:244: else { Wr("The gun strap contains a "); WrFN(HolstCon); Wr("."); Wln(); }
	ld	hl, #___str_42
	call	_Wr
	ld	a, (_HolstCon)
	call	_WrFN
	ld	hl, #___str_40
	call	_Wr
	call	_Wln
;E:\supernova\msx\game\default1.c:245: break;
	jp	00195$
;E:\supernova\msx\game\default1.c:246: case 8: RL(59); break;
00125$:
	ld	hl, #0x003b
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:247: case 9: RL(374); break;
00126$:
	ld	hl, #0x0176
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:248: case 10: RL(262); break;
00127$:
	ld	hl, #0x0106
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:249: case 11: RL(311); break;
00128$:
	ld	hl, #0x0137
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:250: case 12: RB2(6, 13); break;
00129$:
	ld	l, #0x0d
	ld	a, #0x06
	call	_RB2
	jp	00195$
;E:\supernova\msx\game\default1.c:251: case 16: RL(151); break;
00130$:
	ld	hl, #0x0097
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:252: case 17: RL(263); break;
00131$:
	ld	hl, #0x0107
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:253: case 18: if (En(34)) { Score(5, 116); RS(92); } else RL(267); break;
00132$:
	ld	a, #0x22
	call	_En
	or	a, a
	jr	z, 00134$
	ld	de, #0x0074
	ld	hl, #0x0005
	call	_Score
	ld	hl, #0x005c
	call	_RS
	jp	00195$
00134$:
	ld	hl, #0x010b
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:254: case 19: RB(12, 11); Pause(); break;
00136$:
	ld	l, #0x0b
	ld	a, #0x0c
	call	_RB
	call	_Pause
	jp	00195$
;E:\supernova\msx\game\default1.c:255: case 20: RL(372); break;
00137$:
	ld	hl, #0x0174
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:256: case 22: RL(527); if (IN29(Socket, 22)) RL(528); break;
00138$:
	ld	hl, #0x020f
	call	_RL
	ld	a, (#(_Socket + 2) + 0)
	rlca
	rlca
	rlca
	jp	nc, 00195$
	ld	hl, #0x0210
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:257: case 23: RL(529); if (IN29(Socket, 23)) RL(528); break;
00143$:
	ld	hl, #0x0211
	call	_RL
	ld	a, (#(_Socket + 2) + 0)
	rlca
	rlca
	jp	nc, 00195$
	ld	hl, #0x0210
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:258: case 24: RL(530); if (IN29(Socket, 24)) RL(528); break;
00148$:
	ld	hl, #0x0212
	call	_RL
	ld	a, (#(_Socket + 2) + 0)
	rlca
	jp	nc, 00195$
	ld	hl, #0x0210
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:259: case 25: RL(531); if (IN29(Socket, 25)) RL(528); break;
00153$:
	ld	hl, #0x0213
	call	_RL
	ld	a, (#(_Socket + 3) + 0)
	and	a, #0x01
	jp	z, 00195$
	ld	hl, #0x0210
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:260: case 26: RL(455); break;
00158$:
	ld	hl, #0x01c7
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:261: case 28: if (StrEq(NStr, "badge")) RL(406); else if (Md == 1) RL(407); else RL(408); break;
00159$:
	ld	de, #___str_43
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jr	z, 00164$
	ld	hl, #0x0196
	call	_RL
	jp	00195$
00164$:
	ld	a, (_Md)
	dec	a
	jr	nz, 00161$
	ld	hl, #0x0197
	call	_RL
	jp	00195$
00161$:
	ld	hl, #0x0198
	call	_RL
	jp	00195$
;E:\supernova\msx\game\default1.c:262: case 29:
00166$:
;E:\supernova\msx\game\default1.c:263: Wr("The mug is quite small.  ");
	ld	hl, #___str_44
	call	_Wr
;E:\supernova\msx\game\default1.c:264: if (MugCon == Null) RL(60); else RL(61);
	ld	a, (_MugCon+0)
	or	a, a
	jr	nz, 00168$
	ld	hl, #0x003c
	call	_RL
	jp	00195$
00168$:
	ld	hl, #0x003d
	call	_RL
;E:\supernova\msx\game\default1.c:265: break;
	jp	00195$
;E:\supernova\msx\game\default1.c:266: case 42: RS(195); RS(196); break;
00170$:
	ld	hl, #0x00c3
	call	_RS
	ld	hl, #0x00c4
	call	_RS
	jp	00195$
;E:\supernova\msx\game\default1.c:267: case 54: if (StrEq(NStr, "column")) { RS(195); RS(196); } break;
00171$:
	ld	de, #___str_45
	ld	hl, #_NStr
	call	_StrEq
	or	a, a
	jp	z, 00195$
	ld	hl, #0x00c3
	call	_RS
	ld	hl, #0x00c4
	call	_RS
	jp	00195$
;E:\supernova\msx\game\default1.c:268: case 56: RL(92); if (IN_RANGE(Prm, 81, 88)) RL(423); break;
00174$:
	ld	hl, #0x005c
	call	_RL
	ld	a, (_Prm+0)
	sub	a, #0x51
	jp	c, 00195$
	ld	a, #0x58
	ld	hl, #_Prm
	sub	a, (hl)
	jr	c, 00195$
	ld	hl, #0x01a7
	call	_RL
	jr	00195$
;E:\supernova\msx\game\default1.c:269: case 62:
00178$:
;E:\supernova\msx\game\default1.c:270: switch (Prm) { case 21: case 25: RS(15); break; case 22: case 24: RS(246); break; }
	ld	a, (_Prm)
	cp	a, #0x15
	jr	z, 00180$
	cp	a, #0x16
	jr	z, 00182$
	cp	a, #0x18
	jr	z, 00182$
	sub	a, #0x19
	jr	nz, 00195$
00180$:
	ld	hl, #0x000f
	call	_RS
	jr	00195$
00182$:
	ld	hl, #0x00f6
	call	_RS
;E:\supernova\msx\game\default1.c:271: break;
	jr	00195$
;E:\supernova\msx\game\default1.c:272: case 99: RL(63); break;
00184$:
	ld	hl, #0x003f
	call	_RL
	jr	00195$
;E:\supernova\msx\game\default1.c:273: case 103:
00185$:
;E:\supernova\msx\game\default1.c:274: if (IN_RANGE(Prm, 24, 34) || Prm == 59 || Prm == 60) RL(317); else RL(326);
	ld	a, (_Prm+0)
	sub	a, #0x18
	jr	c, 00190$
	ld	a, #0x22
	ld	hl, #_Prm
	sub	a, (hl)
	jr	nc, 00186$
00190$:
	ld	a, (_Prm)
	cp	a, #0x3b
	jr	z, 00186$
	sub	a, #0x3c
	jr	nz, 00187$
00186$:
	ld	hl, #0x013d
	call	_RL
	jr	00195$
00187$:
	ld	hl, #0x0146
	call	_RL
;E:\supernova\msx\game\default1.c:275: break;
	jr	00195$
;E:\supernova\msx\game\default1.c:276: case 113: RR(Prm); break;
00192$:
	ld	a, (_Prm)
	ld	h, #0x00
	ld	l, a
	call	_RR
	jr	00195$
;E:\supernova\msx\game\default1.c:277: case 123: RS(159); break;
00193$:
	ld	hl, #0x009f
	call	_RS
	jr	00195$
;E:\supernova\msx\game\default1.c:278: case 124: RL(62); break;
00194$:
	ld	hl, #0x003e
	call	_RL
;E:\supernova\msx\game\default1.c:279: }
00195$:
;E:\supernova\msx\game\default1.c:280: if (!SFlag) ExamineNothing();
	ld	a, (_SFlag+0)
	or	a, a
	ret	nz
;E:\supernova\msx\game\default1.c:281: break;
	jp	_ExamineNothing
;E:\supernova\msx\game\default1.c:284: case 47:
00198$:
;E:\supernova\msx\game\default1.c:285: if (N1 == 6)
	ld	a, (_N1)
	sub	a, #0x06
	jr	nz, 00202$
;E:\supernova\msx\game\default1.c:287: RL(68); FoodCon--; T[3] = 175; SET_DEL(PStat, 2); Bor(0, 0);
	ld	hl, #0x0044
	call	_RL
	ld	hl, #_FoodCon
	dec	(hl)
	ld	hl, #0x00af
	ld	((_T + 6)), hl
	ld	hl, #_PStat+0
	res	1, (hl)
	xor	a, a
	ld	l, a
	call	_Bor
;E:\supernova\msx\game\default1.c:288: if (FoodCon == 0) { Van(6); RL(69); }
	ld	a, (_FoodCon+0)
	or	a, a
	ret	nz
	ld	a, #0x06
	call	_Van
	ld	hl, #0x0045
	jp	_RL
00202$:
;E:\supernova\msx\game\default1.c:290: else { Wr("The "); Wr(NStr); Wr(" would not do much for your digestive system."); Wln(); }
	ld	hl, #___str_46
	call	_Wr
	ld	hl, #_NStr
	call	_Wr
	ld	hl, #___str_47
	call	_Wr
;E:\supernova\msx\game\default1.c:292: }
;E:\supernova\msx\game\default1.c:293: }
	jp	_Wln
___str_39:
	.ascii "The satchel contains "
	.db 0x00
___str_40:
	.ascii "."
	.db 0x00
___str_41:
	.ascii "The satchel contains a "
	.db 0x00
___str_42:
	.ascii "The gun strap contains a "
	.db 0x00
___str_43:
	.ascii "badge"
	.db 0x00
___str_44:
	.ascii "The mug is quite small.  "
	.db 0x00
___str_45:
	.ascii "column"
	.db 0x00
___str_46:
	.ascii "The "
	.db 0x00
___str_47:
	.ascii " would not do much for your digestive system."
	.db 0x00
;E:\supernova\msx\game\default1.c:295: void Default4(void)
;	---------------------------------
; Function Default4
; ---------------------------------
_Default4::
	call	___sdcc_enter_ix
	push	af
	dec	sp
;E:\supernova\msx\game\default1.c:297: switch (Vb)
	ld	a, (_Vb)
	cp	a, #0x25
	jp	z, 00176$
;E:\supernova\msx\game\default1.c:301: Weight = Null; Min(17);
	sub	a, #0x27
	jp	nz, 00220$
	ld	(#_Weight), a
	ld	a, #0x11
	call	_Min
;E:\supernova\msx\game\default1.c:302: for (o = 1; o <= MMax; o++) if (IN29(Inv, o)) { Weight++; if (o == 11) Weight += 3; }
	ld	hl, #_o
	ld	(hl), #0x01
00210$:
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00211$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00211$
	ld	a, (_o+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00753$:
	sra	d
	rr	e
	djnz	00753$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00755$
00754$:
	srl	a
00755$:
	djnz	00754$
	rrca
	jr	nc, 00211$
	ld	hl, #_Weight
	inc	(hl)
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00211$
	ld	a, (_Weight)
	add	a, #0x03
	ld	(hl), a
00211$:
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	iy, #_o
	sub	a, 0 (iy)
	jr	nc, 00210$
;E:\supernova\msx\game\default1.c:303: if (!SET_IN(NounSet, 30))
	ld	a, (#_NounSet + 3)
	rlca
	rlca
	rlca
	jp	c, 00174$
;E:\supernova\msx\game\default1.c:305: for (o = 1; o <= NMax; o++)
	ld	(hl), #0x01
00212$:
;E:\supernova\msx\game\default1.c:306: if (SET_IN(NounSet, o))
	ld	a, (_o)
	ld	b, #0x00
	ld	c, a
	dec	bc
	pop	de
	push	bc
	ld	b, #0x03
00759$:
	sra	-2 (ix)
	rr	-3 (ix)
	djnz	00759$
	ld	a, #<(_NounSet)
	add	a, -3 (ix)
	ld	l, a
	ld	a, #>(_NounSet)
	adc	a, -2 (ix)
	ld	h, a
	ld	c, (hl)
;E:\supernova\msx\game\default1.c:302: for (o = 1; o <= MMax; o++) if (IN29(Inv, o)) { Weight++; if (o == 11) Weight += 3; }
	ld	a, (_o)
;E:\supernova\msx\game\default1.c:306: if (SET_IN(NounSet, o))
	dec	a
	and	a, #0x07
	ld	-1 (ix), a
	ld	b, a
	ld	a, c
	inc	b
	jr	00761$
00760$:
	srl	a
00761$:
	djnz	00760$
	rrca
	jp	nc, 00213$
;E:\supernova\msx\game\default1.c:308: if (IN29(Mov, o))
	ld	a, (_o+0)
	sub	a, #0x01
	jp	c, 00142$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	c, 00142$
	ld	a, #<(_Mov)
	add	a, -3 (ix)
	ld	l, a
	ld	a, #>(_Mov)
	adc	a, -2 (ix)
	ld	h, a
	ld	a, (hl)
	ld	b, -1 (ix)
	inc	b
	jr	00764$
00763$:
	srl	a
00764$:
	djnz	00763$
	rrca
	jp	nc, 00142$
;E:\supernova\msx\game\default1.c:310: WrFN(o); Wr(":  ");
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_48
	call	_Wr
;E:\supernova\msx\game\default1.c:311: Weight++; if (o == 11) Weight += 3;
	ld	hl, #_Weight
	inc	(hl)
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00110$
	ld	a, (_Weight)
	add	a, #0x03
	ld	(hl), a
00110$:
;E:\supernova\msx\game\default1.c:312: if (Weight < 9)
	ld	a, (_Weight+0)
	sub	a, #0x09
	jp	nc, 00130$
;E:\supernova\msx\game\default1.c:302: for (o = 1; o <= MMax; o++) if (IN29(Inv, o)) { Weight++; if (o == 11) Weight += 3; }
	ld	a, (_o+0)
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	c, a
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	ld	a, #0x00
	rla
	ld	l, a
	ld	a, (_o+0)
	ld	e, a
	ld	d, #0x00
	ld	a, (_o+0)
;E:\supernova\msx\game\default1.c:306: if (SET_IN(NounSet, o))
	dec	a
;E:\supernova\msx\game\default1.c:314: if (!IN29(Inv, o))
	dec	de
;E:\supernova\msx\game\default1.c:306: if (SET_IN(NounSet, o))
	and	a, #0x07
	ld	-1 (ix), a
;E:\supernova\msx\game\default1.c:314: if (!IN29(Inv, o))
	ld	b, #0x03
00768$:
	sra	d
	rr	e
	djnz	00768$
	bit	0, c
	jr	nz, 00122$
	bit	0, l
	jr	nz, 00122$
	ld	iy, #_Inv
	add	iy, de
	ld	a, (iy)
	ld	b, -1 (ix)
	inc	b
	jr	00770$
00769$:
	srl	a
00770$:
	djnz	00769$
	rrca
	jr	c, 00123$
00122$:
;E:\supernova\msx\game\default1.c:316: if (IN29(Socket, o) && !IN29(Wear, 26)) RL(524);
	bit	0, c
	jr	nz, 00115$
	bit	0, l
	jr	nz, 00115$
	ld	hl, #_Socket
	add	hl, de
	ld	a, (hl)
	ld	b, -1 (ix)
	inc	b
	jr	00774$
00773$:
	srl	a
00774$:
	djnz	00773$
	rrca
	jr	nc, 00115$
	ld	a, (#(_Wear + 3) + 0)
	rrca
	and	a, #0x01
	jr	nz, 00115$
	ld	hl, #0x020c
	call	_RL
	jp	00213$
00115$:
;E:\supernova\msx\game\default1.c:319: if (o == PyraCon && o == 9) Walls(8);
	ld	a, (_o)
	ld	hl, #_PyraCon
	sub	a, (hl)
	jr	nz, 00112$
	ld	a, (_o)
	sub	a, #0x09
	jr	nz, 00112$
	ld	a, #0x08
	call	_Walls
00112$:
;E:\supernova\msx\game\default1.c:320: Wr("Taken."); Wln(); Van(o); SET_ADD(Inv, o);
	ld	hl, #___str_49
	call	_Wr
	call	_Wln
	ld	a, (_o)
	call	_Van
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00780$:
	sra	d
	rr	e
	djnz	00780$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00782$
00781$:
	add	a, a
00782$:
	djnz	00781$
	or	a, c
	ld	(hl), a
	jr	00213$
00123$:
;E:\supernova\msx\game\default1.c:323: else { Wr("You already have that."); Wln(); }
	ld	hl, #___str_50
	call	_Wr
	call	_Wln
	jr	00213$
00130$:
;E:\supernova\msx\game\default1.c:327: RL(587);
	ld	hl, #0x024b
	call	_RL
;E:\supernova\msx\game\default1.c:328: if (o == 11) Weight -= 3;
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00213$
	ld	a, (_Weight)
	add	a, #0xfd
	ld	(#_Weight), a
	jr	00213$
00142$:
;E:\supernova\msx\game\default1.c:333: WrFN(o); Wr(":  ");
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_48
	call	_Wr
;E:\supernova\msx\game\default1.c:334: if (N1 == 32 || N1 == 35 || N1 == 80 || IN_RANGE(N1, 83, 86) || N1 == 90 || N1 == 121) RL(502);
	ld	a, (_N1)
	cp	a, #0x20
	jr	z, 00132$
	cp	a, #0x23
	jr	z, 00132$
	sub	a, #0x50
	jr	z, 00132$
	ld	a, (_N1+0)
	sub	a, #0x53
	jr	c, 00139$
	ld	a, #0x56
	ld	hl, #_N1
	sub	a, (hl)
	jr	nc, 00132$
00139$:
	ld	a, (_N1)
	cp	a, #0x5a
	jr	z, 00132$
	sub	a, #0x79
	jr	nz, 00133$
00132$:
	ld	hl, #0x01f6
	call	_RL
	jr	00213$
00133$:
;E:\supernova\msx\game\default1.c:335: else Crazy();
	call	_Crazy
00213$:
;E:\supernova\msx\game\default1.c:305: for (o = 1; o <= NMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x85
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00212$
	jp	00220$
00174$:
;E:\supernova\msx\game\default1.c:341: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	ld	(hl), #0x01
00214$:
;E:\supernova\msx\game\default1.c:342: if (IN29(Mov, o))
	ld	a, (_o+0)
	sub	a, #0x01
	jp	c, 00215$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	c, 00215$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00791$:
	sra	d
	rr	e
	djnz	00791$
	ld	hl, #_Mov
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00793$
00792$:
	srl	a
00793$:
	djnz	00792$
	rrca
	jp	nc, 00215$
;E:\supernova\msx\game\default1.c:343: if (R[o] == Prm)
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	sub	a, (hl)
	jp	nz, 00215$
;E:\supernova\msx\game\default1.c:345: WrFN(o); Wr(":  "); Add(17);
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_48
	call	_Wr
	ld	a, #0x11
	call	_Add
;E:\supernova\msx\game\default1.c:346: Weight++; if (o == 11) Weight += 3;
	ld	hl, #_Weight
	inc	(hl)
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00150$
	ld	a, (_Weight)
	add	a, #0x03
	ld	(hl), a
00150$:
;E:\supernova\msx\game\default1.c:347: if (Weight < 9)
	ld	a, (_Weight+0)
	sub	a, #0x09
	jr	nc, 00162$
;E:\supernova\msx\game\default1.c:349: if (IN29(Socket, o) && !IN29(Wear, 26)) RL(524);
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00152$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00152$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00799$:
	sra	d
	rr	e
	djnz	00799$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, c
	inc	b
	jr	00801$
00800$:
	srl	a
00801$:
	djnz	00800$
	rrca
	jr	nc, 00152$
	ld	a, (#(_Wear + 3) + 0)
	rrca
	and	a, #0x01
	jr	nz, 00152$
	ld	hl, #0x020c
	call	_RL
	jr	00215$
00152$:
;E:\supernova\msx\game\default1.c:350: else { Wr("Taken."); Wln(); Van(o); SET_ADD(Inv, o); }
	ld	hl, #___str_49
	call	_Wr
	call	_Wln
	ld	a, (_o)
	call	_Van
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00803$:
	sra	d
	rr	e
	djnz	00803$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00805$
00804$:
	add	a, a
00805$:
	djnz	00804$
	or	a, c
	ld	(hl), a
	jr	00215$
00162$:
;E:\supernova\msx\game\default1.c:354: RL(587);
	ld	hl, #0x024b
	call	_RL
;E:\supernova\msx\game\default1.c:355: if (o == 11) Weight -= 3;
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00215$
	ld	a, (_Weight)
	add	a, #0xfd
	ld	(#_Weight), a
00215$:
;E:\supernova\msx\game\default1.c:341: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00214$
;E:\supernova\msx\game\default1.c:358: if (!En(17)) RL(29);
	ld	a, #0x11
	call	_En
	or	a, a
	jp	nz, 00220$
	ld	hl, #0x001d
	call	_RL
;E:\supernova\msx\game\default1.c:360: break;
	jp	00220$
;E:\supernova\msx\game\default1.c:363: case 37:
00176$:
;E:\supernova\msx\game\default1.c:364: Weight = Null; Min(17);
	xor	a, a
	ld	(#_Weight), a
	ld	a, #0x11
	call	_Min
;E:\supernova\msx\game\default1.c:365: for (o = 1; o <= MMax; o++) if (IN29(Inv, o)) { Weight++; if (o == 11) Weight += 3; }
	ld	hl, #_o
	ld	(hl), #0x01
00216$:
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00217$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00217$
	ld	a, (_o+0)
	ld	e, a
	ld	d, #0x00
	dec	de
	ld	b, #0x03
00808$:
	sra	d
	rr	e
	djnz	00808$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	inc	b
	jr	00810$
00809$:
	srl	c
00810$:
	djnz	00809$
	bit	0, c
	jr	z, 00217$
	ld	hl, #_Weight
	inc	(hl)
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00217$
	ld	a, (_Weight)
	add	a, #0x03
	ld	(hl), a
00217$:
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	iy, #_o
	sub	a, 0 (iy)
	jr	nc, 00216$
;E:\supernova\msx\game\default1.c:366: for (o = 1; o <= MMax; o++)
	ld	(hl), #0x01
00218$:
;E:\supernova\msx\game\default1.c:367: if (IN29(Mov, o) && !SET_IN(NounSet, o))
	ld	a, (_o+0)
	sub	a, #0x01
	jp	c, 00219$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	c, 00219$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00814$:
	sra	d
	rr	e
	djnz	00814$
	ld	hl, #_Mov
	add	hl, de
	ld	l, (hl)
;E:\supernova\msx\game\default1.c:302: for (o = 1; o <= MMax; o++) if (IN29(Inv, o)) { Weight++; if (o == 11) Weight += 3; }
	ld	a, (_o+0)
;E:\supernova\msx\game\default1.c:306: if (SET_IN(NounSet, o))
	dec	a
	and	a, #0x07
	ld	c, a
;E:\supernova\msx\game\default1.c:367: if (IN29(Mov, o) && !SET_IN(NounSet, o))
	ld	b, c
	ld	a, l
	inc	b
	jr	00816$
00815$:
	srl	a
00816$:
	djnz	00815$
	rrca
	jp	nc, 00219$
	ld	hl, #_NounSet
	add	hl, de
	ld	a, (hl)
	inc	c
	jr	00819$
00818$:
	srl	a
00819$:
	dec	c
	jr	nz, 00818$
	rrca
	jp	c, 00219$
;E:\supernova\msx\game\default1.c:368: if (R[o] == Prm)
	ld	hl, #_R
	ld	a, (_o)
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	a, (_Prm)
	sub	a, (hl)
	jp	nz, 00219$
;E:\supernova\msx\game\default1.c:370: WrFN(o); Wr(":  ");
	ld	a, (_o)
	call	_WrFN
	ld	hl, #___str_48
	call	_Wr
;E:\supernova\msx\game\default1.c:371: Weight++; if (o == 11) Weight += 3;
	ld	hl, #_Weight
	inc	(hl)
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00185$
	ld	a, (_Weight)
	add	a, #0x03
	ld	(hl), a
00185$:
;E:\supernova\msx\game\default1.c:372: if (Weight < 9)
	ld	a, (_Weight+0)
	sub	a, #0x09
	jp	nc, 00197$
;E:\supernova\msx\game\default1.c:374: if (IN29(Socket, o) && !IN29(Wear, 26)) RL(524);
	ld	a, (_o+0)
	sub	a, #0x01
	jr	c, 00187$
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jr	c, 00187$
	ld	a, (_o+0)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00826$:
	sra	d
	rr	e
	djnz	00826$
	ld	hl, #_Socket
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	inc	b
	jr	00828$
00827$:
	srl	c
00828$:
	djnz	00827$
	bit	0, c
	jr	z, 00187$
	ld	a, (#(_Wear + 3) + 0)
	rrca
	and	a, #0x01
	jr	nz, 00187$
	ld	hl, #0x020c
	call	_RL
	jr	00219$
00187$:
;E:\supernova\msx\game\default1.c:375: else { Wr("Taken."); Wln(); Van(o); SET_ADD(Inv, o); Add(17); }
	ld	hl, #___str_49
	call	_Wr
	call	_Wln
	ld	a, (_o)
	call	_Van
	ld	a, (_o)
	ld	d, #0x00
	ld	e, a
	dec	de
	ld	b, #0x03
00830$:
	sra	d
	rr	e
	djnz	00830$
	ld	hl, #_Inv
	add	hl, de
	ld	c, (hl)
	ld	a, (_o+0)
	dec	a
	and	a, #0x07
	ld	b, a
	ld	a, #0x01
	inc	b
	jr	00832$
00831$:
	add	a, a
00832$:
	djnz	00831$
	or	a, c
	ld	(hl), a
	ld	a, #0x11
	call	_Add
	jr	00219$
00197$:
;E:\supernova\msx\game\default1.c:379: RL(587);
	ld	hl, #0x024b
	call	_RL
;E:\supernova\msx\game\default1.c:380: if (o == 11) Weight -= 3;
	ld	a, (_o)
	sub	a, #0x0b
	jr	nz, 00219$
	ld	a, (_Weight)
	add	a, #0xfd
	ld	(#_Weight), a
00219$:
;E:\supernova\msx\game\default1.c:366: for (o = 1; o <= MMax; o++)
	ld	hl, #_o
	inc	(hl)
	ld	a, #0x1d
	ld	hl, #_o
	sub	a, (hl)
	jp	nc, 00218$
;E:\supernova\msx\game\default1.c:383: if (!En(17)) RL(29);
	ld	a, #0x11
	call	_En
	or	a, a
	jr	nz, 00220$
	ld	hl, #0x001d
	call	_RL
;E:\supernova\msx\game\default1.c:385: }
00220$:
;E:\supernova\msx\game\default1.c:386: }
	ld	sp, ix
	pop	ix
	ret
___str_48:
	.ascii ":  "
	.db 0x00
___str_49:
	.ascii "Taken."
	.db 0x00
___str_50:
	.ascii "You already have that."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
