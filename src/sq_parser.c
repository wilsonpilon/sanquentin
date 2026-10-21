// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - shared core
// |  | | | . ||   || . |     |   Parser (BASIC 1310-1390)
// |  |_| |___||_|_||___|     |
// |__________________________|
//-----------------------------------------------------------------------------
#include "sq_parser.h"

const Parser_ActionTerm g_ParserActionTerms[PARSER_ACTION_TERM_COUNT] =
{
	// BASIC 140-160. A ordem e significativa: a ultima correspondencia vence.
	{ "CAVAR",		PARSER_ACTION_DIG },
	{ "ABRIR",		PARSER_ACTION_OPEN },
	{ "SERRAR",		PARSER_ACTION_SAW },
	{ "NADAR",		PARSER_ACTION_SWIM },
	{ "ACENDER",	PARSER_ACTION_LIGHT },
	{ "APAGAR",		PARSER_ACTION_EXTINGUISH },
	{ "DESISTIR",	PARSER_ACTION_QUIT },
	{ "LISTAR",		PARSER_ACTION_INVENTORY },
	{ "AJUDAR",		PARSER_ACTION_HELP },
	{ "MATAR",		PARSER_ACTION_KILL },
	{ "ATIRAR",		PARSER_ACTION_KILL },
	{ "PEGAR",		PARSER_ACTION_TAKE },
	{ "APANHAR",	PARSER_ACTION_TAKE },
	{ "CARREGAR",	PARSER_ACTION_TAKE },
	{ "COLOCAR",	PARSER_ACTION_DROP },
	{ "DEIXAR",		PARSER_ACTION_DROP },
	{ "LARGAR",		PARSER_ACTION_DROP },
	{ "NORTE",		PARSER_ACTION_MOVE },
	{ "SUL",		PARSER_ACTION_MOVE },
	{ "LESTE",		PARSER_ACTION_MOVE },
	{ "OESTE",		PARSER_ACTION_MOVE },
};

unsigned char Parser_IsPrefix(const char* word, const char* prefix)
{
	while(*prefix != 0)
	{
		if(*word != *prefix)
			return 0;
		++word;
		++prefix;
	}
	return 1;
}

void Parser_Parse(char* command, Parser_Result* result)
{
	char* separator = command;
	unsigned char i;

	// BASIC 1310-1340
	while(*separator != 0 && *separator != ' ')
		++separator;
	if(*separator == ' ')
	{
		*separator = 0;
		result->Noun = separator + 1;
	}
	else
	{
		result->Noun = separator;
	}
	result->Verb = command;

	// BASIC 1350-1380
	result->Action = PARSER_ACTION_NONE;
	result->CommandInitial = 0;
	for(i = 0; i < PARSER_ACTION_TERM_COUNT; ++i)
	{
		if(Parser_IsPrefix(g_ParserActionTerms[i].Word, command))
		{
			result->Action = g_ParserActionTerms[i].Action;
			result->CommandInitial = command[0];
		}
	}
}
