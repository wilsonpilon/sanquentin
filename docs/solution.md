# San Quentin — roteiro de fuga

> **Spoilers:** este roteiro revela itens, caminhos e condições importantes para escapar.

Para acompanhar as salas e os objetos, consulte o [mapa do jogo](mapa.md).

Roteiro de uma possível solução para *San Quentin*, jogo de aventura para MSX.
Como a posição inicial do **canivete**, da **lanterna** e da **chave** varia a
cada partida, não há uma sequência única de comandos que funcione em todos os
jogos.

*Walkthrough original por Alex Dijkstra. Tradução e organização desta versão
em Markdown.*

## Atalho de depuração na conversão em C

Com `DEBUG=1`, digite **`RESOLVER`** no prompt. O jogo mostra o próximo comando;
pressione **Enter** para executá-lo ou **Backspace** para cancelar.
A assistência consulta as posições reais dos objetos a cada passo, inclusive
depois de um encontro com o guarda. Ela usa os comandos normais e não altera
as regras. Se não conseguir planejar a continuação, informa o motivo.
Esse comando não existe no BASIC original nem na compilação com `DEBUG=0`.

## Objetos

| Objeto | Como pode ajudar — ou atrapalhar |
| --- | --- |
| **Colher** | Necessária para cavar o túnel secreto. |
| **Lençol** | Não é necessário para esta solução. |
| **Escada** | Não é necessária. Se estiver carregando-a ao cavar o túnel, você ficará entalado e morrerá. |
| **Livro** | Não é necessário para esta solução. |
| **Crucifixo** | Não é necessário para esta solução. |
| **Corda** | Não é necessária para esta solução. |
| **Osso** | Evite levá-lo até a saída: os cães farejarão você. |
| **Uniforme** | Protege contra o guarda. Pegue-o quando passar pela lavanderia. |
| **Moeda** | Pode ser encontrada nadando no rio. Não é necessária para escapar; não nade carregando a serra. |
| **Canivete** | Permite matar o guarda, mas não é necessário se você estiver com o uniforme. |
| **Lanterna** | Necessária para enxergar as saídas do necrotério. Não a deixe acesa ao atravessar o pátio. |
| **Chave** | Necessária para abrir o portão de saída. |
| **Serra** | Use-a para serrar a grade da cela. Depois, deixe-a para não correr o risco de se afogar no rio. |

## Roteiro

### 1. Saia da cela e pegue o uniforme

Na cela, pegue a serra, serre a grade e siga para leste. Leve a serra até a
lavanderia: ela pode ser confiscada se o guarda aparecer antes de você pegar
o uniforme. Depois de pegar o uniforme, deixe a serra:

```text
PEGAR SERRA
SERRAR
LESTE
SUL
SUL
SUL
PEGAR UNIFORME
DEIXAR SERRA
NORTE
```

O uniforme ajuda caso você encontre o guarda durante o restante da fuga.

### 2. Pegue a colher e cave o túnel

As saídas adicionais do túnel secreto só ficam visíveis depois que você cava
com a colher. Partindo do salão de visitas, onde terminou a etapa anterior,
passe pelo corredor até o refeitório,
pegue a colher e siga para o túnel:

```text
NORTE
NORTE
LESTE
PEGAR COLHER
LESTE
SUL
LESTE
CAVAR
```

**Importante:** não carregue a escada quando usar `CAVAR`. Se ainda a estiver
levando, deixe-a antes.

### 3. Encontre a lanterna e a chave

As posições desses dois objetos são aleatórias. Explore as salas e pegue-os
quando encontrá-los:

```text
PEGAR LANTERNA
PEGAR CHAVE
```

O inventário comporta apenas três objetos. Preserve o **uniforme** enquanto
possível. Depois de cavar, você pode deixar a **colher** no local da chave
para abrir espaço e terminar com **uniforme, lanterna e chave**. Nesse caso,
as saídas extras do túnel deixam de aparecer; use a entrada alternativa do
necrotério pela enfermaria, descrita abaixo.

A chave pode estar além do necrotério. Se necessário, atravesse primeiro com a
lanterna, encontre a chave e só então vá ao portão. Não leve o osso.

### 4. Atravesse o necrotério e abra o portão

Se ainda carrega a colher, volte ao túnel e use a passagem cavada. Acenda a
lanterna para revelar as saídas do necrotério e siga até o portão:

```text
LESTE
ACENDER LANTERNA
SUL
SUL
ABRIR
```

**Se deixou a colher:** do túnel, vá ao quarto escuro ao norte, depois à
enfermaria a leste e entre no necrotério pelo sul:

```text
NORTE
LESTE
SUL
ACENDER LANTERNA
SUL
SUL
ABRIR
```

Essas sequências partem do túnel; ajuste o retorno a ele conforme o local em
que encontrou a chave. Se passar pelo pátio no caminho, apague a lanterna antes.

Com a chave e sem o osso, você consegue escapar.

## Dicas rápidas

- `LISTAR` mostra os objetos que você está carregando.
- Use `NORTE`, `SUL`, `LESTE` e `OESTE` para se mover; também é possível usar
  **F1–F4**, respectivamente.
- Se a lanterna estiver acesa ao atravessar o pátio, os holofotes denunciarão
  sua presença.
- A moeda, o canivete e os demais objetos não são necessários para esta rota.
