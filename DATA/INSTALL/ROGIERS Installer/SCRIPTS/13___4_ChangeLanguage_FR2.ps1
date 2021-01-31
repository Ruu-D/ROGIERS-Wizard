Write-Host 'Taal instellingen wijzigen naar: FRANS - AZERTY toetsenbord'
Write-Host '...'
Write-Host '..'
Write-Host '.'
Start-Sleep -s 2

## Installing language packs :
	##DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\nl-NL.cab"
DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\fr-FR.cab"

## Setting the display language to desired one [first language packs must be installed - code above] :
		## Set-WinUILanguageOverride nl-NL
Set-WinUILanguageOverride fr-FR
		
## Adding the correct keyboard layout to the chosen language [Input Locale] :
	## If the physical keyboard layout is QWERTY (original SCM) :
		#Set-WinUserLanguageList -LanguageList it-IT -Force

	## If the physical keyboard layout is AZERTY :
Set-WinUserLanguageList -LanguageList nl-BE -Force
		
Write-Host '...'
Write-Host 'Instelling gewijzigd... De computer herstarten is vereist.'
Write-Host '...'
Write-Host '..'
Write-Host '.'
Start-Sleep -s 2