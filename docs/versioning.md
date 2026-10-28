# Versões, builds e releases

## Convenção

Uma versão única identifica o pacote **MSX1 + MSX2**: **marco.compilação**.
Não é SemVer, não há terceiro número, e a primeira entrega é **1.1**.

- **Marco:** sobe quando um recurso é integrado ou uma fase é concluída.
  Essa decisão é explícita, pois uma compilação não determina se uma fase terminou.
- **Compilação:** sobe automaticamente após cada build bem-sucedido.
- Um build conjunto conta uma vez, apesar de compilar dois executáveis.
- Os atalhos de cada projeto também compilam as duas edições e contam uma vez.
- Um novo marco reinicia a compilação em **1**.
- Cada marco tem um codinome, escolhido pelo mantenedor entre ex-detentos
  conhecidos de San Quentin; cada compilação tem um subtítulo descritivo.
  Os nomes são identificadores, não endosso ou participação dos citados.

O marco 1 é **Danny Trejo**. O subtítulo inicial é
**Abertura MSX2 completa e baseline jogável MSX1**.
O estado autoritativo fica em [`version.json`](../version.json).
O pré-release atual é **1.19 / Danny Trejo**, com o subtítulo
**Aventura MSX2 ilustrada, trilha FM e PSG e discos duplos**.
Consulte [as notas e limitações](releases/1.19.md); notas de versões
anteriores permanecem como registro histórico.

## Comandos na raiz

### Consultar, sem compilar

```bat
release.bat status
```

### Compilar as duas edições com a mesma versão

```bat
build.bat
build.bat --subtitle "Correcao da navegacao"
```

O primeiro comando após 1.1 gera **1.2**. O subtítulo anterior é preservado
se nenhum novo for fornecido. A biblioteca e os compiladores já estão
incluídos no repositório; não é preciso instalar outro Node ou SDCC.

### Iniciar outro marco

```bat
build.bat --milestone --codename "Nome do proximo marco" --subtitle "Recurso integrado"
```

Depois da série 1.x, gera **2.1**. O comando exige codinome e subtítulo.
Não detectamos marcos a partir de mensagens de commit nem alteramos o
primeiro número em builds comuns.

### Atalhos por projeto e depuração

```bat
projects\msx1\build.bat
projects\msx2\build.bat
projects\msx1\build.bat "define=DEBUG:1"
```

O padrão dos wrappers é **DEBUG=0**. O auxiliar MSX1 `RESOLVER` somente
existe com DEBUG=1; pacotes públicos exigem DEBUG=0.
Todos esses comandos compilam **ambas** as edições: cada disco inclui os
dois executáveis, sempre da mesma versão. `define=NOME:VALOR` é aplicado
às duas compilações.
Somente argumentos adicionais `define=NOME:VALOR` são aceitos:
os wrappers não permitem pular compilação/link/package/deploy e ainda
rotular arquivos antigos como builds novos.
Execuções diretas dos scripts internos do MSXgl não participam da
numeração e não devem ser usadas para gerar releases.

## Persistência e rastreabilidade

[`tools/release.js`](../tools/release.js) coordena o processo:

1. Lê e valida a versão compartilhada.
2. Calcula o próximo número e gera `out/build_version.h` para cada edição.
3. Compila cada projeto em seu diretório correto e exige seus COM e DSK.
4. Executa `tools/disks.js` depois das duas compilações: o disco DOS1 de
   360 KB e o DOS2 de 720 KB recebem `QUENTIN.COM` e `QUENTIN2.COM`.
   Preserva os arquivos de sistema e o AUTOEXEC de cada DOS e coloca
   o sistema como primeira entrada do diretório raiz.
5. Grava `out/build.json` com versão, data, flags de build, SHA-256 do
   disco final e hashes dos dois programas incluídos.
6. Atualiza `version.json` **somente depois do sucesso das duas edições e
   dos dois discos**. Uma falha não consome o número; saídas parciais não são release.

Atualmente não há dados externos necessários: cada COM incorpora os recursos
que utiliza. O AUTOEXEC do DOS1 inicia `QUENTIN`; o do DOS2 inicia `QUENTIN2`.
No DOS2, `QUENTIN` também executa normalmente. `QUENTIN2` exige MSX2/DOS2
e mapper de 512 KB, mesmo estando presente no disco DOS1.
`projects\msx1\make_dsk.bat` pode regenerar os dois discos dos COM existentes
sem incrementar a versão; para metadados de release, use sempre o build completo.

