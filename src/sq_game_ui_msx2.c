#include "sq_game_ui.h"
#include "sq_input.h"
#include "draw.h"
extern const unsigned char g_Font_VRAM[];

#define TEXT_TOP 110
#define TEXT_ROWS 9
#define PAPER 14
#define GOLD 13
#define WALL 7
#define DARK 1

static u8 s_X;
static u8 s_Y;
static bool s_HavePanels;
static Engine_State s_Previous;

static const u8 s_Palette[32] =
{
	0x00,0, 0x11,1, 0x12,2, 0x24,3,
	0x36,4, 0x46,5, 0x56,6, 0x54,5,
	0x65,6, 0x32,3, 0x21,2, 0x42,3,
	0x22,3, 0x63,5, 0x76,7, 0x77,7
};

static const c8* const s_RoomNames[] =
{
	"", "CELA", "CORREDOR", "REFEITORIO", "ENFERMARIA", "ALMOXARIFADO",
	"HORTA", "BIBLIOTECA", "VISITAS", "COZINHA", "CAPELA",
	"TUNEL", "NECROTERIO", "DIRETOR", "CORREDOR", "PATIO",
	"OFICINA", "RIO", "GUARITA LESTE", "CELA SURDA", "LAVANDERIA",
	"GUARITA SUL", "RIO", "RIO", "PORTAO"
};

static const u8 s_Icons[ENGINE_OBJECT_COUNT][8] =
{
	{ 0x18,0x3C,0x3C,0x18,0x18,0x18,0x18,0x18 },
	{ 0x7E,0x42,0x52,0x42,0x4A,0x42,0x42,0x7E },
	{ 0x42,0x7E,0x42,0x7E,0x42,0x7E,0x42,0x42 },
	{ 0x03,0x06,0x0C,0x18,0x3E,0x7C,0x54,0x20 },
	{ 0x7E,0x4A,0x4A,0x4A,0x4A,0x4A,0x7E,0 },
	{ 0x18,0x18,0x7E,0x18,0x18,0x18,0x18,0 },
	{ 0x38,0x44,0x44,0x38,0x10,0x28,0x10,0x08 },
	{ 0x66,0xFF,0x7E,0x3C,0x3C,0x7E,0xFF,0x66 },
	{ 0x24,0x7E,0xDB,0x99,0x18,0x18,0x18,0x18 },
	{ 0x3C,0x42,0x99,0xA5,0xA5,0x99,0x42,0x3C },
	{ 0x02,0x06,0x0C,0x18,0x30,0x60,0xE0,0x40 },
	{ 0x3C,0x3C,0x18,0x18,0x18,0x18,0x18,0x18 },
	{ 0x30,0x48,0x48,0x30,0x18,0x0C,0x0E,0x04 },
	{ 0x3C,0x7E,0x18,0x3C,0x5A,0x18,0x24,0x24 }
};

static void Fill(u16 x, u16 y, u16 right, u16 bottom, u8 color)
{
	Draw_FillBox(x, y, right, bottom, color, VDP_OP_IMP);
}

static void Line(u16 x, u16 y, u16 right, u16 bottom, u8 color)
{
	Draw_Line(x, y, right, bottom, color, VDP_OP_IMP);
}

static void Text(u16 x, u16 y, const c8* text, u8 color)
{
	Print_SetColor(color, DARK);
	Print_SetPosition(x, y);
	Print_DrawText(text);
}

static void Glyph(u8 x, u8 y, u8 character)
{
	Fill(x, y, x + 5, y + 7, DARK);
	Print_SetColor(PAPER, DARK);
	Print_SetPosition(x, y);
	Print_DrawChar(character);
}

void GameUI_Position(u8 x, u8 y) { s_X = x; s_Y = y; }
void GameUI_PositionX(u8 x) { s_X = x; }
void GameUI_Clear(void)
{
	Fill(4, TEXT_TOP, 251, TEXT_TOP + TEXT_ROWS * 8 - 1, DARK);
	s_X = 0;
	s_Y = 0;
}

void GameUI_Return(void)
{
	s_X = 0;
	if(++s_Y >= TEXT_ROWS)
	{
		VDP_CommandHMMM(4, TEXT_TOP + 8, 4, TEXT_TOP, 240, (TEXT_ROWS - 1) * 8);
		VDP_CommandWait();
		Fill(4, TEXT_TOP + (TEXT_ROWS - 1) * 8, 251, TEXT_TOP + TEXT_ROWS * 8 - 1, DARK);
		s_Y = TEXT_ROWS - 1;
	}
}

