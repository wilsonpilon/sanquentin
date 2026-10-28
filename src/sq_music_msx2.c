#include "msxgl.h"
#include "bios_var.h"
#include "psg.h"
#include "msx-music.h"
#include "msx-music_reg.h"
#include "sq_music_msx2.h"

#define MUSIC_STEPS_PER_BAR 8
#define MUSIC_BAR_COUNT 32
#define MUSIC_HOLD 0xFE
#define MUSIC_REST 0xFF

typedef struct MusicBar
{
	u8 root;
	u8 third;
	u8 melody[MUSIC_STEPS_PER_BAR];
} MusicBar;

// Original E-minor lament: solitude, procession, blackout, and an unresolved farewell.
// MIDI roots are in the bass register; HOLD sustains without retriggering the attack.
static const MusicBar s_Score[MUSIC_BAR_COUNT] =
{
	{ 40, 3, { 64, MUSIC_HOLD, MUSIC_HOLD, 62, 59, MUSIC_HOLD, 55, MUSIC_HOLD } },
	{ 36, 4, { 60, MUSIC_HOLD, 59, MUSIC_HOLD, 55, MUSIC_HOLD, MUSIC_REST, 59 } },
	{ 45, 3, { 60, MUSIC_HOLD, MUSIC_HOLD, 59, 57, MUSIC_HOLD, 55, 57 } },
	{ 35, 4, { 59, MUSIC_HOLD, 63, MUSIC_HOLD, 66, MUSIC_HOLD, 63, 62 } },
	{ 40, 3, { 64, MUSIC_HOLD, 67, MUSIC_HOLD, 66, MUSIC_HOLD, 64, 62 } },
	{ 36, 4, { 64, MUSIC_HOLD, 60, MUSIC_HOLD, 59, MUSIC_HOLD, 55, MUSIC_HOLD } },
	{ 33, 3, { 57, MUSIC_HOLD, 60, MUSIC_HOLD, 59, 57, 55, 54 } },
	{ 35, 4, { 59, MUSIC_HOLD, 57, MUSIC_HOLD, 54, MUSIC_HOLD, 63, MUSIC_REST } },

	{ 40, 3, { 59, MUSIC_HOLD, 64, 66, 67, MUSIC_HOLD, 66, 64 } },
	{ 43, 4, { 67, MUSIC_HOLD, 71, MUSIC_HOLD, 69, 67, 66, MUSIC_HOLD } },
	{ 38, 4, { 66, MUSIC_HOLD, 64, MUSIC_HOLD, 62, MUSIC_HOLD, 57, 62 } },
	{ 36, 4, { 64, MUSIC_HOLD, 67, MUSIC_HOLD, 64, 62, 60, 59 } },
	{ 33, 3, { 60, MUSIC_HOLD, 64, MUSIC_HOLD, 69, MUSIC_HOLD, 67, 64 } },
	{ 40, 3, { 67, MUSIC_HOLD, 66, 64, 62, MUSIC_HOLD, 59, MUSIC_HOLD } },
	{ 36, 4, { 60, MUSIC_HOLD, 59, 55, 52, MUSIC_HOLD, 55, 57 } },
	{ 35, 4, { 54, MUSIC_HOLD, 57, 59, 63, MUSIC_HOLD, 66, MUSIC_REST } },

	{ 33, 3, { 69, MUSIC_HOLD, MUSIC_HOLD, 67, 64, MUSIC_HOLD, 60, 59 } },
	{ 36, 4, { 67, MUSIC_HOLD, 64, MUSIC_HOLD, 60, MUSIC_HOLD, 59, 55 } },
	{ 40, 3, { 66, MUSIC_HOLD, 64, 62, 59, MUSIC_HOLD, 55, 52 } },
	{ 35, 4, { 63, MUSIC_HOLD, MUSIC_HOLD, 62, 59, MUSIC_HOLD, 57, 54 } },
	{ 33, 3, { 64, MUSIC_HOLD, 69, MUSIC_HOLD, 72, MUSIC_HOLD, 71, 69 } },
	{ 36, 4, { 67, MUSIC_HOLD, 64, 62, 60, MUSIC_HOLD, 59, MUSIC_HOLD } },
	{ 38, 4, { 62, MUSIC_HOLD, 66, MUSIC_HOLD, 69, 67, 66, 64 } },
	{ 35, 4, { 63, MUSIC_HOLD, 66, 69, 66, 63, 59, MUSIC_REST } },

	{ 40, 3, { 76, MUSIC_HOLD, MUSIC_HOLD, 74, 71, MUSIC_HOLD, 67, MUSIC_HOLD } },
	{ 36, 4, { 72, MUSIC_HOLD, 71, MUSIC_HOLD, 67, MUSIC_HOLD, 64, MUSIC_HOLD } },
	{ 33, 3, { 69, MUSIC_HOLD, MUSIC_HOLD, 67, 64, MUSIC_HOLD, 60, 59 } },
	{ 35, 4, { 66, MUSIC_HOLD, 63, MUSIC_HOLD, 59, MUSIC_HOLD, 57, 54 } },
	{ 36, 4, { 64, MUSIC_HOLD, 67, MUSIC_HOLD, 64, MUSIC_HOLD, 60, MUSIC_HOLD } },
	{ 33, 3, { 60, MUSIC_HOLD, 59, MUSIC_HOLD, 57, MUSIC_HOLD, 55, MUSIC_HOLD } },
	{ 35, 4, { 59, MUSIC_HOLD, 63, MUSIC_HOLD, 66, MUSIC_HOLD, 63, 59 } },
	{ 40, 3, { 64, MUSIC_HOLD, MUSIC_HOLD, MUSIC_HOLD, 59, MUSIC_HOLD, MUSIC_HOLD, MUSIC_REST } }
};

