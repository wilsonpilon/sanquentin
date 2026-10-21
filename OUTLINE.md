# San Quentin — Outline do projeto

> Documento de contexto e roteiro. Deve ser lido junto com [`SPEC.md`](SPEC.md).  
> Última atualização: 21 de outubro de 2026.

## 1. Origem desta etapa

O repositório preserva **San Quentin**, aventura textual de Ricardo Augusto Mata Costa publicada na revista *Micro Sistemas*. A listagem original em MSX-BASIC 1 já foi digitada e executa; ela é a referência de comportamento da recriação.

O requisito do MSX1 é reproduzir **exatamente o jogo do fonte original em
MSX-BASIC 1**, sem melhorias ou alterações deliberadas. Em paralelo, a edição
MSX2 foi autorizada e começou pela abertura ampliada. O pré-release
**1.1 / Danny Trejo** contém a aventura MSX1 jogável, ainda em auditoria,
e a abertura MSX2 com dez cards; a aventura MSX2 ainda não foi integrada.

Como referência técnica, foram estudados:

- `MSXgl/`: biblioteca, toolchain, targets, compilação, disco e recursos;
- `resource/supernova/`: port de uma aventura de PC para MSX2 feito com MSXgl;
- o material original de San Quentin.

O resultado desse estudo está consolidado aqui e em `SPEC.md`.

## 2. Fontes de verdade

Em caso de conflito, usar esta prioridade:

1. programa original `basic/QUENTIN.BAS`;
2. comportamento observado ao executar `resource/SanQuentin.dsk`, para confirmar semântica e resultados;
3. listagem de trabalho `basic/quentin.asc`;
4. publicação digitalizada `docs/SanQuentin.pdf`;
5. instruções transcritas em `ARTIGO.MD`;
6. decisões vigentes em `SPEC.md`;
7. `resource/supernova/` apenas como referência de engenharia e apresentação, nunca como fonte das regras de San Quentin;
8. `MSXgl/` como referência da API e do build na revisão presente no repositório.

Em caso de aparente divergência entre o fonte BASIC, sua listagem legível e a execução, registrar e investigar antes de implementar. Preservar o comportamento original: não corrigir bugs nem aceitar diferenças deliberadas. Detalhes dependentes da execução no MSX-BASIC devem ser confirmados no disco original.

## 3. O que foi aprendido

### 3.1 Jogo original

- Adventure em português, controlado por comandos de texto.
- Protagonista: Scarp Lantra; objetivo: escapar da penitenciária durante um blecaute.
- Tela inicial gráfica em SCREEN 2, seguida de introdução em SCREEN 0.
- Área de jogo em texto com largura de 39 colunas.
- Direções: `NORTE`, `SUL`, `LESTE`, `OESTE`, abreviáveis e associadas a F1–F4.
- Ações reconhecidas: `PEGAR`/sinônimos, `DEIXAR`/sinônimos, `MATAR`/`ATIRAR`, `CAVAR`, `ABRIR`, `SERRAR`, `NADAR`, `ACENDER`, `APAGAR`, `DESISTIR`, `LISTAR` e `AJUDAR`.
- Parser divide a entrada no primeiro espaço e aceita prefixos devido ao uso de `INSTR`.
- Inventário limitado a três objetos.
- Há 14 objetos, encontros aleatórios com guarda, itens posicionados aleatoriamente e condições de vitória/morte ligadas ao estado e inventário.
- A lógica usa posições numeradas em uma malha com deslocamentos de 1 (leste/oeste) e 6 (norte/sul); os números 22 e 23 não são salas jogáveis e 24 é a saída.
- A fidelidade completa ainda requer uma matriz de comportamento derivada linha a linha e testes no jogo original.

### 3.2 MSXgl

- Biblioteca C para MSX com SDCC e partes críticas em assembler.
- A árvore inclui Node.js, SDCC, MSXtk/MSXhex, `msxtar`, arquivos DOS e exemplos; não é necessário instalar outra toolchain antes de tentar o build fornecido.
- Um projeto é configurado principalmente por `project_config.js` e compilado, no diretório do projeto, por `build.bat`.
- O build usa o diretório corrente como raiz do projeto e escreve intermediários em `out/`.
- Targets disponíveis incluem binário BASIC/disco/fita, COM para DOS0/DOS1/DOS2, ROMs simples, ROMs mapeadas, binário RAW e biblioteca.
- `Machine = "1"` seleciona MSX1; `"2"`, MSX2; `"12"`, código comum MSX1/MSX2, desde que não use recursos exclusivos.
- MSX1 e MSX2 usam caminhos de impressão distintos nos templates: fonte textual em SCREEN 0 versus fonte bitmap em SCREEN 5.
- Há APIs/samples para VDP, impressão, teclado, joystick, sprites, PSG e outros chips de áudio, arquivos DOS, save, compressão e localização.
- O build possui `DiskFiles`, `DiskSize` (`360K`/`720K`), `PostBuildScripts` e `msxtar`. O fluxo `.dsk` foi validado; para MSX-DOS 1 é preciso usar 360K e regravar o disco com `MSXDOS.SYS` na primeira entrada do diretório (ver `SPEC.md`, seção 9.5).
- `draw.h` (Draw_Line, Draw_Circle) exige MSX2 e comandos do V9938; em MSX1 as primitivas gráficas têm de ser escritas à mão.
- `VDP_SetModeGraphic2()` só programa registradores: a tabela de nomes precisa ser preenchida manualmente para que SCREEN 2 funcione como bitmap.
- Em SCREEN 0 sob MSX-DOS, usar a cópia compilada da fonte latina; acessar diretamente a fonte da Main-ROM pela página 0 não é seguro.
- Ao trocar modos diretamente pelo VDP, sincronizar também as variáveis de cor da BIOS antes de retornar ao DOS.

