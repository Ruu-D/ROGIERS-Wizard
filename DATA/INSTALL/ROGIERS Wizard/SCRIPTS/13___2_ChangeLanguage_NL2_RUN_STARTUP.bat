@echo off
color 9e

echo Geinstalleerd taalpakket activeren...
echo ...
echo ...
echo ...

Powershell.exe -executionpolicy bypass -file "C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___2_ChangeLanguage_NL2.ps1"

echo ...
echo ...
echo ...

echo Klaar! De PC zal nogmaals herstarten...

timeout /t 3 /nobreak >nul

echo ...
echo ...
echo ...

ECHO "PC herstarten. Dit script wordt automatisch gewist..."
SHUTDOWN -r -t 3

DEL "%~f0" & EXIT


