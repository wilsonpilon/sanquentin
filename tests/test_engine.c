#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "../src/sq_engine.h"

static unsigned char RandomFixed(void* context, unsigned char range)
{
	return (unsigned char)(((unsigned long)*(unsigned int*)context * range) >> 16);
}

static Engine_Response Dispatch(Engine_State* state, const char* text)
{
	char buffer[64];
	unsigned int randomValue = 0x8000;
	Parser_Result command;
	Engine_Response response;

	strcpy(buffer, text);
	Parser_Parse(buffer, &command);
	Engine_Dispatch(state, &command, &response);
	Engine_Resume(state, &response, RandomFixed, &randomValue);
	if(response.Flow != ENGINE_FLOW_END)
		Engine_ShowDirections(state);
	return response;
}

static void TestInitialization(void)
{
	Engine_State state;
	Engine_Initialize(&state, 7);

	assert(state.Location == 1);
	assert(state.Load == 0);
	assert(state.ObjectLocations[ENGINE_OBJECT_SAW] == 1);
	assert(state.ObjectLocations[ENGINE_OBJECT_KNIFE] == 7);
	assert(state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == 6);
	assert(state.ObjectLocations[ENGINE_OBJECT_KEY] == 10);
}

static void TestCellSequence(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);

	response = Dispatch(&state, "LESTE");
	assert(response.Type == ENGINE_RESPONSE_HEADBANG);
	assert(state.Location == 1);

	response = Dispatch(&state, "PEGAR S");
	assert(response.Type == ENGINE_RESPONSE_OK);
	assert(response.ObjectIndex == ENGINE_OBJECT_SAW);
	assert(state.ObjectLocations[ENGINE_OBJECT_SAW] == ENGINE_INVENTORY);
	assert(state.Load == 1);

	response = Dispatch(&state, "PEGAR SERRA");
	assert(response.Type == ENGINE_RESPONSE_ALREADY_HAVE);

	response = Dispatch(&state, "LISTAR");
	assert(response.Type == ENGINE_RESPONSE_INVENTORY);

	response = Dispatch(&state, "SERRAR");
	assert(response.Type == ENGINE_RESPONSE_OK);
	assert(state.GrateSawed);

	response = Dispatch(&state, "SERRAR");
	assert(response.Type == ENGINE_RESPONSE_WHAT);

	response = Dispatch(&state, "LESTE");
	assert(response.Type == ENGINE_RESPONSE_MOVED);
	assert(state.Location == 2);
}

static void TestTakeAndDropErrors(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);

	response = Dispatch(&state, "PEGAR XYZ");
	assert(response.Type == ENGINE_RESPONSE_UNKNOWN_OBJECT);

	response = Dispatch(&state, "PEGAR COLHER");
	assert(response.Type == ENGINE_RESPONSE_NOT_HERE);

	response = Dispatch(&state, "DEIXAR SERRA");
	assert(response.Type == ENGINE_RESPONSE_DO_NOT_HAVE);

	state.ObjectLocations[0] = ENGINE_INVENTORY;
	state.ObjectLocations[1] = ENGINE_INVENTORY;
	state.ObjectLocations[2] = ENGINE_INVENTORY;
	state.Load = 3;
	response = Dispatch(&state, "PEGAR SERRA");
	assert(response.Type == ENGINE_RESPONSE_INVENTORY_FULL);

	state.ObjectLocations[0] = 0;
	state.ObjectLocations[1] = 0;
	state.ObjectLocations[2] = 0;
	state.Load = 0;
	response = Dispatch(&state, "PEGAR SERRA");
	assert(response.Type == ENGINE_RESPONSE_OK);
	response = Dispatch(&state, "DEIXAR SERRA");
	assert(response.Type == ENGINE_RESPONSE_OK);
	assert(state.ObjectLocations[ENGINE_OBJECT_SAW] == 1);
	assert(state.Load == 0);
}

