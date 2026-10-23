// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - shared core
// |  | | | . ||   || . |     |   Estado e despacho de acoes
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#include "sq_engine.h"

const Engine_Object g_EngineObjects[ENGINE_OBJECT_COUNT] =
{
	// BASIC 210-340
	{ 3,  "COLHER",    "HA UMA COLHER NO CHAO." },
	{ 4,  "LENCOL",    "HA UM LENCOL BRANCO AQUI." },
	{ 5,  "ESCADA",    "TEM UMA PEQUENA ESCADA ALI NAQUELE      CANTO ESCURO." },
	{ 1,  "SERRA",     "TEM UMA SERRA POR AQUI." },
	{ 7,  "LIVRO",     "HA UM LIVRO MUITO GROSSO AQUI." },
	{ 10, "CRUCIFIXO", "TEM UM CRUCIFIXO DOURADO AQUI." },
	{ 16, "CORDA",     "AQUI TEM UMA CORDA." },
	{ 19, "OSSO",      "TEM UM OSSO PONTIAGUDO NO CHAO." },
	{ 20, "UNIFORME",  "TEM UM UNIFORME DE GUARDA AQUI." },
	{ 0,  "MOEDA",     "VEJA! TEM UMA MOEDA ALI!" },
	{ 0,  "CANIVETE",  "TEM UM CANIVETE ALI." },
	{ 0,  "LANTERNA",  "CUIDADO COM A LANTERNA NO CHAO. NAO VA  PISA-LA!" },
	{ 0,  "CHAVE",     "ACHOU A CHAVE! SERA ESTA?" },
	{ 0,  "GUARDA",    "CUIDADO! O GUARDA LHE VIU. TENTE        SUBORNA-LO." },
};

static signed char Engine_FindObject(const char* noun)
{
	unsigned char i;

	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
	{
		if(Parser_IsPrefix(g_EngineObjects[i].Name, noun))
			return (signed char)i;
	}
	return -1;
}

static unsigned char Engine_RandomRange(Engine_RandomFunction random, void* context, unsigned char range)
{
	return random(context, range);
}

static unsigned char Engine_HasInventory(const Engine_State* state)
{
	unsigned char i;

	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
	{
		if(state->ObjectLocations[i] == ENGINE_INVENTORY)
			return 1;
	}
	return 0;
}

static void Engine_RandomizeObjects(Engine_State* state, Engine_RandomFunction random, void* context)
{
	unsigned char room = 3 + Engine_RandomRange(random, context, 15);

	if(state->ObjectLocations[ENGINE_OBJECT_KNIFE] != ENGINE_INVENTORY)
		state->ObjectLocations[ENGINE_OBJECT_KNIFE] = (signed char)room;
	if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY)
		state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = (signed char)(room - 1);
	if(state->ObjectLocations[ENGINE_OBJECT_KEY] != ENGINE_INVENTORY)
		state->ObjectLocations[ENGINE_OBJECT_KEY] = (signed char)(room + 3);
}

void Engine_BeginRoomVisit(Engine_State* state, Engine_RandomFunction random, void* context)
{
	random(context, 0);
	if(Engine_RandomRange(random, context, 15) == 0 && !state->GuardActive)
	{
		state->ObjectLocations[ENGINE_OBJECT_GUARD] = (signed char)state->Location;
		state->GuardActive = 1;
	}
}

unsigned char Engine_ShowDirections(Engine_State* state)
{
	if((state->Location != 12 && state->GrateSawed) ||
		(state->LampLit && state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY))
	{
		// BASIC 530 is reached only when line 520 displays directions.
		if(state->Location == 1)
			state->GuardActive = 0;
		return 1;
	}
	return 0;
}

void Engine_Resume(Engine_State* state, const Engine_Response* response,
	Engine_RandomFunction random, void* context)
{
	if(response->Flow == ENGINE_FLOW_END)
		return;
	if(response->Flow == ENGINE_FLOW_VISIT || response->Flow == ENGINE_FLOW_CLEAR_VISIT)
		Engine_BeginRoomVisit(state, random, context);
	if(response->Flow == ENGINE_FLOW_RANDOMIZE)
		Engine_RandomizeObjects(state, random, context);
	if(response->Flow != ENGINE_FLOW_OBJECTS)
		Engine_EnterRoom(state);
}

