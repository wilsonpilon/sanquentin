#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../src/sq_random.h"

static uint32_t Hash(uint32_t hash, const Random_State* state)
{
	int i;
	for(i = 6; i >= 0; --i)
	{
		unsigned char digit = state->Digits[i];
		assert(digit < 100);
		hash = (hash ^ ((digit / 10) * 16 + digit % 10)) * UINT32_C(16777619);
	}
	return hash;
}

static void TestRomOracle(void)
{
	Random_State state;
	unsigned int i;
	uint32_t hash = UINT32_C(2166136261);
	Random_Initialize(&state);
	for(i = 0; i < 100; ++i)
	{
		Random_Next(&state);
		hash = Hash(hash, &state);
	}
	for(i = 0; i <= 65535; ++i)
	{
		Random_Time(&state, i);
		hash = Hash(hash, &state);
	}
	Random_Time(&state, 0);
	hash = Hash(hash, &state);
	// 65,637 RNDX values captured from Sony HB-701FD MSX-BASIC 1.0.
	assert(hash == UINT32_C(0xF9B5293F));
}

static void TestZeroAndNormalizedSeed(void)
{
	Random_State state, saved;
	Random_Initialize(&state);
	saved = state;
	Random_Time(&state, 0);
	assert(memcmp(&state, &saved, sizeof(state)) == 0);
	Random_Time(&state, 1);
	saved = state;
	Random_Time(&state, 10);
	assert(memcmp(&state, &saved, sizeof(state)) == 0);
	Random_Time(&state, 10000);
	assert(memcmp(&state, &saved, sizeof(state)) == 0);
	assert(Random_Range(&state, 100) == 4);
	Random_Time(&state, 17);
	assert(Random_Range(&state, 100) == 37);
}

static void TestScaling(void)
{
	Random_State state;
	unsigned int time;
	static const unsigned int ranges[] = { 0, 1, 14, 15, 70, 256 };
	Random_Initialize(&state);
	for(time = 0; time <= 65535; ++time)
	{
		uint64_t numerator = 0;
		int i;
		unsigned int r;
		Random_Time(&state, time);
		for(i = 6; i >= 0; --i)
			numerator = numerator * 100 + state.Digits[i];
		for(r = 0; r < sizeof(ranges) / sizeof(ranges[0]); ++r)
			assert(Random_Range(&state, ranges[r]) ==
				numerator * ranges[r] / UINT64_C(100000000000000));
	}
}

static void TestStarCoordinates(void)
{
	Random_State state;
	unsigned int i;
	uint32_t hash = UINT32_C(2166136261);
	Random_Initialize(&state);
	for(i = 0; i < 91; ++i)
	{
		Random_Next(&state);
		hash = (hash ^ Random_Range(&state, 256)) * UINT32_C(16777619);
		Random_Next(&state);
		hash = (hash ^ Random_Range(&state, 70)) * UINT32_C(16777619);
	}
	assert(hash == UINT32_C(0x436D8AB4));
}

int main(void)
{
	TestRomOracle();
	TestZeroAndNormalizedSeed();
	TestScaling();
	TestStarCoordinates();
	puts("random tests: OK (65637 ROM values, all TIME seeds, 91 star pairs and scaling)");
	return 0;
}
