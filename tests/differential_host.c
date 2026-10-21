#include <stdio.h>
#include <stdlib.h>

#include "../src/sq_engine.h"
#include "../src/sq_random.h"

typedef struct
{
	unsigned int Time;
	unsigned int Calls;
	Random_State State;
} Clock;

static unsigned char Draw(void* context, unsigned char range)
{
	Clock* clock = context;
	if(++clock->Calls > 255 || ++clock->Time > 32767)
	{
		fputs("Random draw limit exceeded\n", stderr);
		exit(1);
	}
	Random_Time(&clock->State, clock->Time);
	return (unsigned char)Random_Range(&clock->State, range);
}

static int ReadNumber(FILE* input)
{
	int value;
	if(fscanf(input, "%d", &value) != 1)
	{
		fputs("Invalid differential scenario\n", stderr);
		exit(1);
	}
	return value;
}

int main(int argc, char** argv)
{
	FILE* input;
	int id;
	if(argc != 2 || (input = fopen(argv[1], "r")) == NULL)
	{
		fputs("Usage: differential_host CASES.TXT\n", stderr);
		return 1;
	}
	while((id = ReadNumber(input)) != 0)
	{
		Engine_State state;
		Engine_Response response;
		Parser_Result command;
		Clock clock;
		char text[128];
		int values[27];
		int i;
		clock.Time = (unsigned int)ReadNumber(input);
		clock.Calls = 0;
		Random_Initialize(&clock.State);
		state.Location = (unsigned char)ReadNumber(input);
		state.Load = (signed char)ReadNumber(input);
		state.GrateSawed = (unsigned char)ReadNumber(input);
		state.HoleDug = (unsigned char)ReadNumber(input);
		state.LampLit = (unsigned char)ReadNumber(input);
		state.GuardActive = (unsigned char)ReadNumber(input);
		state.North = (unsigned char)ReadNumber(input);
		state.East = (unsigned char)ReadNumber(input);
		state.South = (unsigned char)ReadNumber(input);
		state.West = (unsigned char)ReadNumber(input);
		for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
			state.ObjectLocations[i] = (signed char)ReadNumber(input);
		if(fscanf(input, " \"%127[^\"]\"", text) != 1)
		{
			/* An empty BASIC string is a valid parser test. */
			if(fgetc(input) != '"')
			{
				fputs("Invalid differential command\n", stderr);
				return 1;
			}
			text[0] = 0;
		}
		Engine_EnterRoom(&state);
		Engine_ShowDirections(&state);
		Parser_Parse(text, &command);
		Engine_PreCommand(&state, command.Action, Draw, &clock, &response);
		if(response.Type == ENGINE_RESPONSE_CONTINUE)
			Engine_Dispatch(&state, &command, &response);
		Engine_Resume(&state, &response, Draw, &clock);
		if(response.Flow != ENGINE_FLOW_END)
			Engine_ShowDirections(&state);
		values[0] = state.Location;
		values[1] = state.Load;
		values[2] = state.GrateSawed;
		values[3] = state.HoleDug;
		values[4] = state.LampLit;
		values[5] = state.GuardActive;
		values[6] = state.North;
		values[7] = state.East;
		values[8] = state.South;
		values[9] = state.West;
		for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
			values[10 + i] = state.ObjectLocations[i] + 1;
		values[24] = response.Flow == ENGINE_FLOW_END;
		values[25] = command.Action;
		values[26] = (int)clock.Calls;
		printf("{\"id\":%d,\"response\":%u,\"values\":[", id, (unsigned int)response.Type);
		for(i = 0; i < 27; ++i)
			printf("%s%d", i ? "," : "", values[i]);
		puts("]}");
	}
	if(fclose(input) != 0)
		return 1;
	return 0;
}
