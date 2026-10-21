// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Estado inicial e primeira tela jogavel
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#pragma once

#include "msxgl.h"
#include "sq_engine.h"

#define GAME_INPUT_CAPACITY		22

extern Engine_State g_GameState;

// Inicializa as linhas BASIC 100-410.
void Game_Initialize(void);

// Executa o ciclo de comandos disponivel neste marco.
bool Game_Run(void);
