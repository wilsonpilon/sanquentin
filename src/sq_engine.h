// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - shared core
// |  | | | . ||   || . |     |   Estado e despacho de acoes
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#pragma once

#include "sq_parser.h"

#define ENGINE_OBJECT_COUNT	14
#define ENGINE_INVENTORY	-1

enum ENGINE_OBJECT_ID
{
	ENGINE_OBJECT_SPOON = 0,
	ENGINE_OBJECT_SHEET,
	ENGINE_OBJECT_LADDER,
	ENGINE_OBJECT_SAW,
	ENGINE_OBJECT_BOOK,
	ENGINE_OBJECT_CRUCIFIX,
	ENGINE_OBJECT_ROPE,
	ENGINE_OBJECT_BONE,
	ENGINE_OBJECT_UNIFORM,
	ENGINE_OBJECT_COIN,
	ENGINE_OBJECT_KNIFE,
	ENGINE_OBJECT_FLASHLIGHT,
	ENGINE_OBJECT_KEY,
	ENGINE_OBJECT_GUARD,
};

enum ENGINE_RESPONSE
{
	ENGINE_RESPONSE_REDRAW = 0,
	ENGINE_RESPONSE_UNKNOWN_VERB,
	ENGINE_RESPONSE_HEADBANG,
	ENGINE_RESPONSE_UNKNOWN_OBJECT,
	ENGINE_RESPONSE_OK,
	ENGINE_RESPONSE_INVENTORY,
	ENGINE_RESPONSE_INVENTORY_FULL,
	ENGINE_RESPONSE_ALREADY_HAVE,
	ENGINE_RESPONSE_NOT_HERE,
	ENGINE_RESPONSE_DO_NOT_HAVE,
	ENGINE_RESPONSE_WHAT,
	ENGINE_RESPONSE_WHERE,
	ENGINE_RESPONSE_NO_SAW,
	ENGINE_RESPONSE_NO_KNIFE,
	ENGINE_RESPONSE_KILL_WHO,
	ENGINE_RESPONSE_DOES_NOT_LIGHT,
	ENGINE_RESPONSE_ALREADY_LIT,
	ENGINE_RESPONSE_DOES_NOT_EXTINGUISH,
	ENGINE_RESPONSE_ALREADY_DARK,
	ENGINE_RESPONSE_QUIT,
	ENGINE_RESPONSE_MOVED,
	ENGINE_RESPONSE_ROOM_NOT_IMPLEMENTED,
	ENGINE_RESPONSE_DUG,
	ENGINE_RESPONSE_DROWNED,
	ENGINE_RESPONSE_COIN_FOUND,
	ENGINE_RESPONSE_WET,
	ENGINE_RESPONSE_WON,
	ENGINE_RESPONSE_ESCAPED_WITH_BONE,
	ENGINE_RESPONSE_GUARD_CAUGHT,
	ENGINE_RESPONSE_GUARD_UNIFORM,
	ENGINE_RESPONSE_GUARD_CONFISCATED,
	ENGINE_RESPONSE_GUARD_KEY_CONFISCATED,
	ENGINE_RESPONSE_GUARD_KILLED,
	ENGINE_RESPONSE_PATIO_DEATH,
	ENGINE_RESPONSE_NO_SPOON,
	ENGINE_RESPONSE_DIG_DEATH,
	ENGINE_RESPONSE_OPEN_NO_KEY,
	ENGINE_RESPONSE_CONTINUE,
	ENGINE_RESPONSE_HELP_HEAVY,
	ENGINE_RESPONSE_HELP_ATTENTION,
	ENGINE_RESPONSE_HELP_LOST,
	ENGINE_RESPONSE_HELP_NONE,
};

enum ENGINE_FLOW
{
	ENGINE_FLOW_ROOM = 0, // BASIC 450
	ENGINE_FLOW_OBJECTS,  // BASIC 490
	ENGINE_FLOW_VISIT,    // BASIC 440, without CLS
	ENGINE_FLOW_CLEAR_VISIT, // BASIC 430
	ENGINE_FLOW_RANDOMIZE, // BASIC 370, after confiscation messages
	ENGINE_FLOW_END,
};

// INT(RND(-TIME) * range); range 0 consumes the unused draw at BASIC 440.
typedef unsigned char (*Engine_RandomFunction)(void* context, unsigned char range);

typedef struct
{
	signed char InitialLocation;
	const char* Name;
	const char* Description;
} Engine_Object;

typedef struct
{
	signed char ObjectLocations[ENGINE_OBJECT_COUNT];
	unsigned char Location;
	signed char Load;
	unsigned char GrateSawed;
	unsigned char HoleDug;
	unsigned char LampLit;
	unsigned char GuardActive;
	unsigned char North;
	unsigned char East;
	unsigned char South;
	unsigned char West;
} Engine_State;

typedef struct
{
	const char* Description;
	const char* Detail;
} Engine_RoomInfo;

typedef struct
{
	unsigned char Type;
	signed char ObjectIndex;
	unsigned char Flow;
} Engine_Response;

extern const Engine_Object g_EngineObjects[ENGINE_OBJECT_COUNT];

void Engine_Initialize(Engine_State* state, unsigned char randomRoom);
void Engine_GetRoomInfo(const Engine_State* state, Engine_RoomInfo* info);
void Engine_EnterRoom(Engine_State* state);
void Engine_BeginRoomVisit(Engine_State* state, Engine_RandomFunction random, void* context);
unsigned char Engine_ShowDirections(Engine_State* state);
void Engine_Resume(Engine_State* state, const Engine_Response* response,
	Engine_RandomFunction random, void* context);
void Engine_PreCommand(Engine_State* state, unsigned char action, Engine_RandomFunction random,
	void* context, Engine_Response* response);
void Engine_Dispatch(Engine_State* state, const Parser_Result* command, Engine_Response* response);
