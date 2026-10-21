@echo off
setlocal
set "LOG=%~dp0..\projects\msx1\out\release-test.log"
if not exist "%~dp0..\projects\msx1\emul\dsk\DOS1_quentin.dsk" exit /b 1
if exist "%LOG%" del "%LOG%"
call "%~dp0..\projects\msx1\run.bat" -script "%~dp0capture_msx1_release.tcl"
if errorlevel 1 exit /b 1
if not exist "%LOG%" exit /b 1
type "%LOG%"
findstr /x /c:"PASS: MSX1 release" "%LOG%" >nul
exit /b %ERRORLEVEL%
