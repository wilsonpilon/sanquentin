;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module string
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _String_FromUInt8ZT
	.globl _String_FromUInt8
	.globl _String_FromUInt16ZT
	.globl _String_FromUInt16
	.globl _String_FormatVA
	.globl _String_Format
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;E:\supernova\MSXgl\engine/src/string.c:29: void String_FromUInt8ZT(u8 value, c8* string) __NAKED
;	---------------------------------
; Function String_FromUInt8ZT
; ---------------------------------
_String_FromUInt8ZT::
;E:\supernova\MSXgl\engine/src/string.c:39: __endasm;
	call _String_FromUInt8
	xor a
	ld (de), a
	ret
;E:\supernova\MSXgl\engine/src/string.c:40: }
;E:\supernova\MSXgl\engine/src/string.c:44: void String_FromUInt8(u8 value, c8* string) __NAKED
;	---------------------------------
; Function String_FromUInt8
; ---------------------------------
_String_FromUInt8::
;E:\supernova\MSXgl\engine/src/string.c:70: __endasm;
DispA:
	ld c, #-100
	call Na1
	ld c, #-10
	call Na1
	ld c, #-1
Na1:
	ld b, #'0'-1
Na2:
	inc b
	add a, c
	jr c, Na2
	sub c
	ex af, af'		; '
	ld a, b
	ld (de), a
	inc de
	ex af, af'		; '
	ret
;E:\supernova\MSXgl\engine/src/string.c:72: }
;E:\supernova\MSXgl\engine/src/string.c:79: void String_FromUInt16ZT(u16 value, c8* string) __NAKED
;	---------------------------------
; Function String_FromUInt16ZT
; ---------------------------------
_String_FromUInt16ZT::
;E:\supernova\MSXgl\engine/src/string.c:89: __endasm;
	call _String_FromUInt16
	xor a
	ld (de), a
	ret
;E:\supernova\MSXgl\engine/src/string.c:90: }
;E:\supernova\MSXgl\engine/src/string.c:94: void String_FromUInt16(u16 value, c8* string) __NAKED
;	---------------------------------
; Function String_FromUInt16
; ---------------------------------
_String_FromUInt16::
;E:\supernova\MSXgl\engine/src/string.c:122: __endasm;
Num2Dec:
	ld bc, #-10000
	call Num1
	ld bc, #-1000
	call Num1
	ld bc, #-100
	call Num1
	ld c, #-10
	call Num1
	ld c, b
Num1:
	ld a, #'0'-1
Num2:
	inc a
	add hl, bc
	jr c, Num2
	sbc hl, bc
	ld (de), a
	inc de
	ret
;E:\supernova\MSXgl\engine/src/string.c:123: }
;E:\supernova\MSXgl\engine/src/string.c:131: void String_FormatVA(c8* dest, const c8* format, va_list args)
;	---------------------------------
; Function String_FormatVA
; ---------------------------------
_String_FormatVA::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-35
	add	iy, sp
	ld	sp, iy
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\supernova\MSXgl\engine/src/string.c:135: while (*ptr != 0)
00166$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, a
	jp	z, 00168$
;E:\supernova\MSXgl\engine/src/string.c:166: *dest++ = '%';
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	ld	-19 (ix), l
	ld	-18 (ix), h
;E:\supernova\MSXgl\engine/src/string.c:137: if (*ptr == '%')
	ld	a, -5 (ix)
	sub	a, #0x25
	jp	nz, 00164$
;E:\supernova\MSXgl\engine/src/string.c:139: ptr++;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
;E:\supernova\MSXgl\engine/src/string.c:142: u8 pad = STRINT_PAD_NONE;
	ld	-17 (ix), #0x00
;E:\supernova\MSXgl\engine/src/string.c:143: u8 len = 0;
	ld	-16 (ix), #0x00
;E:\supernova\MSXgl\engine/src/string.c:144: if (*ptr == '0')
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:139: ptr++;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	inc	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
;E:\supernova\MSXgl\engine/src/string.c:144: if (*ptr == '0')
	ld	a, -7 (ix)
	sub	a, #0x30
	jr	nz, 00105$
