# San Quentin

**San Quentin** é um jogo de aventura em modo texto (*text adventure*), criado por **Ricardo Augusto Mata Costa**, escrito originalmente em **MSX-BASIC 1** e publicado na revista **Micro Sistemas** como uma listagem para digitação.

O jogador assume o papel de Scarp Lantra, um prisioneiro que pretende aproveitar um blecaute para escapar da penitenciária de San Quentin. A exploração e as ações são realizadas por comandos de texto: mover-se entre locais, examinar as possibilidades de fuga e usar os objetos encontrados fazem parte da aventura. O inventário tem capacidade limitada, e os objetos podem tanto ajudar quanto dificultar a fuga.

![Tela de abertura do jogo original San Quentin no MSX](images/SanQuentin-00.png)

## O programa original

O programa e o artigo que o apresenta saíram originalmente na revista **Micro Sistemas**. A versão em BASIC já foi digitada e está funcionando; ela serve como referência para a recriação.

- [Artigo original transcrito em Markdown](ARTIGO.MD): apresentação da história e das instruções do jogo, sem a propaganda nem a listagem em BASIC.
- [Digitalização da publicação original](docs/SanQuentin.pdf).
- [Programa em BASIC](basic/QUENTIN.BAS).
- [Listagem em formato de texto](basic/quentin.asc).
- [Imagem de disquete do jogo](resource/SanQuentin.dsk).

## Nova versão para MSX 2

Em **2026**, **Wilson "Barney" Pilon** está recriando o jogo para **MSX 2 ou superior**, com mais recursos, preservando a proposta de aventura em modo texto do original.

A nova versão será reescrita em **C**, usando **SDCC** e **MSXgl**, para execução sob **MSX-DOS 2**.

### Plataforma-alvo

- **Computador:** MSX 2 ou superior.
- **Memória RAM mínima:** 256 KB.
- **Sistema operacional:** MSX-DOS 2.

### Ferramentas e tecnologias

| Ferramenta / tecnologia | Uso no projeto |
| --- | --- |
| MSX-BASIC 1 | Linguagem da versão original, usada como referência para a recriação. |
| SDCC | Compilador C para a nova versão. |
| MSXgl | Biblioteca de desenvolvimento para MSX usada na nova versão. |
| MSX-DOS 2 | Ambiente de execução da nova versão. |
| openMSX | Emulação do MSX para execução e testes. |

## Créditos

- **Autor original:** Ricardo Augusto Mata Costa, criador de San Quentin para a revista Micro Sistemas.
- **Publicação original:** revista Micro Sistemas, onde foram publicados o artigo e a listagem do programa em MSX-BASIC 1.
- **Autor da nova versão:** Wilson "Barney" Pilon, 2026.
