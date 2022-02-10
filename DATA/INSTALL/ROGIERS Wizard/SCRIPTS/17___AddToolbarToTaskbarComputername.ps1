# Script to add a custom toolbar to the Windows taskbar.
# Manual method = Right click - add toolbar - Foldername = \\%computername%
# ---------------------------------------------

Set-ItemProperty  hkcu:\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Desktop -Name TaskbarWinXP -Value (Get-Content .\taskbarwinxpvalue.dat -Encoding Byte -Raw)

# RESTART IS MANDATORY!