;E:\supernova\MSXgl\engine/src/string.c:146: pad = STRINT_PAD_ZERO;
	ld	-17 (ix), #0x01
;E:\supernova\MSXgl\engine/src/string.c:147: ptr++;
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	jr	00236$
00105$:
;E:\supernova\MSXgl\engine/src/string.c:149: else if ((*ptr >= '1') && (*ptr <= '9'))
	ld	a, -7 (ix)
	sub	a, #0x31
	jr	c, 00236$
	ld	a, #0x39
	sub	a, -7 (ix)
	jr	c, 00236$
;E:\supernova\MSXgl\engine/src/string.c:151: pad = STRINT_PAD_SPACE;
	ld	-17 (ix), #0x02
;E:\supernova\MSXgl\engine/src/string.c:152: len = *ptr - '0';
	ld	a, -7 (ix)
	add	a, #0xd0
	ld	-16 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:153: ptr++;
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:155: while ((*ptr >= '0') && (*ptr <= '9'))
00236$:
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
00108$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	sub	a, #0x30
	jr	c, 00275$
	ld	a, #0x39
	sub	a, -15 (ix)
	jr	c, 00275$
;E:\supernova\MSXgl\engine/src/string.c:157: len *= 10;
	ld	a, -16 (ix)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-5 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:158: len += *ptr - '0';
	ld	a, -15 (ix)
	ld	-6 (ix), a
	add	a, #0xd0
	ld	-6 (ix), a
	ld	a, -5 (ix)
	add	a, -6 (ix)
	ld	-16 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:159: ptr++;
	inc	-2 (ix)
	jr	nz, 00108$
	inc	-1 (ix)
	jr	00108$
00275$:
;E:\supernova\MSXgl\engine/src/string.c:163: switch (*ptr)
	ld	a, -15 (ix)
	sub	a, #0x25
	jp	z, 00111$
;E:\supernova\MSXgl\engine/src/string.c:180: val = (i32)va_arg(args, i32);
	ld	de, #0x0004
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, de
	ld	-14 (ix), l
	ld	-13 (ix), h
;E:\supernova\MSXgl\engine/src/string.c:182: val = (i32)va_arg(args, i16);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	inc	hl
	inc	hl
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\supernova\MSXgl\engine/src/string.c:180: val = (i32)va_arg(args, i32);
	ld	a, -14 (ix)
	add	a, #0xfc
	ld	-10 (ix), a
	ld	a, -13 (ix)
	adc	a, #0xff
	ld	-9 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:182: val = (i32)va_arg(args, i16);
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	dec	bc
	dec	bc
	ld	-8 (ix), c
	ld	-7 (ix), b
;E:\supernova\MSXgl\engine/src/string.c:163: switch (*ptr)
	ld	a, -15 (ix)
	sub	a, #0x44
	jr	z, 00115$
	ld	a, -15 (ix)
	sub	a, #0x49
	jr	z, 00115$
	ld	a, -15 (ix)
	sub	a, #0x55
	jp	z, 00165$
	ld	a, -15 (ix)
	sub	a, #0x58
	jp	z, 00133$
;E:\supernova\MSXgl\engine/src/string.c:255: u16 val = (u16)va_arg(args, u16);
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:163: switch (*ptr)
	ld	a, -15 (ix)
	sub	a, #0x63
	jp	z, 00159$
	ld	a, -15 (ix)
	sub	a, #0x64
	jr	z, 00115$
	ld	a, -15 (ix)
	sub	a, #0x69
	jr	z, 00115$
	ld	a, -15 (ix)
	sub	a, #0x73
	jp	z, 00160$
	ld	a, -15 (ix)
	sub	a, #0x75
	jp	z, 00165$
	ld	a, -15 (ix)
	sub	a, #0x78
	jp	z, 00150$
	jp	00165$
;E:\supernova\MSXgl\engine/src/string.c:165: case '%':
00111$:
;E:\supernova\MSXgl\engine/src/string.c:166: *dest++ = '%';
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x25
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:167: break;
	jp	00165$
