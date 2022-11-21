# Create Rogiers Portal shortcut on the desktop (link from "C:\ROGIERS")

$TargetFile = "C:\ROGIERS\INSTALL\Windows batch and script\Windows - CleanPrinterSpooler\CleanPrintSpooler.bat"
$shortcutFile = "C:\Users\Public\Desktop\WIS Print geheugen.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "C:\ROGIERS\INSTALL\Windows batch and script\Windows - CleanPrinterSpooler\CleanPrintSpooler.ico"
$shortcut.Save()


# Additional code to enable the flag 'Run As Administrator' on the shortcut properties
    ### https://stackoverflow.com/questions/28997799/how-to-create-a-run-as-administrator-shortcut-using-powershell
$bytes = [System.IO.File]::ReadAllBytes("$ShortcutFile")
$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
[System.IO.File]::WriteAllBytes("$ShortcutFile", $bytes)