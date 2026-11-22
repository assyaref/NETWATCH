@echo off
title NETWATCH (DEMO)
cd /d "%~dp0"
REM Pakai Python 3.13 bila ada (dibutuhkan pywebview untuk jendela native)
set "PY=python"
py -3.13 -c "import sys" >nul 2>&1 && set "PY=py -3.13"
set "NETWATCH_PASS=demo"
echo Login: admin / demo
%PY% -m netwatch --demo
if errorlevel 1 pause
