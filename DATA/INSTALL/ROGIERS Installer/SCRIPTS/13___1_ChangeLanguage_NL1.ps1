Write-Host 'Taal instellingen wijzigen naar: NEDERLANDS - QWERTY toetsenbord (SCM origineel)'

## Installing language packs :
DISM /Online /Add-Package /PackagePath:"C:\ROGIERS\INSTALL\Windows LANGUAGES\Windows 10 Language Pack\nl-NL.cab"

## Setting the display language to desired one [first language packs must be installed - code above] :
Set-WinUILanguageOverride nl-NL
		
## Adding the correct keyboard layout to the chosen language [Input Locale] :
	
	## If the physical keyboard layout is QWERTY (original SCM) :
Set-WinUserLanguageList -LanguageList en-US -Force

Write-Host 'Instelling gewijzigd... De computer herstarten is vereist.'