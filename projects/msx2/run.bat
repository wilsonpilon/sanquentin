@echo off
setlocal
rem Expanded slot 1 holds DOS2, a 512KB mapper and FM-PAC.
openmsx -machine Philips_NMS_8250 -ext slotexpander -ext msxdos2 -ext ram512k -ext fmpac -diska "%~dp0emul\dsk\DOS2_quentin2.dsk" %*
exit /b %ERRORLEVEL%
