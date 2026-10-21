#include "sq_solver.h"

#if DEBUG
static const char* Solver_Move(const Engine_State* state, unsigned char target)
{
	unsigned char queue[25];
	unsigned char seen[25] = { 0 };
	unsigned char first[25];
	unsigned char head = 0;
	unsigned char tail = 0;
	unsigned char i;
	Engine_State room = *state;
	static const char* const directions[] = { "NORTE", "LESTE", "SUL", "OESTE" };

	if(state->Location < 1 || state->Location > 24 || target < 1 || target > 24)
		return 0;
	queue[tail++] = state->Location;
	seen[state->Location] = 1;
	if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY)
		room.LampLit = 1;
	while(head < tail)
	{
		unsigned char exits[4];
		signed char next[4];
		room.Location = queue[head++];
		Engine_EnterRoom(&room);
		exits[0] = room.North;
		exits[1] = room.East;
		exits[2] = room.South;
		exits[3] = room.West;
		next[0] = (signed char)(room.Location - 6);
		next[1] = (signed char)(room.Location + 1);
		next[2] = (signed char)(room.Location + 6);
		next[3] = (signed char)(room.Location - 1);
		for(i = 0; i < 4; ++i)
		{
			unsigned char dest = (unsigned char)next[i];
			if(!exits[i] || dest < 1 || dest > 24 || dest == 22 || dest == 23 || seen[dest])
				continue;
			// Entering a dark morgue is safe only when collecting its lamp.
			if(dest == 12 && state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY &&
				target != 12)
				continue;
			seen[dest] = 1;
			first[dest] = room.Location == state->Location ? i : first[room.Location];
			if(dest == target)
			{
				signed char step = first[dest] == 0 ? -6 : first[dest] == 1 ? 1 :
					first[dest] == 2 ? 6 : -1;
				if(state->Location + step == 15 && state->LampLit &&
					state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY)
					return "APAGAR LANTERNA";
				if((state->Location + step == 12 || state->Location == 12) && !state->LampLit &&
					state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY)
					return "ACENDER LANTERNA";
				return directions[first[dest]];
			}
			queue[tail++] = dest;
		}
	}
	return 0;
}

static const char* Solver_Take(Solver_State* solver, const Engine_State* state, unsigned char object)
{
	static const char* const take[] = {
		"PEGAR COLHER", "PEGAR LENCOL", "PEGAR ESCADA", "PEGAR SERRA",
		"PEGAR LIVRO", "PEGAR CRUCIFIXO", "PEGAR CORDA", "PEGAR OSSO",
		"PEGAR UNIFORME", "PEGAR MOEDA", "PEGAR CANIVETE", "PEGAR LANTERNA", "PEGAR CHAVE"
	};
	const char* command;
	signed char location = state->ObjectLocations[object];

	if(location <= 0)
	{
		solver->Error = "RESOLVER: OBJETO NECESSARIO INDISPONIVEL.";
		return 0;
	}
	if(location == (signed char)state->Location)
	{
		if(state->Load == 3)
		{
			if(object == ENGINE_OBJECT_KEY && state->HoleDug &&
				state->ObjectLocations[ENGINE_OBJECT_SPOON] == ENGINE_INVENTORY)
				return "DEIXAR COLHER";
			if(state->ObjectLocations[ENGINE_OBJECT_UNIFORM] == ENGINE_INVENTORY)
				return "DEIXAR UNIFORME";
			solver->Error = "RESOLVER: LIBERE ESPACO NO INVENTARIO.";
			return 0;
		}
		return take[object];
	}
	command = Solver_Move(state, (unsigned char)location);
	if(command == 0)
		solver->Error = "RESOLVER: NAO HA ROTA SEGURA ATE O OBJETO.";
	return command;
}

void Solver_Initialize(Solver_State* solver)
{
	solver->UniformVisited = 0;
	solver->Error = 0;
}

