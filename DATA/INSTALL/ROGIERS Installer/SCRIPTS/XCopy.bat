REM 'XCopy' is used to perform a copy command from and to a folder. Used locally or from a network shared folder to a local folder.

xcopy "P:\NETWERKMAP\prg\*.*"   "C:\WinCut\prg"   /s /e /c /y
xcopy "P:\NETWERKMAP\lst\*.*"   "C:\WinCut\lst"   /s /e /c /y

REM         "Path to copy files from"    "Destination path for the copy command"    /all parameters to influence the command (explained below)
REM         *.* tells to copy every file from that folder

REM __________________________________________________________________________________________________________________________________________

REM /s = Copies directories and subdirectories, unless they are empty. If you omit /s, xcopy works within a single directory.
REM /e = Copies all subdirectories, even if they are empty. Use /e with the /s and /t command-line options.
REM /c = Ignores errors in the copy command.
REM /y = Overwrites every existing file in the destination folder.
