# Create BGInfo shorcut in Windows startup folder
# https://docs.microsoft.com/en-us/sysinternals/downloads/bginfo
# https://stackoverflow.com/questions/31815286/creating-quoted-path-for-shortcut-with-arguments-in-powershell

# Create the shortcut
	# Code below seems not necessary, because can be done only with the registry add
		#   $WshShell = New-Object -comObject WScript.Shell
		#   $Shortcut = $WshShell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo ROGIERS.lnk")
		#   $Shortcut.TargetPath = """C:\ROGIERS\INSTALL\UTILITIES\Bginfo.exe"""
		#   # $Shortcut.Arguments = "argumentA ArgumentB ......."
		#   $Shortcut.Arguments = "C:\ROGIERS\INSTALL\UTILITIES\Bginfo_ROGIERS.bgi /timer:0 /NOLICPROMPT"
		#   $Shortcut.Save()

		#   $bytes = [System.IO.File]::ReadAllBytes("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo ROGIERS.lnk")
		#   $bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
		#   [System.IO.File]::WriteAllBytes("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo ROGIERS.lnk", $bytes)

# Add the path to Windows registry "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run"
$RegRoot=Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Run
$RegValue="""C:\ROGIERS\INSTALL\UTILITIES\Bginfo.exe"" ""C:\ROGIERS\INSTALL\UTILITIES\Bginfo_ROGIERS.bgi"" /timer:0 /NOLICPROMPT"
Set-ItemProperty -path HKLM:\Software\Microsoft\Windows\CurrentVersion\Run -Name BGInfo -Value $RegValue