void GameUI_Char(u8 character)
{
	if(character == '\n')
	{
		GameUI_Return();
		return;
	}
	if(s_X >= 40)
		GameUI_Return();
	Glyph(8 + s_X * 6, TEXT_TOP + s_Y * 8, character);
	++s_X;
}

void GameUI_Backspace(void)
{
	if(!s_X && s_Y)
	{
		--s_Y;
		s_X = 40;
	}
	if(s_X)
	{
		--s_X;
		Glyph(8 + s_X * 6, TEXT_TOP + s_Y * 8, ' ');
	}
}

void GameUI_FunctionBar(void) {}

static void DrawCell(void)
{
	u8 x;
	Fill(5, 20, 125, 102, WALL);
	Fill(5, 79, 125, 102, 9);
	Line(5, 20, 23, 35, 8);
	Line(23, 35, 23, 79, 8);
	Line(23, 79, 5, 102, 8);
	Fill(34, 30, 65, 53, 4);
	for(x = 40; x < 65; x += 8)
		Line(x, 30, x, 53, 0);
	Fill(28, 67, 65, 76, 8);
	Line(28, 77, 65, 77, PAPER);
	Line(29, 78, 29, 90, 0);
	Line(64, 78, 64, 90, 0);
	Fill(31, 65, 44, 68, PAPER);
	Fill(83, 29, 115, 91, 0);
	for(x = 87; x < 115; x += 7)
	{
		if(!g_GameState.GrateSawed || x != 101)
			Fill(x, 30, x + 1, 90, 8);
		else
		{
			Fill(x, 30, x + 1, 43, 8);
			Fill(x, 75, x + 1, 90, 8);
		}
	}
	Line(83, 45, 115, 45, 8);
	Line(83, 75, 115, 75, 8);
	if(g_GameState.ObjectLocations[ENGINE_OBJECT_SAW] == 1)
	{
		Line(43, 93, 62, 86, PAPER);
		Line(44, 95, 63, 88, PAPER);
	}
}

static void Room(void)
{
	Fill(5, 20, 125, 102, WALL);
	Fill(5, 78, 125, 102, 9);
	Line(5, 20, 22, 32, 8);
	Line(22, 32, 22, 78, 8);
	Line(22, 78, 5, 102, 8);
	Line(22, 78, 125, 78, 8);
}

static void Table(u8 x, u8 y, u8 width)
{
	Fill(x, y, x + width, y + 5, 11);
	Line(x, y, x + width, y, PAPER);
	Fill(x + 2, y + 6, x + 4, y + 19, 10);
	Fill(x + width - 4, y + 6, x + width - 2, y + 19, 10);
}

static void Window(u8 x, u8 y, u8 width, u8 height)
{
	Fill(x, y, x + width, y + height, 3);
	Line(x, y, x + width, y, PAPER);
	Line(x, y, x, y + height, PAPER);
	Line(x + width / 2, y, x + width / 2, y + height, 8);
	Line(x, y + height / 2, x + width, y + height / 2, 8);
}

static void Corridor(bool cells)
{
	u8 x;
	Fill(5, 20, 125, 102, 9);
	Fill(45, 37, 85, 72, WALL);
	Line(5, 20, 45, 37, 8);
	Line(125, 20, 85, 37, 8);
	Line(5, 102, 45, 72, 8);
	Line(125, 102, 85, 72, 8);
	Fill(55, 43, 74, 72, 0);
	Fill(12, 35, 29, 81, 0);
	Fill(101, 35, 118, 81, 0);
	if(cells)
	{
		for(x = 15; x <= 27; x += 4)
		{
			Line(x, 35, x, 81, 8);
			Line(x + 88, 35, x + 88, 81, 8);
		}
		Line(12, 56, 29, 56, 8);
		Line(101, 56, 118, 56, 8);
	}
	else
	{
		Fill(24, 55, 26, 57, GOLD);
		Fill(104, 55, 106, 57, GOLD);
		Window(47, 24, 34, 7);
	}
	Line(36, 90, 94, 90, WALL);
}

