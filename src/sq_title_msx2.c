#include "msxgl.h"
#include "draw.h"
#include "sq_title_msx2.h"
#include "../projects/msx2/out/font_vram.h"

#define BACK_Y 256
#define CARD_COUNT 10
#define QUESTION_CARD (CARD_COUNT - 1)

enum
{
	INK, NIGHT, DEEP, SEA, SKY, MIST, FOAM, STONE,
	LIGHT, SHADE, ROOF, RUST, GRASS, GOLD, PAPER, WHITE
};

// V9938 palette: [0RRR0BBB, 00000GGG].
static const u8 s_Palette[32] =
{
	0x00,0, 0x11,1, 0x12,2, 0x24,3,
	0x36,4, 0x46,5, 0x56,6, 0x54,5,
	0x65,6, 0x32,3, 0x21,2, 0x42,3,
	0x22,3, 0x63,5, 0x76,7, 0x77,7
};

static const c8* const s_Names[CARD_COUNT] =
{
	"01 / A PRISAO SOBRE A BAIA",
	"02 / PEDRA E TRABALHO",
	"03 / A OUTRA MARGEM",
	"04 / SCARP LANTRA",
	"05 / PRISAO PERPETUA",
	"06 / A ESPERA",
	"07 / CERTA NOITE...",
	"08 / O BLECAUTE",
	"09 / A SONHADA LIBERDADE",
	"10 / ACEITA ACOMPANHA-LO?"
};

static const c8 s_Footer[] = "</>:CENA  ESP:PROX  P:PAUSA  ESC:DOS";

static const c8* const s_Captions[CARD_COUNT][3] =
{
	{
		"1852. Em Point San Quentin, nasce",
		"a mais antiga prisao da California,",
		"as margens da baia de San Francisco."
	},
	{
		"Antes dos muros, o navio Waban",
		"abrigava presos. Com trabalho dos",
		"detentos, a obra seguiu ate 1854."
	},
	{
		"A corrida do ouro trouxe multidoes.",
		"Superlotacao e fugas dos navios",
		"levaram a uma prisao em terra firme."
	},
	{
		"Scarp Lantra, o temivel ladrao de",
		"bancos e assassino, condenado a",
		"prisao perpetua,"
	},
	{
		"encontra-se no Presidio de San Quentin,",
		"de onde jurou escapar,",
		""
	},
	{
		"aproveitando-se do primeiro 'cochilo'",
		"dos carcereiros.",
		""
	},
	{
		"Certa noite, valendo-se de um blecaute",
		"proveniente de um curto-circuito nas",
		""
	},
	{
		"instalacoes eletricas da casa de forca",
		"do presidio, o facinora julgou",
		"chegado o"
	},
	{
		"momento exato para empreender a fuga",
		"e assim alcancar a sonhada liberdade.",
		""
	},
	{
		"Aceita acompanha-lo nessa dificil e",
		"perigosa empreitada ?",
		"[S] SIM                 [N] NAO"
	}
};

static u8 s_Darkness;

static u8 ImageColor(u8 color)
{
	static const u8 night[16] =
	{
		INK, NIGHT, NIGHT, DEEP, SEA, SKY, MIST, SHADE,
		STONE, NIGHT, INK, ROOF, DEEP, STONE, LIGHT, PAPER
	};
	static const u8 blackout[16] =
	{
		INK, INK, INK, NIGHT, NIGHT, DEEP, DEEP, NIGHT,
		SHADE, INK, INK, INK, NIGHT, DEEP, SHADE, STONE
	};
	return s_Darkness == 2 ? blackout[color] :
		s_Darkness == 1 ? night[color] : color;
}

static void Fill(u16 x1, u16 y1, u16 x2, u16 y2, u8 color)
{
	Draw_FillBox(x1, y1 + BACK_Y, x2, y2 + BACK_Y, ImageColor(color), VDP_OP_IMP);
}

static void Line(u16 x1, u16 y1, u16 x2, u16 y2, u8 color)
{
	Draw_Line(x1, y1 + BACK_Y, x2, y2 + BACK_Y, ImageColor(color), VDP_OP_IMP);
}

static void Box(u16 x1, u16 y1, u16 x2, u16 y2, u8 color)
{
	Draw_Box(x1, y1 + BACK_Y, x2, y2 + BACK_Y, ImageColor(color), VDP_OP_IMP);
}

