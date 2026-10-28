#include "msxgl.h"
#include "out/build_version.h"
#include "dos.h"
#include "dos_mapper.h"
#include "../../src/sq_title_msx2.h"
#include "../../src/sq_game.h"
#include "../../src/sq_input.h"
#include "../../src/sq_random.h"

const c8 g_SQ_BuildVersion[] = "San Quentin " SQ_BUILD_VERSION;

void main(void)
{
	DOS_Version version;
	DOS_VarTable* mapper;

	if(DOS_GetVersion(&version) < 2)
	{
		DOS_StringOutput("San Quentin MSX2 requer MSX-DOS 2.\r\n$");
		DOS_Exit(1);
		return;
	}
	if(!DOSMapper_Init())
	{
		DOS_StringOutput("Mapper do MSX-DOS 2 indisponivel.\r\n$");
		DOS_Exit(1);
		return;
	}
	mapper = DOSMapper_GetVarTable();
	// Zero encodes 256 segments (4MB) in the DOS2 mapper table.
	if(mapper->NumSeg != 0 && mapper->NumSeg < 32)
	{
		DOS_StringOutput("San Quentin MSX2 requer mapper de 512KB.\r\n$");
		DOS_Exit(1);
		return;
	}

	if(Title2_Show())
	{
		do
		{
			Random_Initialize(&g_RandomState);
			Game_Initialize();
		}
		while(Game_Run());
		Input_Flush();
	}
	BIOS_Exit(0);
}
