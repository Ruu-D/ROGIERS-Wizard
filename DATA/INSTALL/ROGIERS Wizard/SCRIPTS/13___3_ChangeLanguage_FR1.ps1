Write-Host 'Taal instellingen wijzigen naar: FRANS - QWERTY toetsenbord (SCM origineel)'

## Setting the display language to desired one [first language packs must be installed - code above] :
Set-WinUILanguageOverride fr-FR
		
## Adding the correct keyboard layout to the chosen language [Input Locale] :
	
	## If the physical keyboard layout is QWERTY (original SCM) :
Set-WinUserLanguageList -LanguageList en-US -Force

Start-Sleep -s 3

Write-Host 'Instelling gewijzigd... De computer herstarten is vereist.'