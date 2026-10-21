#pragma once

typedef struct
{
	// Least-significant base-100 digit first; value / 10^14 is RND(0).
	unsigned char Digits[7];
} Random_State;

extern Random_State g_RandomState;

void Random_Initialize(Random_State* state);
void Random_Next(Random_State* state);
void Random_Time(Random_State* state, unsigned int time);

// INT(RND * range), for the game's ranges 14, 15, 70 and 256.
unsigned int Random_Range(const Random_State* state, unsigned int range);
