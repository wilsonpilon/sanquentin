# Validacao diferencial BASIC x C

O objetivo e encontrar divergencias sem depender de repetir partidas manuais.
O BASIC original e o oraculo: o teste executa uma copia instrumentada da
listagem no **MSX-BASIC 1.0 real do Sony HB-701FD**, emulado pelo openMSX,
e compara o resultado com o parser e o motor C compilados para o host.
Nao se trata de outro motor que reimplementa as regras BASIC.

## Executar

Na raiz do repositorio, com Node.js, GCC e openMSX no PATH:

```bat
tests\run_differential_tests.bat
```

As ROMs do Sony HB-701FD precisam estar instaladas no openMSX. Nenhuma ROM
e fornecida pelo teste. Nao e necessario compilar os jogos nem incrementar
a versao compartilhada. O emulador roda sem janela e termina automaticamente.

O resultado fica em `projects\msx1\out\validation\report.json`.
Qualquer divergencia, erro de ferramenta, execucao incompleta ou timeout
faz o comando falhar. Os cenarios sao identificados por numero, grupo,
estado inicial, comando e semente, permitindo reproduzir uma falha.

## Matriz automatizada

| Grupo | Cenarios | Comparacao |
| --- | --- | --- |
| Parser | Verbos, sinonimos, todos os prefixos, entrada vazia, espacos e comandos desconhecidos | Codigo da acao e efeitos do comando |
| Mapa | Salas 1-21 e 24, quatro direcoes, inventario e ajuda, combinacoes de grade/tunel/lanterna | Local, saidas e estado apos retornar ao prompt |
| Inventario | Objetos, nomes abreviados/vazios, pegar/largar, objeto ausente ou carregado, limite de carga | Posicoes dos 14 objetos e contador de carga |
| Acoes | Serrar, cavar, nadar, abrir, acender/apagar, matar, ajudar e desistir | Flags, inventario, local e encerramento |
| Guarda | Sem objetos, uniforme, canivete, chave e inventario misto, diferentes sementes | Prisao, morte, confisco, redistribuicao e estado do guarda |

### Resultado verificado em 21/10/2026

| Grupo | Cenarios comparados | Divergencias nos valores comparados |
| --- | ---: | ---: |
| Parser | 152 | 0 |
| Mapa | 397 | 0 |
| Inventario | 252 | 0 |
| Acoes | 972 | 0 |
| Guarda | 216 | 0 |
| **Total** | **1.989** | **0** |

Foram alcancadas 153 das 158 linhas instrumentadas dentro do escopo.
As linhas 1420, 1430, 1450, 1460 e 1470 nao foram alcancadas; no fonte
atual, o desvio incondicional da linha 1410 evita esse trecho de ajuda.
Isso e registrado como comportamento do original, nao corrigido pela suite.
Inicializacao substituida (100) e resposta/reinicio apos finais (1020-1040)
ficam explicitamente fora dessa contagem. As suites existentes de motor e
parser C tambem passaram.

Cada cenario compara **27 valores**: local, carga, grade, tunel, luz,
estado do guarda, quatro saidas, posicoes dos 14 objetos, encerramento,
acao reconhecida e quantidade de chamadas aleatorias.

O relatorio registra hashes SHA-256 dos fontes comparados, lista as linhas
BASIC alcancadas e nao alcancadas e separa inicializacao/reinicio excluidos.
Cobertura de linhas **nao** e cobertura de todos os ramos ou prova de
equivalencia. Ha um teste de mutacao do comparador: alterar um valor do
snapshot C precisa ser detectado em cada um dos 27 campos. Snapshots
incompletos, fora de ordem ou com formato incorreto tambem sao rejeitados.

## Como o oraculo e controlado

- A listagem `basic\quentin.asc` nunca e modificada. A copia temporaria
  contem as linhas do jogo 100-2350; abertura e introducao nao fazem parte
  desta camada.
- A inicializacao cria as tabelas originais. Cada cenario injeta um estado,
  executa a descricao/atualizacao da sala e fornece um comando no lugar
  de `INPUT`.
- No proximo prompt, ou no encerramento, uma caixa de correio acima da
  memoria reservada ao BASIC permite ao Tcl capturar o estado.
- O relogio de teste avanca um tick por chamada de `RND(-TIME)`, inclusive
  chamadas descartadas e tentativas rejeitadas de confisco. A mesma
  sequencia e usada pelo RNG C; o relatorio compara o numero de chamadas.
  Isso retira a variacao de velocidade entre host e emulador, sem substituir
  o algoritmo aleatorio da ROM.
- As alteracoes de entrada, fim da partida, relogio e instrumentacao so
  existem na copia temporaria. O teste nao modifica os executaveis publicados.
  Mudancas nas linhas originais substituidas fazem a suite falhar, exigindo
  revisao explicita da instrumentacao.
- Uma imagem FAT12 de 360 KB e criada com o `msxtar` incluido no repositorio.
  A carga ASCII usa `LOAD ...,R` para iniciar somente ao terminar de carregar.
  O teste desabilita o salvamento automatico das configuracoes do emulador.
- Estados injetados isolam condicoes sem exigir uma rota ate cada sala.
  Nem todo estado injetado representa uma partida alcancavel.

## Limites e proximas camadas

Esta matriz compara **um comando por estado inicial**, nao todas as
sequencias possiveis. O espaco de partidas e muito grande e inclui ciclos;
nao ha promessa de esgotar todas as possibilidades.
O marcador de encerramento so indica que a partida terminou: nao compara
o texto ou o motivo impresso do final.

| Camada | Estado |
| --- | --- |
| Parser e transicoes de estado contra o interpretador BASIC | Automatizada por esta suite |
| RNG contra valores da ROM | Suite dedicada `run_random_tests.bat` |
| Rotas completas e resolvedor C | Suite dedicada `run_solver_tests.bat`; nao e comparacao diferencial |
| Transcricoes, mensagens exatas e ordem dos eventos impressos | Pendente |
| Teclado, edicao de entrada, wrapping, glifos e scroll | Auditoria diferencial pendente |
| Reinicio e nova partida apos finais | Auditoria diferencial pendente |
| Equivalencia do binario SDCC, RAM minima e hardware real | Certificacao pendente |

O proximo incremento deve acrescentar transcricoes e rotas de varios comandos,
priorizando os ramos nao cobertos. A participacao humana e principalmente
para decidir como tratar divergencias do original e conferir a apresentacao
visual e hardware; nao para repetir milhares de partidas.
