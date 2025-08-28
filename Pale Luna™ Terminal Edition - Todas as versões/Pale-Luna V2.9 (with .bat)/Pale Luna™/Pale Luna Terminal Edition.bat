@echo off
title Pale Luna Terminal Edition
color 0B
where node >nul
if errorlevel 1 (
  echo Node.js nao encontrado. Instale para continuar.
pause
  exit
)
cd assets
node lang.js
cd..
if not exist HAHAHAHAHAHAHA.txt (
taskkill /f /im "vlc.exe" 2>NUL
)

pause
exit /b 0
