#include "sq_random.h"

Random_State g_RandomState;

void Random_Initialize(Random_State* state)
{
	static const unsigned char initial[] = { 58, 23, 37, 51, 96, 64, 40 };
	unsigned char i;
	for(i = 0; i < 7; ++i)
		state->Digits[i] = initial[i];
}

void Random_Next(Random_State* state)
{
	static const unsigned char multiplier[] = { 19, 5, 54, 86, 24, 13, 21 };
	static const unsigned char increment[] = { 21, 8, 42, 20, 98, 38, 14 };
	unsigned char result[7];
	unsigned char i;
	unsigned long carry = 0;

	// MSX-BASIC RND: (x * 21132486540519 + 14389820420821) mod 10^14.
	for(i = 0; i < 7; ++i)
	{
		unsigned char j;
		unsigned long sum = carry + increment[i];
		for(j = 0; j <= i; ++j)
			sum += (unsigned int)state->Digits[j] * multiplier[i - j];
		result[i] = (unsigned char)(sum % 100);
		carry = sum / 100;
	}
	for(i = 0; i < 7; ++i)
		state->Digits[i] = result[i];
}

void Random_Time(Random_State* state, unsigned int time)
{
	unsigned char i;
	if(time == 0)
		return; // RND(-0) repeats the previous value.
	for(i = 0; i < 7; ++i)
	{
		state->Digits[i] = (unsigned char)(time % 100);
		time /= 100;
	}
	// The negative argument supplies its normalized decimal mantissa, not its exponent.
	while(state->Digits[6] < 10)
	{
		unsigned int carry = 0;
		for(i = 0; i < 7; ++i)
		{
			unsigned int digit = state->Digits[i] * 10u + carry;
			state->Digits[i] = (unsigned char)(digit % 100);
			carry = digit / 100;
		}
	}
	Random_Next(state);
}

unsigned int Random_Range(const Random_State* state, unsigned int range)
{
	unsigned char i;
	unsigned int carry = 0;
	for(i = 0; i < 7; ++i)
		carry = (state->Digits[i] * range + carry) / 100;
	return carry;
}
