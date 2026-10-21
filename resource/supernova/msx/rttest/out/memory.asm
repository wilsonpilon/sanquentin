;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module memory
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_StackAddress
	.globl _Mem_GetStackAddress
	.globl _Mem_Set_16b
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_StackAddress::
	.ds 2
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
;E:\supernova\MSXgl\engine/src/memory.c:29: u16 Mem_GetStackAddress() __NAKED
;	---------------------------------
; Function Mem_GetStackAddress
; ---------------------------------
_Mem_GetStackAddress::
;E:\supernova\MSXgl\engine/src/memory.c:35: __endasm;
	ld (_g_StackAddress), sp
	ld de, (_g_StackAddress)
	ret
;E:\supernova\MSXgl\engine/src/memory.c:36: }
;E:\supernova\MSXgl\engine/src/memory.c:150: void Mem_Set_16b(u16 val, void* dest, u16 size)
;	---------------------------------
; Function Mem_Set_16b
; ---------------------------------
_Mem_Set_16b::
;E:\supernova\MSXgl\engine/src/memory.c:185: __endasm;
	push de
	ex de, hl
	ld (hl), d
	inc hl
	ld (hl), e
	inc hl
	ex de, hl
	pop hl
	pop iy
	pop bc
	dec bc
	dec bc
	ldir
mem_fill16_end:
	jp (iy)
;E:\supernova\MSXgl\engine/src/memory.c:186: }
	pop	hl
	pop	af
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
