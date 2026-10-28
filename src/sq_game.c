// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Estado inicial e primeira tela jogavel
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#include "sq_game.h"
#include "sq_input.h"
#include "sq_solver.h"
#include "sq_random.h"
#include "sq_game_ui.h"

#define GAME_CURSOR_CHAR	0xDB

Engine_State g_GameState;

static unsigned char Game_Random(void* context, unsigned char range)
{
	(void)context;
	Random_Time(&g_RandomState, g_JIFFY);
	return (unsigned char)Random_Range(&g_RandomState, range);
}

static void Game_Return(void)
{
	GameUI_Return();
}

static void Game_DrawChar(u8 character)
{
	GameUI_Char(character);
}

#if DEBUG
static bool Game_IsSolverCommand(const c8* command)
{
	const c8* secret = "RESOLVER";
	while(*secret && *command == *secret)
	{
		++command;
		++secret;
	}
	return *secret == 0 && *command == 0;
}
#endif

static void Game_Print(const c8* text)
{
	while(*text)
		Game_DrawChar(*text++);
}

#if MSX_VERSION == MSX_1
static void Game_Backspace(void)
{
	GameUI_Backspace();
}
#endif

static void Game_PrintLine(const c8* text)
{
	Game_Print(text);
	Game_Return();
}

#if MSX_VERSION == MSX_1
static const c8* Game_FunctionCommand(u8 key)
{
	switch(key)
	{
	case INPUT_KEY_F1: return "NORTE";
	case INPUT_KEY_F2: return "SUL";
	case INPUT_KEY_F3: return "LESTE";
	case INPUT_KEY_F4: return "OESTE";
	}
	return NULL;
}

static void Game_ReadCommand(c8* buffer)
{
	u8 length = 0;

	buffer[0] = 0;
	Game_DrawChar(GAME_CURSOR_CHAR);
	for(;;)
	{
		const c8* command;
		u8 key = Input_ReadKey();

		Game_Backspace();
		command = Game_FunctionCommand(key);
		if(command != NULL)
		{
			while(*command != 0 && length < GAME_INPUT_CAPACITY - 1)
			{
				buffer[length++] = *command;
				Game_DrawChar(*command++);
			}
			buffer[length] = 0;
			Game_Return();
			return;
		}
		if(key == '\r')
		{
			buffer[length] = 0;
			Game_Return();
			return;
		}
		if(key == '\b')
		{
			if(length > 0)
			{
				--length;
				buffer[length] = 0;
				Game_Backspace();
			}
		}
		else if(key >= ' ' && key <= 'Z' && length < GAME_INPUT_CAPACITY - 1)
		{
			buffer[length++] = key;
			buffer[length] = 0;
			Game_DrawChar(key);
		}
		Game_DrawChar(GAME_CURSOR_CHAR);
	}
}
#else
static void Game_ReadCommand(c8* buffer) { GameUI_ReadCommand(buffer); }
#endif

void Game_Initialize(void)
{
	u8 randomRoom;

	randomRoom = 3 + Game_Random(NULL, 15);
	Engine_Initialize(&g_GameState, randomRoom);
}

static void Game_DrawFunctionBar(void)
{
	GameUI_FunctionBar();
}

static void Game_ClearRoom(void)
{
	GameUI_Clear();
	GameUI_Position(0, 0);
	Game_DrawFunctionBar();
	GameUI_Position(0, 0);
}

static void Game_DrawObjects(void)
{
	u8 i;

	// BASIC 490-500
	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
	{
		if(g_GameState.ObjectLocations[i] == (i8)g_GameState.Location)
			Game_PrintLine(g_EngineObjects[i].Description);
	}
}

static void Game_DrawDirections(void)
{
	if(Engine_ShowDirections(&g_GameState))
	{
		Game_Return();
		Game_Print("PODE SEGUIR:");
		if(g_GameState.North)
		{
			GameUI_PositionX(13);
			Game_PrintLine("NORTE");
		}
		if(g_GameState.East)
		{
			GameUI_PositionX(13);
			Game_PrintLine("LESTE");
		}
		if(g_GameState.South)
		{
			GameUI_PositionX(13);
			Game_PrintLine("SUL  ");
		}
		if(g_GameState.West)
		{
			GameUI_PositionX(13);
			Game_PrintLine("OESTE");
		}
		if(!g_GameState.North && !g_GameState.East && !g_GameState.South && !g_GameState.West)
			Game_Return();
	}
}

