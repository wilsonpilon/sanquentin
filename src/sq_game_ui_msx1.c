#include "sq_game_ui.h"

static void Scroll(void)
{
	u8 row;
	u8 buffer[40];
	for(row = 1; row < 23; ++row)
	{
		VDP_ReadVRAM_16K(g_ScreenLayoutLow + row * 40, buffer, 40);
		VDP_WriteVRAM_16K(buffer, g_ScreenLayoutLow + (row - 1) * 40, 40);
	}
	VDP_FillVRAM_16K(0, g_ScreenLayoutLow + 22 * 40, 40);
	Print_SetPosition(0, 22);
}

void GameUI_Clear(void) { Print_Clear(); }
void GameUI_Position(u8 x, u8 y) { Print_SetPosition(x, y); }
void GameUI_PositionX(u8 x) { Print_SetPositionX(x); }
void GameUI_Return(void)
{
	Print_Return();
	if(PRINT_DATA.CursorY >= 23)
		Scroll();
}
void GameUI_Char(u8 character)
{
	if(character == '\n')
	{
		GameUI_Return();
		return;
	}
	if(PRINT_DATA.CursorX >= 40)
		GameUI_Return();
	if(PRINT_DATA.CursorY >= 23)
		Scroll();
	Print_DrawChar(character);
}
void GameUI_Backspace(void)
{
	if(PRINT_DATA.CursorX == 0 && PRINT_DATA.CursorY > 0)
		Print_SetPosition(40, PRINT_DATA.CursorY - 1);
	if(PRINT_DATA.CursorX > 0)
		Print_Backspace(1);
}
void GameUI_FunctionBar(void) { Print_DrawTextAt(1, 23, "NORTE   SUL   LESTE   OESTE"); }
void GameUI_Refresh(void) {}
void GameUI_Initialize(void) {}
