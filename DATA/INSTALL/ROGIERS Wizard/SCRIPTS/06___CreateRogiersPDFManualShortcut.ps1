# Create shortcut on the desktop for Rogiers Installer HANDLEIDING

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\ROGIERS Installer v21.1 HANDLEIDING.lnk")
$Shortcut.TargetPath = "C:\ROGIERS\INSTALL\ROGIERS Wizard\FILES\ROGIERS_Installer_v21.1___HANDLEIDING.pdf"
$Shortcut.Save()

$bytes = [System.IO.File]::ReadAllBytes("$Home\Desktop\ROGIERS Installer v21.1 HANDLEIDING.lnk")
$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
[System.IO.File]::WriteAllBytes("$Home\Desktop\ROGIERS Installer v21.1 HANDLEIDING.lnk", $bytes)
