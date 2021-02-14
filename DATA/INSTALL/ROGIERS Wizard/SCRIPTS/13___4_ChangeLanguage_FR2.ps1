Write-Host 'Taal instellingen wijzigen naar: FRANS - AZERTY toetsenbord'

## Installing language packs :
DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\fr-FR.cab"

## Setting the display language to desired one [first language packs must be installed - code above] :
Set-WinUILanguageOverride fr-FR
		
## Adding the correct keyboard layout to the chosen language [Input Locale] :

	## If the physical keyboard layout is AZERTY :
Set-WinUserLanguageList -LanguageList nl-BE -Force

Write-Host 'Instelling gewijzigd... De computer herstarten is vereist.'