### 3.3 SuperNova

- Port MSX2 textual em C/SDCC/MSXgl, destinado a MSX-DOS 2.
- Usa SCREEN 7 (512×212, 16 cores), fonte de software 6×8 e layout lógico de 80×25.
- Mantém cabeçalho de estado e janela principal com scroll, cores e blinking redesenhado.
- Separa lógica, parser, runtime, vocabulário e pools de texto.
- Usa programa residente mais cinco overlays de 16 KB no memory mapper.
- Textos externos são compactados em pools; ferramentas Node geram vocabulário, índices e fonte.
- Implementa entrada editável, múltiplos comandos, atalhos de função/cursor, PSG e save/restore em arquivo único.
- Possui build host e fuzzing, uma referência importante para testar lógica sem depender apenas do emulador.
- Não contém ilustrações narrativas nem uma versão MSX1.
- Alguns recursos são declarados não verificados pelo próprio projeto: hardware real, som, teclas especiais, morte/final e partidas longas.

## 4. Direção de arquitetura

O código atual deve manter responsabilidades separadas para permitir testes da conversão fiel:

- modelo de salas, saídas, objetos e estado;
- parser e tabela de verbos/sinônimos;
- regras de jogo;
- conteúdo textual;
- testes comportamentais no host;
- backend MSX1 separado das regras do jogo.

A arquitetura e validação do MSX1 existem para comparar a conversão com o
BASIC original. Não introduzir melhorias visuais ou funcionais nessa edição.
O backend MSX2 permanece separado, sem redefinir as regras do motor.

## 5. Fases

| Fase | Objetivo | Estado |
|---|---|---|
| 0 | Reunir fontes e estudar MSXgl/SuperNova | **Concluída** |
| 1 | Especificar integralmente o BASIC: mapa, parser, objetos, aleatoriedade, finais e textos | **Em andamento** — mapa/saídas transcritos; eventos e validação integral pendentes |
| 2 | Fazer protótipo mínimo de build MSX1 e validar target/geração de disco | **Concluída** |
| 3 | Implementar núcleo portável e testes host | **Em andamento** — parser, estado, mapa, ações de sala/guarda e suítes host |
| 4 | Implementar e validar San Quentin MSX1 fiel | **Em andamento** — aventura jogável e rotas validadas no emulador; auditoria integral pendente |
| 5 | Congelar baseline fiel da versão MSX1, sem divergências intencionais | Pendente |
| 6 | Definir a edição MSX2 | **Plataforma definida** — DOS2, mapper ≥512 KB, PSG+FM; abertura SCREEN 5 |
| 7 | Implementar a edição MSX2 | **Abertura concluída nesta fase** — dez cards, introdução integral, blecaute e S/N; aventura/áudio pendentes |
| 8 | Testes completos, hardware real, distribuição e documentação | **Pré-release 1.1** com capturas, build versionado e pacote; auditoria integral e hardware real pendentes |

Os critérios detalhados de cada fase estão em `SPEC.md`.

## 6. Decisões já tomadas

- A versão atual deve reproduzir integralmente o programa original em BASIC, sem melhorar ou mudar nada.
- A edição MSX2 foi autorizada em paralelo, sem alterar a fidelidade da edição MSX1.
- MSX2: DOS2/COM, disco de 720 KB, mapper principal ≥512 KB e VRAM ≥128 KB.
  Abertura em SCREEN 5; PSG+FM previstos, sem áudio implementado em 1.1.
- Versão compartilhada `marco.compilação`, iniciada em 1.1 / Danny Trejo.
  Builds incrementam o segundo número automaticamente; novo marco é explícito.
  Consulte [versioning.md](docs/versioning.md) e [notas 1.1](docs/releases/1.1.md).
