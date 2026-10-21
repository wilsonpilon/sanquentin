# San Quentin — Especificação viva

> Documento operacional para pessoas e IAs retomarem o projeto em outro computador ou sessão.  
> Ler também [`OUTLINE.md`](OUTLINE.md).  
> Estado do documento: **MSX1 jogável em auditoria de fidelidade; abertura MSX2 implementada; pré-release conjunto 1.1**.
>
> Última atualização: **21 de outubro de 2026**.

## 1. Missão

Recriar **San Quentin**, de Ricardo Augusto Mata Costa, em C com SDCC/MSXgl, reproduzindo integralmente o programa original em MSX-BASIC 1.

A edição MSX1 continua sendo uma conversão fiel: não modernizar, corrigir,
simplificar, ampliar ou reinterpretar suas regras, textos, mapa, aleatoriedade,
interface ou fluxo. Em paralelo, foi autorizada e iniciada a edição MSX2:
DOS2, mapper principal de pelo menos 512 KB, PSG+FM previstos e backend visual
separado. O pré-release 1.1 entrega a aventura MSX1 em auditoria e somente
a abertura MSX2; não confundir os estados das duas edições.

## 2. Estado atual

### Concluído

- Material original reunido no repositório.
- Listagem BASIC digitada e versão em disco disponíveis.
- MSXgl incluído e estudado quanto a toolchain, targets, APIs e build.
- SuperNova incluído e estudado quanto a arquitetura, SCREEN 7, texto, parser, overlays, dados, áudio e save.
- Requisito de fidelidade integral ao BASIC original mantido para MSX1; edição MSX2 aprimorada autorizada separadamente.
- `OUTLINE.md` e este documento criados.
- `basic/quentin.asc` transliterado para ASCII de 7 bits.
- Projeto MSXgl da edição MSX1 criado em `projects/msx1/`, com build reproduzível gerando `quentin.com` (MSX-DOS 1) e disco de boot de 360K.
- Primitivas de SCREEN 2 (`src/sq_gfx2.*`): PSET, PRESET, reta, arco/elipse com aspecto racional, texto com a fonte da BIOS e interpretador de `DRAW`.
- Tela de abertura (`src/sq_title.*`): transcrição fiel das linhas BASIC 2450–2910, validada no openMSX contra `images/SanQuentin-00.png`.
- Chave `DEBUG` operacional: `1` desenha traço a traço com vídeo ligado, `0` reproduz DISSCR/ENASCR do original.
- Texto de apresentação (`src/sq_intro.*`): transcrição fiel das linhas BASIC 2370–2430 em SCREEN 0, com wrapping de 40 colunas e espera de tecla.
- Entrada compartilhada (`src/sq_input.*`): espera de tecla e leitura textual em maiúsculas pela matriz do PPI.
- Tabelas auditáveis das linhas BASIC 100–410: 21 termos de ação, 14 objetos, posições e estado inicial nos módulos portáveis.
- Primeira tela jogável: cela, estado preso, serra, prompt editável, cursor sólido e barra F1–F4, validada contra o disco original.
- Parser portável (`src/sq_parser.*`) das linhas BASIC 1310–1390, conectado à entrada MSX e coberto por testes host.
- Motor portável (`src/sq_engine.*`) com despacho das 13 classes de ação no contexto já implementado, inventário e transições de estado testados no host.
- Catálogo de salas 1–21 e 24, descrições e saídas transcritos das linhas BASIC 450–580 e 1690–2350; condições do túnel e necrotério e peculiaridades das salas sem rotina/portão preservadas no motor.
- Ações `CAVAR`, `NADAR` e `ABRIR`, finais associados, morte no pátio e encontros/confisco do guarda convertidos das linhas BASIC 440, 610–620 e 1060–1660.
- Ciclo MSX funcional da cela ao corredor: pegar/deixar/listar, mensagens de erro, serrar a grade, F1–F4, scroll textual e desistir.
- Sequência validada no openMSX: `PEGAR SERRA`, `LISTAR`, `SERRAR`, F3/`LESTE`, corredor e `DESISTIR`.
- Saída textual limitada às linhas 0–22, com wrapping e scroll antes de cada caractere; barra F1–F4 reservada na linha 23. Primeira direção alinhada ao rótulo `PODE SEGUIR:` como no BASIC.
- Retorno ao DOS aguarda a liberação da tecla e descarta a fila de teclado da BIOS.
- Auxiliar secreto `RESOLVER`, autorizado para `DEBUG=1`: calcula uma rota sobre as saídas do motor e os objetos atuais, exibe um comando por vez e só o executa com Enter; Backspace cancela. Não altera o estado do jogo diretamente.
- Testes host do auxiliar: 3.030 fugas, incluindo 1.500 com o RNG decimal original e relógio simulado; cobrem as 15 distribuições iniciais, guarda, retomada e redistribuição da chave confiscada.
- Fuga completa executada no openMSX/Sony HB-701FD por `RESOLVER`, até `PARABENS!` e o portão (sala 24), com verificações da barra de direções e do buffer BIOS vazio ao sair.
- Retornos explícitos do motor para as linhas BASIC 370, 430, 440, 450 e 490: sorteios são executados depois das mensagens e da limpeza de tela correspondentes, não durante o despacho.
- `MATAR` sem canivete ou, com canivete, sem guarda retorna a 440 sem CLS; `AJUDAR` retorna a 430, exceto no rio carregando a serra (aviso de peso). As linhas 1420–1430 continuam inacessíveis, como no original.
- Reset de `TA` na cela condicionado à exibição das direções (520–530), inclusive em redesenhos sem nova visita.
- RNG decimal portável em `src/sq_random.*`: estado de 14 dígitos, semente de RUN, avanço `RND(1)`, repetição `RND(0)` e reseed de `RND(-TIME)`. Compartilhado pelas estrelas, posições dos objetos e encontros/confiscos.
- Comparação com a ROM MSX-BASIC 1.0: 65.637 valores de RNDX, incluindo todas as sementes 0–65535, e 91 pares de coordenadas das estrelas. Estados e escalas do executável SDCC também conferidos no openMSX.
- Abertura MSX2 em `src/sq_title_msx2.*`: dez cards SCREEN 5, primitivas do V9938,
  introdução completa do BASIC 2380–2400, persianas, noite/blecaute e pergunta S/N.
- S confirma e exibe aviso de aventura MSX2 em desenvolvimento; N reinicia
  o slideshow. Pergunta e confirmação não avançam automaticamente.
- Build compartilhado `marco.compilação`, iniciado em 1.1 / Danny Trejo.
  `version.json` persiste o estado; `build.bat` da raiz compila as duas edições
  uma vez por número, por padrão com DEBUG=0.
- Capturas atuais de ambas as edições em `images/releases/1.1`, com scripts
  reproduzíveis de emulação e pacote/manifesto/SHA-256 automatizados.

### Não iniciado

- Auditoria integral dos ramos restantes e da apresentação contra o BASIC.
- Runner host de transcript comparativo com o BASIC original.
- Matriz integral de equivalência com o BASIC.
- Integração da aventura na edição MSX2, uso de bancos do mapper e áudio PSG/FM.

### Próximo marco

**Comparar integralmente textos, entrada, apresentação e ramos do jogo com o disco original**. O RNG já corresponde à ROM para os argumentos usados pelo jogo; testes determinísticos devem controlar os valores de `TIME` em cada chamada.

