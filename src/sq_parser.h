// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - shared core
// |  | | | . ||   || . |     |   Parser (BASIC 1310-1390)
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#pragma once

#define PARSER_ACTION_TERM_COUNT	21

enum PARSER_ACTION
{
	PARSER_ACTION_NONE = 0,
	PARSER_ACTION_MOVE,
	PARSER_ACTION_DROP,
	PARSER_ACTION_TAKE,
	PARSER_ACTION_KILL,
	PARSER_ACTION_DIG,
	PARSER_ACTION_OPEN,
	PARSER_ACTION_SAW,
	PARSER_ACTION_SWIM,
	PARSER_ACTION_LIGHT,
	PARSER_ACTION_EXTINGUISH,
	PARSER_ACTION_QUIT,
	PARSER_ACTION_INVENTORY,
	PARSER_ACTION_HELP,
};

typedef struct
{
	const char* Word;
	unsigned char Action;
} Parser_ActionTerm;

typedef struct
{
	char* Verb;
	char* Noun;
	unsigned char Action;
	char CommandInitial;
} Parser_Result;

extern const Parser_ActionTerm g_ParserActionTerms[PARSER_ACTION_TERM_COUNT];

// Equivalente a INSTR(word, prefix) = 1 do MSX-BASIC.
unsigned char Parser_IsPrefix(const char* word, const char* prefix);

// Divide command no primeiro espaco e aplica a tabela das linhas 140-160.
// O buffer e alterado no separador para evitar copias.
void Parser_Parse(char* command, Parser_Result* result);