static void Dining(void)
{
	u8 x;
	Room();
	Window(43, 26, 45, 18);
	Table(29, 64, 87);
	Fill(30, 88, 114, 91, 11);
	for(x = 37; x < 111; x += 22)
	{
		Fill(x, 60, x + 12, 63, PAPER);
		Line(x + 3, 61, x + 9, 61, 8);
		Fill(x + 14, 56, x + 17, 62, 6);
		Line(x, 92, x, 97, 10);
	}
}

static void Infirmary(void)
{
	u8 x;
	Room();
	Fill(64, 26, 85, 47, PAPER);
	Fill(72, 29, 77, 44, 11);
	Fill(67, 34, 82, 39, 11);
	for(x = 29; x < 100; x += 48)
	{
		Fill(x, 65, x + 37, 77, 8);
		Fill(x + 2, 61, x + 35, 70, PAPER);
		Fill(x + 4, 59, x + 14, 64, 6);
		Line(x, 56, x, 90, 8);
		Line(x + 37, 64, x + 37, 90, 8);
	}
}

static void Shelves(bool books)
{
	u8 x, y;
	Room();
	for(y = 32; y < 77; y += 22)
	{
		Fill(29, y + 15, 117, y + 18, 10);
		for(x = 33; x < (books ? 112 : 100); x += books ? 9 : 26)
		{
			Fill(x, y, x + (books ? 5 : 20), y + 14,
				books ? (x & 1 ? 11 : 3) : 11);
			if(books)
				Line(x + 1, y + 3, x + 4, y + 3, GOLD);
			else
			{
				Line(x + 10, y, x + 10, y + 14, GOLD);
				Line(x, y + 7, x + 20, y + 7, GOLD);
			}
		}
	}
	Line(27, 29, 27, 90, 10);
	Line(119, 29, 119, 90, 10);
	if(books)
		Table(43, 83, 48);
}

static void Garden(void)
{
	u8 x, y;
	Fill(5, 20, 125, 49, 3);
	Fill(5, 50, 125, 102, 9);
	Fill(5, 37, 125, 48, WALL);
	for(x = 10; x < 125; x += 14)
		Line(x, 37, x, 48, 8);
	for(y = 58; y < 100; y += 16)
	{
		Fill(13, y, 117, y + 8, 10);
		for(x = 20; x < 114; x += 16)
		{
			Line(x, y + 6, x, y, 12);
			Line(x, y + 3, x - 4, y, 12);
			Line(x, y + 3, x + 4, y, 12);
		}
	}
}

static void Visits(void)
{
	u8 x;
	Room();
	Window(50, 26, 35, 17);
	Table(28, 62, 89);
	for(x = 33; x < 110; x += 28)
	{
		Fill(x, 49, x + 14, 58, 11);
		Line(x + 2, 59, x + 2, 62, 10);
		Fill(x, 81, x + 14, 88, 11);
		Line(x + 2, 88, x + 2, 97, 10);
		Line(x + 12, 88, x + 12, 97, 10);
	}
	Line(29, 60, 116, 60, 8);
}

static void Kitchen(void)
{
	u8 x;
	Room();
	Fill(28, 55, 117, 86, 8);
	Fill(28, 55, 117, 58, PAPER);
	for(x = 33; x < 105; x += 23)
	{
		Fill(x, 47, x + 16, 54, 9);
		Line(x - 2, 47, x + 18, 47, 0);
		Line(x + 3, 41, x + 13, 41, PAPER);
		Line(x + 5, 37, x + 5, 33, 6);
	}
	Fill(38, 65, 65, 80, 0);
	Line(42, 69, 61, 69, 8);
	Line(80, 64, 80, 85, WALL);
	Fill(46, 22, 97, 28, 9);
	Line(46, 28, 35, 36, 8);
	Line(97, 28, 108, 36, 8);
	Line(35, 36, 108, 36, 8);
}

static void Chapel(void)
{
	u8 x;
	Room();
	Fill(69, 25, 73, 52, GOLD);
	Fill(60, 33, 82, 37, GOLD);
	Table(46, 60, 51);
	Fill(57, 55, 85, 59, PAPER);
	for(x = 28; x < 110; x += 59)
	{
		Fill(x, 78, x + 27, 81, 11);
		Fill(x, 91, x + 27, 94, 11);
		Line(x + 3, 82, x + 3, 87, 10);
		Line(x + 3, 95, x + 3, 100, 10);
	}
}