static void Text(u16 x, u16 y, const c8* text, u8 color, u8 bg)
{
	Print_SetColor(color, bg);
	Print_SetPosition(x, y + BACK_Y);
	Print_DrawText(text);
}

// Filled sloping surfaces, using horizontal V9938 lines rather than a bitmap.
static void Slope(i16 left, i16 right, i16 top,
	i16 bottomLeft, i16 bottomRight, i16 bottom, u8 color)
{
	i16 y;
	for(y = top; y <= bottom; ++y)
	{
		i16 x1 = left + (bottomLeft - left) * (y - top) / (bottom - top);
		i16 x2 = right + (bottomRight - right) * (y - top) / (bottom - top);
		Line(x1, y, x2, y, color);
	}
}

static void Window(u16 x, u16 y, u8 width, u8 height)
{
	Fill(x, y, x + width, y + height, SHADE);
	Line(x, y, x, y + height, ROOF);
	Line(x + width, y, x + width, y + height, LIGHT);
	Line(x, y + height + 1, x + width + 1, y + height + 1, PAPER);
	Line(x + width / 2, y + 1, x + width / 2, y + height, STONE);
}

static void Sky(void)
{
	Fill(5, 20, 250, 54, SKY);
	Fill(5, 55, 250, 78, MIST);
	Fill(5, 79, 250, 149, FOAM);
	Line(21, 36, 58, 36, MIST);
	Line(30, 34, 49, 34, MIST);
	Line(175, 47, 223, 47, FOAM);
	Line(187, 45, 213, 45, FOAM);
}

static void Water(u16 top)
{
	u16 y, x;
	Fill(5, top, 250, 149, SEA);
	for(y = top + 2; y < 149; y += 4)
	{
		for(x = 8 + (y % 11); x < 236; x += 31)
			Line(x, y, x + 12 + (y % 5), y, y & 4 ? MIST : DEEP);
	}
}

static void Fence(u16 top, u16 bottom)
{
	u16 x;
	for(x = 6; x < 250; x += 8)
	{
		Line(x, top, x, bottom, SHADE);
		if(x + 8 < 251)
		{
			Line(x, top + 3, x + 8, bottom - 2, STONE);
			Line(x, bottom - 2, x + 8, top + 3, STONE);
		}
	}
	Line(5, top, 250, top, PAPER);
	Line(5, bottom, 250, bottom, ROOF);
}

static void Tower(u16 x, u16 y, u8 height)
{
	Line(x + 4, y + 17, x, y + height, LIGHT);
	Line(x + 16, y + 17, x + 21, y + height, STONE);
	Line(x + 5, y + 25, x + 19, y + height - 5, LIGHT);
	Line(x + 16, y + 25, x + 2, y + height - 5, SHADE);
	Line(x + 3, y + height - 6, x + 20, y + height - 6, LIGHT);
	Fill(x + 1, y + 3, x + 20, y + 20, STONE);
	Fill(x + 3, y + 5, x + 18, y + 17, LIGHT);
	Fill(x + 5, y + 6, x + 9, y + 12, DEEP);
	Fill(x + 13, y + 6, x + 17, y + 12, DEEP);
	Slope(x + 9, x + 12, y, x, x + 22, y + 4, ROOF);
	Line(x, y + 21, x + 21, y + 21, PAPER);
}

static void Bay(void)
{
	u16 x, y;
	Sky();
	Slope(5, 42, 76, 5, 89, 103, SHADE);
	Slope(24, 230, 100, 5, 250, 119, GRASS);
	Fill(30, 66, 229, 99, STONE);
	Fill(31, 67, 228, 70, LIGHT);
	Fill(103, 57, 155, 100, LIGHT);
	Slope(110, 149, 53, 99, 160, 58, ROOF);
	Fill(124, 49, 136, 53, STONE);
	Line(29, 65, 103, 65, ROOF);
	Line(156, 65, 230, 65, ROOF);
	for(x = 35; x < 226; x += 10)
	{
		if(x > 98 && x < 158)
			continue;
		Line(x - 2, 70, x - 2, 98, LIGHT);
		for(y = 73; y < 94; y += 10)
			Window(x, y, 3, 6);
	}
	for(x = 109; x < 153; x += 10)
	{
		Window(x, 63, 4, 5);
		Window(x, 76, 4, 11);
		Window(x, 92, 4, 6);
	}
	Tower(202, 83, 32);
	Fence(106, 115);
	Water(121);
	Line(5, 119, 250, 119, STONE);
	for(x = 34; x < 222; x += 14)
	{
		Line(x, 124, x + 7, 124, STONE);
		Line(x + 3, 132, x + 9, 132, SHADE);
	}
}

