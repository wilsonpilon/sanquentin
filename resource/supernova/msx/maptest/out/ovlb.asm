;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module ovlb
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OvlB_Main
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
;E:\supernova\msx\maptest\ovl\ovlb.c:3: unsigned short OvlB_Main(const Api* api)
;	---------------------------------
; Function OvlB_Main
; ---------------------------------
_OvlB_Main::
;E:\supernova\msx\maptest\ovl\ovlb.c:5: api->Print("Overlay B running from page 2 (8000h). Fib(12) =");
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	hl, #___str_0
	push	bc
	pop	iy
	call	___sdcc_call_iy
	pop	de
;E:\supernova\msx\maptest\ovl\ovlb.c:6: api->PrintNum(Fib(12));
	ex	de, hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	a, #0x0c
	call	_Fib
	ex	de, hl
	pop	iy
	call	___sdcc_call_iy
;E:\supernova\msx\maptest\ovl\ovlb.c:7: return 0xB0B0;
	ld	de, #0xb0b0
;E:\supernova\msx\maptest\ovl\ovlb.c:8: }
	ret
___str_0:
	.ascii "Overlay B running from page 2 (8000h). Fib(12) ="
	.db 0x00
;E:\supernova\msx\maptest\ovl\ovlb.c:9: static unsigned short Fib(unsigned char n) { return n < 2 ? n : Fib(n - 1) + Fib(n - 2); }
;	---------------------------------
; Function Fib
; ---------------------------------
_Fib:
	ld	c, a
	sub	a, #0x02
	jr	nc, 00103$
	ld	d, #0x00
	jr	00104$
00103$:
	ld	a, c
	dec	a
	push	bc
	call	_Fib
	pop	bc
	ld	a, c
	dec	a
	dec	a
	push	de
	call	_Fib
	pop	hl
	add	hl, de
	ld	c, l
	ld	d, h
00104$:
	ld	e, c
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