;E:\supernova\MSXgl\engine/src/string.c:175: case 'd':
00115$:
;E:\supernova\MSXgl\engine/src/string.c:179: if ((*ptr == 'I') || (*ptr == 'D'))
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	sub	a, #0x49
	jr	z, 00116$
	ld	a, -5 (ix)
	sub	a, #0x44
	jr	nz, 00117$
00116$:
;E:\supernova\MSXgl\engine/src/string.c:180: val = (i32)va_arg(args, i32);
	ld	a, -14 (ix)
	ld	4 (ix), a
	ld	a, -13 (ix)
	ld	5 (ix), a
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	hl, #27
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	jr	00118$
00117$:
;E:\supernova\MSXgl\engine/src/string.c:182: val = (i32)va_arg(args, i16);
	ld	a, -12 (ix)
	ld	4 (ix), a
	ld	a, -11 (ix)
	ld	5 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
00118$:
;E:\supernova\MSXgl\engine/src/string.c:187: if (val < 0)
	bit	7, -5 (ix)
	jr	z, 00121$
;E:\supernova\MSXgl\engine/src/string.c:189: *dest++ = '-';
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x2d
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:190: val = -val;
	xor	a, a
	sub	a, -8 (ix)
	ld	-8 (ix), a
	ld	a, #0x00
	sbc	a, -7 (ix)
	ld	-7 (ix), a
	ld	a, #0x00
	sbc	a, -6 (ix)
	ld	-6 (ix), a
	sbc	a, a
	sub	a, -5 (ix)
	ld	-5 (ix), a
00121$:
;E:\supernova\MSXgl\engine/src/string.c:193: c8* ptr = str;
;E:\supernova\MSXgl\engine/src/string.c:194: *ptr = 0;
	ld	-35 (ix), #0x00
;E:\supernova\MSXgl\engine/src/string.c:196: while (val >= 10)
	push	hl
	push	af
	ld	hl, #4
	add	hl, sp
	ld	-19 (ix), l
	ld	hl, #4
	add	hl, sp
	pop	af
	ld	-18 (ix), h
	pop	hl
	ld	-9 (ix), #0x01
00122$:
;E:\supernova\MSXgl\engine/src/string.c:198: *++ptr = '0' + (val % 10);
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	inc	hl
	ld	-11 (ix), l
	ld	-10 (ix), h
;E:\supernova\MSXgl\engine/src/string.c:196: while (val >= 10)
	ld	a, -8 (ix)
	sub	a, #0x0a
	ld	a, -7 (ix)
	sbc	a, #0x00
	ld	a, -6 (ix)
	sbc	a, #0x00
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00276$
;E:\supernova\MSXgl\engine/src/string.c:198: *++ptr = '0' + (val % 10);
	ld	a, -11 (ix)
	ld	-19 (ix), a
	ld	a, -10 (ix)
	ld	-18 (ix), a
	ld	hl, #0x0000
	push	hl
	ld	l, #0x0a
	push	hl
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	call	__modslong
	pop	af
	pop	af
	ld	-15 (ix), e
	ld	-14 (ix), d
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, -15 (ix)
	add	a, #0x30
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/string.c:199: val /= 10;
	ld	hl, #0x0000
	push	hl
	ld	l, #0x0a
	push	hl
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;E:\supernova\MSXgl\engine/src/string.c:200: digit++;
	call	__divslong
	pop	af
	pop	af
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	-6 (ix), l
	ld	-5 (ix), h
	inc	-9 (ix)
	jp	00122$
00276$:
	ld	a, -9 (ix)
	ld	-12 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:202: *++ptr = '0' + val;
	ld	a, -8 (ix)
	ld	-5 (ix), a
	add	a, #0x30
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\supernova\MSXgl\engine/src/string.c:204: if (len > digit)
	ld	a, -9 (ix)
	sub	a, -16 (ix)
	jr	nc, 00257$