static void Facade(void)
{
	u16 x, y;
	Sky();
	Fill(5, 124, 250, 149, GRASS);
	Fill(23, 58, 217, 124, LIGHT);
	Slope(217, 217, 58, 217, 250, 73, STONE);
	Fill(218, 73, 250, 124, STONE);
	Slope(56, 204, 43, 18, 221, 57, ROOF);
	Slope(204, 204, 43, 221, 250, 57, RUST);
	Line(19, 58, 217, 58, PAPER);
	Fill(110, 34, 133, 44, LIGHT);
	Slope(118, 127, 31, 106, 137, 34, ROOF);
	for(y = 64; y < 119; y += 22)
	{
		Line(23, y + 15, 217, y + 15, STONE);
		for(x = 30; x < 212; x += 15)
			Window(x, y, 6, y == 86 ? 13 : 9);
	}
	for(x = 26; x < 216; x += 15)
		Line(x, 60, x, 123, PAPER);
	Fill(111, 105, 130, 124, ROOF);
	Box(109, 103, 132, 124, STONE);
	Line(120, 105, 120, 124, SHADE);
	for(x = 225; x < 246; x += 12)
	{
		Window(x, 78, 4, 8);
		Window(x, 99, 4, 10);
	}
	Fence(128, 144);
	Tower(45, 92, 54);
	for(x = 8; x < 245; x += 19)
	{
		Line(x, 147, x + 3, 141, GOLD);
		Line(x + 3, 147, x + 7, 143, STONE);
	}
}

static void Wall(void)
{
	u16 x, y;
	Sky();
	Fill(5, 60, 250, 117, STONE);
	Fill(5, 57, 250, 61, ROOF);
	Line(5, 63, 250, 63, LIGHT);
	for(y = 69; y < 113; y += 20)
		for(x = 12; x < 245; x += 19)
			Window(x, y, 7, 12);
	Fill(5, 118, 250, 149, SHADE);
	for(y = 122; y < 149; y += 8)
		Line(5, y, 250, y, STONE);
	for(x = 17; x < 250; x += 30)
		Line(x, 119, x, 148, ROOF);
	Fence(101, 129);
	// Large foreground watchtower, inspired by the bay-side towers.
	Fill(145, 61, 191, 90, LIGHT);
	Fill(192, 64, 202, 90, STONE);
	Slope(162, 179, 48, 138, 207, 61, ROOF);
	Line(138, 62, 207, 62, PAPER);
	Fill(149, 67, 162, 80, DEEP);
	Fill(174, 67, 187, 80, DEEP);
	Line(155, 68, 155, 80, MIST);
	Line(180, 68, 180, 80, MIST);
	Fill(143, 89, 205, 93, STONE);
	Slope(147, 152, 94, 137, 144, 149, LIGHT);
	Slope(193, 197, 94, 201, 208, 149, STONE);
	Line(152, 98, 199, 144, PAPER);
	Line(193, 98, 145, 144, SHADE);
	Line(143, 140, 203, 140, LIGHT);
	for(y = 97; y < 146; y += 5)
		Line(169, y, 179, y, ROOF);
	Line(168, 94, 168, 149, SHADE);
	Line(180, 94, 180, 149, SHADE);
}

static void Cell(void)
{
	u16 x, y;
	Fill(5, 20, 250, 149, NIGHT);
	Slope(5, 250, 20, 61, 199, 55, SHADE);
	Fill(61, 55, 199, 115, STONE);
	Slope(61, 199, 116, 5, 250, 149, ROOF);
	for(y = 61; y < 113; y += 13)
	{
		Line(62, y, 198, y, SHADE);
		for(x = 70 + (y % 2) * 12; x < 198; x += 25)
			Line(x, y, x, y + 12, SHADE);
	}
	Fill(105, 60, 145, 85, NIGHT);
	Fill(108, 62, 142, 82, SKY);
	for(x = 113; x < 142; x += 8)
		Fill(x, 62, x + 1, 82, INK);
	Line(108, 74, 142, 74, INK);
	// The last light from the bay reaches the cell floor.
	Slope(112, 140, 116, 84, 178, 146, SHADE);
	Line(119, 117, 109, 146, ROOF);
	Line(130, 117, 142, 146, ROOF);
	Fill(64, 99, 101, 111, ROOF);
	Slope(64, 95, 96, 45, 95, 108, MIST);
	Line(45, 109, 95, 109, LIGHT);
	Line(47, 110, 47, 131, INK);
	Line(94, 110, 94, 121, INK);
	Fill(65, 97, 78, 101, PAPER);
	Fill(177, 103, 190, 114, SHADE);
	Box(176, 102, 191, 106, LIGHT);
	Line(5, 20, 61, 55, ROOF);
	Line(250, 20, 199, 55, ROOF);
	Line(5, 149, 61, 115, INK);
	Line(250, 149, 199, 115, INK);
	// Foreground bars preserve the oppressive silhouette of the original.
	for(x = 17; x < 250; x += 31)
	{
		Fill(x, 20, x + 3, 149, INK);
		Line(x + 4, 20, x + 4, 149, SHADE);
	}
	Fill(5, 35, 250, 39, INK);
	Fill(5, 133, 250, 137, INK);
	Fill(204, 94, 215, 111, INK);
	Box(205, 95, 214, 110, RUST);
	Fill(209, 100, 210, 105, INK);
}

