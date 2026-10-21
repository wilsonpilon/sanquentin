// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Recursos de fonte
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#include "sq_font.h"
#include "font/font_bios_latin.h"
#include "../projects/msx1/out/font_vram.h"

void Font_LoadScreen0(void)
{
	Print_SetTextFont(g_Font_VRAM, 0);
	// MSXgl's character count is limited to 255; upload the final glyph separately.
	VDP_WriteVRAM_16K(g_Font_VRAM + 4 + 255 * 8, g_ScreenPatternLow + 255 * 8, 8);
	PRINT_DATA.CharLast = 255;
}
