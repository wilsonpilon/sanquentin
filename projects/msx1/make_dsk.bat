@echo off
rem ----------------------------------------------------------------------------
rem San Quentin - MSX1 edition
rem
rem Regera o disco de teste colocando MSXDOS.SYS como PRIMEIRA entrada do
rem diretorio raiz. O carregador de boot do MSX-DOS 1 so encontra o sistema
rem nessa posicao; o script de deploy do MSXgl grava MSXDOS.SYS por ultimo,
rem o que faz a maquina cair no BASIC em vez de iniciar o DOS.
rem
rem O tamanho precisa ser 360K (face unica), formato aceito pelos drives
rem dos MSX1 da epoca.
rem ----------------------------------------------------------------------------
setlocal
set HERE=%~dp0
set TOOL=%HERE%..\..\MSXgl\tools\build\msxtar
set DOSDIR=%HERE%emul\dos1

copy /y "%DOSDIR%\MSXDOS.SYS"   "%TOOL%\" >nul
copy /y "%DOSDIR%\COMMAND.COM"  "%TOOL%\" >nul
copy /y "%DOSDIR%\autoexec.bat" "%TOOL%\" >nul
copy /y "%DOSDIR%\quentin.com"  "%TOOL%\" >nul

pushd "%TOOL%"
msxtar.exe -cf sq_temp.dsk --dos1 --size=360K MSXDOS.SYS COMMAND.COM autoexec.bat quentin.com >nul
popd

copy /y "%TOOL%\sq_temp.dsk" "%HERE%emul\dsk\DOS1_quentin.dsk" >nul
del "%TOOL%\sq_temp.dsk" "%TOOL%\MSXDOS.SYS" "%TOOL%\COMMAND.COM" "%TOOL%\autoexec.bat" "%TOOL%\quentin.com" >nul 2>&1

echo Disco de boot regenerado: emul\dsk\DOS1_quentin.dsk
endlocal
