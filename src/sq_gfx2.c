// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Primitivas graficas SCREEN 2
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#include "sq_gfx2.h"
#include "sq_font.h"

//-----------------------------------------------------------------------------
// CONSTANTES
//-----------------------------------------------------------------------------

#define G2_WIDTH		256
#define G2_HEIGHT		192
#define G2_TABLE_SIZE	0x1800

//-----------------------------------------------------------------------------
// DADOS
//-----------------------------------------------------------------------------

// Cursor grafico do MSX-BASIC (usado por DRAW e por PRINT#1).
static i16 g_GX = 0;
static i16 g_GY = 0;

// sin(a * 2*PI/256) * 256 para a = 0..64 (primeiro quadrante).
static const i16 g_SinTable[65] =
{
	   0,    6,   13,   19,   25,   31,   38,   44,
	  50,   56,   62,   68,   74,   80,   86,   92,
	  98,  104,  109,  115,  121,  126,  132,  137,
	 142,  147,  152,  157,  162,  167,  172,  177,
	 181,  185,  190,  194,  198,  202,  206,  209,
	 213,  216,  220,  223,  226,  229,  231,  234,
	 237,  239,  241,  243,  245,  247,  248,  250,
	 251,  252,  253,  254,  255,  255,  256,  256,
	 256,
};

//-----------------------------------------------------------------------------
// TRIGONOMETRIA
//-----------------------------------------------------------------------------

// Seno em ponto fixo 8.8 para angulo em unidades de 1/256 de volta.
static i16 G2_Sin(u8 a)
{
	if(a < 64)
		return g_SinTable[a];
	if(a < 128)
		return g_SinTable[128 - (i16)a];
	if(a < 192)
		return -g_SinTable[(i16)a - 128];
	return -g_SinTable[256 - (i16)a];
}

static i16 G2_Cos(u8 a)
{
	return G2_Sin((u8)(a + 64));
}

// Arredonda um produto em ponto fixo 8.8 para inteiro.
static i16 G2_Round8(i16 value)
{
	return (i16)((value + 128) >> 8);
}

//-----------------------------------------------------------------------------
// TELA
//-----------------------------------------------------------------------------

void G2_Begin(u8 fg, u8 bg, u8 border)
{
	static u8 buffer[256];
	u16 i;

	VDP_SetMode(VDP_MODE_SCREEN2);
	VDP_EnableDisplay(FALSE);

	// Apaga a tabela de padroes (a "tela" propriamente dita).
	VDP_FillVRAM_16K(0x00, VDP_G2_ADDR_PT, G2_TABLE_SIZE);

	// VDP_SetMode nao inicializa a tabela de nomes. Sem os indices 0..255
	// repetidos nos tres bancos o SCREEN 2 nao se comporta como bitmap.
	for(i = 0; i < 256; ++i)
		buffer[i] = (u8)i;
	VDP_WriteVRAM_16K(buffer, VDP_G2_ADDR_NT + 0x000, 256);
	VDP_WriteVRAM_16K(buffer, VDP_G2_ADDR_NT + 0x100, 256);
	VDP_WriteVRAM_16K(buffer, VDP_G2_ADDR_NT + 0x200, 256);

	// COLOR fg,bg aplicado a toda a tabela de cores: como o desenho inteiro
	// usa uma unica cor, nao ha conflito de atributo e basta acender bits.
	VDP_FillVRAM_16K((u8)((fg << 4) | bg), VDP_G2_ADDR_CT, G2_TABLE_SIZE);

	// Desliga os sprites (Y = 208 encerra a lista).
	VDP_Poke_16K(208, VDP_G2_ADDR_SAT);

	VDP_SetColor(border);
	VDP_EnableDisplay(TRUE);

	g_GX = 0;
	g_GY = 0;
}

void G2_DisplayOff(void)
{
	VDP_EnableDisplay(FALSE);
}

void G2_DisplayOn(void)
{
	VDP_EnableDisplay(TRUE);
}

void G2_Step(void)
{
#if (DEBUG)
	u8 i;
	for(i = 0; i < DEBUG_STEP_FRAMES; ++i)
	{
		__asm
			halt
		__endasm;
	}
#endif
}

//-----------------------------------------------------------------------------
// PIXELS
//-----------------------------------------------------------------------------

// Endereco do byte de padrao que contem o pixel (x,y).
static u16 G2_Address(u8 x, u8 y)
{
	return (u16)(((u16)(y & 0xF8) << 5) + (u8)(x & 0xF8) + (u8)(y & 0x07));
}

static bool G2_Clip(i16 x, i16 y)
{
	return (x >= 0) && (x < G2_WIDTH) && (y >= 0) && (y < G2_HEIGHT);
}

void G2_PSet(i16 x, i16 y)
{
	u16 addr;
	if(!G2_Clip(x, y))
		return;
	addr = G2_Address((u8)x, (u8)y);
	VDP_Poke_16K(VDP_Peek_16K(addr) | (u8)(0x80 >> (x & 0x07)), addr);
}

void G2_PReset(i16 x, i16 y)
{
	u16 addr;
	if(!G2_Clip(x, y))
		return;
	addr = G2_Address((u8)x, (u8)y);
	VDP_Poke_16K(VDP_Peek_16K(addr) & (u8)~(0x80 >> (x & 0x07)), addr);

	// PRESET tambem reposiciona o cursor grafico.
	g_GX = x;
	g_GY = y;
}

void G2_SetPos(i16 x, i16 y)
{
	g_GX = x;
	g_GY = y;
}

//-----------------------------------------------------------------------------
// RETAS
//-----------------------------------------------------------------------------

