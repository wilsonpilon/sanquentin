@echo off
setlocal
"%~dp0MSXgl\tools\build\Node\node.exe" "%~dp0tools\release.js" build all %*
exit /b %ERRORLEVEL%
