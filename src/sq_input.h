// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Entrada de teclado
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#pragma once

#include "msxgl.h"

enum INPUT_KEY
{
	INPUT_KEY_NONE = 0,
	INPUT_KEY_F1 = 0x80,
	INPUT_KEY_F2,
	INPUT_KEY_F3,
	INPUT_KEY_F4,
};

// Aguarda uma nova tecla e a consome antes de retornar.
void Input_WaitKey(void);

// Aguarda uma nova tecla textual ou de edicao e retorna seu codigo.
u8 Input_ReadKey(void);

// Libera a tecla fisica e esvazia o buffer BIOS antes de voltar ao DOS.
void Input_Flush(void);
