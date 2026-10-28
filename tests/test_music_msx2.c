#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint8_t bool;
#define TRUE 1
#define FALSE 0
#define VDP_FREQ_50HZ 2
#define MSXMUSIC_NOTFOUND 0
#define MSXMUSIC_REG_FREQ_1 0x10
#define MSXMUSIC_REG_CTRL_1 0x20
#define MSXMUSIC_REG_INST_1 0x30

static volatile u16 g_JIFFY;
static u8 s_TestFrequency;
static bool s_TestFm;
static u8 s_Psg[16];
static u8 s_Fm[64];
static unsigned s_FmWrites;
static unsigned s_PsgWrites;
static u8 s_PsgPeak[3];

static u8 VDP_GetFrequency(void) { return s_TestFrequency; }
static u8 MSXMusic_Initialize(void) { return s_TestFm; }
static void MSXMusic_SetRegister(u8 reg, u8 value)
{
	assert(reg < sizeof(s_Fm));
	s_Fm[reg] = value;
	++s_FmWrites;
}
static void MSXMusic_Mute(void)
{
	u8 channel;
	for(channel = 0; channel < 9; ++channel)
		MSXMusic_SetRegister(0x20 + channel, 0);
}
static void PSG_SetRegister(u8 reg, u8 value)
{
	assert(reg < sizeof(s_Psg));
	s_Psg[reg] = value;
	if(reg >= 8 && reg <= 10 && value > s_PsgPeak[reg - 8])
		s_PsgPeak[reg - 8] = value;
	++s_PsgWrites;
}
static u8 PSG_GetRegister(u8 reg) { return s_Psg[reg]; }

#include "../src/sq_music_msx2.c"

static void Tick(void)
{
	++g_JIFFY;
	Music2_Update();
}

static void TestSong(u8 rate, bool fm)
{
	unsigned tick, channel, bar, other, distinct = 0;
	unsigned total = 128 * rate;
	unsigned writes;
	s_TestFrequency = rate == 50 ? VDP_FREQ_50HZ : 0;
	s_TestFm = fm;
	s_FmWrites = 0;
	s_PsgWrites = 0;
	memset(s_PsgPeak, 0, sizeof(s_PsgPeak));
	s_Psg[7] = 0x80;
	Music2_Start();
	assert((s_Psg[7] & 0xC0) == 0x80);
	assert((s_Psg[7] & 0x3F) == 0x1C);
	assert(s_FrameRate == rate);
	if(fm)
		for(channel = 0; channel < 6; ++channel)
			assert(s_Fm[0x20 + channel] & 16);

	for(tick = 1; tick <= total; ++tick)
	{
		Tick();
		assert(s_Bar == (tick / (4 * rate)) % MUSIC_BAR_COUNT);
		assert(s_Step == (tick / (rate / 2)) % MUSIC_STEPS_PER_BAR);
		assert(s_FramesInStep == tick % (rate / 2));
		if(tick < total)
			assert(s_Bar != 0 || tick < 4u * rate);
	}
	assert(s_Bar == 0 && s_Step == 0 && s_FramesInStep == 0);
	assert(s_PsgPeak[0] == 12);
	assert(s_PsgPeak[1] == 15 && s_PsgPeak[2] == 15);
	assert((s_FmWrites > 0) == fm);
	Music2_Stop();
	for(channel = 0; channel < 3; ++channel)
		assert(s_Psg[8 + channel] == 0);
	if(fm)
		for(channel = 0; channel < 9; ++channel)
			assert(!(s_Fm[0x20 + channel] & 16));
	writes = s_FmWrites + s_PsgWrites;
	Tick();
	Music2_Stop();
	assert(s_FmWrites + s_PsgWrites == writes);

	for(bar = 0; bar < MUSIC_BAR_COUNT; ++bar)
	{
		assert(s_Score[bar].third == 3 || s_Score[bar].third == 4);
		for(other = 0; other < bar; ++other)
			if(memcmp(s_Score[bar].melody, s_Score[other].melody, MUSIC_STEPS_PER_BAR) == 0)
				break;
		if(other == bar)
			++distinct;
		for(tick = 0; tick < MUSIC_STEPS_PER_BAR; ++tick)
		{
			u8 note = s_Score[bar].melody[tick];
			assert(note == MUSIC_HOLD || note == MUSIC_REST || (note >= 52 && note <= 76));
		}
	}
	assert(distinct >= 28);
	printf("PASS: %u Hz, FM %s: 128-second score, %u distinct melody bars, strong PSG, clean stop\n",
		rate, fm ? "on" : "off", distinct);
}

int main(void)
{
	unsigned writes;
	Music2_Update();
	assert(s_FmWrites == 0 && s_PsgWrites == 0);
	TestSong(50, TRUE);
	TestSong(60, TRUE);
	TestSong(50, FALSE);
	TestSong(60, FALSE);
	s_TestFm = TRUE;
	s_TestFrequency = VDP_FREQ_50HZ;
	g_JIFFY = 65530;
	Music2_Start();
	g_JIFFY += 80;
	Music2_Update();
	assert(s_Step == 3 && s_FramesInStep == 5);
	writes = s_FmWrites + s_PsgWrites;
	Music2_Update();
	assert(s_FmWrites + s_PsgWrites == writes);
	Music2_Stop();
	puts("PASS: JIFFY wraparound and delayed rendering ticks preserve the beat");
	return 0;
}