static void Game_DrawRoom(bool clear)
{
	Engine_RoomInfo info;

	if(clear)
		Game_ClearRoom();

	Engine_GetRoomInfo(&g_GameState, &info);
	if(info.Description != NULL)
		Game_PrintLine(info.Description);
	if(info.Detail != NULL)
		Game_PrintLine(info.Detail);
	Game_DrawObjects();
	Game_DrawDirections();
}

static void Game_PrintInventory(void)
{
	u8 i;
	bool empty = TRUE;

	Game_Return();
	Game_PrintLine("VOCE CARREGA :");
	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
	{
		if(g_GameState.ObjectLocations[i] == ENGINE_INVENTORY)
		{
			GameUI_PositionX(14);
			Game_PrintLine(g_EngineObjects[i].Name);
			empty = FALSE;
		}
	}
	Game_Return();
	if(empty)
	{
		GameUI_PositionX(14);
		Game_PrintLine("NADA!!");
		Game_Return();
	}
}

static bool Game_PrintResponse(const Parser_Result* parsed, const Engine_Response* response)
{
	switch(response->Type)
	{
	case ENGINE_RESPONSE_CONTINUE:
		return FALSE;
	case ENGINE_RESPONSE_REDRAW:
		return TRUE;
	case ENGINE_RESPONSE_UNKNOWN_VERB:
		Game_Return();
		Game_Print("O QUE E ");
		Game_Print(parsed->Verb);
		Game_PrintLine(" ???");
		Game_Return();
		return TRUE;
	case ENGINE_RESPONSE_HELP_HEAVY:
		Game_Return();
		Game_PrintLine("ALGUNS OBJETOS PODEM SER PESADOS!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_HELP_ATTENTION:
		Game_Return();
		Game_PrintLine("CERTOS OBJETOS CHAMAM MUITA ATENCAO!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_HELP_LOST:
		Game_Return();
		Game_PrintLine("VOCE NAO DEVIA TER ENTRADO AQUI SEM A   LANTERNA! DESISTA, VOCE ESTA PERDIDO!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_HELP_NONE:
		Game_Return();
		Game_PrintLine("DESCULPE, NAO POSSO AJUDAR AGORA!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_HEADBANG:
		Game_Return();
		Game_PrintLine("VOCE ESTA DANDO CABECADA NA PAREDE.     TENTE OUTRO CAMINHO.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_UNKNOWN_OBJECT:
		Game_Return();
		Game_Print("NAO SEI O QUE E ");
		Game_PrintLine(parsed->Noun);
		Game_Return();
		break;
	case ENGINE_RESPONSE_OK:
		Game_PrintLine("OK!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_INVENTORY:
		Game_PrintInventory();
		break;
	case ENGINE_RESPONSE_INVENTORY_FULL:
		Game_Return();
		Game_PrintLine("VOCE NAO TEM COMO CARREGAR TANTOS       OBJETOS. DEIXE UM!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_ALREADY_HAVE:
		Game_Return();
		Game_PrintLine("VOCE JA PEGOU.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_NOT_HERE:
		Game_Return();
		Game_Return();
		Game_PrintLine("NAO ESTA AQUI.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_DO_NOT_HAVE:
		Game_Return();
		Game_Print("VOCE NAO PODE ");
		Game_Print(parsed->Verb);
		Game_PrintLine(" O QUE NAO TEM.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_WHAT:
		Game_Return();
		Game_PrintLine("O QUE ?");
		Game_Return();
		break;
	case ENGINE_RESPONSE_WHERE:
		Game_Return();
		Game_PrintLine("ONDE ?");
		Game_Return();
		break;
	case ENGINE_RESPONSE_NO_SAW:
		Game_Return();
		Game_PrintLine("VOCE NAO TEM A SERRA.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_NO_KNIFE:
		Game_Return();
		Game_PrintLine("VOCE NAO TEM O CANIVETE.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_NO_SPOON:
		Game_Return();
		Game_PrintLine("VOCE NAO TEM A COLHER!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_KILL_WHO:
		Game_Return();
		Game_Print(parsed->Verb);
		Game_PrintLine(" QUEM ?");
		Game_Return();
		break;
	case ENGINE_RESPONSE_DOES_NOT_LIGHT:
		Game_Return();
		Game_PrintLine("ISSO NAO ACENDE.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_ALREADY_LIT:
		Game_Return();
		Game_PrintLine("JA ESTA ACESA.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_DOES_NOT_EXTINGUISH:
		Game_Return();
		Game_PrintLine("ISSO NAO APAGA.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_ALREADY_DARK:
		Game_Return();
		Game_PrintLine("JA ESTA APAGADA.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_QUIT:
		GameUI_Clear();
		GameUI_Position(12, 0);
		Game_PrintLine("QUE VERGONHA!");
		return TRUE;
	case ENGINE_RESPONSE_MOVED:
		return TRUE;
	case ENGINE_RESPONSE_ROOM_NOT_IMPLEMENTED:
		Game_Return();
		Game_PrintLine("LOCAL AINDA NAO IMPLEMENTADO.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_DUG:
		Game_PrintLine("OK!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_OPEN_NO_KEY:
		Game_Return();
		Game_PrintLine("COM O QUE ?");
		Game_Return();
		break;
	case ENGINE_RESPONSE_DROWNED:
		Game_Return();
		Game_PrintLine("VOCE SE AFOGOU! A SERRA QUE VOCE LEVAVA ERA MUITO PESADA.");
		break;
	case ENGINE_RESPONSE_COIN_FOUND:
		Game_Return();
		Game_PrintLine("VOCE ACHOU UMA MOEDA. VOLTE!");
		Game_PrintLine("A CORRENTEZA ESTA MUITO FORTE.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_WET:
		Game_Return();
		Game_PrintLine("VOCE SE MOLHOU TODO!");
		Game_Return();
		break;
	case ENGINE_RESPONSE_WON:
		return TRUE;
	case ENGINE_RESPONSE_ESCAPED_WITH_BONE:
		Game_Return();
		Game_PrintLine("VOCE FUGIU! MAS DEVIDO AO OSSO QUE VOCE LEVAVA, OS CAES LHE FAREJARAM.");
		return TRUE;
	case ENGINE_RESPONSE_GUARD_CAUGHT:
		Game_Return();
		Game_PrintLine("COMO VOCE NAO TEM NADA QUE POSSA        SUBORNAR O GUARDA, ELE O PRENDE EM NOME DA LEI.");
		return TRUE;
	case ENGINE_RESPONSE_GUARD_UNIFORM:
		Game_Return();
		Game_PrintLine("ELE LHE VIU UNIFORMIZADO DE GUARDA E    LHE CONFUNDIU COM OUTRO GUARDA.");
		Game_Return();
		break;
	case ENGINE_RESPONSE_GUARD_CONFISCATED:
	case ENGINE_RESPONSE_GUARD_KEY_CONFISCATED:
		Game_Return();
		Game_Print("ELE CONFISCOU O SEGUINTE OBJETO:");
		Game_PrintLine(g_EngineObjects[(u8)response->ObjectIndex].Name);
		Game_Return();
		if(response->Type == ENGINE_RESPONSE_GUARD_KEY_CONFISCATED)
		{
			Game_PrintLine("PROCURE OUTRA!");
			Game_Return();
		}
		break;
	case ENGINE_RESPONSE_GUARD_KILLED:
		Game_Return();
		Game_Print("VOCE MATOU O ");
		Game_PrintLine(g_EngineObjects[ENGINE_OBJECT_GUARD].Name);
		Game_Return();
		break;
	case ENGINE_RESPONSE_PATIO_DEATH:
		Game_Return();
		Game_PrintLine("VOCE PASSOU NO PATIO COM A LANTERNA     ACESA E FOI FUZILADO!");
		return TRUE;
	case ENGINE_RESPONSE_DIG_DEATH:
		Game_Return();
		Game_PrintLine("A ESCADA FEZ COM QUE VOCE SE ENTALASSE  NO TUNEL!");
		return TRUE;
	}
	return response->Type == ENGINE_RESPONSE_QUIT;
}

static bool Game_EndGame(unsigned char won, unsigned char shame)
{
	u8 key;

	if(shame)
	{
		GameUI_Clear();
		GameUI_Position(12, 0);
		Game_PrintLine("QUE VERGONHA!");
		return FALSE;
	}

	if(won)
	{
		GameUI_Clear();
		GameUI_Position(0, 0);
		Game_Return();
		GameUI_PositionX(14);
		Game_PrintLine("PARABENS!");
		Game_Return();
		Game_PrintLine("VOCE CONSEGUIU A LIBERDADE!");
		Game_PrintLine("AGORA PROCURE TRILHAR O CAMINHO DO BEM, POIS O CRIME (AS VEZES) NAO COMPENSA!");
	}
	Game_Return();
	Game_Return();
	GameUI_PositionX(7);
	Game_Print("ACEITA OUTRA FUGA (S/N)?");
	key = Input_ReadKey();
	return key == 'S';
}

bool Game_Run(void)
{
	c8 command[GAME_INPUT_CAPACITY];
	Parser_Result parsed;
	Engine_Response response;
	bool clearPrompt;
#if DEBUG
	Solver_State solver;
	bool solving = FALSE;
	Solver_Initialize(&solver);
#endif

	GameUI_Initialize();
	Game_DrawRoom(TRUE);
	for(;;)
	{
		Engine_Response preCommand;

		// BASIC 590
		GameUI_Refresh();
#if MSX_VERSION == MSX_1
		Game_Return();
		Game_Print("QUAL O COMANDO ? ");
#endif
#if DEBUG
		if(solving)
		{
			const char* next = Solver_Next(&solver, &g_GameState);
			if(next == NULL)
			{
				Game_Return();
				Game_PrintLine(solver.Error);
				solving = FALSE;
				continue;
			}
			String_Copy(command, next);
			Game_Print(command);
			for(;;)
			{
				u8 key = Input_ReadKey();
				if(key == '\r')
					break;
				if(key == 8)
				{
					solving = FALSE;
					break;
				}
			}
			Game_Return();
			if(!solving)
			{
				Game_PrintLine("RESOLVER CANCELADO.");
				continue;
			}
		}
		else
#endif
		Game_ReadCommand(command);

#if DEBUG
		if(Game_IsSolverCommand(command))
		{
			Solver_Initialize(&solver);
			solving = TRUE;
			Game_PrintLine("RESOLVER: ENTER EXECUTA; BS CANCELA.");
			continue;
		}
#endif
		// BASIC 600 e 640-650
		Parser_Parse(command, &parsed);
		Engine_PreCommand(&g_GameState, parsed.Action, Game_Random, NULL, &preCommand);
		if(preCommand.Type != ENGINE_RESPONSE_CONTINUE)
			response = preCommand;
		else
			Engine_Dispatch(&g_GameState, &parsed, &response);
		clearPrompt = Game_PrintResponse(&parsed, &response);
		if(response.Type == ENGINE_RESPONSE_WON ||
			response.Type == ENGINE_RESPONSE_ESCAPED_WITH_BONE ||
			response.Type == ENGINE_RESPONSE_DROWNED ||
			response.Type == ENGINE_RESPONSE_DIG_DEATH ||
			response.Type == ENGINE_RESPONSE_GUARD_CAUGHT ||
			response.Type == ENGINE_RESPONSE_PATIO_DEATH)
		{
			GameUI_Refresh();
			if(Game_EndGame(response.Type == ENGINE_RESPONSE_WON,
				parsed.Action == PARSER_ACTION_QUIT))
				return TRUE;
			return FALSE;
		}
		if(response.Type == ENGINE_RESPONSE_QUIT)
			return FALSE;

		if(response.Flow == ENGINE_FLOW_CLEAR_VISIT)
			Game_ClearRoom();
		Engine_Resume(&g_GameState, &response, Game_Random, NULL);
		if(response.Flow == ENGINE_FLOW_OBJECTS)
		{
			Game_DrawObjects();
			Game_DrawDirections();
		}
		else if(!clearPrompt || response.Flow == ENGINE_FLOW_VISIT ||
			response.Flow == ENGINE_FLOW_CLEAR_VISIT)
			Game_DrawRoom(FALSE);
	}
}