static void TestOtherCellActions(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);

	assert(Dispatch(&state, "XYZ").Type == ENGINE_RESPONSE_UNKNOWN_VERB);
	assert(Dispatch(&state, "AJUDAR").Type == ENGINE_RESPONSE_REDRAW);
	assert(Dispatch(&state, "SERRAR").Type == ENGINE_RESPONSE_NO_SAW);
	assert(Dispatch(&state, "CAVAR").Type == ENGINE_RESPONSE_WHERE);
	assert(Dispatch(&state, "ABRIR").Type == ENGINE_RESPONSE_WHAT);
	assert(Dispatch(&state, "NADAR").Type == ENGINE_RESPONSE_WHERE);
	assert(Dispatch(&state, "MATAR GUARDA").Type == ENGINE_RESPONSE_NO_KNIFE);
	assert(Dispatch(&state, "ACENDER OSSO").Type == ENGINE_RESPONSE_DOES_NOT_LIGHT);
	assert(Dispatch(&state, "APAGAR OSSO").Type == ENGINE_RESPONSE_DOES_NOT_EXTINGUISH);
	assert(Dispatch(&state, "DESISTIR").Type == ENGINE_RESPONSE_QUIT);

	state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = ENGINE_INVENTORY;
	state.Load = 1;
	response = Dispatch(&state, "ACENDER L");
	assert(response.Type == ENGINE_RESPONSE_OK);
	assert(state.LampLit);
	assert(Dispatch(&state, "ACENDER LANTERNA").Type == ENGINE_RESPONSE_ALREADY_LIT);
	response = Dispatch(&state, "APAGAR L");
	assert(response.Type == ENGINE_RESPONSE_OK);
	assert(!state.LampLit);
	assert(Dispatch(&state, "APAGAR LANTERNA").Type == ENGINE_RESPONSE_ALREADY_DARK);
}

static void TestRoomMapAndConditionalExits(void)
{
	Engine_State state;
	Engine_RoomInfo info;

	Engine_Initialize(&state, 7);
	assert(state.East == 0);
	state.GrateSawed = 1;
	Engine_EnterRoom(&state);
	assert(Dispatch(&state, "LESTE").Type == ENGINE_RESPONSE_MOVED);
	assert(state.Location == 2);
	assert(Dispatch(&state, "OESTE").Type == ENGINE_RESPONSE_MOVED);
	assert(state.Location == 1);
	assert(Dispatch(&state, "NORTE").Type == ENGINE_RESPONSE_HEADBANG);

	state.Location = 2;
	Engine_EnterRoom(&state);
	assert(state.East && state.South && state.West && !state.North);
	Engine_GetRoomInfo(&state, &info);
	assert(strcmp(info.Description, "VOCE SE ENCONTRA EM UM LONGO CORREDOR DECELAS.") == 0);

	state.Location = 11;
	state.ObjectLocations[ENGINE_OBJECT_SPOON] = 3;
	state.HoleDug = 0;
	Engine_EnterRoom(&state);
	assert(state.North && state.West && !state.East && !state.South);
	Engine_GetRoomInfo(&state, &info);
	assert(strcmp(info.Detail, "ALGUMAS VOCE NAO PODE VER.") == 0);

	state.ObjectLocations[ENGINE_OBJECT_SPOON] = ENGINE_INVENTORY;
	state.HoleDug = 1;
	Engine_EnterRoom(&state);
	assert(state.North && state.East && state.South && state.West);
	Engine_GetRoomInfo(&state, &info);
	assert(info.Detail == NULL);

	state.Location = 12;
	state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = ENGINE_INVENTORY;
	state.LampLit = 0;
	Engine_EnterRoom(&state);
	assert(!state.North && !state.East && !state.South && !state.West);
	Engine_GetRoomInfo(&state, &info);
	assert(strcmp(info.Detail, "ESTA FRIO E MUITO ESCURO PARA VER AS SAIDAS.") == 0);

	state.LampLit = 1;
	Engine_EnterRoom(&state);
	assert(state.North && !state.East && state.South && state.West);
	Engine_GetRoomInfo(&state, &info);
	assert(info.Detail == NULL);

	state.Location = 14;
	Engine_EnterRoom(&state);
	Engine_GetRoomInfo(&state, &info);
	assert(info.ContinueLine);

	state.East = 1;
	state.Location = 24;
	Engine_EnterRoom(&state);
	assert(state.North && state.East && !state.South && !state.West);
	Engine_GetRoomInfo(&state, &info);
	assert(info.ContinueLine);

	state.Location = 22;
	Engine_EnterRoom(&state);
	assert(state.North && state.East && !state.South && !state.West);
	Engine_GetRoomInfo(&state, &info);
	assert(info.Description == NULL);
}