static void PowerHouse(void)
{
	u16 x;
	Sky();
	Fill(5, 117, 250, 149, SHADE);
	Fill(35, 71, 181, 128, STONE);
	Slope(52, 164, 56, 29, 187, 71, ROOF);
	Fill(48, 81, 71, 101, GOLD);
	Fill(92, 81, 115, 101, GOLD);
	Fill(48, 103, 115, 106, LIGHT);
	Fill(137, 90, 160, 128, ROOF);
	Box(135, 88, 162, 128, LIGHT);
	Fill(151, 104, 154, 107, RUST);
	Fill(165, 38, 175, 66, RUST);
	Line(164, 38, 176, 38, STONE);
	Fill(208, 43, 211, 142, ROOF);
	Line(193, 51, 228, 51, SHADE);
	for(x = 197; x < 225; x += 8)
	{
		Fill(x, 47, x + 2, 52, LIGHT);
		Line(x, 48, x - 25, 74, INK);
	}
	Fill(201, 74, 220, 100, STONE);
	Box(203, 76, 218, 98, SHADE);
	for(x = 205; x < 217; x += 3)
		Line(x, 79, x, 94, LIGHT);
	if(s_Darkness < 2)
	{
		Line(202, 66, 196, 73, WHITE);
		Line(196, 73, 205, 71, WHITE);
		Line(205, 71, 198, 80, GOLD);
	}
	Fence(130, 145);
}

static void Render(u8 card)
{
	u8 i;
	Fill(0, 0, 255, 211, NIGHT);
	Text(8, 5, "SAN QUENTIN", PAPER, NIGHT);
	Text(170, 5, "MSX2 / 1852", GOLD, NIGHT);
	Line(5, 15, 250, 15, GOLD);
	s_Darkness = card >= 7 ? 2 : card >= 4 ? 1 : 0;
	switch(card)
	{
	case 0: Bay(); break;
	case 1: Facade(); break;
	case 2: Wall(); break;
	case 3: Cell(); break;
	case 4: Wall(); break;
	case 5: Cell(); break;
	case 6:
	case 7: PowerHouse(); break;
	case 8:
	case 9: Cell(); break;
	}
	s_Darkness = 0;
	Box(4, 19, 251, 150, GOLD);
	Fill(4, 154, 251, 198, INK);
	Box(4, 154, 251, 198, SHADE);
	Text(10, 157, s_Names[card], GOLD, INK);
	for(i = 0; i < 3; ++i)
		Text(10, 168 + i * 9, s_Captions[card][i], PAPER, INK);
	Text(8, 203, card == QUESTION_CARD ?
		"S:ACEITAR  N:REVER  <:VOLTAR  ESC:DOS" : s_Footer, MIST, NIGHT);
	VDP_CommandWait();
}

static void Reveal(void)
{
	u16 step, band;
	// Eight horizontal shutters copy the completed hidden page to page 0.
	for(step = 0; step < 27; ++step)
	{
		Halt();
		for(band = 0; band < 8; ++band)
		{
			u16 y = band * 27 + step;
			if(y < 212)
				VDP_CommandHMMM(0, y + BACK_Y, 0, y, 256, 1);
		}
	}
	VDP_CommandWait();
}

