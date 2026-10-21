// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Tela de abertura (BASIC 2450-2910)
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#pragma once

#include "msxgl.h"

// Desenha a prisao em SCREEN 2 (linhas 2450-2890 de basic/quentin.asc).
void Title_Draw(void);

// Sequencia completa: desenha e espera uma tecla.
void Title_Show(void);