static const u16 s_FNumber[12] =
{
	172, 182, 193, 204, 217, 229,
	243, 257, 273, 289, 306, 324
};

static const u8 s_KickEnvelope[] = { 15, 15, 14, 13, 12, 10, 8, 6, 4, 2 };
static const u8 s_SnareEnvelope[] = { 15, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 2 };
static const u8 s_HatEnvelope[] = { 10, 8, 6, 4, 2 };
static const u8 s_KickPatterns[4] = { 0x11, 0x19, 0x91, 0x51 };

static bool s_Started = FALSE;
static bool s_FmPresent;
static u8 s_FrameRate;
static u16 s_LastFrame;
static u8 s_Bar;
static u8 s_Step;
static u8 s_FramesInStep;
static u8 s_KickAge;
static u8 s_NoiseAge;
static bool s_Snare;

static void WritePsgTone(u8 channel, u16 period)
{
	u8 reg = channel * 2;
	PSG_SetRegister(reg, (u8)period);
	PSG_SetRegister(reg + 1, (u8)(period >> 8));
}

static void WritePsgVolume(u8 channel, u8 volume)
{
	PSG_SetRegister(8 + channel, volume);
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

static void Percussion(void)
{
	u8 age;
	if(s_KickAge != MUSIC_REST)
	{
		age = (u16)s_KickAge * 50 / s_FrameRate;
		if(age < sizeof(s_KickEnvelope))
		{
			WritePsgTone(1, 450 + (u16)age * 135);
			WritePsgVolume(1, s_KickEnvelope[age]);
			++s_KickAge;
		}
		else
		{
			WritePsgVolume(1, 0);
			s_KickAge = MUSIC_REST;
		}
	}
	if(s_NoiseAge != MUSIC_REST)
	{
		age = (u16)s_NoiseAge * 50 / s_FrameRate;
		if(s_Snare && age < sizeof(s_SnareEnvelope))
		{
			WritePsgVolume(2, s_SnareEnvelope[age]);
			WritePsgVolume(0, age < 5 ? 12 - age * 2 : 0);
			++s_NoiseAge;
		}
		else if(!s_Snare && age < sizeof(s_HatEnvelope))
		{
			WritePsgVolume(2, s_HatEnvelope[age]);
			++s_NoiseAge;
		}
		else
		{
			WritePsgVolume(0, 0);
			WritePsgVolume(2, 0);
			s_NoiseAge = MUSIC_REST;
		}
	}
}

static void PlayStep(void)
{
	const MusicBar* bar = &s_Score[s_Bar];
	u8 section = s_Bar / 8;
	u8 melody = bar->melody[s_Step];

	if(s_FmPresent)
	{
		if(melody == MUSIC_REST)
			KeyOff(0);
		else if(melody != MUSIC_HOLD)
			SetFmNote(0, melody);

		if(s_Step == 0)
		{
			SetFmNote(2, bar->root + 12);
			SetFmNote(3, bar->root + 12 + bar->third);
			SetFmNote(4, bar->root + 19);
			if(section == 2)
				SetFmNote(5, bar->root + 22);
			else
				SetFmNote(5, bar->root + 24);
		}
		if(s_Step == 0 || s_Step == 4)
			SetFmNote(1, bar->root);
		else if(s_Step == 3)
			SetFmNote(1, bar->root + 7);
		else if(s_Step == 7)
			SetFmNote(1, s_Score[(s_Bar + 1) % MUSIC_BAR_COUNT].root + 1);
	}

	if(s_KickPatterns[section] & (1 << s_Step))
		s_KickAge = 0;
	if(s_Step == 2 || s_Step == 6 ||
		((s_Bar & 7) == 7 && (s_Step == 5 || s_Step == 7)))
	{
		s_Snare = TRUE;
		s_NoiseAge = 0;
		PSG_SetRegister(6, 11);
		WritePsgTone(0, 510);
	}
	else if(s_Step & 1)
	{
		s_Snare = FALSE;
		s_NoiseAge = 0;
		WritePsgVolume(0, 0);
		PSG_SetRegister(6, 3);
	}
}

void Music2_Start(void)
{
	s_FmPresent = MSXMusic_Initialize() != MSXMUSIC_NOTFOUND;
	// Reading the active VDP rate avoids the DOS BIOS helper's interrupt side effect.
	s_FrameRate = VDP_GetFrequency() == VDP_FREQ_50HZ ? 50 : 60;
	s_Bar = 0;
	s_Step = 0;
	s_FramesInStep = 0;
	s_KickAge = MUSIC_REST;
	s_NoiseAge = MUSIC_REST;
	s_Snare = FALSE;
	s_LastFrame = g_JIFFY;

	PSG_SetRegister(7, (PSG_GetRegister(7) & 0xC0) | 0x1C);
	WritePsgVolume(0, 0);
	WritePsgVolume(1, 0);
	WritePsgVolume(2, 0);

	if(s_FmPresent)
	{
		MSXMusic_Mute();
		MSXMusic_SetRegister(0x0E, 0);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1, 0xF2);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1 + 1, 0xD1);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1 + 2, 0x17);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1 + 3, 0x18);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1 + 4, 0x18);
		MSXMusic_SetRegister(MSXMUSIC_REG_INST_1 + 5, 0x16);
	}

	s_Started = TRUE;
	PlayStep();
	Percussion();
}

void Music2_Update(void)
{
	u16 now;
	u16 elapsed;

	if(!s_Started)
		return;

	now = g_JIFFY;
	elapsed = now - s_LastFrame;
	s_LastFrame = now;

	// Sixty BPM, eight half-second steps per bar: 32 bars last 128 seconds.
	// Consume every tick, including time spent rendering, without resetting the beat.
	while(elapsed)
	{
		--elapsed;
		if(++s_FramesInStep == s_FrameRate / 2)
		{
			s_FramesInStep = 0;
			if(++s_Step == MUSIC_STEPS_PER_BAR)
			{
				s_Step = 0;
				s_Bar = (s_Bar + 1) % MUSIC_BAR_COUNT;
			}
			PlayStep();
		}
		Percussion();
	}
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
	PSG_SetRegister(7, PSG_GetRegister(7) | 0x3F);
	s_Started = FALSE;
}