static void Tunnel(void)
{
	u8 x;
	Fill(5, 20, 125, 102, 10);
	Fill(18, 28, 112, 93, 9);
	Fill(30, 34, 100, 84, 0);
	Fill(42, 28, 88, 84, 0);
	Fill(55, 24, 75, 84, 0);
	for(x = 20; x < 115; x += 18)
	{
		Line(x, 91, 65, 68, 11);
		Line(x, 99, x + 8, 95, 8);
	}
	Fill(52, 48, 78, 80, DARK);
	if(g_GameState.HoleDug &&
		g_GameState.ObjectLocations[ENGINE_OBJECT_SPOON] == ENGINE_INVENTORY)
	{
		Fill(21, 52, 36, 81, 0);
		Fill(94, 52, 109, 81, 0);
		Fill(49, 87, 83, 100, 0);
	}
}

static void Morgue(void)
{
	u8 y;
	if(!(g_GameState.LampLit &&
		g_GameState.ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY))
	{
		Text(11, 51, "ESCURIDAO", 9);
		return;
	}
	Room();
	for(y = 28; y < 70; y += 16)
	{
		Fill(32, y, 113, y + 12, 8);
		Line(32, y + 12, 113, y + 12, 9);
		Line(65, y + 5, 79, y + 5, PAPER);
	}
	Table(35, 84, 69);
	Fill(44, 78, 93, 83, PAPER);
	Line(45, 76, 80, 76, PAPER);
}

static void Office(void)
{
	Room();
	Window(87, 26, 25, 23);
	Fill(31, 26, 57, 46, GOLD);
	Fill(34, 29, 54, 43, 9);
	Fill(43, 31, 47, 35, 8);
	Fill(39, 36, 50, 42, 8);
	Fill(59, 49, 81, 69, 10);
	Table(30, 72, 81);
	Fill(41, 66, 65, 70, PAPER);
	Fill(83, 64, 101, 69, 0);
	Line(86, 61, 98, 61, 0);
	Line(88, 62, 88, 64, 0);
	Fill(34, 79, 58, 88, 11);
	Line(43, 82, 49, 82, GOLD);
}

static void Yard(void)
{
	u8 x;
	Fill(5, 20, 125, 50, 2);
	Fill(5, 51, 125, 78, WALL);
	Fill(5, 79, 125, 102, 9);
	for(x = 8; x < 125; x += 13)
	{
		Line(x, 46, x, 78, 8);
		Line(x, 43, x + 5, 47, 8);
	}
	Line(5, 48, 125, 48, 8);
	Fill(91, 34, 96, 82, 10);
	Fill(86, 30, 102, 35, GOLD);
	Line(86, 35, 48, 90, 6);
	Line(102, 35, 116, 90, 6);
	Line(48, 90, 116, 90, 6);
	Line(19, 89, 39, 89, 8);
}

static void Workshop(void)
{
	u8 x;
	Room();
	Fill(29, 27, 115, 59, 10);
	for(x = 37; x < 110; x += 23)
	{
		Line(x, 35, x, 53, PAPER);
		Fill(x - 5, 32, x + 5, 36, 8);
	}
	Table(28, 73, 90);
	Fill(39, 65, 51, 72, 8);
	Line(45, 63, 45, 78, PAPER);
	Line(35, 68, 56, 68, PAPER);
	Fill(76, 66, 107, 69, PAPER);
	Line(77, 70, 105, 70, 8);
	Fill(29, 91, 54, 98, 11);
}

static void River(u8 location)
{
	u8 y;
	Fill(5, 20, 125, 40, 3);
	Fill(5, 41, 125, 102, 2);
	Fill(5, 39, 125, 45, 12);
	for(y = 51; y < 100; y += 10)
	{
		Line(13, y, 36, y, 6);
		Line(53, y + 3, 84, y + 3, 4);
		Line(98, y, 119, y, 6);
	}
	if(location == 17)
	{
		Fill(5, 70, 25, 102, 9);
		Line(25, 70, 44, 102, 9);
		Line(12, 79, 10, 58, 12);
		Line(15, 82, 21, 63, 12);
	}
	else
	{
		Fill(location == 22 ? 46 : 77, 70, location == 22 ? 69 : 100, 75, 8);
		Fill(location == 22 ? 55 : 86, 64, location == 22 ? 61 : 92, 69, PAPER);
	}
}

