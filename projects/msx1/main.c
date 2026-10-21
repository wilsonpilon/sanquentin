// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   MSX-DOS 1 .COM
// |  |_| |___||_|_||___|     |
// |__________________________|
//
// Marco atual: sequencia inicial ate a primeira entrada de comando.
//-----------------------------------------------------------------------------
#include "msxgl.h"
#include "out/build_version.h"
#include "../../src/sq_game.h"
#include "../../src/sq_intro.h"
#include "../../src/sq_title.h"
#include "../../src/sq_input.h"
#include "../../src/sq_random.h"

const c8 g_SQ_BuildVersion[] = "San Quentin " SQ_BUILD_VERSION;

void main(void)
{
	while(TRUE)
	{
		Random_Initialize(&g_RandomState);
		Title_Show();
		Intro_Show();
		Game_Initialize();
		if(!Game_Run())
			break;
	}

	Input_Flush();
	BIOS_Exit(0);
}