static void TestAllRoomExits(void)
{
	static const unsigned char expected[25][4] =
	{
		{ 0, 0, 0, 0 },
		{ 0, 0, 0, 0 },
		{ 0, 1, 1, 1 },
		{ 0, 1, 1, 1 },
		{ 0, 0, 1, 1 },
		{ 0, 1, 1, 0 },
		{ 0, 0, 1, 1 },
		{ 0, 1, 1, 0 },
		{ 1, 0, 1, 1 },
		{ 1, 0, 0, 0 },
		{ 1, 1, 0, 0 },
		{ 1, 0, 0, 1 },
		{ 0, 0, 0, 0 },
		{ 1, 0, 1, 0 },
		{ 1, 1, 1, 0 },
		{ 0, 1, 1, 1 },
		{ 0, 0, 0, 1 },
		{ 1, 0, 0, 0 },
		{ 1, 0, 1, 0 },
		{ 1, 0, 0, 0 },
		{ 1, 0, 0, 0 },
		{ 1, 0, 0, 0 },
	};
	unsigned char location;

	for(location = 1; location <= 21; ++location)
	{
		Engine_State state;
		Engine_Initialize(&state, 7);
		state.Location = location;
		Engine_EnterRoom(&state);
		assert(state.North == expected[location][0]);
		assert(state.East == expected[location][1]);
		assert(state.South == expected[location][2]);
		assert(state.West == expected[location][3]);
	}

	{
		Engine_State state;
		Engine_Initialize(&state, 7);
		state.GrateSawed = 1;
		state.Location = 1;
		Engine_EnterRoom(&state);
		assert(state.East == 1);
		state.Location = 11;
		state.ObjectLocations[ENGINE_OBJECT_SPOON] = ENGINE_INVENTORY;
		state.HoleDug = 1;
		Engine_EnterRoom(&state);
		assert(state.North && state.East && state.South && state.West);
		state.Location = 12;
		state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = ENGINE_INVENTORY;
		state.LampLit = 1;
		Engine_EnterRoom(&state);
		assert(state.North && !state.East && state.South && state.West);
		state.Location = 24;
		state.East = 1;
		Engine_EnterRoom(&state);
		assert(state.North && state.East && !state.South && !state.West);
	}
}

static void TestDigAction(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);
	state.Location = 11;
	Engine_EnterRoom(&state);

	response = Dispatch(&state, "CAVAR");
	assert(response.Type == ENGINE_RESPONSE_NO_SPOON);

	state.ObjectLocations[ENGINE_OBJECT_SPOON] = ENGINE_INVENTORY;
	state.Load = 1;
	state.ObjectLocations[ENGINE_OBJECT_LADDER] = ENGINE_INVENTORY;
	state.Load = 2;
	response = Dispatch(&state, "CAVAR");
	assert(response.Type == ENGINE_RESPONSE_DIG_DEATH);
	assert(state.HoleDug == 0);

	state.ObjectLocations[ENGINE_OBJECT_LADDER] = 5;
	state.Load = 1;
	response = Dispatch(&state, "CAVAR");
	assert(response.Type == ENGINE_RESPONSE_DUG);
	assert(state.HoleDug == 1);
	response = Dispatch(&state, "CAVAR");
	assert(response.Type == ENGINE_RESPONSE_WHERE);
}

static void TestSwimAction(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);

	response = Dispatch(&state, "NADAR");
	assert(response.Type == ENGINE_RESPONSE_WHERE);

	state.Location = 17;
	state.ObjectLocations[ENGINE_OBJECT_SAW] = ENGINE_INVENTORY;
	response = Dispatch(&state, "NADAR");
	assert(response.Type == ENGINE_RESPONSE_DROWNED);

	state.ObjectLocations[ENGINE_OBJECT_SAW] = 1;
	response = Dispatch(&state, "NADAR");
	assert(response.Type == ENGINE_RESPONSE_COIN_FOUND);
	assert(state.ObjectLocations[ENGINE_OBJECT_COIN] == ENGINE_INVENTORY);
	assert(state.Load == 0);
	response = Dispatch(&state, "NADAR");
	assert(response.Type == ENGINE_RESPONSE_WET);
}

static void TestOpenAndEndingActions(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);

	response = Dispatch(&state, "ABRIR");
	assert(response.Type == ENGINE_RESPONSE_WHAT);

	state.Location = 24;
	response = Dispatch(&state, "ABRIR");
	assert(response.Type == ENGINE_RESPONSE_OPEN_NO_KEY);

	state.ObjectLocations[ENGINE_OBJECT_KEY] = ENGINE_INVENTORY;
	response = Dispatch(&state, "ABRIR");
	assert(response.Type == ENGINE_RESPONSE_WON);

	state.ObjectLocations[ENGINE_OBJECT_BONE] = ENGINE_INVENTORY;
	response = Dispatch(&state, "ABRIR");
	assert(response.Type == ENGINE_RESPONSE_ESCAPED_WITH_BONE);
}

