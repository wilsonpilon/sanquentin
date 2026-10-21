@echo off
rem ----------------------------------------------------------------------------
rem San Quentin - MSX1 edition
rem
rem Abre o disco de teste no openMSX usando uma maquina MSX1 com drive de
rem face unica (Sony HB-701FD). O disco precisa ter 360K: com 720K o boot
rem do MSX-DOS 1 falha nesses drives e a maquina cai no BASIC.
rem
rem Requer o openMSX no PATH.
rem ----------------------------------------------------------------------------
setlocal
set HERE=%~dp0
openmsx -machine Sony_HB-701FD -diska "%HERE%emul\dsk\DOS1_quentin.dsk" %*
endlocal