void Engine_PreCommand(Engine_State* state, unsigned char action, Engine_RandomFunction random,
	void* context, Engine_Response* response)
{
	response->Type = ENGINE_RESPONSE_CONTINUE;
	response->ObjectIndex = -1;
	response->Flow = ENGINE_FLOW_ROOM;

	if(state->Location == 15 &&
		state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY && state->LampLit)
	{
		response->Type = ENGINE_RESPONSE_PATIO_DEATH;
		response->Flow = ENGINE_FLOW_END;
		return;
	}

	if(state->ObjectLocations[ENGINE_OBJECT_GUARD] != (signed char)state->Location ||
		action == PARSER_ACTION_KILL)
		return;

	state->ObjectLocations[ENGINE_OBJECT_GUARD] = 0;
	if(!Engine_HasInventory(state))
	{
		response->Type = ENGINE_RESPONSE_GUARD_CAUGHT;
		response->Flow = ENGINE_FLOW_END;
		return;
	}
	if(state->ObjectLocations[ENGINE_OBJECT_UNIFORM] == ENGINE_INVENTORY)
	{
		response->Type = ENGINE_RESPONSE_GUARD_UNIFORM;
		return;
	}

	do
	{
		response->ObjectIndex = (signed char)Engine_RandomRange(random, context, ENGINE_OBJECT_COUNT);
	}
	while(state->ObjectLocations[(unsigned char)response->ObjectIndex] != ENGINE_INVENTORY);

	state->ObjectLocations[(unsigned char)response->ObjectIndex] = 0;
	--state->Load;
	if(response->ObjectIndex == ENGINE_OBJECT_KEY)
	{
		response->Type = ENGINE_RESPONSE_GUARD_KEY_CONFISCATED;
		response->Flow = ENGINE_FLOW_RANDOMIZE;
	}
	else
		response->Type = ENGINE_RESPONSE_GUARD_CONFISCATED;
}

void Engine_EnterRoom(Engine_State* state)
{
	if(state->Location == 22 || state->Location == 23)
		return;

	if(state->Location != 24)
		state->East = 0;
	state->North = 0;
	state->South = 0;
	state->West = 0;

	switch(state->Location)
	{
	case 1:
		if(state->GrateSawed)
			state->East = 1;
		break;
	case 2:
	case 3:
		state->East = 1;
		state->South = 1;
		state->West = 1;
		break;
	case 4:
	case 6:
		state->South = 1;
		state->West = 1;
		break;
	case 5:
		state->East = 1;
		state->South = 1;
		break;
	case 7:
		state->East = 1;
		state->South = 1;
		break;
	case 8:
		state->North = 1;
		state->South = 1;
		state->West = 1;
		break;
	case 9:
		state->North = 1;
		break;
	case 10:
		state->North = 1;
		state->East = 1;
		break;
	case 11:
		state->North = 1;
		state->West = 1;
		if(state->ObjectLocations[ENGINE_OBJECT_SPOON] == ENGINE_INVENTORY && state->HoleDug)
		{
			state->East = 1;
			state->South = 1;
		}
		break;
	case 12:
		if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY && state->LampLit)
		{
			state->North = 1;
			state->South = 1;
			state->West = 1;
		}
		break;
	case 13:
		state->North = 1;
		state->South = 1;
		break;
	case 14:
		state->North = 1;
		state->East = 1;
		state->South = 1;
		break;
	case 15:
		state->East = 1;
		state->South = 1;
		state->West = 1;
		break;
	case 16:
		state->West = 1;
		break;
	case 17:
		state->North = 1;
		break;
	case 18:
		state->North = 1;
		state->South = 1;
		break;
	case 19:
	case 20:
	case 21:
		state->North = 1;
		break;
	case 24:
		state->North = 1;
		state->East = 0;
		state->South = 0;
		state->West = 0;
		break;
	}
}