;E:\supernova\MSXgl\engine/src/string.c:206: c8 padChr = (pad == STRINT_PAD_ZERO) ? '0' : ' ';
	ld	a, -17 (ix)
	dec	a
	ld	a, #0x30
	jr	z, 00182$
	ld	a, #0x20
00182$:
	ld	-7 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:207: for (u8 i = 0; i < len - digit; ++i)
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	c, #0x00
00174$:
	ld	l, -16 (ix)
	ld	h, #0x00
	ld	e, -12 (ix)
	ld	d, #0x00
	cp	a, a
	sbc	hl, de
	ld	b, c
	ld	e, #0x00
	ld	a, b
	sub	a, l
	ld	a, e
	sbc	a, h
	jp	po, 00578$
	xor	a, #0x80
00578$:
	jp	p, 00277$
;E:\supernova\MSXgl\engine/src/string.c:208: *dest++ = padChr;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	-6 (ix)
	jr	nz, 00579$
	inc	-5 (ix)
00579$:
;E:\supernova\MSXgl\engine/src/string.c:207: for (u8 i = 0; i < len - digit; ++i)
	inc	c
	jr	00174$
;E:\supernova\MSXgl\engine/src/string.c:211: while (*ptr != 0)
00277$:
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
00257$:
	ld	a, -11 (ix)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-5 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
00128$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	or	a, a
	jp	z, 00278$
;E:\supernova\MSXgl\engine/src/string.c:212: *dest++ = *ptr--;
	ld	a, -9 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	dec	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
	inc	-8 (ix)
	jr	nz, 00128$
	inc	-7 (ix)
	jr	00128$
;E:\supernova\MSXgl\engine/src/string.c:225: case 'X':
00133$:
;E:\supernova\MSXgl\engine/src/string.c:227: if (len == 0)
	ld	a, -16 (ix)
	or	a, a
	jr	nz, 00135$
;E:\supernova\MSXgl\engine/src/string.c:228: len = 8;
	ld	-16 (ix), #0x08
00135$:
;E:\supernova\MSXgl\engine/src/string.c:229: u32 val = (u32)va_arg(args, u32);
	ld	a, -14 (ix)
	ld	4 (ix), a
	ld	a, -13 (ix)
	ld	5 (ix), a
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	hl, #27
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;E:\supernova\MSXgl\engine/src/string.c:231: if (len > 7)
	ld	a, #0x07
	sub	a, -16 (ix)
	jr	nc, 00137$
;E:\supernova\MSXgl\engine/src/string.c:232: *dest++ = g_HexChar[(val >> 28) & 0xF];
	ld	e, -5 (ix)
	ld	bc, #0x400
00581$:
	srl	e
	djnz	00581$
	ld	a, e
	and	a, #0x0f
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
00137$:
;E:\supernova\MSXgl\engine/src/string.c:233: if (len > 6)
	ld	a, #0x06
	sub	a, -16 (ix)
	jr	nc, 00139$
;E:\supernova\MSXgl\engine/src/string.c:234: *dest++ = g_HexChar[(val >> 24) & 0xF];
	ld	a, -5 (ix)
	and	a, #0x0f
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00583$
	inc	-3 (ix)
00583$:
00139$:
;E:\supernova\MSXgl\engine/src/string.c:235: if (len > 5)
	ld	a, #0x05
	sub	a, -16 (ix)
	jr	nc, 00141$
;E:\supernova\MSXgl\engine/src/string.c:236: *dest++ = g_HexChar[(val >> 20) & 0xF];
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	b, #0x04
00584$:
	srl	d
	rr	e
	djnz	00584$
	ld	a, e
	and	a, #0x0f
	ld	h, #0x00
	ld	l, a
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00586$
	inc	-3 (ix)
00586$:
00141$:
;E:\supernova\MSXgl\engine/src/string.c:237: if (len > 4)
	ld	a, #0x04
	sub	a, -16 (ix)
	jr	nc, 00143$
;E:\supernova\MSXgl\engine/src/string.c:238: *dest++ = g_HexChar[(val >> 16) & 0xF];
	ld	a, -6 (ix)
	and	a, #0x0f
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00587$
	inc	-3 (ix)
