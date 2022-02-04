# Create Rogiers Portal shortcut on the desktop (link from "C:\ROGIERS")

$TargetFile = "C:\ROGIERS\Rogiers PORTAL.url"
$shortcutFile = "C:\Users\Public\Desktop\Rogiers PORTAL.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "C:\ROGIERS\INSTALL\ROGIERS Wizard\FILES\ROGIERS_LOGO.ico"
$shortcut.Save()