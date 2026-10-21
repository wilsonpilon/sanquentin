#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "../src/sq_parser.h"

static Parser_Result Parse(const char* text, char* buffer)
{
	Parser_Result result;
	strcpy(buffer, text);
	Parser_Parse(buffer, &result);
	return result;
}

static void TestAllTerms(void)
{
	static const unsigned char expected[] =
	{
		PARSER_ACTION_DIG, PARSER_ACTION_OPEN, PARSER_ACTION_SAW,
		PARSER_ACTION_SWIM, PARSER_ACTION_LIGHT, PARSER_ACTION_EXTINGUISH,
		PARSER_ACTION_QUIT, PARSER_ACTION_INVENTORY, PARSER_ACTION_HELP,
		PARSER_ACTION_KILL, PARSER_ACTION_KILL,
		PARSER_ACTION_TAKE, PARSER_ACTION_TAKE, PARSER_ACTION_TAKE,
		PARSER_ACTION_DROP, PARSER_ACTION_DROP, PARSER_ACTION_DROP,
		PARSER_ACTION_MOVE, PARSER_ACTION_MOVE,
		PARSER_ACTION_MOVE, PARSER_ACTION_MOVE,
	};
	char buffer[64];
	unsigned char i;

	for(i = 0; i < PARSER_ACTION_TERM_COUNT; ++i)
	{
		Parser_Result result = Parse(g_ParserActionTerms[i].Word, buffer);
		assert(result.Action == expected[i]);
		assert(result.CommandInitial == g_ParserActionTerms[i].Word[0]);
		assert(strcmp(result.Noun, "") == 0);
	}
}

static void TestSplit(void)
{
	char buffer[64];
	Parser_Result result = Parse("PEGAR SERRA EXTRA", buffer);
	assert(strcmp(result.Verb, "PEGAR") == 0);
	assert(strcmp(result.Noun, "SERRA EXTRA") == 0);
	assert(result.Action == PARSER_ACTION_TAKE);

	result = Parse("PEGAR  SERRA", buffer);
	assert(strcmp(result.Verb, "PEGAR") == 0);
	assert(strcmp(result.Noun, " SERRA") == 0);

	result = Parse(" PEGAR", buffer);
	assert(strcmp(result.Verb, "") == 0);
	assert(strcmp(result.Noun, "PEGAR") == 0);
	assert(result.Action == PARSER_ACTION_MOVE);
	assert(result.CommandInitial == 0);
}

static void TestPrefixesAndOrder(void)
{
	char buffer[64];
	Parser_Result result = Parse("SER", buffer);
	assert(result.Action == PARSER_ACTION_SAW);

	result = Parse("C", buffer);
	assert(result.Action == PARSER_ACTION_DROP);

	result = Parse("A", buffer);
	assert(result.Action == PARSER_ACTION_TAKE);

	result = Parse("L", buffer);
	assert(result.Action == PARSER_ACTION_MOVE);
	assert(result.CommandInitial == 'L');

	result = Parse("", buffer);
	assert(result.Action == PARSER_ACTION_MOVE);
	assert(result.CommandInitial == 0);
}

static void TestUnknownAndCase(void)
{
	char buffer[64];
	Parser_Result result = Parse("XYZ OBJETO", buffer);
	assert(result.Action == PARSER_ACTION_NONE);
	assert(result.CommandInitial == 0);
	assert(strcmp(result.Verb, "XYZ") == 0);
	assert(strcmp(result.Noun, "OBJETO") == 0);

	result = Parse("pegar serra", buffer);
	assert(result.Action == PARSER_ACTION_NONE);
}

static void TestObjectPrefixHelper(void)
{
	assert(Parser_IsPrefix("SERRA", "S"));
	assert(Parser_IsPrefix("SERRA", "SERRA"));
	assert(Parser_IsPrefix("SERRA", ""));
	assert(!Parser_IsPrefix("SERRA", "SERRAR"));
	assert(!Parser_IsPrefix("SERRA", "ERRA"));
}

int main(void)
{
	TestAllTerms();
	TestSplit();
	TestPrefixesAndOrder();
	TestUnknownAndCase();
	TestObjectPrefixHelper();
	puts("parser tests: OK");
	return 0;
}
