@echo off
Title Reconnecting Network Drives - Rogiers Vanpoucke NV/SA
setlocal enabledelayedexpansion
REM This is version 2 of the script. Completely changed how it detects off-line network drives since the old method caused issues for some people.
echo NETWERKMAPPEN OPNIEUW VERBINDEN - RECONNECTING OFFLINE NETWORK DRIVES
echo ---------------------------------------------------------------------


REM We need to wait for the network to get ready first

echo .
echo Wachten op netwerk - Waiting for Network
set LC=0
goto :waitfornet_
:waitfornet
    timeout /t 1 /NOBREAK >nul
:waitfornet_
    route print -4  | findstr /C:" 0.0.0.0 " >nul 2>nul
    if not errorlevel 1 goto :NetReady
    set /A LC=%LC%+1
if %LC% LSS 30 goto :waitfornet
goto :eof

:NetReady
REM Once the network is ready we need to wait a bit before the next step or it might fail on some PC's
echo .
echo Netwerk beschikbaar - Network online
timeout /t 5 /nobreak >nul
goto :RefreshNetDrives

:RefreshNetDrives
REM Now we create a list of all network drives that are not 'OK'
echo .
echo Zoeken naar offline netwerk mappen - Searching for Offline Network Drives...

set "OfflineNetDrives_cnt=0"

net use | findstr /b /v OK |findstr "A:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=A:"
)
net use | findstr /b /v OK |findstr "B:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=B:"
)
net use | findstr /b /v OK |findstr "C:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=C:"
)
net use | findstr /b /v OK |findstr "D:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=D:"
)
net use | findstr /b /v OK |findstr "E:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=E:"
)
net use | findstr /b /v OK |findstr "F:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=F:"
)
net use | findstr /b /v OK |findstr "G:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=G:"
)
net use | findstr /b /v OK |findstr "H:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=H:"
)
net use | findstr /b /v OK |findstr "I:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=I:"
)
net use | findstr /b /v OK |findstr "J:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=J:"
)
net use | findstr /b /v OK |findstr "K:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=K:"
)
net use | findstr /b /v OK |findstr "L:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=L:"
)
net use | findstr /b /v OK |findstr "M:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=M:"
)
net use | findstr /b /v OK |findstr "N:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=N:"
)
net use | findstr /b /v OK |findstr "O:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=O:"
)
net use | findstr /b /v OK |findstr "P:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=P:"
)
net use | findstr /b /v OK |findstr "Q:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=Q:"
)
net use | findstr /b /v OK |findstr "R:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=R:"
)
net use | findstr /b /v OK |findstr "S:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=S:"
)
net use | findstr /b /v OK |findstr "T:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=T:"
)
net use | findstr /b /v OK |findstr "U:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=U:"
)
net use | findstr /b /v OK |findstr "V:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=V:"
)
net use | findstr /b /v OK |findstr "W:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=W:"
)
net use | findstr /b /v OK |findstr "X:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=X:"
)
net use | findstr /b /v OK |findstr "Y:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=Y:"
)
net use | findstr /b /v OK |findstr "Z:"
if not errorlevel 1 (
    set /a OfflineNetDrives_cnt+=1
    set "OfflineNetDrives[!OfflineNetDrives_cnt!]=Z:"
)

echo !OfflineNetDrives_cnt! OFFLINE Netwerkmappen gevonden - OFFLINE Network Drives found
echo .
REM Now we use the windows explorer to access each OFFLINE Network share
echo Netwerkmappen opnieuw verbinden - Reconnecting All Network Shares...
for /L %%n in (1 1 !OfflineNetDrives_cnt!) DO ( echo !OfflineNetDrives[%%n]! & Start /min explorer "!OfflineNetDrives[%%n]!")
goto :CleanUp

:CleanUp
REM Explorer needs a bit to open all windows and access the drives, so we have to wait a bit
timeout /t 5 /nobreak >nul
echo .

REM Now we close the explorer windows which we opened before
echo Opruimen: Windows Explorer sluiten - Cleanup: Closing Explorer windows

for /L %%n in (1 1 !OfflineNetDrives_cnt!) DO (
for /f "tokens=2 delims=," %%a in ('tasklist /fi "imagename eq explorer.exe" /v /fo:csv /nh ^| findstr /r "!OfflineNetDrives[%%n]!"') do (echo !OfflineNetDrives[%%n]! & taskkill /pid %%a)
)
echo .
echo Klaar! - Done!
timeout /t 5 /nobreak >nul