#pragma once

#include "sq_debug.h"
#include "sq_engine.h"

#if DEBUG
typedef struct
{
	unsigned char UniformVisited;
	const char* Error;
} Solver_State;

void Solver_Initialize(Solver_State* solver);
const char* Solver_Next(Solver_State* solver, const Engine_State* state);
#endif
