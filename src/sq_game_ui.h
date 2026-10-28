#pragma once

#include "sq_game.h"

void GameUI_Clear(void);
void GameUI_Position(u8 x, u8 y);
void GameUI_PositionX(u8 x);
void GameUI_Return(void);
void GameUI_Char(u8 character);
void GameUI_Backspace(void);
void GameUI_FunctionBar(void);
void GameUI_Refresh(void);
void GameUI_Initialize(void);
void GameUI_ReadCommand(c8* buffer);