void Engine_GetRoomInfo(const Engine_State* state, Engine_RoomInfo* info)
{
	info->Description = 0;
	info->Detail = 0;

	switch(state->Location)
	{
	case 1:
		info->Description = "VOCE ESTA NA SUA CELA,";
		if(!state->GrateSawed)
			info->Detail = "ESTA PRESO.";
		break;
	case 2:
		info->Description = "VOCE SE ENCONTRA EM UM LONGO CORREDOR   DE CELAS.";
		break;
	case 3:
		info->Description = "CHEGOU AO REFEITORIO, A LONGA MESA DE   MADEIRA AINDA CONTEM OS PRATOS DO       JANTAR.";
		break;
	case 4:
		info->Description = "VOCE ENTRA NA ENFERMARIA NA PONTA DOS   PES.";
		break;
	case 5:
		info->Description = "VOCE ESTA NO ALMOXARIFADO.";
		break;
	case 6:
		info->Description = "VOCE ESTA NA HORTA. CUIDADO, NAO PISE   NOS LEGUMES!";
		break;
	case 7:
		info->Description = "VOCE ESTA NA BIBLIOTECA.";
		break;
	case 8:
		info->Description = "VOCE ESTA NO SALAO DE VISITAS.";
		break;
	case 9:
		info->Description = "VOCE ESTA NA COZINHA.";
		break;
	case 10:
		info->Description = "VOCE ESTA NA CAPELA. REZE PARA NAO SER  PEGO.";
		break;
	case 11:
		info->Description = "VOCE ENTROU NUM TUNEL SECRETO COM       VARIAS PASSAGENS.";
		if(state->ObjectLocations[ENGINE_OBJECT_SPOON] != ENGINE_INVENTORY || !state->HoleDug)
			info->Detail = "ALGUMAS VOCE NAO PODE VER.";
		break;
	case 12:
		info->Description = "VOCE ESTA NO NECROTERIO ESCURO.";
		if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY || !state->LampLit)
			info->Detail = "ESTA FRIO E MUITO ESCURO PARA VER AS    SAIDAS.";
		break;
	case 13:
		info->Description = "NAO PARE, POIS VOCE ESTA NA SALA DO     DIRETOR.";
		break;
	case 14:
		info->Description = "VOCE ESTA AGORA ATRAVESSANDO UM         CORREDOR.";
		break;
	case 15:
		info->Description = "VOCE ESTA NO PATIO. CUIDADO, OU OS      HOLOFOTES LHE DENUNCIARAO.";
		break;
	case 16:
		info->Description = "VOCE ACABA DE ENTRAR NA OFICINA.";
		break;
	case 17:
		info->Description = "VOCE ESTA A BEIRA DE UM GRANDE RIO.";
		break;
	case 18:
		info->Description = "VOCE ESTA PASSANDO PELA GUARITA LESTE.  CUIDADO, E MUITO ARRISCADO!";
		break;
	case 19:
		info->Description = "CELA SURDA, ONDE OS PRESOS SAO          CASTIGADOS.";
		break;
	case 20:
		info->Description = "VOCE ENTROU NA LAVANDERIA.";
		break;
	case 21:
		info->Description = "MUITA ATENCAO, VOCE ESTA DIANTE DA      GUARITA SUL.";
		break;
	case 24:
		info->Description = "VOCE CONSEGUIU CHEGAR AO PORTAO DE      SAIDA!";
		break;
	}
}

static void Engine_Move(Engine_State* state, const Parser_Result* command, Engine_Response* response)
{
	unsigned char moved = 0;

	switch(command->CommandInitial)
	{
	case 'N':
		if(state->North)
		{
			state->Location -= 6;
			moved = 1;
		}
		break;
	case 'L':
		if(state->East)
		{
			++state->Location;
			moved = 1;
		}
		break;
	case 'S':
		if(state->South)
		{
			state->Location += 6;
			moved = 1;
		}
		break;
	case 'O':
		if(state->West)
		{
			--state->Location;
			moved = 1;
		}
		break;
	}

	if(moved)
	{
		response->Type = ENGINE_RESPONSE_MOVED;
		response->Flow = ENGINE_FLOW_CLEAR_VISIT;
	}
	else
		response->Type = ENGINE_RESPONSE_HEADBANG;
}

