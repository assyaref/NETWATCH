@echo off
title NETWATCH
REM ================= PENGATURAN =================
REM Nama adapter (lihat dengan: Get-NetAdapter di PowerShell)
set "IFACE=Wi-Fi"
REM Rentang IP kantor (lihat IPv4 Address di: ipconfig)
set "SUBNET=192.168.1.0/24"
REM Password login. Kosongkan untuk password acak (ditampilkan di jendela ini).
set "NETWATCH_PASS="
REM Isi "--demo" untuk mode simulasi tanpa capture
set "EXTRA="
REM ==============================================

REM Minta hak Administrator (dibutuhkan untuk capture paket)
net session >nul 2>&1
if errorlevel 1 (
  powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
  exit /b
)

cd /d "%~dp0"
python -m netwatch --iface "%IFACE%" --subnet %SUBNET% %EXTRA%
if errorlevel 1 pause
