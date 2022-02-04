# Script to modify the hostname of the computer
# ---------------------------------------------

param1 ($ComputerName)
Rename-Computer -NewName $ComputerName -LocalCredential localhostAdminUser  