00587$:
00143$:
;E:\supernova\MSXgl\engine/src/string.c:239: if (len > 3)
	ld	a, #0x03
	sub	a, -16 (ix)
	jr	nc, 00145$
;E:\supernova\MSXgl\engine/src/string.c:240: *dest++ = g_HexChar[(val >> 12) & 0xF];
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	l, -5 (ix)
	ld	b, #0x04
00588$:
	srl	l
	rr	d
	rr	e
	djnz	00588$
	ld	a, e
	and	a, #0x0f
	ld	h, #0x00
	ld	l, a
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00590$
	inc	-3 (ix)
00590$:
00145$:
;E:\supernova\MSXgl\engine/src/string.c:241: if (len > 2)
	ld	a, #0x02
	sub	a, -16 (ix)
	jr	nc, 00147$
;E:\supernova\MSXgl\engine/src/string.c:242: *dest++ = g_HexChar[(val >> 8) & 0xF];
	ld	a, -7 (ix)
	and	a, #0x0f
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00591$
	inc	-3 (ix)
00591$:
00147$:
;E:\supernova\MSXgl\engine/src/string.c:243: if (len > 1)
	ld	a, #0x01
	sub	a, -16 (ix)
	jr	nc, 00149$
;E:\supernova\MSXgl\engine/src/string.c:244: *dest++ = g_HexChar[(val >> 4) & 0xF];
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, #0x04
00592$:
	srl	h
	rr	l
	rr	d
	rr	e
	djnz	00592$
	ld	a, e
	and	a, #0x0f
	ld	h, #0x00
	ld	l, a
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00594$
	inc	-3 (ix)
00594$:
00149$:
;E:\supernova\MSXgl\engine/src/string.c:245: *dest++ = g_HexChar[val & 0xF];
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	and	a, #0x0f
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	de, #_g_HexChar
	ld	l, -8 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	ld	-5 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jp	nz, 00165$
	inc	-3 (ix)
;E:\supernova\MSXgl\engine/src/string.c:246: break;
	jp	00165$
;E:\supernova\MSXgl\engine/src/string.c:251: case 'x':
00150$:
;E:\supernova\MSXgl\engine/src/string.c:253: if (len == 0)
	ld	a, -16 (ix)
	or	a, a
	jr	nz, 00152$
;E:\supernova\MSXgl\engine/src/string.c:254: len = 4;
	ld	-16 (ix), #0x04
00152$:
;E:\supernova\MSXgl\engine/src/string.c:255: u16 val = (u16)va_arg(args, u16);
	ld	a, -12 (ix)
	ld	4 (ix), a
	ld	a, -11 (ix)
	ld	5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:256: if (len > 3)
	ld	a, #0x03
	sub	a, -16 (ix)
	jr	nc, 00154$
;E:\supernova\MSXgl\engine/src/string.c:257: *dest++ = g_HexChar[(val >> 12) & 0xF];
	ld	a, -5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -8 (ix)
	ld	-7 (ix), a
	and	a, #0x0f
	ld	-7 (ix), a
	ld	de, #_g_HexChar
	ld	l, -7 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
00154$:
;E:\supernova\MSXgl\engine/src/string.c:258: if (len > 2)
	ld	a, #0x02
	sub	a, -16 (ix)
	jr	nc, 00156$
;E:\supernova\MSXgl\engine/src/string.c:259: *dest++ = g_HexChar[(val >> 8) & 0xF];
	ld	a, -5 (ix)
	ld	-7 (ix), a
	and	a, #0x0f
	ld	-7 (ix), a
	ld	de, #_g_HexChar
	ld	l, -7 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00596$
	inc	-3 (ix)
00596$:
00156$:
;E:\supernova\MSXgl\engine/src/string.c:260: if (len > 1)
	ld	a, #0x01
	sub	a, -16 (ix)
	jr	nc, 00158$