Os executáveis incorporam a string `San Quentin N.M`, sem alterar a
apresentação fiel do MSX1. O lock `.release.lock` impede duas operações
simultâneas pelo wrapper. Se houver interrupção forçada, confira o PID
registrado e remova apenas esse arquivo após confirmar que o processo terminou.

O contador é local à linha de desenvolvimento: faça commit de
`version.json` junto da integração, publique a tag e sincronize a branch
antes de compilar em outro computador. Não há contador global de rede;
branches divergentes precisam coordenar a numeração antes de publicar.

## Validar e capturar

```bat
MSXgl\tools\build\Node\node.exe tests\test_release.js
MSXgl\tools\build\Node\node.exe tests\test_font.js
tests\run_engine_tests.bat
tests\run_parser_tests.bat
tests\run_random_tests.bat
tests\run_solver_tests.bat
tests\run_differential_tests.bat
tests\run_msx1_release_tests.bat
tests\run_msx2_intro_tests.bat
tests\run_msx2_game_tests.bat
tests\run_msx2_rooms_tests.bat
tests\run_disk_tests.bat
```

Os testes host C precisam de GCC no PATH. Os testes de emulação precisam
de openMSX no PATH e das ROMs das máquinas/extensões instaladas pelo usuário.
Os wrappers de emulação usam Sony HB-701FD para MSX1 e Philips NMS 8250
com slotexpander, msxdos2, ram512k e fmpac para MSX2.
O teste diferencial usa Node no PATH; veja [o método](validation.md).

`run_msx2_intro_tests.bat` também executa `test_music_msx2.js`: compila
o sequenciador real com espiões de hardware, verifica 50/60 Hz, presença
e ausência de FM, duração de 128 segundos, wrap do JIFFY e parada limpa.
O teste de gameplay fixa TIME nas visitas para evitar confisco aleatório;
a galeria injeta 24 estados de local e cinco variantes para conferir arte,
escuridão, passagens ocultas e limites dos painéis. Nenhum deles certifica
rotas completas/finais da interface MSX2.

As capturas do executável atual ficam em `projects\msx1\out` e
`projects\msx2\out`. Selecione as telas do release em
`images\releases\N.M`, usando prefixos `msx1-` e `msx2-`.
Preserve os nomes por versão para não sobrescrever evidências antigas.
O conjunto 1.19 inclui capturas de abertura e gameplay real, mais a
galeria `msx2-local-*.png` de estados injetados, explicitamente identificada
nas notas. Logs e screenshots intermediários continuam fora do Git.

## Empacotar e publicar

1. Faça o build **conjunto** e os testes; não recompile entre as capturas
   e a publicação, pois isso gera outro número.
2. Atualize README, estado das fases e `docs\releases\N.M.md`.
3. Copie as capturas selecionadas e faça commit de código, versão e documentação.
4. Execute:

```bat
release.bat pack
release.bat publish
```

`pack` não compila nem incrementa a versão. Exige mudanças rastreadas
commitadas, ambas as edições na mesma versão/codinome/subtítulo, DEBUG=0,
hashes correspondentes e screenshots das duas edições. Recusa sobrescrever
um diretório `dist\N.M` existente.

O pacote contém:

- `sanquentin-msx1-N.M.com` e `.dsk` (360 KB);
- `sanquentin-msx2-N.M.com` e `.dsk` (720 KB);
- screenshots, notas, README e licenças;
- `manifest.json`, com commit e metadados dos builds;
- `SHA256SUMS.txt`, ZIP e checksum SHA-256 do ZIP.

Não inclui ROMs de BIOS/extensões, fotografias de referência nem fontes
proprietárias do emulador. O código-fonte fica no snapshot Git da tag.
Para executar o COM isolado, copie-o para seu ambiente DOS correspondente.
Para iniciar sem preparar o disco, use a DSK da edição desejada.
As duas DSK contêm os dois COM; o sistema de boot e o início automático
permanecem específicos de cada disco.

`publish` exige `git`, `gh` autenticado e permissão no remoto `origin`.
Valida commit e checksums, cria a tag anotada `vN.M`, envia branch e tag
em push atômico e cria um **pré-release** no GitHub com título, subtítulo
e assets. Se ainda não houver pacote, executa `pack` primeiro.
Não faz commit automaticamente nem sobrescreve tag/release existente.
Se o upload falhar, os arquivos e a tag são preservados para diagnóstico;
não recompile apenas para repetir a publicação.

Os pré-requisitos de screenshots e notas são deliberados: gerar binários
é automático, mas avaliar o estado e descrever uma fase exige revisão humana.