static void TestKillGuardAction(void)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, 7);
	state.Location = 4;
	response = Dispatch(&state, "MATAR GUARDA");
	assert(response.Type == ENGINE_RESPONSE_NO_KNIFE);
	assert(response.Flow == ENGINE_FLOW_VISIT);

	state.ObjectLocations[ENGINE_OBJECT_KNIFE] = ENGINE_INVENTORY;
	state.Load = 1;
	response = Dispatch(&state, "ATIRAR GUARDA");
	assert(response.Type == ENGINE_RESPONSE_KILL_WHO);
	assert(response.Flow == ENGINE_FLOW_VISIT);

	state.ObjectLocations[ENGINE_OBJECT_GUARD] = 4;
	{
		unsigned int randomValue = 0x8000;
		Parser_Result command;
		char text[] = "MATAR GUARDA";
		Parser_Parse(text, &command);
		Engine_PreCommand(&state, command.Action, RandomFixed, &randomValue, &response);
		assert(response.Type == ENGINE_RESPONSE_CONTINUE);
	}
	response = Dispatch(&state, "MATAR GUARDA");
	assert(response.Type == ENGINE_RESPONSE_GUARD_KILLED);
	assert(state.ObjectLocations[ENGINE_OBJECT_GUARD] == 0);
}

static void TestGuardEncounter(void)
{
	Engine_State state;
	Engine_Response response;
	unsigned int randomValue = 0x8000;

	Engine_Initialize(&state, 7);
	state.Location = 2;
	state.ObjectLocations[ENGINE_OBJECT_GUARD] = 2;
	Engine_PreCommand(&state, PARSER_ACTION_MOVE, RandomFixed, &randomValue, &response);
	assert(response.Type == ENGINE_RESPONSE_GUARD_CAUGHT);
	assert(state.ObjectLocations[ENGINE_OBJECT_GUARD] == 0);

	state.ObjectLocations[ENGINE_OBJECT_GUARD] = 2;
	state.ObjectLocations[ENGINE_OBJECT_SHEET] = ENGINE_INVENTORY;
	state.Load = 1;
	randomValue = 0x1800;
	Engine_PreCommand(&state, PARSER_ACTION_MOVE, RandomFixed, &randomValue, &response);
	assert(response.Type == ENGINE_RESPONSE_GUARD_CONFISCATED);
	assert(response.ObjectIndex == ENGINE_OBJECT_SHEET);
	assert(state.ObjectLocations[ENGINE_OBJECT_SHEET] == 0);
	assert(state.Load == 0);

	state.ObjectLocations[ENGINE_OBJECT_GUARD] = 2;
	state.ObjectLocations[ENGINE_OBJECT_UNIFORM] = ENGINE_INVENTORY;
	state.Load = 1;
	Engine_PreCommand(&state, PARSER_ACTION_MOVE, RandomFixed, &randomValue, &response);
	assert(response.Type == ENGINE_RESPONSE_GUARD_UNIFORM);
	assert(state.ObjectLocations[ENGINE_OBJECT_GUARD] == 0);
	assert(state.ObjectLocations[ENGINE_OBJECT_UNIFORM] == ENGINE_INVENTORY);

	state.ObjectLocations[ENGINE_OBJECT_GUARD] = 2;
	state.ObjectLocations[ENGINE_OBJECT_UNIFORM] = 20;
	state.ObjectLocations[ENGINE_OBJECT_KEY] = ENGINE_INVENTORY;
	state.Load = 1;
	randomValue = 0xE000;
	Engine_PreCommand(&state, PARSER_ACTION_MOVE, RandomFixed, &randomValue, &response);
	assert(response.Type == ENGINE_RESPONSE_GUARD_KEY_CONFISCATED);
	assert(response.Flow == ENGINE_FLOW_RANDOMIZE);
	assert(state.ObjectLocations[ENGINE_OBJECT_KEY] == 0);
	Engine_Resume(&state, &response, RandomFixed, &randomValue);
	assert(state.ObjectLocations[ENGINE_OBJECT_KEY] == 19);
	assert(state.ObjectLocations[ENGINE_OBJECT_KNIFE] == 16);
	assert(state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == 15);
	assert(state.Load == 0);
}

