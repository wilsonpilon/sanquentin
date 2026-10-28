@echo off
setlocal
set "LOG=%~dp0..\projects\msx2\out\game-test.log"
if exist "%LOG%" del "%LOG%"
call "%~dp0..\projects\msx2\run.bat" -script "%~dp0capture_msx2_game.tcl"
if errorlevel 1 exit /b 1
if not exist "%LOG%" exit /b 1
type "%LOG%"
findstr /x /c:"PASS: MSX2 game" "%LOG%" >nul
exit /b %ERRORLEVEL%
