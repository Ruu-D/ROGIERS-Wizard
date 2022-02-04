@echo off

echo Map "C:\ROGIERS" toevoegen aan Windows Defender uitzonderingen.
echo ...
echo Administrator rechten vereist. Controleren ...
echo ...

net session >nul 2>&1
if %errorLevel% == 0 (
    color 9e
    echo Gelukt: Administrator rechten bevestigd.

    @echo on

    powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "C:\ROGIERS"

	echo ...
    echo Windows Defender uitzonderingen toegevoegd. OK.
	echo ...
	echo Klaar!
	timeout /t 2 /nobreak >nul


) else (
    color ce
    echo Mislukt: De huidige gebruiker heeft GEEN administrator rechten... Voer de installatie opnieuw uit.
	
	timeout /t 2 /nobreak >nul
	pause
	echo Druk op een toets om verder te gaan...
	
)


