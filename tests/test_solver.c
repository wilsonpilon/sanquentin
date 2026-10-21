#include <assert.h>
#include <stdio.h>
#include <string.h>
#include "../src/sq_solver.h"
#include "../src/sq_random.h"

static unsigned int randomValue;

static unsigned char Random(void* context, unsigned char range)
{
	(void)context;
	randomValue = (randomValue * 25173u + 13849u) & 65535u;
	return (unsigned char)(((unsigned long)randomValue * range) >> 16);
}

static unsigned char NoGuard(void* context, unsigned char range)
{
	(void)context;
	return range ? range - 1 : 0;
}

static unsigned char BasicRandom(void* context, unsigned char range)
{
	(void)context;
	Random_Time(&g_RandomState, (randomValue++ / 4) & 65535u);
	return (unsigned char)Random_Range(&g_RandomState, range);
}

static void EscapeFrom(Engine_State state, unsigned char placement, unsigned int seed,
	Engine_RandomFunction random)
{
	Solver_State solver;
	Engine_Response response;
	Parser_Result parsed;
	unsigned int step;
	randomValue = seed;
	Solver_Initialize(&solver);
	for(step = 0; step < 250; ++step)
	{
		char command[32];
		Engine_State before = state;
		const char* next = Solver_Next(&solver, &state);
		assert(memcmp(&before, &state, sizeof(state)) == 0);
		if(next == NULL)
		{
			fprintf(stderr, "placement=%u seed=%u room=%u step=%u: %s\n",
				placement, seed, state.Location, step, solver.Error);
			assert(next != NULL);
		}
		strcpy(command, next);
		// Re-enabling the helper must reconstruct the route from the live state.
		if(step % 7 == 0)
			Solver_Initialize(&solver);
		Parser_Parse(command, &parsed);
		Engine_PreCommand(&state, parsed.Action, random, NULL, &response);
		if(response.Type == ENGINE_RESPONSE_CONTINUE)
			Engine_Dispatch(&state, &parsed, &response);
		if(response.Type == ENGINE_RESPONSE_WON)
			return;
		Engine_Resume(&state, &response, random, NULL);
		Engine_ShowDirections(&state);
		assert(response.Type != ENGINE_RESPONSE_GUARD_CAUGHT);
		assert(response.Type != ENGINE_RESPONSE_PATIO_DEATH);
		assert(response.Type != ENGINE_RESPONSE_DIG_DEATH);
		assert(response.Type != ENGINE_RESPONSE_DROWNED);
		assert(state.Load <= 3);
	}
	fprintf(stderr, "No escape: placement=%u seed=%u room=%u\n", placement, seed, state.Location);
	assert(step < 250);
}

static void Escape(unsigned char placement, unsigned int seed, Engine_RandomFunction random)
{
	Engine_State state;
	Engine_Initialize(&state, placement);
	EscapeFrom(state, placement, seed, random);
}

static void ConfiscatedKey(unsigned char placement)
{
	Engine_State state;
	Engine_Response response;
	Engine_Initialize(&state, placement);
	state.Location = 2;
	state.GrateSawed = 1;
	state.GuardActive = 1;
	state.ObjectLocations[ENGINE_OBJECT_UNIFORM] = 0;
	state.ObjectLocations[ENGINE_OBJECT_KEY] = ENGINE_INVENTORY;
	state.ObjectLocations[ENGINE_OBJECT_GUARD] = 2;
	state.Load = 1;
	randomValue = placement;
	Engine_EnterRoom(&state);
	Engine_PreCommand(&state, PARSER_ACTION_INVENTORY, Random, NULL, &response);
	assert(response.Type == ENGINE_RESPONSE_GUARD_KEY_CONFISCATED);
	Engine_Resume(&state, &response, Random, NULL);
	EscapeFrom(state, placement, placement, Random);
}

static void DeadEnds(void)
{
	Engine_State state;
	Solver_State solver;
	Engine_Initialize(&state, 3);
	Solver_Initialize(&solver);
	state.Location = 15;
	state.LampLit = 1;
	state.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] = ENGINE_INVENTORY;
	assert(Solver_Next(&solver, &state) == NULL);
	assert(solver.Error != NULL);

	Engine_Initialize(&state, 3);
	state.GrateSawed = 1;
	state.Location = 12;
	assert(Solver_Next(&solver, &state) == NULL);
	assert(solver.Error != NULL);
}

int main(void)
{
	unsigned char placement;
	unsigned int seed;
	for(placement = 3; placement <= 17; ++placement)
	{
		Escape(placement, 0, NoGuard);
		for(seed = 1; seed <= 100; ++seed)
		{
			Escape(placement, seed, Random);
			Random_Initialize(&g_RandomState);
			Escape(placement, seed * 997u, BasicRandom);
		}
		ConfiscatedKey(placement);
	}
	DeadEnds();
	puts("solver tests: OK (3030 escapes, BASIC RNG, resume, confiscated key, dead ends)");
	return 0;
}
