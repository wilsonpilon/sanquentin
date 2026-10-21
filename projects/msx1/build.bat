@echo off
setlocal
"%~dp0..\..\MSXgl\tools\build\Node\node.exe" "%~dp0..\..\tools\release.js" build msx1 %*
exit /b %ERRORLEVEL%