static void Blackout(void)
{
	u8 flash, frame;
	// Only image colors flicker; PAPER/GOLD keep captions and frames readable.
	for(flash = 0; flash < 4; ++flash)
	{
		u8 color;
		for(color = NIGHT; color <= GRASS; ++color)
			VDP_SetPaletteEntry(color, flash & 1 ?
				((u16)s_Palette[color * 2 + 1] << 8) | s_Palette[color * 2] : 0);
		for(frame = 0; frame < 5; ++frame)
			Halt();
	}
	VDP_SetPalette(s_Palette);
}

static u8 Keys(void)
{
	u8 result = 0;
	u8 row = Keyboard_Read(7);
	if(IS_KEY_PRESSED(row, KEY_ESC)) result |= 1;
	if(IS_KEY_PRESSED(row, KEY_RETURN)) result |= 2;
	row = Keyboard_Read(8);
	if(IS_KEY_PRESSED(row, KEY_SPACE) || IS_KEY_PRESSED(row, KEY_RIGHT)) result |= 2;
	if(IS_KEY_PRESSED(row, KEY_LEFT)) result |= 4;
	row = Keyboard_Read(4);
	if(IS_KEY_PRESSED(row, KEY_P)) result |= 8;
	if(IS_KEY_PRESSED(row, KEY_N)) result |= 32;
	row = Keyboard_Read(5);
	if(IS_KEY_PRESSED(row, KEY_S)) result |= 16;
	return result;
}

static void Accepted(void)
{
	Fill(4, 154, 251, 198, INK);
	Box(4, 154, 251, 198, GOLD);
	Text(10, 157, "VOCE ACEITOU ACOMPANHAR SCARP LANTRA.", GOLD, INK);
	Text(10, 169, "A aventura MSX2 ainda esta", PAPER, INK);
	Text(10, 180, "em desenvolvimento.", PAPER, INK);
	Fill(0, 202, 255, 211, NIGHT);
	Text(8, 203, "ESP/ENTER:DOS   N:REVER", MIST, NIGHT);
	VDP_CommandWait();
	Reveal();
}

void Title2_Show(void)
{
	u8 card = 0;
	u8 previous;
	u16 elapsed = 0;
	u16 duration = (Sys_Is50Hz() ? 50 : 60) * 12;
	bool paused = FALSE;
	bool accepted = FALSE;

	VDP_SetMode(VDP_MODE_SCREEN5);
	VDP_EnableDisplay(FALSE);
	VDP_SetLineCount(VDP_LINE_212);
	VDP_EnableSprite(FALSE);
	VDP_SetColor(NIGHT);
	VDP_SetPage(0);
	VDP_SetPalette(s_Palette);
	Print_SetBitmapFont(g_Font_VRAM);
	VDP_CommandHMMV(0, 0, 256, 212, 0x11);
	VDP_CommandWait();
	Render(card);
	VDP_EnableDisplay(TRUE);
	Reveal();
	previous = Keys();

	while(TRUE)
	{
		u8 held, pressed;
		bool change = FALSE;
		Halt();
		held = Keys();
		pressed = held & ~previous;
		previous = held;
		if(pressed & 1)
			break;
		if(accepted)
		{
			if(pressed & 2)
				break;
			if(!(pressed & 32))
				continue;
			accepted = FALSE;
			paused = FALSE;
			card = 0;
			change = TRUE;
		}
		else if(card == QUESTION_CARD && (pressed & 16))
		{
			accepted = TRUE;
			Accepted();
			continue;
		}
		else if(card == QUESTION_CARD && (pressed & 32))
		{
			card = 0;
			paused = FALSE;
			change = TRUE;
		}
		else if(pressed & 8 && card != QUESTION_CARD)
		{
			paused = !paused;
			Text(8, 203, paused ? "PAUSADO" : "</>:CEN", paused ? GOLD : MIST, NIGHT);
			VDP_CommandHMMM(8, 203 + BACK_Y, 8, 203, 42, 8);
		}
		else if(pressed & 4)
		{
			card = card == 0 ? CARD_COUNT - 1 : card - 1;
			change = TRUE;
		}
		else if(card != QUESTION_CARD &&
			((pressed & 2) || (!paused && ++elapsed >= duration)))
		{
			card = (card + 1) % CARD_COUNT;
			change = TRUE;
		}
		if(change)
		{
			if(card == 7)
				Blackout();
			Render(card);
			if(paused && card != QUESTION_CARD)
				Text(8, 203, "PAUSADO", GOLD, NIGHT);
			Reveal();
			elapsed = 0;
		}
	}

	VDP_CommandWait();
	VDP_SetDefaultPalette();
	g_GETPNT = g_PUTPNT;
}
