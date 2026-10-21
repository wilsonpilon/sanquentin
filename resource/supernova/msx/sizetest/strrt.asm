;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module strrt
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetIn
	.globl _SetAdd
	.globl _SetDel
	.globl _SetEmpty
	.globl _Pos
	.globl _Delete
	.globl _Insert
	.globl _Copy
	.globl _StrEq
	.globl _StrCpy
	.globl _StrCat
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
;strrt.c:5: u8 SetIn(const u8* s, u8 n)  { return (s[n >> 3] & g_Bit[n & 7]) != 0; }
;	---------------------------------
; Function SetIn
; ---------------------------------
_SetIn::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	a, 4 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	c, (hl)
	ld	a, 4 (ix)
	and	a, #0x07
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_Bit
	add	hl, de
	ld	a, (hl)
	and	a, c
	sub	a, #0x01
	ld	a, #0x00
	rla
	xor	a, #0x01
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
_g_Bit:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
;strrt.c:6: void SetAdd(u8* s, u8 n)     { s[n >> 3] |= g_Bit[n & 7]; }
;	---------------------------------
; Function SetAdd
; ---------------------------------
_SetAdd::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	a, 4 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	c, (hl)
	ld	a, 4 (ix)
	and	a, #0x07
	add	a, #<(_g_Bit)
	ld	e, a
	ld	a, #0x00
	adc	a, #>(_g_Bit)
	ld	d, a
	ld	a, (de)
	or	a, c
	ld	(hl), a
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;strrt.c:7: void SetDel(u8* s, u8 n)     { s[n >> 3] &= ~g_Bit[n & 7]; }
;	---------------------------------
; Function SetDel
; ---------------------------------
_SetDel::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	a, 4 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	e, a
	ld	d, #0x00
	add	hl, de
	ld	c, (hl)
	ld	a, 4 (ix)
	and	a, #0x07
	add	a, #<(_g_Bit)
	ld	e, a
	ld	a, #0x00
	adc	a, #>(_g_Bit)
	ld	d, a
	ld	a, (de)
	cpl
	and	a, c
	ld	(hl), a
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;strrt.c:8: u8 SetEmpty(const u8* s, u8 bytes) { while (bytes--) if (*s++) return 0; return 1; }
;	---------------------------------
; Function SetEmpty
; ---------------------------------
_SetEmpty::
	ld	iy, #2
	add	iy, sp
	ld	e, 0 (iy)
00103$:
	ld	a, e
	dec	e
	or	a, a
	jr	z, 00105$
	ld	a, (hl)
	inc	hl
	or	a, a
	jr	z, 00103$
	xor	a, a
	jr	00106$
00105$:
	ld	a, #0x01
00106$:
	pop	hl
	inc	sp
	jp	(hl)
;strrt.c:10: static u8 Len(const char* s) { u8 n = 0; while (s[n]) n++; return n; }
;	---------------------------------
; Function Len
; ---------------------------------
_Len:
	ex	de, hl
	ld	c, #0x00
00101$:
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	z, 00103$
	inc	c
	jr	00101$
00103$:
	ld	a, c
	ret
;strrt.c:12: u8 Pos(const char* sub, const char* s)
;	---------------------------------
; Function Pos
; ---------------------------------
_Pos::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	dec	sp
	ld	c, l
	ld	b, h
	ld	-4 (ix), e
	ld	-3 (ix), d
;strrt.c:14: u8 n = Len(sub);
	push	bc
	ld	l, c
	ld	h, b
	call	_Len
	ld	e, a
	pop	bc
;strrt.c:15: if (!n) return 0;
	ld	a, e
	or	a,a
	jr	z, 00113$
;strrt.c:16: for (u8 k = 0; s[k]; k++)
	ld	-5 (ix), #0x00
	ld	-2 (ix), #0x00
00111$:
	ld	a, -2 (ix)
	add	a, -4 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -3 (ix)
	ld	h, a
	ld	a, (hl)
	or	a, a
	jr	z, 00109$
;strrt.c:19: while (j < n && s[k + j] == sub[j]) j++;
	ld	-1 (ix), #0x00
00104$:
	ld	a, -1 (ix)
	sub	a, e
	jr	nc, 00106$
	ld	a, -2 (ix)
	ld	h, #0x00
	ld	l, -1 (ix)
	add	a, l
	ld	l, a
	jr	nc, 00172$
	inc	h
00172$:
	ld	a, l
	add	a, -4 (ix)
	ld	l, a
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
	ld	d, (hl)
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	sub	a, d
	jr	nz, 00106$
	inc	-1 (ix)
	jr	00104$
00106$:
;strrt.c:20: if (j == n) return k + 1;
	ld	a, e
	sub	a, -1 (ix)
	jr	nz, 00112$
	ld	a, -5 (ix)
	inc	a
	jr	00113$
00112$:
;strrt.c:16: for (u8 k = 0; s[k]; k++)
	inc	-2 (ix)
	ld	a, -2 (ix)
	ld	-5 (ix), a
	jr	00111$
00109$:
;strrt.c:22: return 0;
	xor	a, a
00113$:
;strrt.c:23: }
	ld	sp, ix
	pop	ix
	ret
;strrt.c:25: void Delete(char* s, u8 idx, u8 cnt)
;	---------------------------------
; Function Delete
; ---------------------------------
_Delete::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
;strrt.c:27: u8 l = Len(s);
	push	hl
	call	_Len
	ld	-1 (ix), a
	pop	de
;strrt.c:28: if (idx == 0 || idx > l) return;
	ld	a, 4 (ix)
	or	a, a
	jr	z, 00110$
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	jr	c, 00110$
;strrt.c:29: idx--;
	dec	4 (ix)
