// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Apresentacao (BASIC 2370-2430)
// |  |_| |___||_|_||___|     |
// |__________________________|
//
// Transcricao fiel das linhas 2370 a 2430 de basic/quentin.asc. O wrapping
// automatico de Print reproduz o PRINT do BASIC em WIDTH 40.
//-----------------------------------------------------------------------------
#include "sq_font.h"
#include "sq_input.h"
#include "sq_intro.h"

static void Intro_PrintLine(const c8* text)
{
	Print_DrawText(text);
	Print_Return();
}

void Intro_Show(void)
{
	// 2370 SCREEN 0:WIDTH 40:COLOR 15,1
	VDP_SetMode(VDP_MODE_SCREEN0);
	BIOS_SetColor(COLOR_WHITE, COLOR_BLACK, COLOR_BLACK);
	VDP_SetColor2(COLOR_BLACK, COLOR_WHITE);
	Print_SetTextFont(g_Font_BIOS_EU, 0);

	// 2380 CLS:PRINT"..."
	Print_Clear();
	Print_SetPosition(0, 0);
	Intro_PrintLine(
		"Scarp Lantra, o temivel ladrao de bancose assassino, condenado a prisao perpetua"
		"encontra-se no Presidio de San Quentin, de onde jurou escapar, aproveitando-se  "
		"do primeiro 'cochilo' dos carcereiros.");

	// 2390 PRINT:PRINT"..."
	Print_Return();
	Intro_PrintLine(
		"Certa noite, valendo-se de um blecauta  proveniente de um curto-circuito nas "
		"instalacoes eletricas da casa de forca do  presidio, os facinora julgou chegado o  "
		"momento exato para empreender sua fuga eassim alcancar a sonhada liberdade.");

	// 2400 PRINT:PRINT"Aceita..."
	Print_Return();
	Intro_PrintLine("Aceita acompanha-lo nessa dificil e perigosa empreitada?");

	// 2410 PRINT:PRINT:PRINTTAB(8)"Aperte qualquer tecla"
	Print_Return();
	Print_Return();
	Print_SetPositionX(8);
	Intro_PrintLine("Aperte qualquer tecla");

	// 2420 IF INKEY$=""THEN2420
	// 2430 RETURN
	Input_WaitKey();
}
