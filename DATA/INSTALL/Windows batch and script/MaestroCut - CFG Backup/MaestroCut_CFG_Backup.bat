REM Script to make a backup of the most important files for software MAESTROCUT or MAESTROACTIVECUT
REM Modified:  2022.11.18 DVH
REM MUST BE RUN AS ADMINISTRATOR!

@ECHO OFF

@REM =========================
:SETDATETIME

setlocal
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
:: set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%.%MM%.%DD%_%HH%h%Min%m"


SET tmpPath=C:\ROGIERS\BACKUPS\%fullstamp%___Backup_MAC_ROGIERS
SET ClientDirectory=C:\MaestroCut\Client
SET ServerDirectory=C:\MaestroCut\Server
SET DbDirectory=C:\MaestroCut\DB

@REM =========================

:MAKEDIR
ECHO Create temp directory

MKDIR %tmpPath%
MKDIR %tmpPath%\Client
MKDIR %tmpPath%\Server
MKDIR %tmpPath%\Server\Labels
MKDIR %tmpPath%\DB

@REM =========================
:COPYXML

XCOPY %ClientDirectory%\*.xml %tmpPath%\Client /i/d/v/y
XCOPY %ClientDirectory%\*.config %tmpPath%\Client /i/d/v/y
XCOPY %ClientDirectory%\*.txt %tmpPath%\Client /i/d/v/y

COPY %ClientDirectory%\Parameters.xml %tmpPath%
COPY %ClientDirectory%\Tools.xml %tmpPath%
COPY %ClientDirectory%\Params.xml %tmpPath%
:: These are the most important machine parameters

XCOPY %ServerDirectory%\*.xml %tmpPath%\Server /i/d/v/y
XCOPY %ServerDirectory%\*.config %tmpPath%\Server /i/d/v/y
XCOPY %ServerDirectory%\*.txt %tmpPath%\Server /i/d/v/y
XCOPY %ServerDirectory%\*.ini %tmpPath%\Server /i/d/v/y
XCOPY %ServerDirectory%\Labels %tmpPath%\Server\Labels /i/d/v/y/e


@REM =========================
:COPYDB

%DbDirectory%\UnlockDB.exe
XCOPY %DbDirectory%\*.* %tmpPath%\DB /i/d/v/y

DEL %DbDirectory%\DBW_EasySaw.bak
%DbDirectory%\BackupDB.exe
COPY %DbDirectory%\DBW_EasySaw.bak %tmpPath%\DB 

@REM =========================
:END
TIMEOUT /T 5
EXIT /b 0

@REM =========================
:END_ERROR
ECHO MakePackage Error!
TIMEOUT /T 5
EXIT /b 1

