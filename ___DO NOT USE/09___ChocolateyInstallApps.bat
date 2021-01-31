@echo off

echo Map "C:\ROGIERS" toevoegen aan Windows Defender uitzonderingen.
echo ...
echo Administrator rechten vereist. Controleren ...
echo ...

net session >nul 2>&1
if %errorLevel% == 0 (
    color 90
    echo Apps installeren via Chocolatey ...

    @echo on

    choco install notepadplusplus 7zip googlechrome cutepdf -y

	echo ...
    echo Apps geïnstalleerd.
	echo ...
	echo Klaar!
	timeout /t 3 /nobreak >nul


) else (
    color ce
    echo Mislukt...
	
	timeout /t 3 /nobreak >nul
	pause
	echo Druk op een toets om verder te gaan...
	
)