- A implementação será em C com SDCC/MSXgl.
- O original BASIC é a referência funcional.
- Textos e comandos devem preservar a saída observável do original; não transliterar ou alterar conteúdo como simplificação.
- A edição MSX1 é distribuída como `.COM` de MSX-DOS 1 (`Target = "DOS1"`), com disco de teste de 360K.
- As primitivas de SCREEN 2 são próprias, incluindo um interpretador das cadeias de `DRAW` do BASIC, para que o desenho original seja colado literalmente.
- A apresentação usa o módulo `print` do MSXgl em SCREEN 0, com fonte latina compilada e wrapping de 40 colunas.
- A espera de tecla compartilhada lê o PPI diretamente e consome a tecla antes de avançar.
- A entrada textual lê A–Z, espaço, backspace, Enter e F1–F4 diretamente da matriz; letras entram em maiúsculas.
- Vocabulário e objetos das linhas BASIC 100–410 são tabelas C auditáveis em `src/sq_game.*`.
- O parser das linhas BASIC 1310–1390 é independente de MSXgl e preserva a regra de prefixos em que a última correspondência da tabela vence.
- `INSTR` com prefixo vazio foi medido no MSX-BASIC 1.0 e retorna 1; o caso está coberto pela suíte host.
- Estado, objetos e despacho estão em `src/sq_engine.*`, independentes do backend MSX e cobertos por testes host.
- A interface textual possui scroll próprio que preserva a barra F1–F4 na última linha.
- Wrapping e scroll são verificados antes de cada caractere, reservando a linha 23 exclusivamente à barra. A saída ao DOS aguarda soltar a tecla e limpa a fila BIOS.
- Por solicitação do usuário, `DEBUG=1` permite `RESOLVER`: Enter executa o comando mostrado; Backspace cancela. A assistência planeja sobre o estado atual, mas executa as mesmas regras do jogador.
- O auxiliar completou 3.030 fugas em testes host (1.500 usando o RNG original com TIME simulado) e fugas integrais no openMSX; isso não substitui a comparação de equivalência com o BASIC original.
- Corrigidos os retornos de `MATAR` e `AJUDAR`, o reset condicional do guarda na cela e o momento da redistribuição da chave confiscada. O motor distingue 370/430/440/450/490; a interface imprime antes de prosseguir ao sorteio.
- RNG decimal do MSX-BASIC em `src/sq_random.*`, compartilhado pela abertura e pelo jogo. Conferidos 65.637 valores da ROM, todas as sementes TIME 0–65535, os 91 pares das estrelas e estados/escalas do executável SDCC.
- O núcleo deve ser testável fora do MSX sempre que prático, sem alterar a semântica do BASIC.
- Fatos verificados, inferências e decisões futuras devem permanecer claramente separados na documentação.

## 7. Decisões ainda abertas

Não presumir respostas para estes itens:

- requisitos mínimos de RAM da versão MSX1;
- layout e orçamento de memória do futuro runtime da aventura MSX2;
- formato e política de save em cada versão;
- organização dos bancos do mapper e conteúdo da aventura MSX2;
- suporte a joystick;
- recursos visuais, imagens, áudio e música exclusivos do MSX2;
- glifos e codificação necessários para reproduzir o texto apresentado pelo original;
- formato dos dados de autoria e da compressão;
- nome dos executáveis e estrutura final das imagens de disco.

Cada decisão deve ser registrada na seção “Registro de decisões” de `SPEC.md` antes de alterar a arquitetura.

## 8. Próxima sessão recomendada

1. Ler `OUTLINE.md` e `SPEC.md` por inteiro.
2. Confirmar `git status` para não sobrescrever trabalho local.
3. Consultar `release.bat status`; usar `build.bat` da raiz para ambas as edições
   com o mesmo número e os launchers de cada projeto para executar.
4. Executar as suítes `run_random_tests.bat`, `run_engine_tests.bat`, `run_parser_tests.bat` e `run_solver_tests.bat`; manter o oráculo da ROM reproduzível por `tests/capture_random_oracle.tcl`.
5. Validar no openMSX as ações, finais, guarda/confisco e rotas de várias salas contra o disco original.
6. Continuar a conversão das regras restantes sem usar o comportamento parcial como especificação.

O RNG temporário e as posições aleatórias das estrelas foram substituídos e
verificados. Continuam pendentes as diferenças de textos/glifos, entrada e
apresentação, além da comparação integral de ramos contra o original.
O RNG coincide para os mesmos valores de TIME; a velocidade de execução C
não é idêntica à do interpretador BASIC.

## 9. Regra de manutenção

Ao terminar qualquer sessão futura:

- atualizar a data e o estado das fases;
- registrar arquivos/artefatos criados;
- anotar comandos de build/teste que realmente funcionaram;
- registrar decisões e sua justificativa;
- mover dúvidas resolvidas para o registro de decisões;
- deixar explícitos o próximo passo e eventuais bloqueios;
- nunca marcar uma fase como concluída sem evidência reproduzível.
