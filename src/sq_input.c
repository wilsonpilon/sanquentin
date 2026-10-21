// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Entrada de teclado
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#include "sq_input.h"

static u8 s_LastKeyRow;
static u8 s_LastKeyMask;

// Varre a matriz do teclado lendo o PPI diretamente. A linha 6 contem apenas
// modificadores nos bits 0-4, que INKEY$ tambem ignora quando usados sozinhos.
static bool Input_AnyKey(void)
{
	u8 row;

	for(row = 0; row <= 8; ++row)
	{
		u8 value = Keyboard_Read(row);
		if(row == 6)
			value |= 0x1F;
		if(value != 0xFF)
			return TRUE;
	}
	return FALSE;
}

static u8 Input_DecodeKey(void)
{
	static const c8 row2[] = { 0, 0, 0, 0, 0, 0, 'A', 'B' };
	static const c8 row3[] = "CDEFGHIJ";
	static const c8 row4[] = "KLMNOPQR";
	static const c8 row5[] = "STUVWXYZ";
	const c8* letters;
	u8 row;
	u8 bit;
	u8 mask;
	u8 value;

	value = Keyboard_Read(6);
	if(IS_KEY_PRESSED(value, KEY_F1))
	{
		s_LastKeyRow = 6;
		s_LastKeyMask = 0x20;
		return INPUT_KEY_F1;
	}
	if(IS_KEY_PRESSED(value, KEY_F2))
	{
		s_LastKeyRow = 6;
		s_LastKeyMask = 0x40;
		return INPUT_KEY_F2;
	}
	if(IS_KEY_PRESSED(value, KEY_F3))
	{
		s_LastKeyRow = 6;
		s_LastKeyMask = 0x80;
		return INPUT_KEY_F3;
	}

	value = Keyboard_Read(7);
	if(IS_KEY_PRESSED(value, KEY_F4))
	{
		s_LastKeyRow = 7;
		s_LastKeyMask = 0x01;
		return INPUT_KEY_F4;
	}
	if(IS_KEY_PRESSED(value, KEY_BS))
	{
		s_LastKeyRow = 7;
		s_LastKeyMask = 0x20;
		return '\b';
	}
	if(IS_KEY_PRESSED(value, KEY_RETURN))
	{
		s_LastKeyRow = 7;
		s_LastKeyMask = 0x80;
		return '\r';
	}

	value = Keyboard_Read(8);
	if(IS_KEY_PRESSED(value, KEY_SPACE))
	{
		s_LastKeyRow = 8;
		s_LastKeyMask = 0x01;
		return ' ';
	}

	for(row = 2; row <= 5; ++row)
	{
		value = Keyboard_Read(row);
		letters = row == 2 ? row2 : row == 3 ? row3 : row == 4 ? row4 : row5;
		mask = 1;
		for(bit = 0; bit < 8; ++bit, mask <<= 1)
		{
			if((value & mask) == 0 && letters[bit] != 0)
			{
				s_LastKeyRow = row;
				s_LastKeyMask = mask;
				return letters[bit];
			}
		}
	}
	return INPUT_KEY_NONE;
}

void Input_WaitKey(void)
{
	while(Input_AnyKey()) {}
	while(!Input_AnyKey()) {}
	while(Input_AnyKey()) {}
}

u8 Input_ReadKey(void)
{
	u8 key;

	if(s_LastKeyMask != 0)
	{
		while((Keyboard_Read(s_LastKeyRow) & s_LastKeyMask) == 0)
			Halt();
		s_LastKeyMask = 0;
	}
	do
	{
		key = Input_DecodeKey();
		Halt();
	}
	while(key == INPUT_KEY_NONE);
	return key;
}

void Input_Flush(void)
{
	while(Input_AnyKey())
		Halt();
	s_LastKeyMask = 0;
	g_GETPNT = g_PUTPNT;
}
