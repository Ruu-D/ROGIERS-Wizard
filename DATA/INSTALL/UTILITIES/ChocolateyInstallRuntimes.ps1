Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# This powershell command will install the most used runtime / redistributables for SCM machines :
choco install dotnet4.5.2 dotnet4.7.2 vcredist2010 vcredist2017 -y
