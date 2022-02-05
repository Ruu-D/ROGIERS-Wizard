# Script to modify the hostname of the computer
# ---------------------------------------------

$NewComputerName=$args[0]
Rename-Computer -NewName $NewComputerName -Force
