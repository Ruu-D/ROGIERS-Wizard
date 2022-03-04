Write-Host 'Controle of taalpakket "nl-NL" reeds aanwezig is...'
Write-Host '...'

$LangPacks = DISM.exe /Online /Get-Intl /English |
    Select-String -SimpleMatch 'Installed language(s)'|
        ForEach-Object {
            if($_ -match ':\s*(.*)'){$Matches[1]}
        }

if($LangPacks -notcontains 'nl-NL'){
    Write-Host 'Taalpakket "nl-NL" nog niet geinstalleerd!'
	Write-Host '...'
	
	Start-Sleep -s 2

	Write-Host 'Taalpakket "nl-NL" toevoegen...'
	Write-Host '...'

	## Installing language packs (not using IF logic to analyse WinVer. It will just run over the two DISM commands) :
	DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\nl-NL_1607.cab"
	DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\nl-NL_1809.cab"
	DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\nl-NL_1909.cab"

	Start-Sleep -s 2	
}
Copy-Item -Path "C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___2_ChangeLanguage_NL2_RUN_STARTUP.bat" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"