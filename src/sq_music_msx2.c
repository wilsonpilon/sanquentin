#include "msxgl.h"
#include "bios_var.h"
#include "bios.h"
#include "msx-music.h"
#include "msx-music_reg.h"
#include "sq_music_msx2.h"

#define MUSIC_STEPS_PER_BAR 8
#define MUSIC_BAR_COUNT 12
#define MUSIC_STEP_COUNT (MUSIC_STEPS_PER_BAR * MUSIC_BAR_COUNT)
#define MUSIC_REST 0xFF

// Twelve-bar E blues: riff entries are semitone offsets from each bar root.
static const u8 s_BluesIntervals[2][MUSIC_STEPS_PER_BAR] =
{
	{ 0, MUSIC_REST, 3, 5, 6, 7, 10, 7 },
	{ 0, MUSIC_REST, 3, MUSIC_REST, 5, 6, 7, 10 }
};

// MIDI pitches for E, A and B roots across the twelve-bar progression.
static const u8 s_BarRoots[MUSIC_BAR_COUNT] =
{
	64, 64, 64, 64, 69, 69, 64, 64, 71, 69, 64, 71
};

// YM2413 f-number values for C through B; the block selects the octave.
static const u16 s_FNumber[12] =
{
	172, 182, 193, 204, 217, 229,
	243, 257, 273, 289, 306, 324
};

static bool s_Started = FALSE;
static bool s_FmPresent;
static bool s_Is50Hz;
static u16 s_LastFrame;
static u8 s_Step;
static u8 s_FramesInStep;
static u8 s_KickFrames;
static u8 s_NoiseFrames;

static void WritePsgTone(u8 channel, u16 period)
{
	u8 reg = channel * 2;
	BIOS_WritePSG(reg, (u8)period);
	BIOS_WritePSG(reg + 1, (u8)(period >> 8));
}

static void WritePsgVolume(u8 channel, u8 volume)
{
	BIOS_WritePSG(8 + channel, volume);
}

static void SetFmNote(u8 channel, u8 midiNote)
{
	u8 note = midiNote % 12;
	u8 block = midiNote / 12 - 1;
	u16 fnumber = s_FNumber[note];
	u8 control = (block << 1) | ((fnumber >> 8) & 1);

	MSXMusic_SetRegister(MSXMUSIC_REG_CTRL_1 + channel, 0);
	MSXMusic_SetRegister(MSXMUSIC_REG_FREQ_1 + channel, (u8)fnumber);
	MSXMusic_SetRegister(MSXMUSIC_REG_CTRL_1 + channel, control | 0x10);
}

static void KeyOff(u8 channel)
{
	MSXMusic_SetRegister(MSXMUSIC_REG_CTRL_1 + channel, 0);
}

static void StartKick(void)
{
	WritePsgTone(1, 950);
	WritePsgVolume(1, 8);
	s_KickFrames = 4;
}

static void StartNoise(u8 period, u8 volume, u8 frames)
{
	BIOS_WritePSG(6, period);
	WritePsgVolume(2, volume);
	s_NoiseFrames = frames;
}

static void PlayStep(void)
{
	u8 bar = s_Step / MUSIC_STEPS_PER_BAR;
	u8 beat = s_Step % MUSIC_STEPS_PER_BAR;
	u8 root = s_BarRoots[bar];
	u8 interval = s_BluesIntervals[bar & 1][beat];

	if(s_FmPresent)
	{
		if(interval == MUSIC_REST)
			KeyOff(0);
		else
			SetFmNote(0, root + interval);

		if(beat == 0 || beat == 4)
			SetFmNote(1, root - 24);
		else if(beat == 2 || beat == 6)
			KeyOff(1);

		if(beat == 2 || beat == 6)
			SetFmNote(2, root + (beat == 2 ? 7 : 12));
		else if(beat & 1)
			KeyOff(2);
	}

	if(beat == 0 || beat == 4)
		StartKick();
	else if(beat & 1)
		StartNoise(17, 2, 2);
	else
		StartNoise(8, 4, 4);

	s_Step = (s_Step + 1) % MUSIC_STEP_COUNT;
}

static u8 StepLength(void)
{
	// Alternate long and short eighth notes for a roughly 90 BPM shuffle.
	if(s_Is50Hz)
		return (s_Step & 1) ? 20 : 13;
	return (s_Step & 1) ? 24 : 16;
}

void Music2_Start(void)
{
	s_FmPresent = MSXMusic_Initialize() != MSXMUSIC_NOTFOUND;
	s_Is50Hz = Sys_Is50Hz();
	s_Step = 0;
	s_FramesInStep = 0;
	s_KickFrames = 0;
	s_NoiseFrames = 0;
	s_LastFrame = g_JIFFY;

	BIOS_WritePSG(7, (BIOS_ReadPSG(7) & 0xC0) | 0x1D);
	WritePsgTone(1, 950);
	BIOS_WritePSG(6, 8);
	WritePsgVolume(0, 0);
	WritePsgVolume(1, 0);
	WritePsgVolume(2, 0);

	if(s_FmPresent)
	{
		MSXMusic_Mute();
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1, 0x23);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_2, 0xE5);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_3, 0x25);
	}

	s_Started = TRUE;
	PlayStep();
}

void Music2_Update(void)
{
	u16 now;
	u16 elapsed;

	if(!s_Started)
		return;

	now = g_JIFFY;
	elapsed = now - s_LastFrame;
	if(elapsed == 0)
		return;
	s_LastFrame = now;

	if(s_KickFrames)
	{
		if(elapsed >= s_KickFrames)
		{
			s_KickFrames = 0;
			WritePsgVolume(1, 0);
		}
		else
			s_KickFrames -= elapsed;
	}
	if(s_NoiseFrames)
	{
		if(elapsed >= s_NoiseFrames)
		{
			s_NoiseFrames = 0;
			WritePsgVolume(2, 0);
		}
		else
			s_NoiseFrames -= elapsed;
	}

	if(elapsed >= StepLength() - s_FramesInStep)
	{
		s_FramesInStep = 0;
		PlayStep();
	}
	else
		s_FramesInStep += elapsed;

}

void Music2_Stop(void)
{
	if(!s_Started)
		return;

	if(s_FmPresent)
		MSXMusic_Mute();
	WritePsgVolume(0, 0);
	WritePsgVolume(1, 0);
	WritePsgVolume(2, 0);
	BIOS_WritePSG(7, BIOS_ReadPSG(7) | 0x3F);
	s_Started = FALSE;
}