const char* Solver_Next(Solver_State* solver, const Engine_State* state)
{
	const char* command;
	static const char* const drop[] = {
		0, "DEIXAR LENCOL", "DEIXAR ESCADA", "DEIXAR SERRA",
		"DEIXAR LIVRO", "DEIXAR CRUCIFIXO", "DEIXAR CORDA", "DEIXAR OSSO",
		0, "DEIXAR MOEDA", "DEIXAR CANIVETE"
	};
	unsigned char i;
	solver->Error = 0;

	if(state->Location == 15 && state->LampLit &&
		state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] == ENGINE_INVENTORY)
	{
		solver->Error = "RESOLVER: LANTERNA ACESA NO PATIO. PARTIDA PERDIDA.";
		return 0;
	}
	if(state->ObjectLocations[ENGINE_OBJECT_GUARD] == (signed char)state->Location)
	{
		if(state->ObjectLocations[ENGINE_OBJECT_KNIFE] == ENGINE_INVENTORY)
			return "MATAR GUARDA";
		for(i = 0; i < ENGINE_OBJECT_COUNT; ++i)
		{
			if(state->ObjectLocations[i] == ENGINE_INVENTORY)
				return "LISTAR";
		}
		solver->Error = "RESOLVER: GUARDA SEM OBJETO PARA SUBORNO.";
		return 0;
	}
	if(!state->GrateSawed)
	{
		if(state->ObjectLocations[ENGINE_OBJECT_SAW] != ENGINE_INVENTORY)
			return Solver_Take(solver, state, ENGINE_OBJECT_SAW);
		if(state->Location == 1)
			return "SERRAR";
	}
	for(i = 0; i < 11; ++i)
	{
		if(i == ENGINE_OBJECT_SAW && !solver->UniformVisited &&
			state->ObjectLocations[ENGINE_OBJECT_UNIFORM] != ENGINE_INVENTORY && state->Load < 3)
			continue;
		if(drop[i] != 0 && state->ObjectLocations[i] == ENGINE_INVENTORY)
			return drop[i];
	}
	if(state->ObjectLocations[ENGINE_OBJECT_KEY] == ENGINE_INVENTORY)
	{
		if(state->Location == 24)
			return "ABRIR";
		command = Solver_Move(state, 24);
		if(command != 0)
			return command;
	}
	if(state->ObjectLocations[ENGINE_OBJECT_UNIFORM] == ENGINE_INVENTORY)
		solver->UniformVisited = 1;
	if(!solver->UniformVisited)
	{
		// A confiscated uniform cannot be recovered.
		if(state->ObjectLocations[ENGINE_OBJECT_UNIFORM] == 0)
			solver->UniformVisited = 1;
		else
			return Solver_Take(solver, state, ENGINE_OBJECT_UNIFORM);
	}
	if(!state->HoleDug && state->ObjectLocations[ENGINE_OBJECT_SPOON] != ENGINE_INVENTORY)
		return Solver_Take(solver, state, ENGINE_OBJECT_SPOON);
	if(!state->HoleDug)
	{
		if(state->Location == 11)
			return "CAVAR";
		command = Solver_Move(state, 11);
	}
	else if(state->ObjectLocations[ENGINE_OBJECT_FLASHLIGHT] != ENGINE_INVENTORY)
		return Solver_Take(solver, state, ENGINE_OBJECT_FLASHLIGHT);
	else if(state->ObjectLocations[ENGINE_OBJECT_KEY] != ENGINE_INVENTORY)
		return Solver_Take(solver, state, ENGINE_OBJECT_KEY);
	else
	{
		if(state->Location == 12 && !state->LampLit)
			return "ACENDER LANTERNA";
		command = Solver_Move(state, 24);
	}
	if(command == 0)
		solver->Error = "RESOLVER: NAO HA ROTA SEGURA PARA CONTINUAR.";
	return command;
}
#endif
