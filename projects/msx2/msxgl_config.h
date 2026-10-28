#pragma once

// Keep the library baseline shared; only the MSX2 differences belong here.
#include "../msx1/msxgl_config.h"

#undef BIOS_CALL_MAINROM
#define BIOS_CALL_MAINROM BIOS_CALL_INTERSLOT
// MSX-DOS 2 maps RAM over the main BIOS; sound uses the PSG ports directly.
#undef PSG_ACCESS
#define PSG_ACCESS PSG_DIRECT
#undef VDP_VRAM_ADDR
#define VDP_VRAM_ADDR VDP_VRAM_ADDR_17
#undef VDP_UNIT
#define VDP_UNIT VDP_UNIT_U16
#undef VDP_USE_MODE_G4
#define VDP_USE_MODE_G4 TRUE
#undef VDP_USE_PALETTE16
#define VDP_USE_PALETTE16 TRUE
#undef VDP_USE_DEFAULT_PALETTE
#define VDP_USE_DEFAULT_PALETTE TRUE
#undef PRINT_USE_BITMAP
#define PRINT_USE_BITMAP TRUE
#undef PRINT_COLOR_NUM
#define PRINT_COLOR_NUM 1
#undef PRINT_WIDTH
#define PRINT_WIDTH PRINT_WIDTH_6
#undef PRINT_HEIGHT
#define PRINT_HEIGHT PRINT_HEIGHT_8
