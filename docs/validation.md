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

### Resultado verificado em 28/10/2026 — release 1.19

| Grupo | Cenarios comparados | Divergencias nos valores comparados |
| --- | ---: | ---: |
| Parser | 152 | 0 |
| Mapa | 397 | 0 |
| Inventario | 252 | 0 |
| Acoes | 972 | 0 |
| Guarda | 216 | 0 |
| **Total** | **1.989** | **0** |

Foram alcancadas as 158 linhas instrumentadas dentro do escopo. Com os
desvios das linhas 1410 e 1420 corrigidos conforme a revista, o trecho de
ajuda (1420-1470) passou a ser alcancado.
Inicializacao substituida (100) e resposta/reinicio apos finais (1020-1040)
ficam explicitamente fora dessa contagem. As suites existentes de motor e
parser C tambem passaram.
O motor e parser sao compartilhados pelas edicoes MSX1 e MSX2; esta
comparacao de estado nao certifica automaticamente os backends de video.

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

- A listagem `basic\quentin.asc` nunca e modificada pelo teste. A copia temporaria
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

## Regressao visual e integracao MSX2

O pre-release 1.19 tambem foi validado com:

- `run_msx2_intro_tests.bat`: dez cards, fonte bitmap, espera de leitura
  de 12 segundos, pausa/navegacao, blecaute, S/N, musica em execucao e
  silencio ao iniciar a aventura; retorno funcional ao DOS.
- O mesmo wrapper executa testes host da musica: 128 segundos,
  31 compassos melodicos distintos, FM presente/ausente, 50/60 Hz,
  ticks atrasados, wrap do JIFFY e parada.
- `run_msx2_game_tests.bat`: comandos reais para pegar a serra, serrar,
  ir ao corredor por F3, voltar, largar e desistir; edicao Backspace,
  inventario e prompt fixo. O relogio TIME das visitas e fixado para
  impedir confisco aleatorio da serra. Nao testa o guarda nessa rota.
- `run_msx2_rooms_tests.bat`: injecao de 24 estados de local e cinco
  variantes de escavacao/iluminacao, comparacao dos pixels sem os titulos
  e preservacao de divisorias, inventario vazio, prompt e instrucoes.
  Lanterna apagada ou ausente mantem o necroterio escuro; tunel exige
  escavacao e colher carregada para revelar as passagens.
- `run_disk_tests.bat`: extracao dos dois COM de cada disco, hashes,
  ordem dos arquivos de boot, AUTOEXEC e metadados; MSX1 executado sob DOS2.
  `run_msx1_release_tests.bat` tambem verifica a edicao MSX1 sob DOS1.

As capturas `msx2-local-*.png` de
[images/releases/1.19](../images/releases/1.19) sao fixtures do renderer,
nao prova de uma partida alcancando cada local. As mensagens na metade
inferior podem refletir a iteracao anterior, pois a fixture muda o estado
no ponto de atualizacao do desenho. Capturas `msx2-inventario.png` e
`msx2-corredor.png` vem do roteiro de comandos reais.
Ainda faltam rotas completas, todos os finais e reinicios pela interface
MSX2, auditoria diferencial de apresentacao e testes em hardware real.

## Proximo incremento

O proximo incremento deve acrescentar transcricoes e rotas de varios comandos,
priorizando os ramos nao cobertos. A participacao humana e principalmente
para decidir como tratar divergencias do original e conferir a apresentacao
visual e hardware; nao para repetir milhares de partidas.
