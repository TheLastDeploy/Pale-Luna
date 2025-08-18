
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
echo ===============================================================
echo      --- PRE-GAME SETTINGS  -  CONFIGURACOES PRE-JOGO ---     
echo ===============================================================
echo            Idioma (Menu Principal) / Language (Menu)
echo ===============================================================
echo [01] Portugues 
echo [02] English
echo ===============================================================
@echo off
set /p senha1="> "
if "%senha1%"=="1" (
node menuBR.js
) else if "%senha1%"=="2" (

node menu.js
)
cd..
if not exist HAHAHAHAHAHAHA.txt (
taskkill /f /im "vlc.exe"
)

pause
exit /b 0
