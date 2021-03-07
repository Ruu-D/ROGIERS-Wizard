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

	## Installing language packs :
	DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\nl-NL.cab"

	Start-Sleep -s 2
}
	Copy-Item -Path "C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___1_ChangeLanguage_NL1_RUN_STARTUP.bat" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"