;E:\supernova\MSXgl\engine/src/string.c:261: *dest++ = g_HexChar[(val >> 4) & 0xF];
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	b, #0x04
00597$:
	srl	-7 (ix)
	rr	-8 (ix)
	djnz	00597$
	ld	a, -8 (ix)
	and	a, #0x0f
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -9 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jr	nz, 00598$
	inc	-3 (ix)
00598$:
00158$:
;E:\supernova\MSXgl\engine/src/string.c:262: *dest++ = g_HexChar[val & 0xF];
	ld	a, -6 (ix)
	and	a, #0x0f
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	de, #_g_HexChar
	ld	l, -8 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	ld	-5 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	-4 (ix)
	jp	nz, 00165$
	inc	-3 (ix)
;E:\supernova\MSXgl\engine/src/string.c:263: break;
	jp	00165$
;E:\supernova\MSXgl\engine/src/string.c:267: case 'c':
00159$:
;E:\supernova\MSXgl\engine/src/string.c:269: c8 val = (c8)va_arg(args, u16);
	ld	a, -12 (ix)
	ld	4 (ix), a
	ld	a, -11 (ix)
	ld	5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
;E:\supernova\MSXgl\engine/src/string.c:270: *dest++ = val;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:271: break;
	jr	00165$
;E:\supernova\MSXgl\engine/src/string.c:275: case 's':
00160$:
;E:\supernova\MSXgl\engine/src/string.c:277: const c8* val = (const c8*)va_arg(args, const c8*);
	ld	a, -12 (ix)
	ld	4 (ix), a
	ld	a, -11 (ix)
	ld	5 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\supernova\MSXgl\engine/src/string.c:278: u8 len = String_Length(val);
	ld	e, #0x00
	ld	l, c
	ld	h, b
00169$:
	ld	a, (hl)
	inc	hl
	or	a, a
	jr	z, 00171$
	inc	e
	jr	00169$
00171$:
;E:\supernova\MSXgl\engine/src/string.c:279: for (u8 i = 0; i < len; i++)
	ld	l, c
	ld	h, b
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	d, #0x00
00177$:
	ld	a, d
	sub	a, e
	jr	nc, 00280$
;E:\supernova\MSXgl\engine/src/string.c:280: *dest++ = *val++;
	ld	a, (hl)
	inc	hl
	ld	(bc), a
	inc	bc
;E:\supernova\MSXgl\engine/src/string.c:279: for (u8 i = 0; i < len; i++)
	inc	d
	jr	00177$
;E:\supernova\MSXgl\engine/src/string.c:283: }
00164$:
;E:\supernova\MSXgl\engine/src/string.c:286: *dest++ = *ptr;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:290: *dest = 0;
	jr	00165$
;E:\supernova\MSXgl\engine/src/string.c:286: *dest++ = *ptr;
00278$:
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-3 (ix), a
;E:\supernova\MSXgl\engine/src/string.c:290: *dest = 0;
	jr	00165$
;E:\supernova\MSXgl\engine/src/string.c:286: *dest++ = *ptr;
00280$:
	ld	-4 (ix), c
	ld	-3 (ix), b
00165$:
;E:\supernova\MSXgl\engine/src/string.c:288: ptr++;
	inc	-2 (ix)
	jp	nz, 00166$
	inc	-1 (ix)
	jp	00166$
00168$:
;E:\supernova\MSXgl\engine/src/string.c:290: *dest = 0;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x00
;E:\supernova\MSXgl\engine/src/string.c:291: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
_g_HexChar:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
;E:\supernova\MSXgl\engine/src/string.c:295: void String_Format(c8* dest, const c8* format, ...)
;	---------------------------------
; Function String_Format
; ---------------------------------
_String_Format::
;E:\supernova\MSXgl\engine/src/string.c:298: va_start(args, format);
;E:\supernova\MSXgl\engine/src/string.c:299: String_FormatVA(dest, format, args);
	ld	hl, #6
	add	hl, sp
	push	hl
	ld	iy, #6
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	call	_String_FormatVA
;E:\supernova\MSXgl\engine/src/string.c:300: va_end(args);
;E:\supernova\MSXgl\engine/src/string.c:301: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