static void Guardhouse(bool south)
{
	u8 x;
	Fill(5, 20, 125, 52, 2);
	Fill(5, 53, 125, 102, 9);
	Fill(33, 60, 42, 92, 10);
	Fill(83, 60, 92, 92, 10);
	Fill(24, 37, 101, 63, WALL);
	Fill(18, 32, 107, 36, 10);
	Line(18, 32, 63, 22, 10);
	Line(63, 22, 107, 32, 10);
	Fill(35, 42, 90, 55, 0);
	for(x = 48; x < 90; x += 14)
		Line(x, 42, x, 55, 8);
	Fill(south ? 69 : 49, 44, south ? 75 : 55, 48, 8);
	Fill(south ? 66 : 46, 49, south ? 78 : 58, 55, 8);
	Fill(30, 65, 95, 68, 8);
	for(x = 48; x < 78; x += 6)
		Line(x, 69, x, 97, 8);
	Line(48, 81, 72, 81, 8);
	Line(48, 93, 72, 93, 8);
	if(south)
		Line(7, 86, 120, 86, GOLD);
	else
	{
		Line(105, 50, 105, 95, 8);
		Line(106, 54, 120, 60, GOLD);
	}
}

static void Solitary(void)
{
	u8 y;
	Fill(5, 20, 125, 102, 9);
	for(y = 30; y < 94; y += 16)
	{
		Line(5, y, 125, y, 10);
		Line(y & 16 ? 25 : 55, y, y & 16 ? 25 : 55, y + 15, 10);
	}
	Line(5, 94, 125, 94, 10);
	Fill(45, 29, 95, 96, 0);
	Fill(49, 33, 91, 94, 10);
	Fill(57, 47, 83, 53, 0);
	Line(61, 47, 61, 53, 8);
	Line(70, 47, 70, 53, 8);
	Line(79, 47, 79, 53, 8);
	Fill(80, 68, 85, 72, 8);
	Line(12, 97, 37, 93, 8);
}

static void Laundry(void)
{
	u8 x;
	Room();
	Line(27, 29, 119, 29, 8);
	for(x = 34; x < 110; x += 26)
	{
		Fill(x, 31, x + 19, 54, PAPER);
		Line(x + 3, 34, x + 3, 51, 6);
	}
	for(x = 29; x < 112; x += 47)
	{
		Fill(x, 65, x + 36, 93, 8);
		Fill(x + 4, 71, x + 32, 87, 9);
		Fill(x + 8, 74, x + 28, 84, 3);
		Line(x + 5, 68, x + 12, 68, GOLD);
	}
}

static void Gate(void)
{
	u8 x;
	Fill(5, 20, 125, 102, 2);
	Fill(5, 73, 125, 102, 9);
	Fill(12, 27, 25, 97, WALL);
	Fill(105, 27, 118, 97, WALL);
	Fill(10, 24, 27, 29, 8);
	Fill(103, 24, 120, 29, 8);
	Fill(26, 35, 104, 38, 8);
	for(x = 31; x < 104; x += 8)
		Fill(x, 39, x + 1, 94, 8);
	Line(27, 62, 104, 62, 8);
	Line(27, 90, 104, 90, 8);
	Fill(60, 62, 70, 74, GOLD);
	Fill(64, 65, 66, 69, 0);
}

static void DrawLocation(void)
{
	u8 location = g_GameState.Location;
	Fill(4, 4, 126, 103, DARK);
	Text(8, 7, location <= 24 ? s_RoomNames[location] : "LOCAL", GOLD);
	switch(location)
	{
	case 1: DrawCell(); break;
	case 2: Corridor(TRUE); break;
	case 3: Dining(); break;
	case 4: Infirmary(); break;
	case 5: Shelves(FALSE); break;
	case 6: Garden(); break;
	case 7: Shelves(TRUE); break;
	case 8: Visits(); break;
	case 9: Kitchen(); break;
	case 10: Chapel(); break;
	case 11: Tunnel(); break;
	case 12: Morgue(); break;
	case 13: Office(); break;
	case 14: Corridor(FALSE); break;
	case 15: Yard(); break;
	case 16: Workshop(); break;
	case 17:
	case 22:
	case 23: River(location); break;
	case 18: Guardhouse(FALSE); break;
	case 19: Solitary(); break;
	case 20: Laundry(); break;
	case 21: Guardhouse(TRUE); break;
	case 24: Gate(); break;
	default: Text(8, 51, "LOCAL DESCONHECIDO", GOLD); break;
	}
	if(g_GameState.ObjectLocations[ENGINE_OBJECT_GUARD] == (i8)location)
		Text(8, 94, "GUARDA!", GOLD);
}

