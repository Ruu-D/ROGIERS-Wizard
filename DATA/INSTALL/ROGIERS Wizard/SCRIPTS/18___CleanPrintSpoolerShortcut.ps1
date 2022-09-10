# Create Rogiers Portal shortcut on the desktop (link from "C:\ROGIERS")

$TargetFile = "C:\ROGIERS\INSTALL\Windows batch and script\Windows - CleanPrinterSpooler\CleanPrintSpooler.bat"
$shortcutFile = "C:\Users\Public\Desktop\WIS Print geheugen.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "C:\ROGIERS\INSTALL\Windows batch and script\Windows - CleanPrinterSpooler\CleanPrintSpooler.ico"
$shortcut.Save()