;strrt.c:30: if (idx + cnt > l) cnt = l - idx;
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	nc, 00105$
	ld	a, -1 (ix)
	sub	a, 4 (ix)
	ld	5 (ix), a
00105$:
;strrt.c:31: for (u8 k = idx; k + cnt <= l; k++) s[k] = s[k + cnt];
	ld	a, 4 (ix)
	ld	-1 (ix), a
00108$:
	ld	a, -1 (ix)
	ld	h, #0x00
	ld	l, 5 (ix)
	push	iy
	ex	(sp), hl
	ld	l, #0x00
	ex	(sp), hl
	pop	iy
	add	a, l
	ld	l, a
	jr	nc, 00145$
	inc	h
00145$:
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	c, 00110$
	ld	a, e
	add	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-2 (ix), a
	add	hl, de
	ld	a, (hl)
	pop	hl
	push	hl
	ld	(hl), a
	inc	-1 (ix)
	jr	00108$
00110$:
;strrt.c:32: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;strrt.c:34: void Insert(const char* sub, char* s, u8 idx)
;	---------------------------------
; Function Insert
; ---------------------------------
_Insert::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
;strrt.c:36: u8 l = Len(s), n = Len(sub);
	ex	de, hl
	push	de
	push	hl
	call	_Len
	ld	l, a
	pop	de
	pop	bc
	push	hl
	push	bc
	push	de
	ld	l, c
	ld	h, b
	call	_Len
	ld	-6 (ix), a
	pop	de
	pop	bc
	pop	hl
;strrt.c:37: if (idx == 0) idx = 1;
	ld	a, 4 (ix)
	or	a, a
	jr	nz, 00102$
	ld	4 (ix), #0x01
00102$:
;strrt.c:38: if (idx > l + 1) idx = l + 1;
	ld	a, l
	ld	h, #0x00
	add	a, #0x01
	ld	-4 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	inc	l
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jr	nc, 00104$
	ld	4 (ix), l
00104$:
;strrt.c:39: idx--;
	dec	4 (ix)
;strrt.c:40: for (u8 k = l + 1; k > idx; k--) s[k + n - 1] = s[k - 1];
	ld	-1 (ix), l
00108$:
	ld	a, 4 (ix)
	sub	a, -1 (ix)
	jr	nc, 00105$
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	l, -6 (ix)
	ld	h, #0x00
	ld	a, -5 (ix)
	add	a, l
	ld	l, a
	ld	a, #0x00
	adc	a, h
	ld	h, a
	dec	hl
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	dec	hl
	add	hl, de
	ld	a, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
	dec	-1 (ix)
	jr	00108$
00105$:
;strrt.c:41: for (u8 k = 0; k < n; k++) s[idx + k] = sub[k];
	ld	-1 (ix), #0x00
00111$:
	ld	a, -1 (ix)
	sub	a, -6 (ix)
	jr	nc, 00113$
	ld	a, 4 (ix)
	ld	h, #0x00
	ld	l, -1 (ix)
	push	iy
	ex	(sp), hl
	ld	l, #0x00
	ex	(sp), hl
	pop	iy
	add	a, l
	ld	l, a
	jr	nc, 00165$
	inc	h
00165$:
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
	inc	-1 (ix)
	jr	00111$
00113$:
;strrt.c:42: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;strrt.c:44: void Copy(char* dst, const char* s, u8 idx, u8 cnt)
;	---------------------------------
; Function Copy
; ---------------------------------
_Copy::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
	ld	-3 (ix), l
	ld	-2 (ix), h
;strrt.c:46: u8 l = Len(s), k = 0;
	ex	de, hl
	push	hl
	call	_Len
	ld	-6 (ix), a
	pop	de
;strrt.c:47: if (idx == 0) idx = 1;
	ld	a, 4 (ix)
	or	a, a
	jr	nz, 00102$
	ld	4 (ix), #0x01
00102$:
;strrt.c:48: idx--;
	dec	4 (ix)
;strrt.c:49: while (k < cnt && idx + k < l) { dst[k] = s[idx + k]; k++; }
	ld	-1 (ix), #0x00
00104$:
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -1 (ix)
	sub	a, 5 (ix)
	jr	nc, 00106$
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, -6 (ix)
	ld	b, #0x00
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	nc, 00106$
	add	hl, de
	ld	a, (hl)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
	inc	-1 (ix)
	jr	00104$
00106$:
;strrt.c:50: dst[k] = 0;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x00
;strrt.c:51: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;strrt.c:53: u8 StrEq(const char* a, const char* b) { while (*a == *b) { if (!*a) return 1; a++; b++; } return 0; }
;	---------------------------------
; Function StrEq
; ---------------------------------
_StrEq::
00103$:
	ld	c, (hl)
	ld	a, (de)
	sub	a, c
	jr	nz, 00105$
	or	a, c
	jr	nz, 00102$
	ld	a, #0x01
	ret
00102$:
	inc	hl
	inc	de
	jr	00103$
00105$:
	xor	a, a
	ret
;strrt.c:54: void StrCpy(char* d, const char* s) { while ((*d++ = *s++)); }
;	---------------------------------
; Function StrCpy
; ---------------------------------
_StrCpy::
00101$:
	ld	a, (de)
	inc	de
	ld	(hl), a
	inc	hl
	or	a, a
	jr	nz, 00101$
	ret
;strrt.c:55: void StrCat(char* d, const char* s) { while (*d) d++; while ((*d++ = *s++)); }
;	---------------------------------
; Function StrCat
; ---------------------------------
_StrCat::
00101$:
	ld	a, (hl)
	inc	hl
	or	a, a
	jr	nz, 00101$
	dec	hl
00104$:
	ld	a, (de)
	inc	de
	ld	(hl), a
	inc	hl
	or	a, a
	jr	nz, 00104$
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