A fuga automatizada valida a conversão atual, não comprova equivalência integral
com o BASIC. Acentos/glifos, wrapping, entrada e demais divergências de apresentação
continuam pendentes. O auxiliar de depuração está em `src/sq_solver.*`, usa a chave comum
`src/sq_debug.h` e não existe na compilação com `DEBUG=0`.

### Verificação reproduzível do RNG

- Host: `tests\run_random_tests.bat`, além das suítes do motor, parser e resolvedor.
- ROM instalada pelo usuário: `openmsx -machine Sony_HB-701FD -script tests\capture_random_oracle.tcl`.
- O script grava `%TEMP%\sanquentin-random-oracle.txt`. Checksums FNV-1a esperados:
  `F9B5293F` para os 65.637 estados RNDX e `436D8AB4` para as 91 estrelas.
- Referências técnicas: [semântica de RND](https://www.msx.org/wiki/RND) e a seção
  de RND em [MSX system source files, base100/f4.mac](https://github.com/gomwing/msxsyssrc/blob/master/base100/f4.mac).
  A implementação usa a recorrência matemática, sem incorporar código da ROM.
- A recorrência é `x = (x * 21132486540519 + 14389820420821) mod 10^14`;
  RUN começa em `40649651372358`. Uma semente negativa fornece a mantissa
  decimal normalizada do argumento. `TIME=0` repete o valor anterior.
- Mesmo RNG e mesmo `TIME` produzem o mesmo resultado; isso não implica
  coincidência dos eventos após o mesmo tempo de espera humano. A conversão
  C e o interpretador executam em velocidades diferentes.

## 3. Regras para retomar o trabalho

Uma pessoa ou IA que iniciar nova sessão deve:

1. ler `SPEC.md`, `OUTLINE.md`, `README.md` e `ARTIGO.MD`;
2. verificar alterações locais com `git status --short`;
3. não modificar `MSXgl/` nem `resource/supernova/` sem decisão explícita — são referências importadas;
4. consultar `basic/quentin.asc` para lógica legível e executar `resource/SanQuentin.dsk` para confirmar comportamento;
5. tratar toda afirmação não comprovada como hipótese ou questão aberta;
6. executar o menor teste/build relevante após cada mudança;
7. atualizar este documento antes de encerrar a sessão.

Não regenerar nem sobrescrever fontes originais. Código gerado deve ficar separado do conteúdo editável e ter o comando gerador documentado.

## 4. Baseline e fontes

| Fonte | Papel |
|---|---|
| `basic/quentin.asc` | Fonte legível da lógica BASIC, transliterada para ASCII de 7 bits |
| `basic/QUENTIN.BAS` | Programa BASIC tokenizado |
| `resource/SanQuentin.dsk` | Oráculo executável do comportamento |
| `docs/SanQuentin.pdf` | Publicação original digitalizada |
| `ARTIGO.MD` | História e instruções transcritas |
| `images/SanQuentin-00.png` | Referência visual da abertura |
| `images/SanQuentin-MSX1-00.png` | Abertura reproduzida em C, capturada no openMSX |
| `images/SanQuentin-MSX1-01.png` | Apresentação SCREEN 0 reproduzida em C, capturada no openMSX |
| `images/SanQuentin-MSX1-02.png` | Primeira tela jogável reproduzida em C, capturada no openMSX |
| `images/SanQuentin-MSX1-03.png` | Corredor após pegar a serra, serrar a grade e sair da cela |
| `MSXgl/` | Biblioteca, compilador, scripts, ferramentas e samples |
| `resource/supernova/` | Referência de engenharia para a edição MSX2 |

### Precedência

O programa original em `basic/QUENTIN.BAS` é a especificação a reproduzir; `basic/quentin.asc` é sua listagem de trabalho legível. Executar o disco original em MSX-BASIC serve para confirmar semântica, comportamento dependente da máquina e resultados. Se fonte, listagem e execução parecerem divergir, registrar o caso e investigá-lo; não corrigir nem escolher uma interpretação por conveniência. Bugs, erros de texto, peculiaridades do parser, ordem de avaliação, aleatoriedade e demais detalhes observáveis também fazem parte do requisito. Não são aceitas divergências intencionais.

## 5. Requisitos comuns

### 5.1 Funcionais

O núcleo deve representar explicitamente, preservando tipos e transições do programa BASIC:

- local atual;
- saídas disponíveis e saídas condicionais;
- objetos, posição e estado;
- inventário e limite de carga;
- flags de progresso (`GR`, `BU`, `LA` no BASIC ou equivalentes claros);
- guarda e encontros aleatórios;
- comandos analisados;
- vitória, desistência e todas as mortes/falhas;
- reinício de partida;
- gerador aleatório ou abstração equivalente, permitindo testes determinísticos.

### 5.2 Arquitetura

Separar ao menos estas responsabilidades sem mudar a semântica do programa:

1. **dados** — textos, salas, objetos, vocabulário e regras declarativas quando possível;
2. **parser** — normalização, verbo, substantivo, abreviações e sinônimos;
3. **motor** — transição de estado e resolução de comandos;
4. **apresentação** — layout, wrapping, cores, cursor e scroll;
5. **entrada** — teclado e atalhos específicos da máquina;
6. **plataforma** — inicialização, VDP, PSG, arquivos e saída;
7. **testes host** — execução determinística do motor em PC.

Evitar acoplar regras do jogo diretamente a coordenadas de VRAM ou chamadas DOS. Essa separação existe para testar e reproduzir a lógica, não para introduzir novas interfaces ou recursos.

### 5.3 Texto e dados

- Manter textos fora da lógica sempre que isso não comprometer o target.
- Preservar uma fonte textual canônica, legível e versionada.
- Gerar tabelas compactadas somente por ferramenta reproduzível.
- Preservar textos, acentos, comandos e resultados observáveis do original. Qualquer conversão de codificação necessária na implementação deve manter a saída equivalente; não transliterar nem alterar texto como mudança de conteúdo.
- Preservar hifens, espaços, quebras, palavras e erros do original, exceto pela transliteração de acentos decidida em 2026-10-20.
- Manter documentada a tabela de conversão da codificação MSX original para ASCII.
- Fazer wrapping determinístico e coberto por testes.

### 5.4 Qualidade

- Compilação sem erros e sem warnings novos relevantes.
- Testes do motor no host para caminhos principais e casos-limite.
- Testes no emulador para layout, teclado, temporização e áudio.
- Smoke test em hardware real antes de uma release, quando houver acesso.
- Builds reproduzíveis a partir da árvore versionada, sem caminhos absolutos pessoais.

## 6. Especificação comportamental do original

Esta seção registra apenas o que já foi verificado na listagem. A Fase 1 deverá transformá-la em uma matriz exaustiva.

### 6.1 Inicialização e interface

- `DEFINT A-Z`, `KEY OFF`, `CLEAR 200`, `WIDTH 39`.
- Abertura desenhada em SCREEN 2; aguarda tecla.
- Introdução em SCREEN 0, largura 40; aguarda tecla.
- F1–F4 digitam e submetem norte, sul, leste e oeste.
- O laço limpa a tela ao entrar em novo local, descreve sala/objetos/saídas e solicita `O QUE FARA AGORA` na listagem transliterada.

A edição MSX1 deve reproduzir composição, ordem e ritmo observáveis, dentro das diferenças inevitáveis entre BASIC e C.

### 6.2 Parser

Tabela de classes observada:

| Código | Ação | Palavras no BASIC |
|---|---|---|
| 2026-10-21 | Substituir os LCGs temporários pelo RNG decimal do MSX-BASIC, compartilhado pela abertura e pelo jogo; separar despacho, mensagens e retorno ao BASIC antes dos sorteios. Esta decisão substitui a implementação temporária das estrelas e do RNG. | Solicitação do mantenedor; recorrência e conversão verificadas contra a ROM no openMSX |
| 1 | mover | NORTE, SUL, LESTE, OESTE |
| 2 | deixar | COLOCAR, DEIXAR, LARGAR |
| 3 | pegar | PEGAR, APANHAR, CARREGAR |
| 4 | atacar | MATAR, ATIRAR |
| 5 | cavar | CAVAR |
| 6 | abrir | ABRIR |
| 7 | serrar | SERRAR |
| 8 | nadar | NADAR |
| 9 | acender | ACENDER |
| 10 | apagar | APAGAR |
| 11 | desistir | DESISTIR |
| 12 | inventário | LISTAR |
| 13 | ajuda | AJUDAR |

Comportamento já observado no código:

- separa verbo e restante no primeiro espaço;
- usa comparação por prefixo via `INSTR`, tanto no vocabulário quanto nos objetos;
- reduz movimento à primeira letra;
- não há parser sofisticado de artigos ou preposições;
- entradas desconhecidas produzem mensagem com o verbo recebido.
- a busca percorre os 21 termos sem interromper; quando um prefixo é ambíguo, a última correspondência vence (`C` termina como `COLOCAR`, `A` como `APANHAR` e `L` como `LESTE`);
- `INSTR("CAVAR","")` retorna `1` no MSX-BASIC 1.0; por isso verbo vazio corresponde a todos os termos e termina como movimento por `OESTE`, com inicial vazia;
- a comparação é sensível a maiúsculas/minúsculas; o backend MSX normaliza a entrada física para maiúsculas antes do parser;
- espaços extras não são removidos: somente o primeiro espaço é substituído pelo terminador, e o restante vira substantivo literalmente.

Os testes host cobrem os 21 termos, divisão verbo/substantivo, vazio, minúsculas, prefixos ambíguos, espaços extras, verbo desconhecido e o helper de prefixo de objetos. Ainda faltam validar acentos, limite da linha editável e comandos longos contra o original. Não atribuir ao original capacidades do parser de SuperNova.

### 6.3 Objetos

Há 14 registros:

1. colher — inicia no local 3;
2. lençol — 4;
3. escada — 5;
4. serra — 1;
5. livro — 7;
6. crucifixo — 10;
7. corda — 16;
8. osso — 19;
9. uniforme — 20;
10. moeda — fora do mapa até evento;
11. canivete — posição aleatória;
12. lanterna — posição aleatória adjacente;
13. chave — posição aleatória adjacente;
14. guarda — encontro aleatório.

Convenção BASIC: posição `-1` significa carregado; `0`, ausente/inativo; valor positivo, local. O inventário comporta no máximo três objetos.

A implementação em C deve usar nomes/enumerações claros, mas produzir os mesmos resultados.

### 6.4 Mapa

O BASIC usa malha implícita, com leste/oeste `±1` e norte/sul `±6`, mas sobrescreve saídas por sala e estado. Locais descritos incluem:

- cela, corredor de celas, refeitório, enfermaria, almoxarifado, horta;
- biblioteca, salão de visitas, cozinha, capela;
- túnel secreto, necrotério, sala do diretor, corredor, pátio;
- oficina, rio, guarita leste, cela surda, lavanderia;
- guarita sul e portão de saída.

Os índices 22 e 23 não possuem rotina de sala; o portão usa 24. As descrições e saídas já foram transcritas para o motor C e têm testes host para saídas e condições. Ainda falta comparar as telas e rotas com execução do original.

### 6.5 Regras críticas já identificadas

- A cela só permite sair depois de serrar e possuir/ter usado a serra conforme a condição original.
- Cavar ocorre no local 11, requer colher; carregar escada pode causar morte por entalamento.
- Necrotério sem lanterna acesa esconde todas as saídas.
- Atravessar o pátio com lanterna acesa causa fuzilamento.
- Nadar no rio com a serra causa afogamento; há evento da moeda.
- Abrir no local 24 requer a chave; carregar o osso ao fugir faz os cães encontrarem o jogador.
- Atacar o guarda requer canivete.
- O guarda pode prender, ignorar quem veste uniforme ou confiscar objeto aleatório.
- A ajuda varia por local/estado.

Estas descrições são resumo, não critérios completos. Os testes devem usar as condições exatas transcritas do BASIC, inclusive comportamentos estranhos.

### 6.6 Aleatoriedade

O original:

- escolhe uma base aleatória para canivete, lanterna e chave;
- pode fazer o guarda surgir uma vez em local visitado;
- escolhe aleatoriamente um objeto carregado para confisco.

O motor novo deve aceitar uma fonte de números aleatórios injetável. Testes host devem usar seed ou sequência fixa. A edição MSX1 deve reproduzir distribuição e momentos de sorteio tão fielmente quanto for definido na Fase 1.

## 7. Edição MSX1 fiel

### 7.1 Objetivo

Entregar o jogo original em C/MSXgl, com regras, conteúdo, fluxo e apresentação reconhecíveis como a listagem BASIC, sem incorporar o layout de SuperNova nesta edição.

### 7.2 Plataforma

Confirmado:

- máquina: MSX1 ou superior em modo compatível com MSX1;
- biblioteca: MSXgl;
- compilador: SDCC fornecido na árvore MSXgl;
- target de distribuição: `DOS1`, programa `.COM` de MSX-DOS 1;
- imagem de disco de teste: 360K, face única (ver seção 9.5).

Em aberto e dependente de medição com o núcleo do jogo presente:

- RAM mínima;
- suporte a save.

### 7.3 Apresentação

- Preservar abertura SCREEN 2 e interface textual equivalente à SCREEN 0.
- Preservar 39 colunas no jogo ou demonstrar, por comparação visual, equivalência da solução escolhida.
- Preservar mensagens, sequência de telas, prompt, lista de saídas e inventário.
- Preservar F1–F4 para direções.
- Usar somente recursos disponíveis no MSX1.
- Não adicionar cabeçalho, barra de status, ilustrações de sala, música, parser avançado ou save sem decisão explícita.

### 7.4 Critério de aceitação

A edição MSX1 estará concluída quando:

- todas as regras da matriz BASIC estiverem implementadas;
- todos os transcripts de referência, incluindo textos sem normalização, ordem de mensagens e caminhos aleatórios controlados, coincidirem com o original;
- cada morte/falha conhecida tiver teste;
- parser e limite de inventário tiverem testes de borda;
- sequência e efeitos da aleatoriedade reproduzirem o original e puderem ser reproduzidos nos testes;
- abertura e telas principais tiverem comparação visual no emulador;
- F1–F4 e teclado textual funcionarem;
- cold start, reinício, desistência e vitória funcionarem;
- o artefato final iniciar numa configuração MSX1 limpa do openMSX;
- requisitos e comando exato de build estiverem documentados.

## 8. Edição MSX2 — abertura implementada, aventura pendente

A edição MSX2 foi autorizada em paralelo ao MSX1. A abertura atual está em
`projects/msx2`, com DOS2/COM, disco de 720 KB, mapper principal ≥512 KB e
128 KB de VRAM. Usa SCREEN 5 (256×212, 16 cores), dez cards, legendas,
transições, blecaute e decisão S/N. A música PSG+FM e a aventura não foram
integradas. As subseções abaixo orientam as fases futuras do runtime;
recursos do SuperNova não são automaticamente requisitos implementados.
Não usar essa edição para alterar a reprodução fiel do MSX1.

### 8.1 Objetivo

Entregar uma apresentação mais rica da mesma aventura, tomando SuperNova como referência de engenharia para texto em bitmap, fontes, cores, janelas, scroll e entrada, sem copiar sua história nem pressupor que todo o runtime seja reutilizável diretamente.

### 8.2 Baseline técnico de referência

SuperNova demonstra:

- SCREEN 7, 512×212 e 16 cores;
- fonte de software 6×8, 80×25 lógico;
- margem, cabeçalho e janela rolável;
- texto colorido e blinking por redraw;
- acesso direto/otimizado à VRAM;
- atalhos de teclado traduzidos em comandos;
- PSG em tempo de execução;
- save/restore em arquivo;
- programa residente, overlays de 16 KB e pools de texto compactados;
- build host e fuzzing.

Esses itens são opções comprovadas no projeto de referência, não requisitos automáticos de San Quentin.

### 8.3 Requisitos da edição

- Reutilizar o mesmo motor, dados lógicos e suíte comportamental da edição MSX1.
- Toda diferença funcional deliberada deve estar documentada e ter teste próprio.
- Implementar backend visual separado.
- Definir mockups e orçamento de VRAM/RAM antes de produzir assets.
- Manter legibilidade do português e input responsivo.
- A abertura usa SCREEN 5; avaliar separadamente o layout da futura aventura.
- Usar overlays, mapper e pools apenas se o tamanho justificar.
- Se houver save, definir formato versionado e política de compatibilidade.

### 8.4 Critério de aceitação

Além de passar toda a suíte funcional da edição MSX1:

- layout aprovado deve renderizar sem corrupção e com wrapping consistente;
- scroll, cores, cursor e blinking escolhidos devem funcionar em emulador e hardware real;
- atalhos não podem alterar comandos de forma inesperada;
- carregamento de recursos deve tratar falhas de arquivo de modo explícito;
- memória residente, overlays e arquivos devem caber nos limites documentados;
- áudio não pode bloquear ou corromper a entrada;
- save/restore, se presente, deve sobreviver a cold start e rejeitar dados inválidos;
- a distribuição deve conter todos e somente os arquivos necessários.

## 9. Toolchain e build

### 9.1 Componentes disponíveis

- Node: `MSXgl/tools/build/Node/node.exe`;
- SDCC e ferramentas Z80: `MSXgl/tools/sdcc/`;
- scripts MSXgl: `MSXgl/engine/script/js/`;
- conversores MSXtk/MSXhex: `MSXgl/tools/MSXtk/`;
- criador de disco: `MSXgl/tools/build/msxtar/`;
- arquivos DOS: `MSXgl/tools/build/DOS/`.

No Windows, o MSXtk pode depender do Visual C++ Redistributable 2019.

### 9.2 Estrutura do projeto

Estrutura em uso:

```text
src/                   código compartilhado entre os projetos MSXgl
  sq_engine.h/.c       estado e despacho portáveis
  sq_font.h/.c         fonte latina compilada compartilhada
  sq_game.h/.c         interface textual e ciclo MSX
  sq_gfx2.h/.c         primitivas de SCREEN 2 e interpretador de DRAW
  sq_input.h/.c        espera e leitura textual pela matriz do PPI
  sq_intro.h/.c        apresentação em SCREEN 0 (BASIC 2370-2430)
  sq_parser.h/.c       parser portável (BASIC 1310-1390)
  sq_title.h/.c        tela de abertura (BASIC 2450-2910)
tests/
  test_engine.c        testes host de estado, ações e transições
  test_parser.c        testes host do parser e de prefixos
  run_engine_tests.bat compila e executa os testes do motor
  run_parser_tests.bat compila com warnings como erro e executa a suíte
projects/msx1/         edição MSX1
  build.bat            wrapper de build versionado
  project_config.js    configuração do projeto
  msxgl_config.h       configuração da engine (cópia do template)
  make_dsk.bat         pós-build: regera o disco de boot
  run.bat              abre o disco no openMSX
  main.c               ponto de entrada
  out/, emul/          artefatos, ignorados pelo Git
projects/msx2/         abertura MSX2/DOS2, SCREEN 5, aventura pendente
tools/release.js       numeração, build conjunto, pacote e publicação
version.json           estado compartilhado marco.compilação
build.bat              compila ambas as edições
release.bat            consulta, pacote e publicação
```

`ProjModules` aceita caminhos relativos fora do diretório do projeto, por isso `src/` é referenciado como `../../src/sq_gfx2`. Headers são incluídos por caminho relativo ao arquivo (`#include "../../src/sq_title.h"`).

### 9.3 Comando-base MSXgl

A partir de `projects/msx1/`:

```bat
build.bat
```

O wrapper chama `tools/release.js build msx1`, que reserva a próxima versão,
gera o header, muda para o diretório do projeto e executa internamente:

```bat
%MSXGL_PATH%\tools\build\Node\node.exe %MSXGL_PATH%\engine\script\js\build.js
```

O diretório corrente é significativo para o MSXgl: `ProjDir` é `process.cwd()`.
Os wrappers fazem essa troca automaticamente. Para as duas edições no mesmo
número, use `build.bat` da raiz. Invocar diretamente o script MSXgl ignora
a gestão de versões; não usar para releases.
As regras completas estão em [docs/versioning.md](docs/versioning.md).

Configurações centrais: `ProjName`, `ProjModules`, `LibModules`, `Machine`, `Target`, `ROMSize`, `RawFiles`, `DiskFiles`, `DiskSize`, `PostBuildScripts`, ISR e localização.

### 9.4 Targets

- MSX1: **`DOS1`**, programa `.COM` iniciado em 0100h. Decidido pelo mantenedor.
- MSX2: **`DOS2`**, programa `.COM`, disco de 720 KB.

### 9.5 Disco de boot MSX-DOS 1

Duas armadilhas foram encontradas e resolvidas:

1. **Tamanho.** O padrão do MSXgl é 720K (face dupla). Drives de MSX1 da época são de face única e não inicializam esse formato — a máquina cai no BASIC. `DiskSize = "360K"` resolve.
2. **Ordem dos arquivos.** O carregador de boot do MSX-DOS 1 só encontra o sistema quando `MSXDOS.SYS` é a **primeira** entrada do diretório raiz. O deploy do MSXgl grava sempre na ordem `autoexec.bat`, programa, `COMMAND.COM`, `MSXDOS.SYS`, o que impede o boot.

Como `MSXgl/` é árvore de referência e não deve ser alterada, `projects/msx1/make_dsk.bat` roda como `PostBuildScripts` e regera `emul/dsk/DOS1_quentin.dsk` com `msxtar` na ordem `MSXDOS.SYS COMMAND.COM autoexec.bat quentin.com`.

## 10. Plano de testes

### 10.1 Testes host

Criar um runner sem VDP/DOS capaz de:

- iniciar jogo com RNG controlado;
- enviar sequência de comandos;
- capturar mensagens e estado;
- comparar transcript normalizado;
- inspecionar local, inventário, flags e objetos;
- exercitar todas as condições sem depender de temporização humana.

Cobertura mínima:

- todos os verbos/sinônimos;
- movimentos válidos e paredes;
- pegar/deixar e inventário cheio;
- cada objeto e evento;
- todas as condições de morte;
- guarda em todas as ramificações;
- caminho de vitória;
- desistência e reinício;
- seeds/seqüências aleatórias limítrofes.

Suítes disponíveis, a partir de `tests/`:

```bat
run_parser_tests.bat
run_engine_tests.bat
```

Os scripts usam `gcc -std=c11 -Wall -Wextra -Werror`, gravam os executáveis temporários em `%TEMP%` e os removem após a execução.

### 10.2 Testes em MSX

- boot/início em configuração mínima;
- abertura, introdução e troca de modo;
- renderização de todos os caracteres portugueses;
- linha mais longa e wrapping;
- F1–F4, backspace, Enter e buffer máximo;
- vários ciclos de partida;
- áudio e silêncio, se implementados;
- leitura/escrita e erros de disco, se aplicáveis;
- screenshots de telas de referência.

#### Receita no openMSX

Máquina de referência da edição MSX1: **Sony HB-701FD** (MSX1 com drive de face única). Interativo:

```bat
run.bat
```

Automatizado, para capturar tela sem interação, crie um script Tcl e passe-o em `-script`:

```tcl
after time 75 { screenshot -raw -doublesize "saida.png" }
after time 78 { keymatrixdown 8 0x01 }
after time 79 { keymatrixup 8 0x01 }
after time 84 { exit }
```

```bat
openmsx -machine Sony_HB-701FD -diska emul\dsk\DOS1_quentin.dsk -script captura.tcl
```

Notas:

- `after time` usa tempo emulado; com `set throttle off` o renderizador pode salvar um quadro desatualizado, então prefira velocidade normal para capturas;
- `keymatrixdown 8 0x01` é a barra de espaço;
- com `DEBUG 1` o desenho da abertura leva cerca de 50 segundos emulados; com `DEBUG 0`, poucos segundos.

### 10.3 Evidências

Guardar no repositório apenas fixtures e screenshots aprovados que sejam úteis e legalmente permitidos. Logs temporários e builds não devem ser versionados. Cada release deve registrar:

- revisão do código;
- comando de build;
- hashes ou nomes dos artefatos;
- máquina/emulador testado;
- resultado da suíte host e checklist MSX.

## 11. Fases e critérios de saída

### Fase 0 — estudo — CONCLUÍDA

Saída: MSXgl, SuperNova e fontes originais estudados; documentos vivos criados.

### Fase 1 — engenharia reversa do BASIC — EM ANDAMENTO

Entregáveis:

- mapa completo;
- tabela de objetos e estados;
- tabela de parser/sinônimos;
- catálogo de mensagens;
- regras e ordem de avaliação;
- catálogo de aleatoriedade;
- caminhos de vitória e de todas as falhas;
- lista explícita de bugs/ambiguidades.

Saída: revisão cruzada com execução original e casos de teste definidos.

### Fase 2 — protótipo/toolchain MSX1 — CONCLUÍDA

Entregáveis:

- projeto mínimo compilável — `projects/msx1/`;
- artefato inicializável — `out/quentin.com` + `emul/dsk/DOS1_quentin.dsk`;
- experimento de `.dsk` — concluído, com as correções da seção 9.5;
- decisão documentada de target — `DOS1`.

Saída: build reproduzível em checkout limpo, validado no openMSX.

Pendente desta fase: medidas finais de RAM/dados só farão sentido com o núcleo do jogo presente.

### Fase 3 — núcleo e testes host — EM ANDAMENTO

Entregáveis: parser, modelo, motor, RNG injetável, dados iniciais e runner de transcript.

Progresso: parser, estado, objetos, mapa/saídas, ações de cavar/nadar/abrir e encontros com o guarda implementados e testados. A fonte de produção ainda é um LCG temporário, não o `RND(-TIME)` do BASIC; faltam regras e runner de transcript.

Saída: regras críticas e caminho de vitória passam no host.

### Fase 4 — edição MSX1 — EM ANDAMENTO

Entregáveis: backend MSX1, abertura, interface, teclado e distribuição.

Progresso: abertura, apresentação, entrada, parser, movimento e ações/guarda ligados. As novas sequências ainda precisam ser validadas no emulador contra o original.

Saída: todos os critérios da seção 7.4.

### Fase 5 — baseline fiel congelado

Entregáveis: release candidata MSX1, transcripts, screenshots, documentação e lista de divergências aceitas.

Saída: baseline validado contra o original, sem divergências intencionais.

### Fase 6 — design MSX2 (plataforma e abertura definidas)

Definido: DOS2/COM, mapper principal ≥512 KB, VRAM ≥128 KB, abertura SCREEN 5,
PSG+FM previstos. O orçamento/layout da aventura e do áudio continua pendente.

Saída: decisões aprovadas antes da implementação visual.

### Fase 7 — edição MSX2 (abertura entregue em 1.1)

Entregue: backend da abertura com dez cards, introdução integral, transições,
blecaute e decisão S/N. Pendente: aventura, bancos do mapper e áudio.

Saída: critérios da seção 8.4 e suíte comum verde.

### Fase 8 — validação/release

Pré-release 1.1: testes em emulador, screenshots atuais, manual, créditos,
licenças, metadados/SHA-256 e build/publicação reproduzíveis. Ainda faltam
hardware real, auditoria integral e os critérios de conclusão de cada edição.

## 12. Registro de decisões

| Data | Decisão | Motivo/autoridade |
|---|---|---|
| 2026-10-20 | Reproduzir exatamente o jogo definido pelo programa original em BASIC; não melhorar, corrigir nem mudar comportamento ou conteúdo. Não aceitar divergências intencionais; edição MSX2 aprimorada fica fora do escopo atual. Esta decisão substitui qualquer decisão anterior incompatível, incluindo duas edições nesta etapa, transliteração de textos e divergências aceitas na abertura. | Solicitação explícita do mantenedor nesta conversa |
| 2026-10-20 | Produzir duas versões: MSX1 fiel e depois MSX2 aprimorada | Solicitação do mantenedor nesta conversa |
| 2026-10-20 | Usar MSXgl e SuperNova como referências técnicas | Materiais adicionados pelo mantenedor |
| 2026-10-20 | Manter target/distribuição de ambas as versões em aberto | Faltam medição e protótipo; não confundir plano antigo do README com decisão final |
| 2026-10-20 | Compartilhar núcleo e separar backends | Evita divergência funcional entre as versões e facilita testes |
| 2026-10-20 | Usar ASCII de 7 bits em textos e comandos; remover acentos e trocar cedilha por C/c | Simplifica entrada e compatibilidade em MSX japoneses e europeus, por decisão do mantenedor |
| 2026-10-20 | Target da edição MSX1 é `DOS1` (`.COM` de MSX-DOS 1) | Solicitação do mantenedor |
| 2026-10-20 | Escrever primitivas próprias de SCREEN 2 em vez de usar `draw.h` do MSXgl | `draw.h` exige `MSX_VERSION >= MSX_2` e comandos do V9938; é inutilizável em MSX1 |
| 2026-10-20 | Implementar um interpretador das cadeias de `DRAW` do BASIC | Permite colar as cadeias originais literalmente, com máxima fidelidade e mínimo risco de erro de transcrição |
| 2026-10-20 | Arcos por tabela de senos de 1/256 de volta, com aspecto racional `num/den` | Evita ponto flutuante no Z80; aspecto fracionário dá `ry` errado em ponto fixo 8.8 (0.7×10 resultaria em 6) |
| 2026-10-20 | Campo de estrelas com LCG de semente fixa, sem reproduzir `RND` do MSX-BASIC | O original é determinístico, mas replicar o gerador bit a bit não compensa; divergência aceita e documentada |
| 2026-10-20 | Chave `DEBUG` em `src/sq_gfx2.h`, entregue em `1` | Solicitação do mantenedor: `1` desenha traço a traço com vídeo ligado, `0` reproduz DISSCR/ENASCR do original |
| 2026-10-20 | Disco de teste de 360K com `MSXDOS.SYS` na primeira entrada, via `PostBuildScripts` | Requisito do boot do MSX-DOS 1 em drives de face única; `MSXgl/` não pode ser alterada |
| 2026-10-20 | Ler o teclado pelo PPI (`Keyboard_Read`), não pela BIOS (`SNSMAT`) | A chamada inter-slot não funcionou sob MSX-DOS no teste; a leitura direta funciona |
| 2026-10-20 | Usar a fonte latina compilada também em SCREEN 0 | Sob MSX-DOS, a página 0 não oferece acesso direto seguro à fonte da Main-ROM; a cópia compilada já usada na abertura é determinística |
| 2026-10-20 | Atualizar as variáveis de cor da BIOS ao entrar na apresentação | `BIOS_Exit` usa rotinas da BIOS; sem sincronização, o prompt do DOS voltava com cores residuais azul/ciano |
| 2026-10-20 | Editor textual lê a matriz diretamente e normaliza letras para maiúsculas | Mantém a entrada independente da BIOS sob MSX-DOS e já produz o formato esperado pelo parser BASIC |
| 2026-10-20 | F1–F4 inserem `NORTE`, `SUL`, `LESTE`, `OESTE` e submetem a linha | Reproduz funcionalmente as macros das linhas BASIC 50–80 sem depender da barra de teclas da BIOS |
| 2026-10-20 | Parser não depende de MSXgl nem do backend de vídeo/teclado | Permite compilar a mesma transcrição no SDCC e no host, com testes rápidos e determinísticos |
| 2026-10-20 | Preservar ordem da tabela e regra “última correspondência vence” | É o comportamento literal do `FOR K=1 TO 21` sem saída antecipada nas linhas BASIC 1360–1380 |
| 2026-10-20 | Estado e despacho também ficam em módulo portável, separado da interface MSX | Permite testar ordem de condições, inventário e transições sem VDP ou temporização humana |
| 2026-10-20 | Aguardar apenas a liberação da última tecla reconhecida | A espera pela matriz inteira livre perdia letras quando duas teclas se sobrepunham durante digitação rápida |
| 2026-10-21 | Autorizar a edição MSX2 em paralelo: DOS2, mapper principal ≥512 KB, PSG+FM previstos; iniciar pela abertura SCREEN 5. Substitui o adiamento do MSX2, sem relaxar a fidelidade do MSX1. | Solicitação explícita do mantenedor |
| 2026-10-21 | Abertura MSX2 com dez cards, texto narrativo integral do BASIC, blecaute e pergunta S/N; S informa que a aventura está em desenvolvimento e N reinicia. | Solicitação do mantenedor e confirmação do fluxo S/N |
| 2026-10-21 | Versão compartilhada marco.compilação a partir de 1.1 / Danny Trejo; build conjunto conta uma compilação; novo marco explícito reinicia em .1; subtítulo por build. | Regra solicitada e confirmada pelo mantenedor |
| 2026-10-21 | Publicar pré-release GitHub com commit, tag, binários de ambas as edições, screenshots e documentação; wrappers usam DEBUG=0 por padrão. | Confirmação do mantenedor; não anunciar fases ainda incompletas como concluídas |

Adicionar novas decisões, sem reescrever retroativamente as anteriores. Se uma decisão mudar, adicionar nova linha declarando que substitui a anterior.

## 13. Questões abertas

- Save fará parte da edição MSX1 ou nenhuma?
- Qual requisito mínimo final de RAM/VRAM para MSX2?
- Qual modo VDP e layout serão aprovados para MSX2?
- Haverá imagens de locais, sprites, música ou apenas texto/efeitos?
- Joystick será suportado?
- Qual licença se aplica aos assets e trechos adaptados das referências?
- Como será validado hardware real?

Resolver uma questão por vez quando ela bloquear a fase corrente; registrar a resposta no histórico de decisões.

## 14. Notas e riscos

- A árvore `MSXgl/` está não rastreada no estado observado; confirmar estratégia de versionamento/submódulo antes de depender dela em CI.
- `resource/supernova/` também está não rastreado no estado observado.
- `basic/quentin.asc` é uma cópia de trabalho transliterada e, portanto, não preserva literalmente todos os bytes/textos do BASIC; não usar essa transliteração como justificativa para mudar a saída do jogo.
- `basic/quentin.asc` foi transliterado byte a byte da tabela MSX para ASCII em 2026-10-20; manter o arquivo estritamente em 7 bits, preservando CRLF e o marcador final `0x1A`.
- SuperNova requer MSX2, 128 KB de VRAM, mapper, DOS2 e overlays; isso não é um baseline adequado para MSX1.
- `VDP_SetModeGraphic2()` do MSXgl programa apenas os registradores; a tabela de nomes **precisa** ser preenchida manualmente com 0..255 repetidos três vezes, senão o SCREEN 2 não se comporta como bitmap.
- Em SCREEN 2, pré-encher toda a tabela de cores com uma única combinação elimina o conflito de atributo e permite desenhar acendendo apenas bits de padrão. Isso só vale enquanto a imagem for monocromática.
- `DEFINT` nas coordenadas positivas das estrelas **trunca**, conforme medição no MSX-BASIC 1.0: os 91 pares correspondem a `floor(256*RND(1))` e `floor(70*RND(1))`. A anotação anterior sobre arredondamento estava incorreta.
- Overlays e compressão aumentam complexidade; só adotar mediante necessidade medida.
- O runtime de SuperNova tem funcionalidades ainda não validadas em hardware; reutilização exige testes próprios.
- Nada foi validado em hardware real até agora, apenas no openMSX.
- Trocas de modo feitas diretamente pelo VDP não atualizam `FORCLR`, `BAKCLR` e `BDRCLR`; antes de devolver o controle ao DOS, manter essas variáveis da BIOS coerentes com a tela.
- `resource/SanQuentin.dsk` tem 720K e não pode ser lido pelo drive de face única do `Sony_HB-701FD`; o baseline original foi executado no `Philips_NMS_8250`, com `RUN "AUTOEXEC.BAS"` explícito.
- As posições iniciais e a redistribuição após confisco já usam `RND(-TIME)`. O callback do motor recebe a escala desejada, evitando reduzir o resultado original a uma amostra de 16 bits.
- As descrições/saídas das salas 1–21 e 24 estão no backend C; a fuga completa foi executada na conversão, mas a comparação integral de salas e finais contra o disco original segue pendente.
- A ordem lógica dos sorteios é preservada. Não há emulação ciclo a ciclo da execução do BASIC; comparar sorteios com os mesmos valores de `TIME`, não pelo tempo humano entre comandos.

## 15. Diário de progresso

### 2026-10-20

- Estudados MSXgl e SuperNova.
- Lidos README, artigo e listagem BASIC.
- Criados `OUTLINE.md` e `SPEC.md`.
- Removidos 153 caracteres acentuados/cedilhas de `basic/quentin.asc`, sem alterar seu tamanho, CRLF ou marcador final.
- Nenhum código ou build da recriação produzido.
- Próxima ação: iniciar a Fase 1 pela tabela completa de salas e transições, validada contra o BASIC.

### 2026-10-20 (continuação) — tela de abertura MSX1

- Objetivo da sessão: reproduzir o desenho da prisão das linhas BASIC 2450–2910 em C, como `.COM` de MSX-DOS 1.
- Alterações realizadas:
  - criado `projects/msx1/` (build.bat, project_config.js, msxgl_config.h, main.c, make_dsk.bat, run.bat);
  - criado `src/sq_gfx2.h/.c` com primitivas de SCREEN 2 e interpretador de `DRAW`;
  - criado `src/sq_title.h/.c` com a transcrição fiel da abertura;
  - criado `.gitignore` para `projects/*/out/` e `projects/*/emul/`.
- Comandos validados: `build.bat` em `projects/msx1/`; `openmsx -machine Sony_HB-701FD -diska emul\dsk\DOS1_quentin.dsk`.
- Testes e resultados:
  - build limpo, `quentin.com` com 8479 bytes (com `DEBUG 1`) e 8310 bytes (com `DEBUG 0`);
  - com `DEBUG 1`, a imagem é construída traço a traço com o vídeo ligado;
  - com `DEBUG 0`, a tela fica preta durante o traçado e a imagem aparece pronta;
  - a barra de espaço encerra e devolve o prompt `A>` do MSX-DOS;
  - resultado visualmente equivalente a `images/SanQuentin-00.png`, salvo em `images/SanQuentin-MSX1-00.png`.
- Decisões: ver as linhas de 2026-10-20 na seção 12 referentes a target, primitivas, `DRAW`, arcos, estrelas, `DEBUG`, disco e teclado.
- Divergência aceita: posições das estrelas diferem do original.
- Próxima ação: texto de apresentação das linhas BASIC 2370–2430.

### 2026-10-20 (continuação) — apresentação MSX1

- Objetivo da sessão: reproduzir as linhas BASIC 2370–2430 em SCREEN 0 e encadeá-las após a abertura.
- Alterações realizadas:
  - criado `src/sq_intro.h/.c` com o texto original e wrapping automático de 40 colunas;
  - criado `src/sq_input.h/.c`, extraindo a espera de tecla da abertura para uso compartilhado;
  - criado `src/sq_font.h` para compartilhar uma única instância da fonte latina compilada;
  - adicionado o módulo `print` do MSXgl e encadeada a apresentação em `main.c`;
  - sincronizadas as cores da BIOS com branco sobre preto antes do retorno ao DOS.
- Comando validado: `build.bat` em `projects/msx1/`.
- Testes e resultados:
  - build limpo, `quentin.com` com 13065 bytes e disco de 360K regenerado;
  - no `Sony_HB-701FD` do openMSX, a primeira barra de espaço troca da abertura para a apresentação;
  - texto, linhas em branco, `TAB(8)` e wrapping de 40 colunas conferidos por captura;
  - a segunda barra de espaço devolve o prompt `A>` em branco sobre preto;
  - captura aprovada salva em `images/SanQuentin-MSX1-01.png`.
- Bloqueios: nenhum; hardware real ainda não testado.
- Próxima ação exata: especificar as tabelas das linhas 40–410 e implementar a primeira tela jogável das linhas 430–590.

### 2026-10-20 (continuação) — primeira tela jogável

- Objetivo da sessão: modelar as linhas BASIC 40–410 e reproduzir a cela inicial das linhas 430–590.
- Alterações realizadas:
  - criado `src/sq_game.h/.c` com enum de 13 ações, 21 termos, 14 objetos e estado mutável;
  - inicializadas posições fixas e o trio aleatório `CANIVETE`/`LANTERNA`/`CHAVE`;
  - ampliado `src/sq_input.*` com leitura de A–Z, espaço, backspace, Enter e F1–F4;
  - implementados cela, mensagem `ESTA PRESO.`, serra, prompt, cursor sólido e barra de direções.
- Baseline original:
  - o disco tem 720K e não é legível no drive do MSX1 de referência;
  - executado no `Philips_NMS_8250` com `RUN "AUTOEXEC.BAS"` para capturar a primeira tela;
  - conteúdo e distribuição vertical comparados visualmente.
- Comandos validados: `build.bat`; openMSX com o disco MSX1 de 360K.
- Testes e resultados:
  - rebuild limpo, sem warnings, `quentin.com` com 14714 bytes;
  - sequência abertura → apresentação → cela validada no `Sony_HB-701FD`;
  - edição matricial validada com `ABC`, backspace para `AB`, Enter e macro F1;
  - captura aprovada salva em `images/SanQuentin-MSX1-02.png`.
- Limitações explícitas: Enter retorna ao DOS; RNG inicial temporário baseado em `JIFFY`; parser ainda ausente.
- Bloqueios: nenhum; hardware real ainda não testado.
- Próxima ação exata: implementar e testar o parser das linhas 1310–1390 e o primeiro ciclo de ações na cela.

### 2026-10-20 (continuação) — parser

- Objetivo da sessão: transcrever e testar as linhas BASIC 1310–1390.
- Alterações realizadas:
  - criado `src/sq_parser.h/.c`, sem dependência de MSXgl;
  - movida a tabela de 21 termos de `sq_game.c` para o módulo do parser;
  - conectado `Game_RunFirstScreen` ao parser, armazenando ação e inicial no estado;
  - criados `tests/test_parser.c` e `tests/run_parser_tests.bat`.
- Fatos medidos:
  - `INSTR("CAVAR","")` retorna `1` no MSX-BASIC 1.0 do `Canon_V-20`;
  - prefixos ambíguos são substituídos pelas correspondências posteriores da tabela.
- Testes e resultados:
  - suíte host passa com `gcc -std=c11 -Wall -Wextra -Werror`;
  - cobertos os 21 termos, divisão no primeiro espaço, vazio, minúsculas, ambiguidades, espaços extras, desconhecidos e prefixos de objetos;
  - build SDCC sem warnings, `quentin.com` com 14995 bytes e disco de 360K regenerado.
- Limitações explícitas: despacho ainda ausente; Enter retorna ao DOS após armazenar o resultado.
- Bloqueios: nenhum.
- Próxima ação exata: implementar o despacho e os testes das ações possíveis na cela.

### 2026-10-20 (continuação) — despacho de ações

- Objetivo da sessão: conectar o parser ao primeiro ciclo funcional da aventura.
- Alterações realizadas:
  - criado `src/sq_engine.h/.c` com estado, objetos e despacho portáveis;
  - implementadas respostas e transições para as 13 classes de ação no contexto disponível;
  - criado `tests/test_engine.c` e `tests/run_engine_tests.bat`;
  - transformado `sq_game.c` em interface/ciclo MSX, com scroll que preserva a barra F1–F4;
  - melhorada a leitura matricial para não perder teclas sobrepostas;
  - adicionadas apresentação e saídas do corredor.
- Testes host:
  - `parser tests: OK`;
  - `engine tests: OK`;
  - cobertos estado inicial, inventário, prefixos de objetos, limite de três itens, pegar/deixar, serrar, movimento, luz, ajuda, erros e desistência.
- Testes no openMSX:
  - validada a sequência `PEGAR SERRA` → `LISTAR` → `SERRAR` → F3/`LESTE`;
  - corredor exibido com LESTE/SUL/OESTE;
  - `DESISTIR` mostra `QUE VERGONHA!` e retorna ao prompt do DOS;
  - captura aprovada salva em `images/SanQuentin-MSX1-03.png`.
- Build: SDCC sem warnings, `quentin.com` com 17404 bytes e disco de 360K regenerado.
- Limitações explícitas: somente cela e corredor apresentados; guarda aleatório e RNG fiel ainda pendentes.
- Bloqueios: nenhum.
- Próxima ação exata: transcrever e testar a tabela completa de salas, saídas e condições.

### 2026-10-20 (continuação) — mapa e movimento

- Objetivo: avançar a conversão além do corredor, transcrevendo as salas e saídas do BASIC.
- Alterações:
  - `sq_engine` agora descreve as salas 1–21 e 24 e calcula suas saídas conforme as linhas BASIC 1690–2350;
  - implementadas as condições de saída do túnel (colher e buraco) e do necrotério (lanterna carregada e acesa);
  - preservados os índices sem rotina 22/23 e a saída `E` não atribuída na rotina do portão (linha 2350);
  - movimento usa as saídas calculadas, e a tela MSX imprime as descrições e direções das salas implementadas;
  - as descrições das salas 14 e 24 mantêm o `PRINT ...;` do BASIC, sem quebra de linha automática.
- Testes: `run_engine_tests.bat` e `run_parser_tests.bat` passam; testes do motor cobrem saídas das salas, transições, parede, condições do túnel/necrotério e os casos 22–24.
- Build: `projects/msx1/build.bat` concluiu e recriou o `.COM` e o disco de 360K, sem warnings observados.
- Limitação: nenhuma rota além da cela-corredor foi validada no openMSX nesta etapa; ações específicas e o encontro aleatório com o guarda seguem incompletos.
- Próxima ação exata: implementar e testar `CAVAR`, `NADAR`, `ABRIR` e as regras do guarda diretamente a partir das linhas BASIC.

### 2026-10-20 (continuação) — ações de sala e guarda

- Objetivo: converter as condições de cavar, nadar, abrir o portão e os encontros com o guarda.
- Alterações:
  - `CAVAR`: posição, estado do buraco, colher, escada e morte por entalamento;
  - `NADAR`: posição no rio, morte com serra, coleta da moeda sem incrementar `MA` e mensagem de roupa molhada;
  - `ABRIR`: portão, chave, vitória e fuga com osso seguida dos cães;
  - morte no pátio antes do despacho; encontro do guarda antes de qualquer ação exceto `MATAR`/`ATIRAR`;
  - prisão sem itens, escape por uniforme, confisco aleatório e reposicionamento dos itens móveis após confisco da chave;
  - matar guarda com canivete; finais perguntam por nova fuga, e `DESISTIR` encerra sem essa pergunta.
- Testes: suítes host do motor e parser passam; novos casos cobrem as condições e efeitos dessas ações e do guarda.
- Build: `projects/msx1/build.bat` concluiu sem warnings observados; `.COM` de 21707 bytes e disco de 360K recriado.
- Limitações: RNG de produção ainda é LCG baseado em `JIFFY`, não o `RND(-TIME)` do BASIC; os novos fluxos ainda não foram validados no openMSX contra o disco original.
- Próxima ação exata: reproduzir o RNG BASIC e validar estes ramos no openMSX.

### 2026-10-21 — fluxo BASIC e RNG original

- Corrigidos `AJUDAR`, os retornos de `MATAR` a 440 sem CLS, o reset condicional
  de `TA`, a redistribuição após imprimir o confisco da chave e os saltos a 490
  sem reexecutar a rotina da sala. Ajustadas as quebras antes da pergunta de reinício.
- Motor passa a emitir `Engine_Response.Flow`; `Engine_Resume` executa os
  sorteios e a rotina da sala após a apresentação da resposta.
- Implementado RNG decimal em base 100, sem ponto flutuante nem cópia de ROM.
  Removidos os LCGs de produção e da abertura.
- Suítes host: motor, parser, RNG e resolvedor passam; 3.030 fugas e checksum
  de 65.637 resultados da ROM. Todas as sementes de TIME cobertas.
- openMSX: `MATAR` preserva a mensagem e acrescenta a sala; `AJUDAR` limpa e
  redesenha. Conferidos 187 estados/escalas do executável SDCC, incluindo as
  182 chamadas das estrelas. Fuga completa com RNG original também executada.
- Build MSX1 e disco de boot de 360K regenerados.
- Compilação `DEBUG=0` validada no openMSX: `RESOLVER` desconhecido e
  `DESISTIR` retorna ao DOS com buffer BIOS vazio. Entrega recompilada com `DEBUG=1`.
- Próximo passo: matriz comparativa de mensagens, finais, edição de entrada,
  largura textual e glifos contra o disco original. Não marcar a versão 1:1
  como concluída apenas porque a fuga e o RNG passaram.

### 2026-10-21 — abertura MSX2 e primeiro pré-release compartilhado

- Edição MSX2 criada sem modificar o comportamento da aventura MSX1:
  mapper principal ≥512 KB verificado via DOS2, SCREEN 5 e perfil PSG/FM-PAC.
- Dez cards com história real, narrativa integral do BASIC e pergunta S/N;
  casa de força, cores noturnas e blecaute mantêm legendas legíveis.
- Teste Node compara o texto narrativo integral com as linhas 2380–2400,
  desconsiderando somente espaços. Teste openMSX verifica dez cards,
  VRAM frente/fundo, pausa, avanço, blecaute, escolhas e retorno ao DOS.
- Pré-release **1.1 / Danny Trejo**, subtítulo
  **Abertura MSX2 completa e baseline jogável MSX1**.
- Ambas as edições compiladas em conjunto com DEBUG=0. Capturas atuais,
  metadados e checksums foram gerados a partir desses executáveis.
- MSX1 validado novamente no Sony HB-701FD: abertura, introdução, cela,
  pegar/listar serra, serrar grade e sair ao corredor. Suítes host passaram.
- `tools/release.js` automatiza builds, numeração, pacote, tag e publicação.
  Primeiro número sobe por integração/fim de fase explicitamente declarado;
  segundo sobe a cada build bem-sucedido. Build conjunto conta uma vez.
- Documentação de release em `docs/releases/1.1.md` e fluxo em
  `docs/versioning.md`. Não anunciar equivalência integral MSX1 nem
  aventura/música MSX2 como concluídas.

### Modelo para próximas entradas

```text
### AAAA-MM-DD
- Objetivo da sessão:
- Alterações realizadas:
- Arquivos/artefatos:
- Comandos validados:
- Testes e resultados:
- Decisões:
- Bloqueios:
- Próxima ação exata:
```