static void Engine_Take(Engine_State* state, const Parser_Result* command, Engine_Response* response)
{
	signed char object = Engine_FindObject(command->Noun);

	response->ObjectIndex = object;
	if(object < 0)
		response->Type = ENGINE_RESPONSE_UNKNOWN_OBJECT;
	else if(state->Load == 3)
		response->Type = ENGINE_RESPONSE_INVENTORY_FULL;
	else if(state->ObjectLocations[object] == ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_ALREADY_HAVE;
	else if(state->ObjectLocations[object] != (signed char)state->Location)
		response->Type = ENGINE_RESPONSE_NOT_HERE;
	else
	{
		state->ObjectLocations[object] = ENGINE_INVENTORY;
		++state->Load;
		response->Type = ENGINE_RESPONSE_OK;
	}
}

static void Engine_Drop(Engine_State* state, const Parser_Result* command, Engine_Response* response)
{
	signed char object = Engine_FindObject(command->Noun);

	response->ObjectIndex = object;
	if(object < 0)
		response->Type = ENGINE_RESPONSE_UNKNOWN_OBJECT;
	else if(state->ObjectLocations[object] != ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_DO_NOT_HAVE;
	else
	{
		state->ObjectLocations[object] = (signed char)state->Location;
		--state->Load;
		response->Type = ENGINE_RESPONSE_OK;
	}
}

static void Engine_Saw(Engine_State* state, Engine_Response* response)
{
	if(state->Location != 1 || state->GrateSawed)
		response->Type = ENGINE_RESPONSE_WHAT;
	else if(state->ObjectLocations[ENGINE_OBJECT_SAW] != ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_NO_SAW;
	else
	{
		state->GrateSawed = 1;
		response->Type = ENGINE_RESPONSE_OK;
	}
}

static void Engine_Light(Engine_State* state, const Parser_Result* command, Engine_Response* response)
{
	if(!Parser_IsPrefix("LANTERNA", command->Noun))
		response->Type = ENGINE_RESPONSE_DOES_NOT_LIGHT;
	else if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_DO_NOT_HAVE;
	else if(state->LampLit)
		response->Type = ENGINE_RESPONSE_ALREADY_LIT;
	else
	{
		state->LampLit = 1;
		response->Type = ENGINE_RESPONSE_OK;
	}
}

static void Engine_Extinguish(Engine_State* state, const Parser_Result* command, Engine_Response* response)
{
	if(!Parser_IsPrefix("LANTERNA", command->Noun))
		response->Type = ENGINE_RESPONSE_DOES_NOT_EXTINGUISH;
	else if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_DO_NOT_HAVE;
	else if(!state->LampLit)
		response->Type = ENGINE_RESPONSE_ALREADY_DARK;
	else
	{
		state->LampLit = 0;
		response->Type = ENGINE_RESPONSE_OK;
	}
}

static void Engine_Dig(Engine_State* state, Engine_Response* response)
{
	if(state->Location != 11 || state->HoleDug)
		response->Type = ENGINE_RESPONSE_WHERE;
	else if(state->ObjectLocations[ENGINE_OBJECT_LADDER] == ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_DIG_DEATH;
	else if(state->ObjectLocations[ENGINE_OBJECT_SPOON] != ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_NO_SPOON;
	else
	{
		state->HoleDug = 1;
		response->Type = ENGINE_RESPONSE_DUG;
	}
}

static void Engine_Swim(Engine_State* state, Engine_Response* response)
{
	if(state->Location != 17)
		response->Type = ENGINE_RESPONSE_WHERE;
	else if(state->ObjectLocations[ENGINE_OBJECT_SAW] == ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_DROWNED;
	else if(state->ObjectLocations[ENGINE_OBJECT_COIN] != ENGINE_INVENTORY)
	{
		state->ObjectLocations[ENGINE_OBJECT_COIN] = ENGINE_INVENTORY;
		response->Type = ENGINE_RESPONSE_COIN_FOUND;
	}
	else
		response->Type = ENGINE_RESPONSE_WET;
}

static void Engine_Open(Engine_State* state, Engine_Response* response)
{
	if(state->Location != 24)
		response->Type = ENGINE_RESPONSE_WHAT;
	else if(state->ObjectLocations[ENGINE_OBJECT_KEY] != ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_OPEN_NO_KEY;
	else if(state->ObjectLocations[ENGINE_OBJECT_BONE] == ENGINE_INVENTORY)
		response->Type = ENGINE_RESPONSE_ESCAPED_WITH_BONE;
	else
		response->Type = ENGINE_RESPONSE_WON;
}

void Engine_Initialize(Engine_State* state, unsigned char randomRoom)
{
	unsigned char i;

	state->Location = 1;
	state->Load = 0;
	state->GrateSawed = 0;
	state->HoleDug = 0;
	state->LampLit = 0;
	state->GuardActive = 0;
	state->North = 0;
	state->East = 0;
	state->South = 0;
	state->West = 0;

	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
		state->ObjectLocations[i] = g_EngineObjects[i].InitialLocation;

	state->ObjectLocations[ENGINE_OBJECT_KNIFE] = (signed char)randomRoom;
	state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = (signed char)(randomRoom - 1);
	state->ObjectLocations[ENGINE_OBJECT_KEY] = (signed char)(randomRoom + 3);
	Engine_EnterRoom(state);
}

void Engine_Dispatch(Engine_State* state, const Parser_Result* command, Engine_Response* response)
{
	response->Type = ENGINE_RESPONSE_REDRAW;
	response->ObjectIndex = -1;
	response->Flow = ENGINE_FLOW_ROOM;

	switch(command->Action)
	{
	case PARSER_ACTION_NONE:
		response->Type = ENGINE_RESPONSE_UNKNOWN_VERB;
		response->Flow = ENGINE_FLOW_OBJECTS;
		break;
	case PARSER_ACTION_MOVE:
		Engine_Move(state, command, response);
		break;
	case PARSER_ACTION_DROP:
		Engine_Drop(state, command, response);
		break;
	case PARSER_ACTION_TAKE:
		Engine_Take(state, command, response);
		break;
	case PARSER_ACTION_KILL:
		if(state->ObjectLocations[ENGINE_OBJECT_KNIFE] != ENGINE_INVENTORY)
		{
			response->Type = ENGINE_RESPONSE_NO_KNIFE;
			response->Flow = ENGINE_FLOW_VISIT;
		}
		else if(state->ObjectLocations[ENGINE_OBJECT_GUARD] != (signed char)state->Location)
		{
			response->Type = ENGINE_RESPONSE_KILL_WHO;
			response->Flow = ENGINE_FLOW_VISIT;
		}
		else
		{
			state->ObjectLocations[ENGINE_OBJECT_GUARD] = 0;
			response->Type = ENGINE_RESPONSE_GUARD_KILLED;
		}
		break;
	case PARSER_ACTION_DIG:
		Engine_Dig(state, response);
		break;
	case PARSER_ACTION_SWIM:
		Engine_Swim(state, response);
		break;
	case PARSER_ACTION_OPEN:
		Engine_Open(state, response);
		break;
	case PARSER_ACTION_SAW:
		Engine_Saw(state, response);
		break;
	case PARSER_ACTION_LIGHT:
		Engine_Light(state, command, response);
		break;
	case PARSER_ACTION_EXTINGUISH:
		Engine_Extinguish(state, command, response);
		break;
	case PARSER_ACTION_QUIT:
		response->Type = ENGINE_RESPONSE_QUIT;
		break;
	case PARSER_ACTION_INVENTORY:
		response->Type = ENGINE_RESPONSE_INVENTORY;
		break;
	case PARSER_ACTION_HELP:
		// BASIC 1410-1470
		if(state->Location == 17 && state->ObjectLocations[ENGINE_OBJECT_SAW] == ENGINE_INVENTORY)
			response->Type = ENGINE_RESPONSE_HELP_HEAVY;
		else if(state->Location == 14 && state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY && state->LampLit)
			response->Type = ENGINE_RESPONSE_HELP_ATTENTION;
		else if(state->Location == 12 && state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY)
			response->Type = ENGINE_RESPONSE_HELP_LOST;
		else
			response->Type = ENGINE_RESPONSE_HELP_NONE;
		break;
	}

	if(response->Type == ENGINE_RESPONSE_QUIT ||
		response->Type == ENGINE_RESPONSE_DROWNED ||
		response->Type == ENGINE_RESPONSE_DIG_DEATH ||
		response->Type == ENGINE_RESPONSE_WON ||
		response->Type == ENGINE_RESPONSE_ESCAPED_WITH_BONE)
		response->Flow = ENGINE_FLOW_END;
}