static void TestRoomVisitRandomAndPatio(void)
{
	Engine_State state;
	Engine_Response response;
	unsigned int randomValue = 0;

	Engine_Initialize(&state, 7);
	state.Location = 3;
	Engine_BeginRoomVisit(&state, RandomFixed, &randomValue);
	assert(state.ObjectLocations[ENGINE_OBJECT_GUARD] == 3);
	assert(state.GuardActive == 1);

	state.Location = 1;
	Engine_BeginRoomVisit(&state, RandomFixed, &randomValue);
	assert(state.GuardActive == 1);
	assert(!Engine_ShowDirections(&state));
	assert(state.GuardActive == 1);
	state.GrateSawed = 1;
	assert(Engine_ShowDirections(&state));
	assert(state.GuardActive == 0);

	state.Location = 15;
	state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = ENGINE_INVENTORY;
	state.LampLit = 1;
	Engine_PreCommand(&state, PARSER_ACTION_QUIT, RandomFixed, &randomValue, &response);
	assert(response.Type == ENGINE_RESPONSE_PATIO_DEATH);
}

typedef struct
{
	unsigned int Value;
	unsigned char Calls;
} RandomTrace;

static unsigned char RandomTraced(void* context, unsigned char range)
{
	RandomTrace* trace = context;
	++trace->Calls;
	return (unsigned char)(((unsigned long)trace->Value * range) >> 16);
}

static void TestBasicReturnTargets(void)
{
	Engine_State state;
	Engine_Response response;
	Parser_Result command;
	RandomTrace trace = { 0, 0 };
	char kill[] = "MATAR";
	char help[] = "AJUDAR";
	char unknown[] = "XYZ";

	Engine_Initialize(&state, 7);
	Parser_Parse(kill, &command);
	Engine_Dispatch(&state, &command, &response);
	assert(response.Type == ENGINE_RESPONSE_NO_KNIFE);
	assert(response.Flow == ENGINE_FLOW_VISIT);
	assert(trace.Calls == 0); // PRINT precedes the lottery at BASIC 440.
	Engine_Resume(&state, &response, RandomTraced, &trace);
	assert(trace.Calls == 2);
	assert(state.ObjectLocations[ENGINE_OBJECT_GUARD] == 1);
	assert(!Engine_ShowDirections(&state));
	assert(state.GuardActive == 1);

	Parser_Parse(help, &command);
	Engine_Dispatch(&state, &command, &response);
	assert(response.Flow == ENGINE_FLOW_CLEAR_VISIT);
	Engine_Resume(&state, &response, RandomTraced, &trace);
	assert(trace.Calls == 4);
	assert(state.GuardActive == 1);
	state.GrateSawed = 1;
	assert(Engine_ShowDirections(&state));
	assert(state.GuardActive == 0);

	state.Location = 17;
	state.ObjectLocations[ENGINE_OBJECT_SAW] = ENGINE_INVENTORY;
	Engine_Dispatch(&state, &command, &response);
	assert(response.Type == ENGINE_RESPONSE_HELP_HEAVY);
	assert(response.Flow == ENGINE_FLOW_ROOM);
	Engine_Resume(&state, &response, RandomTraced, &trace);
	assert(trace.Calls == 4);
	state.ObjectLocations[ENGINE_OBJECT_SAW] = 1;
	Engine_Dispatch(&state, &command, &response);
	assert(response.Flow == ENGINE_FLOW_CLEAR_VISIT);

	state.Location = 12;
	state.East = 1;
	Parser_Parse(unknown, &command);
	Engine_Dispatch(&state, &command, &response);
	assert(response.Flow == ENGINE_FLOW_OBJECTS);
	Engine_Resume(&state, &response, RandomTraced, &trace);
	assert(state.East == 1); // GOTO 490 skips the room routine.
	assert(trace.Calls == 4);

	state.Location = 1;
	state.GrateSawed = 0;
	state.LampLit = 1;
	state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = ENGINE_INVENTORY;
	state.GuardActive = 1;
	assert(Engine_ShowDirections(&state));
	assert(state.GuardActive == 0);
}

int main(void)
{
	TestInitialization();
	TestCellSequence();
	TestTakeAndDropErrors();
	TestOtherCellActions();
	TestRoomMapAndConditionalExits();
	TestAllRoomExits();
	TestDigAction();
	TestSwimAction();
	TestOpenAndEndingActions();
	TestKillGuardAction();
	TestGuardEncounter();
	TestRoomVisitRandomAndPatio();
	TestBasicReturnTargets();
	puts("engine tests: OK");
	return 0;
}
