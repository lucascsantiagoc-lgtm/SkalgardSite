@echo off
chcp 65001 >nul
title Skalgard - Preview local
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 if exist "%ProgramFiles%\nodejs\node.exe" set "PATH=%ProgramFiles%\nodejs;%PATH%"
where node >nul 2>&1
if errorlevel 1 (
  echo Instale o Node.js para usar a preview local: https://nodejs.org
  pause
  exit /b 1
)
set "PORT=8090"
echo Abra http://127.0.0.1:8090/ no navegador.
node server.cjs
pause
