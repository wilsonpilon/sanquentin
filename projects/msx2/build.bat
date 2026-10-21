@echo off
setlocal
"%~dp0..\..\MSXgl\tools\build\Node\node.exe" "%~dp0..\..\tools\release.js" build msx2 %*
exit /b %ERRORLEVEL%