static void DrawInventory(void)
{
	u8 i, slot = 0;
	Fill(130, 4, 251, 103, DARK);
	Text(135, 7, "INVENTARIO", GOLD);
	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
	{
		u8 row, col;
		if(g_GameState.ObjectLocations[i] != ENGINE_INVENTORY)
			continue;
		if(slot >= 3)
			break;
		for(row = 0; row < 8; ++row)
			for(col = 0; col < 8; ++col)
				if(s_Icons[i][row] & (0x80 >> col))
					Fill(136 + col * 2, 24 + slot * 26 + row * 2,
						137 + col * 2, 25 + slot * 26 + row * 2, PAPER);
		Text(158, 28 + slot * 26, g_EngineObjects[i].Name, PAPER);
		++slot;
	}
	if(!slot)
		Text(135, 40, "VAZIO", 8);
}

void GameUI_Refresh(void)
{
	u8 i;
	bool scene = !s_HavePanels || s_Previous.Location != g_GameState.Location ||
		s_Previous.GrateSawed != g_GameState.GrateSawed ||
		s_Previous.HoleDug != g_GameState.HoleDug ||
		s_Previous.LampLit != g_GameState.LampLit;
	bool inventory = !s_HavePanels;
	for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
		if(s_Previous.ObjectLocations[i] != g_GameState.ObjectLocations[i])
		{
			scene = TRUE;
			inventory = TRUE;
		}
	if(scene)
		DrawLocation();
	if(inventory)
		DrawInventory();
	s_Previous = g_GameState;
	s_HavePanels = TRUE;
	VDP_CommandWait();
}

void GameUI_Initialize(void)
{
	VDP_SetMode(VDP_MODE_SCREEN5);
	VDP_SetLineCount(VDP_LINE_212);
	VDP_EnableSprite(FALSE);
	VDP_SetPage(0);
	VDP_SetPalette(s_Palette);
	VDP_CommandHMMV(0, 0, 256, 212, 0x11);
	VDP_CommandWait();
	Print_SetBitmapFont(g_Font_VRAM);
	Line(2, 106, 253, 106, GOLD);
	Line(128, 3, 128, 103, GOLD);
	Line(2, 184, 253, 184, GOLD);
	Text(8, 186, "QUAL O COMANDO?  F1:N F2:S F3:L F4:O", GOLD);
	Text(8, 204, "DESISTIR:SAIR  BS:APAGAR  ENTER:ENVIAR", 8);
	s_HavePanels = FALSE;
	// BSS is not cleared by the DOS CRT; initialize every cached field.
	s_Previous = g_GameState;
	GameUI_Clear();
	Input_Flush();
}

void GameUI_ReadCommand(c8* buffer)
{
	u8 length = 0;
	buffer[0] = 0;
	Fill(4, 195, 251, 202, DARK);
	Glyph(8, 195, '>');
	for(;;)
	{
		u8 key;
		const c8* direction = NULL;
		Glyph(20 + length * 6, 195, '_');
		key = Input_ReadKey();
		Glyph(20 + length * 6, 195, ' ');
		if(key == INPUT_KEY_F1) direction = "NORTE";
		if(key == INPUT_KEY_F2) direction = "SUL";
		if(key == INPUT_KEY_F3) direction = "LESTE";
		if(key == INPUT_KEY_F4) direction = "OESTE";
		if(direction)
		{
			length = 0;
			while(*direction)
				buffer[length++] = *direction++;
			buffer[length] = 0;
			break;
		}
		if(key == '\r')
			break;
		if(key == '\b' && length)
		{
			--length;
			Glyph(20 + length * 6, 195, ' ');
		}
		else if(key >= ' ' && key <= 'Z' && length < GAME_INPUT_CAPACITY - 1)
		{
			buffer[length] = key;
			Glyph(20 + length * 6, 195, key);
			++length;
		}
		buffer[length] = 0;
	}
	GameUI_Char('>');
	GameUI_Char(' ');
	for(length = 0; buffer[length]; ++length)
		GameUI_Char(buffer[length]);
	GameUI_Return();
}
