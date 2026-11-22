@echo off
title NETWATCH (DEMO)
cd /d "%~dp0"
set "NETWATCH_PASS=demo"
echo Login: admin / demo
python -m netwatch --demo
if errorlevel 1 pause
