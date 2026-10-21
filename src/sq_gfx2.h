// ____________________________
// |  ___  ___  ___  _        |
// | |_ _|| . || . || |_      |   San Quentin - MSX1 edition
// |  | | | . ||   || . |     |   Primitivas graficas SCREEN 2
// |  |_| |___||_|_||___|     |
// |__________________________|
//
// Reproducao das primitivas de MSX-BASIC usadas pelo desenho de abertura
// (linhas 2450-2910 de basic/quentin.asc): PSET, PRESET, CIRCLE, DRAW e
// PRINT#1 sobre a tela grafica.
//
// MSX1 / MSX-DOS 1 / SCREEN 2 (GRAPHIC2), uma unica cor de frente.
//-----------------------------------------------------------------------------
#pragma once

#include "msxgl.h"
#include "sq_debug.h"

//-----------------------------------------------------------------------------
// CONFIGURACAO
//-----------------------------------------------------------------------------

// DEBUG
//   1 = desenha com o video LIGADO, traco a traco (nao chama DISSCR).
//       Serve para acompanhar a construcao da imagem.
//   0 = comportamento do original: DISSCR (&H41) antes de desenhar e
//       ENASCR (&H44) no fim, mostrando a imagem ja pronta.
// Numero de interrupcoes (frames) de pausa apos cada traco quando DEBUG=1.
#ifndef DEBUG_STEP_FRAMES
	#define DEBUG_STEP_FRAMES		2
#endif

//-----------------------------------------------------------------------------
// ANGULOS
// CIRCLE do MSX-BASIC usa radianos, sentido anti-horario a partir do leste.
// Aqui a volta completa vale 256 unidades: unidade = radianos * 256/(2*PI).
//-----------------------------------------------------------------------------
#define ANG_0_2						8		// 0.2 rad
#define ANG_3_0						122		// 3.0 rad
#define ANG_4_0						163		// 4.0 rad
#define ANG_4_5						183		// 4.5 rad
#define ANG_4_9						200		// 4.9 rad
#define ANG_5_6						228		// 5.6 rad

//-----------------------------------------------------------------------------
// FUNCOES
//-----------------------------------------------------------------------------

// Equivale a COLOR fg,bg,border : SCREEN 2.
// Prepara o modo bitmap real e preenche toda a tabela de cores com fg/bg,
// de modo que o desenho so precise acender bits de padrao.
void G2_Begin(u8 fg, u8 bg, u8 border);

// DEFUSR=&H41:A=USR(0)  -> DISSCR
void G2_DisplayOff(void);

// DEFUSR=&H44:A=USR(0)  -> ENASCR
void G2_DisplayOn(void);

// Pausa entre tracos (so tem efeito com DEBUG=1).
void G2_Step(void);

// PSET / PRESET
void G2_PSet(i16 x, i16 y);
void G2_PReset(i16 x, i16 y);

// Posiciona o cursor grafico sem desenhar (equivale a BM x,y).
void G2_SetPos(i16 x, i16 y);

// Traca uma reta e move o cursor grafico para o destino.
void G2_Line(i16 x0, i16 y0, i16 x1, i16 y1);

// CIRCLE (cx,cy),r,c,start,end,aspect
// Com aspect < 1 o raio informado e o horizontal: rx = r, ry = r*num/den.
// Angulos em unidades de 1/256 de volta.
void G2_Arc(i16 cx, i16 cy, i16 rx, i16 ry, u8 a0, u8 a1);

// CIRCLE (cx,cy),r,c,,,aspect  (elipse completa)
void G2_Ellipse(i16 cx, i16 cy, i16 rx, i16 ry);

// Calcula o raio vertical a partir do raio e do aspecto racional num/den.
i16 G2_AspectY(i16 r, u8 num, u8 den);

// PRINT#1,"..." apos PRESET: desenha o texto com a fonte da BIOS, canto
// superior esquerdo do primeiro caractere na posicao indicada.
void G2_Text(i16 x, i16 y, const c8* text);

// Interpretador das cadeias de DRAW do MSX-BASIC.
// Suporta os prefixos B e N e os comandos M, U, D, L, R, E, F, G, H, C, A, S.
void G2_Draw(const c8* cmd);
