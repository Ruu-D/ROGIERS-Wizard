# Create Rogiers AnyDesk SUPPORT shortcut on the desktop (link from "C:\ROGIERS") - NEDERLANDS

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Rogiers SUPPORT - NL.lnk")
$Shortcut.TargetPath = "C:\ROGIERS\Rogiers-SUPPORT-AD__NL.exe"
$Shortcut.Save()

$bytes = [System.IO.File]::ReadAllBytes("$Home\Desktop\Rogiers SUPPORT - NL.lnk")
$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
[System.IO.File]::WriteAllBytes("$Home\Desktop\Rogiers SUPPORT - NL.lnk", $bytes)






# Create Rogiers AnyDesk SUPPORT shortcut on the desktop (link from "C:\ROGIERS") - FRANS

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Rogiers SUPPORT - FR.lnk")
$Shortcut.TargetPath = "C:\ROGIERS\Rogiers-SUPPORT-AD__FR.exe"
$Shortcut.Save()

$bytes = [System.IO.File]::ReadAllBytes("$Home\Desktop\Rogiers SUPPORT - FR.lnk")
$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
[System.IO.File]::WriteAllBytes("$Home\Desktop\Rogiers SUPPORT - FR.lnk", $bytes)