void G2_Line(i16 x0, i16 y0, i16 x1, i16 y1)
{
	i16 dx = x1 - x0;
	i16 dy = y1 - y0;
	i16 sx = 1;
	i16 sy = 1;
	i16 err, e2;

	if(dx < 0) { dx = -dx; sx = -1; }
	if(dy < 0) { dy = -dy; sy = -1; }
	err = dx - dy;

	for(;;)
	{
		G2_PSet(x0, y0);
		if((x0 == x1) && (y0 == y1))
			break;
		e2 = (i16)(err << 1);
		if(e2 > -dy) { err -= dy; x0 += sx; }
		if(e2 <  dx) { err += dx; y0 += sy; }
	}

	g_GX = x1;
	g_GY = y1;
}

//-----------------------------------------------------------------------------
// ARCOS E ELIPSES
//-----------------------------------------------------------------------------

i16 G2_AspectY(i16 r, u8 num, u8 den)
{
	return (i16)((r * (i16)num) / (i16)den);
}

void G2_Arc(i16 cx, i16 cy, i16 rx, i16 ry, u8 a0, u8 a1)
{
	u8 a = a0;
	for(;;)
	{
		// O eixo Y da tela cresce para baixo, o do CIRCLE para cima.
		G2_PSet(cx + G2_Round8((i16)(rx * G2_Cos(a))),
		        cy - G2_Round8((i16)(ry * G2_Sin(a))));
		if(a == a1)
			break;
		++a;
	}
}

void G2_Ellipse(i16 cx, i16 cy, i16 rx, i16 ry)
{
	G2_Arc(cx, cy, rx, ry, 0, 255);
}

//-----------------------------------------------------------------------------
// TEXTO
//-----------------------------------------------------------------------------

void G2_Text(i16 x, i16 y, const c8* text)
{
	// Cabecalho de 4 bytes seguido de 8 bytes por caractere.
	const u8* font = g_Font_BIOS_EU + 4;

	while(*text != 0)
	{
		const u8* glyph = font + ((u16)(u8)*text << 3);
		u8 row;
		for(row = 0; row < 8; ++row)
		{
			u8 bits = glyph[row];
			u8 col;
			for(col = 0; col < 8; ++col)
			{
				if(bits & (u8)(0x80 >> col))
					G2_PSet(x + col, y + row);
			}
		}
		x += 8;
		++text;
	}

	g_GX = x;
	g_GY = y;
}

//-----------------------------------------------------------------------------
// INTERPRETADOR DE DRAW
//-----------------------------------------------------------------------------

// Le um deslocamento com sinal opcional. O sinal indica coordenada relativa.
static const c8* G2_ParseNum(const c8* p, i16* out, u8* relative)
{
	i16 value = 0;
	u8 negative = 0;

	*relative = 0;
	if(*p == '+')
	{
		*relative = 1;
		++p;
	}
	else if(*p == '-')
	{
		*relative = 1;
		negative = 1;
		++p;
	}

	while((*p >= '0') && (*p <= '9'))
	{
		value = (i16)(value * 10) + (i16)(*p - '0');
		++p;
	}

	*out = negative ? (i16)-value : value;
	return p;
}

// Le a contagem de um comando de movimento; ausente significa 1.
static const c8* G2_ParseCount(const c8* p, i16* out)
{
	i16 value = 0;
	u8 digits = 0;

	while((*p >= '0') && (*p <= '9'))
	{
		value = (i16)(value * 10) + (i16)(*p - '0');
		++p;
		++digits;
	}

	*out = digits ? value : 1;
	return p;
}

void G2_Draw(const c8* p)
{
	while(*p != 0)
	{
		u8 blank = 0;
		u8 noMove = 0;
		u8 relative;
		i16 nx, ny, n;
		i16 ox = g_GX;
		i16 oy = g_GY;
		c8 cmd;

		if((*p == ' ') || (*p == ';') || (*p == ','))
		{
			++p;
			continue;
		}

		for(;;)
		{
			if(*p == 'B') { blank = 1; ++p; }
			else if(*p == 'N') { noMove = 1; ++p; }
			else break;
		}

		cmd = *p++;
		nx = g_GX;
		ny = g_GY;

		switch(cmd)
		{
		case 'M':
			p = G2_ParseNum(p, &n, &relative);
			nx = relative ? (i16)(g_GX + n) : n;
			while((*p == ',') || (*p == ' '))
				++p;
			p = G2_ParseNum(p, &n, &relative);
			ny = relative ? (i16)(g_GY + n) : n;
			break;

		case 'U': p = G2_ParseCount(p, &n); ny = g_GY - n; break;
		case 'D': p = G2_ParseCount(p, &n); ny = g_GY + n; break;
		case 'L': p = G2_ParseCount(p, &n); nx = g_GX - n; break;
		case 'R': p = G2_ParseCount(p, &n); nx = g_GX + n; break;
		case 'E': p = G2_ParseCount(p, &n); nx = g_GX + n; ny = g_GY - n; break;
		case 'F': p = G2_ParseCount(p, &n); nx = g_GX + n; ny = g_GY + n; break;
		case 'G': p = G2_ParseCount(p, &n); nx = g_GX - n; ny = g_GY + n; break;
		case 'H': p = G2_ParseCount(p, &n); nx = g_GX - n; ny = g_GY - n; break;

		// C (cor), A (rotacao) e S (escala) nao alteram o desenho de abertura,
		// que e monocromatico e sem transformacoes.
		case 'C':
		case 'A':
		case 'S':
			p = G2_ParseCount(p, &n);
			continue;

		default:
			continue;
		}

		if(!blank)
		{
			G2_Line(ox, oy, nx, ny);
			G2_Step();
		}

		// O prefixo N devolve o cursor a posicao anterior ao comando.
		if(noMove)
			G2_SetPos(ox, oy);
		else
			G2_SetPos(nx, ny);
	}
}
