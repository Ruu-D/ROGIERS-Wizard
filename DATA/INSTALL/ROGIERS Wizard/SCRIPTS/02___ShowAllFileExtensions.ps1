# Script to modify the setting in Windows Explorer : Hide file extensions for know file types.
# Code below FIRST checks if the registry value allready exists. If not, it's created and the value is set as DWORD32.

# *********************************************************************************************************************

$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"

$name = "HideFileExt"

$value = "0"

# *********************************************************************************************************************

IF((Get-ItemProperty $registryPath -Name $name -EA 0).$name -ne $null) {‘Property already exists, modifying current value...’}
ELSE {New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD  -Force | Out-Null}

Remove-ItemProperty $registryPath -Name $name -Force
New-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWORD  -Force | Out-Null

# *********************************************************************************************************************

# Get-Process -Name explorer | Stop-Process   #This will restart the Explorer window to make the changes.