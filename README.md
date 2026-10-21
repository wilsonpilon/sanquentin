# San Quentin

**San Quentin** é um jogo de aventura em modo texto (*text adventure*), criado por **Ricardo Augusto Mata Costa**, escrito originalmente em **MSX-BASIC 1** e publicado no número **79** da revista **Micro Sistemas** como uma listagem para digitação.

O jogador assume o papel de Scarp Lantra, um prisioneiro que pretende aproveitar um blecaute para escapar da penitenciária de San Quentin. A exploração e as ações são realizadas por comandos de texto: mover-se entre locais, examinar as possibilidades de fuga e usar os objetos encontrados fazem parte da aventura. O inventário tem capacidade limitada, e os objetos podem tanto ajudar quanto dificultar a fuga.

![Tela de abertura do jogo original San Quentin no MSX](images/SanQuentin-00.png)

## O programa original

O programa e o artigo que o apresenta saíram originalmente no número **79** da revista **Micro Sistemas**. A versão em BASIC já foi digitada e está funcionando; ela serve como referência para a recriação.

![Capa do número 79 da revista Micro Sistemas](images/SanQuentin-capa.png)

- [Artigo original transcrito em Markdown](ARTIGO.MD): apresentação da história e das instruções do jogo, sem a propaganda nem a listagem em BASIC.
- [Digitalização da publicação original](docs/SanQuentin.pdf).
- [Programa em BASIC](basic/QUENTIN.BAS).
- [Listagem em formato de texto](basic/quentin.asc).
- [Imagem de disquete do jogo](resource/SanQuentin.dsk).

## Recriação fiel

Em **2026**, **Wilson "Barney" Pilon** está recriando o jogo em C, preservando o comportamento do programa original em **MSX-BASIC 1**. O objetivo é reproduzir o jogo, não modernizar ou aprimorar suas regras, textos, apresentação ou funcionamento.

A implementação atual é para **MSX1**, usando **SDCC** e **MSXgl**, como programa `.COM` para **MSX-DOS 1**. Qualquer edição para outra plataforma ou com mudanças em relação ao original fica fora do escopo atual e dependerá de uma decisão futura.

### Plataforma-alvo

- **Computador:** MSX1 ou superior, em modo compatível com MSX1.
- **Sistema operacional:** MSX-DOS 1.

### Ferramentas e tecnologias

| Ferramenta / tecnologia | Uso no projeto |
| --- | --- |
| MSX-BASIC 1 | Linguagem do jogo original, cuja lógica e comportamento devem ser reproduzidos. |
| SDCC | Compilador C da recriação. |
| MSXgl | Biblioteca de desenvolvimento para MSX usada na recriação. |
| MSX-DOS 1 | Ambiente de execução da recriação atual. |
| openMSX | Emulação do MSX para execução e testes. |

### Testar a fuga na conversão

Com `DEBUG=1` (padrão em [sq_debug.h](src/sq_debug.h)), digite `RESOLVER`
durante a partida. O próximo comando aparece no prompt; **Enter** o executa e
**Backspace** cancela a assistência. A rota é recalculada a cada passo usando
as posições atuais da lanterna, da chave, dos demais objetos e do guarda.
Os comandos passam pelo parser e pelo motor normais: não há teletransporte,
alteração de inventário nem proteção especial contra mortes. Se não conseguir
planejar a continuação, o assistente informa o motivo e devolve o controle.

O auxiliar é exclusivo de depuração. Para compilar sem ele, no Prompt de
Comando, dentro de `projects\msx1`:

```bat
build.bat "define=DEBUG:0"
```

O roteiro manual está em [solution.md](docs/solution.md). Os testes host podem
ser executados por [run_solver_tests.bat](tests/run_solver_tests.bat),
[run_engine_tests.bat](tests/run_engine_tests.bat) e
[run_parser_tests.bat](tests/run_parser_tests.bat).
O RNG original e as coordenadas aleatórias da abertura são cobertos por
[run_random_tests.bat](tests/run_random_tests.bat), com checksum de valores
extraídos do MSX-BASIC 1.0. A reprodução do oráculo está documentada na
[especificação](SPEC.md#verificação-reproduzível-do-rng).

## Créditos

- **Autor original:** Ricardo Augusto Mata Costa, criador de San Quentin para a revista Micro Sistemas.
- **Publicação original:** número 79 da revista Micro Sistemas, onde foram publicados o artigo e a listagem do programa em MSX-BASIC 1.
- **Autor da nova versão:** Wilson "Barney" Pilon, 2026.
