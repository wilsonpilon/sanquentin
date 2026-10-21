;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module ovla
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OvlA_Main
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
;E:\supernova\msx\maptest\ovl\ovla.c:3: unsigned short OvlA_Main(const Api* api)
;	---------------------------------
; Function OvlA_Main
; ---------------------------------
_OvlA_Main::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-1404
	add	iy, sp
	ld	sp, iy
	ex	de, hl
;E:\supernova\msx\maptest\ovl\ovla.c:6: api->Print("Overlay A running from page 2 (8000h).");
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	hl, #___str_0
	push	bc
	pop	iy
	call	___sdcc_call_iy
	pop	de
;E:\supernova\msx\maptest\ovl\ovla.c:7: api->ReadText(364, buf);        // a line record: swaps page 2 away from this very code and back
	ld	hl, #0x0004
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	push	de
	ld	hl, #0x016c
	push	bc
	pop	iy
	call	___sdcc_call_iy
	pop	de
;E:\supernova\msx\maptest\ovl\ovla.c:8: api->Print(buf);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	l, e
	ld	h, d
	push	bc
	pop	iy
	call	___sdcc_call_iy
	pop	de
;E:\supernova\msx\maptest\ovl\ovla.c:9: api->ReadText(1090, buf);       // a text block record (B)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	hl, #0x0442
	push	bc
	pop	iy
	call	___sdcc_call_iy
	pop	de
;E:\supernova\msx\maptest\ovl\ovla.c:10: buf[40] = 0;
	ld	iy, #40
	add	iy, sp
	ld	0 (iy), #0x00
;E:\supernova\msx\maptest\ovl\ovla.c:11: api->Print(buf);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ex	de, hl
	pop	iy
	call	___sdcc_call_iy
;E:\supernova\msx\maptest\ovl\ovla.c:12: return 0xA0A0;
	ld	de, #0xa0a0
;E:\supernova\msx\maptest\ovl\ovla.c:13: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "Overlay A running from page 2 (8000h)."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
