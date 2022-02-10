﻿; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ROGIERS Wizard"
#define MyAppVersion "22.1"
#define MyAppPublisher "Rogiers Vanpoucke NV/SA"
#define MyAppURL "https://www.rogiers.be/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B77129D4-C865-4229-84D7-35565C46CF4C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\ROGIERS
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=ROGIERS Wizard 22.1
SetupIconFile=.\GRAPHICS\ROGIERS_LOGO.ico
AppCopyright=Daan Verhoost
DisableDirPage=yes
AllowRootDirectory=True
Uninstallable=no
ChangesEnvironment=True
WizardImageFile=.\GRAPHICS\ROGIERS_WELCOME.bmp
WizardSmallImageFile=.\GRAPHICS\InstallWizardSmall.bmp
DisableWelcomePage=False
;   "OutputDir" can change if compilation happens on another computer! All of the internal code references just follow the 'main folder'.
OutputDir=F:\MEGASYNC\ROGIERS-Wizard\TEST VERSIES
VersionInfoCompany=Rogiers Vanpoucke NV/SA
VersionInfoCopyright=Ⓒ Daan Verhoost
AlwaysRestart=True
InternalCompressLevel=ultra64
SolidCompression=True
Compression=lzma2/ultra64
VersionInfoVersion=22.1
MinVersion=0,6.1
ShowTasksTreeLines=True
UsePreviousSetupType=False
UsePreviousTasks=False
UsePreviousLanguage=False
ShowComponentSizes=False
WizardStyle=modern

[Types]
Name: "Volledig"; Description: "Volledige installatie   (internet vereist)"Name: "Beperkt"; Description: "Essentiële bestanden"

[Components]
Name: "Volledig"; Description: "Volledig"; Types: Volledig; Flags: fixed
Name: "Beperkt"; Description: "Beperkt"; Types: Beperkt; Flags: fixed
Name: "Chocolatey"; Description: "ChocolateyPackageManager"; Types: Volledig

[Tasks]
Name: "ChangeWallpaper"; Description: "ROGIERS Wallpaper instellen"; GroupDescription: "Standaard :"; Components: Volledig Beperkt
Name: "InstallatieTotalCommander"; Description: "Installatie Total Commander [silent]"; GroupDescription: "Standaard :"; Components: Volledig Beperkt
Name: "ScriptsUitvoeren"; Description: "Powershell scripts uitvoeren [visuele effecten, snelkoppelingen maken, handleidingen kopiëren, ...]"; GroupDescription: "Standaard :"; Components: Volledig Beperkt
Name: "EnableWindowsRestorePoint"; Description: "Script uitvoeren om Windows herstelpunten te activeren"; GroupDescription: "Standaard :"; Components: Volledig Beperkt
Name: "AddBGInfo"; Description: "Systeeminformatie op bureaublad tonen [BGInfo]"; GroupDescription: "Standaard :"; Components: Volledig Beperkt
Name: "ChocolateyApps"; Description: "Chocolatey : Apps installeren [Google Chrome, Notepad++, 7-Zip, CutePDF, IrfanView, Greenshot]"; GroupDescription: "Extra software :"; Components: Chocolatey
Name: "MapNetwerkDrives"; Description: "Bestand in Windows startup kopiëren om netwerkschijven te 'mappen'"; GroupDescription: "Voor softwaremensen :"; Flags: unchecked; Components: Volledig Beperkt
Name: "ChangePCname"; Description: "Wijzig de Windows computernaam"; GroupDescription: "Voor softwaremensen :"; Flags: unchecked; Components: Volledig Beperkt

[Languages]
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"

[Files]
; DATA folder uit Installer kopieren naar main folder "C:\ROGIERS" :
Source: "DATA\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs onlyifdoesntexist; Permissions: everyone-full
; Scripts & files overschrijven indien al een bestaande installatie eerder werd uitgevoerd :
Source: "DATA\INSTALL\ROGIERS Wizard\*"; DestDir: "{app}\INSTALL\ROGIERS Wizard\"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: everyone-full

; _______________________________________________________________________________________________________________________________
; Bestanden naar TEMP folder kopiëren :
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\00___WindowsDefenderExceptions.bat"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\08___ChangeWallpaperRogiers.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\01___TaskbarNeverCombine.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\02___ShowAllFileExtensions.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\03___LaunchExplorerToThisPC.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\04___HideTaskViewButton.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\12___DisableWindowAnimation.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\05___CreateRogiersAnyDeskShortcuts.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\14___SetDefaultFileExtensions.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\15___CreatePortalRogiersShortcut.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\10___EnableWindowsRestorePoint.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\07___MapNetworkDrives.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\11___TotalCommanderInstall.ps1"; DestDir: "{tmp}"; Permissions: everyone-full
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\17___AddBGInfo.ps1"; DestDir: "{tmp}"; Permissions: everyone-full

; _______________________________________________________________________________________________________________________________
; Chocolatey packages :
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\09___ChocolateyInstallPackage.ps1"; DestDir: "{tmp}"; Permissions: everyone-full

; _______________________________________________________________________________________________________________________________
; Scripts voor wijziging van Windows taal en toetsenbord /// 'MyBeforeInstall' zorgt voor link naar [Code] waarin deze files na extract gebruikt worden :
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\13___1_AddLanguagePack_NL1.ps1"; DestDir: "{tmp}"; Permissions: everyone-full; BeforeInstall: BeforeInstall_NL1
; //// Bij 'BeforeInstall' mag hier maar één file geschreven worden, anders wordt bij uitvoeren van de procedure meermaals de MSGBOX + EXEC uitgevoerd ........
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\13___2_AddLanguagePack_NL2.ps1"; DestDir: "{tmp}"; Permissions: everyone-full; BeforeInstall: BeforeInstall_NL2
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\13___3_ChangeLanguage_FR1.ps1"; DestDir: "{tmp}"; Permissions: everyone-full; BeforeInstall: BeforeInstall_FR1
Source: "DATA\INSTALL\ROGIERS Wizard\SCRIPTS\13___4_ChangeLanguage_FR2.ps1"; DestDir: "{tmp}"; Permissions: everyone-full; BeforeInstall: BeforeInstall_FR2
; _______________________________________________________________________________________________________________________________

[Run]
; _______________________________________________________________________________________________________________________________

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\11___TotalCommanderInstall.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: waituntilterminated runhidden; \
    Components: Beperkt Volledig; \
    Tasks: InstallatieTotalCommander
; _______________________________________________________________________________________________________________________________

; Windows Defender uitzonderingen toevoegen :
Filename: "{app}\INSTALL\ROGIERS Wizard\SCRIPTS\00___WindowsDefenderExceptions.bat"; \
    Parameters: "/verysilent"; \
    Flags: nowait; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

; ROGIERS Wallpaper instellen :
Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\08___ChangeWallpaperRogiers.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ChangeWallpaper

; Powershell scripts uitvoeren :
Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\01___TaskbarNeverCombine.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\02___ShowAllFileExtensions.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\03___LaunchExplorerToThisPC.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\04___HideTaskViewButton.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\12___DisableWindowAnimation.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\05___CreateRogiersAnyDeskShortcuts.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\14___SetDefaultFileExtensions.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\15___CreatePortalRogiersShortcut.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: ScriptsUitvoeren

; _______________________________________________________________________________________________________________________________

; Script voor uitvoeren van "Chocolatey" package manager :
Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\09___ChocolateyInstallPackage.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: waituntilterminated; \
    Components: Chocolatey; \

; _______________________________________________________________________________________________________________________________

; Bestand in Windows startup kopiëren om netwerkschijven te 'mappen' :
Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\07___MapNetworkDrives.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: MapNetwerkDrives

; Script uitvoeren om Windows herstelpunten te activeren :
Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\10___EnableWindowsRestorePoint.ps1"""; \
    WorkingDir: "{app}"; \
    Components: Beperkt Volledig; \
    Tasks: EnableWindowsRestorePoint

; Script uitvoeren om 'BGInfo' op het bureaublad te tonen [shortcut copy naar Windows startup] :
Filename: "powershell.exe"; \
    Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\17___AddBGInfo.ps1"""; \
    WorkingDir: "{app}"; \
    Flags: runhidden; \
    Components: Beperkt Volledig; \
    Tasks: AddBGInfo

; _______________________________________________________________________________________________________________________________

; Custom code (Pascal scripting)...

[ThirdParty]
CompileLogFile=.\DATA\INSTALL\ROGIERS Wizard\Install_log.txt

; _______________________________________________________________________________________________________________________________

[Code]

var
CustomPageID: Integer;                                                                 // Gebruikt om pagina's over te slaan
CustomQueryPage: TInputQueryWizardPage;                           // Om de naam van de technieker te kunnen invullen
CustomQueryPageHostname: TInputQueryWizardPage;        // Om de computer naam te veranderen
Name: string;                                                                                   // Computernaam opvragen
CustomLanguagePage: TWizardPage;                                        // Om de taal te wijzigen van de PC
CheckListBox: TNewCheckListBox;
    NW: Integer;
    NL, FR: Integer;
    NL1, NL2: Integer;
    FR1, FR2: Integer;
ErrorCode: Integer;
OldState: Boolean;
ResultCode: Integer;

{_______________________________________________________________________________________________________________________________}

{ Uitlezen van datum voor verder gebruik in aanmaak van de mapnaam }
      function DateTime: String;
        begin
            Result := GetDateTimeString('yyyy/mm/dd', '.', ':');
        end;        

{ Ingave van gebruiker omzetten in 'String' om bij aanmaak van map opnieuw te gebruiken - Windows computernaam}
      function UserInputName: String;
        begin
            Result := CustomQueryPage.Values[0];
        end;        

      function UserInputComputerName: String;
        begin
            Result := CustomQueryPageHostname.Values[0];
        end;        
{_______________________________________________________________________________________________________________________________}

{ Prevent user from typing spaces in the textbox ... }
procedure EditKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key in ['@', '^','_', '*', '\', #32]) then  { #32 is space }
    Key := #0;
end;

{ ... but check anyway if some spaces were sneaked in (e.g. by pasting from a clipboard) }
function ValidateInput(Sender: TWizardPage): Boolean;
begin
  Result := True;

  if Pos(' ', CustomQueryPageHostname.Values[0]) > 0 then
  begin
    MsgBox('Kopieer- en plak praktijken niet toegestaan in dit veld...' + #13#10 + 'De naam mag GEEN spaties bevatten!', mbError, MB_OK);
    Result := False;
  end;
end;

{_______________________________________________________________________________________________________________________________}

{ Procedure voor aanmaak van pagina voor ingave van technieker naam }
procedure CustomInputPageTechnicianName();
begin
  CustomQueryPage := CreateInputQueryPage(wpWelcome,
    'Naam technieker',
    'Vul hieronder de initialen van uw naam in (bv. DVH).',
    'Dit wordt gebruikt om een map te creëren in "C:\ROGIERS\BACKUPS" op datum van vandaag. Vervolgens zal automatisch een map aangemaakt worden zoals : "2022.05.04 DVH". Plaats nadien hierin uw DAGRAPPORT.');

{ Add items (False means it's not a password edit) }
  CustomQueryPage.Add('Initialen: ', False);
end;

{ Procedure voor aanmaak van pagina voor ingave nieuwe computer naam }
procedure CustomInputPageComputerName();
begin
  CustomQueryPageHostname := CreateInputQueryPage(wpSelectTasks,
    'Naam computer',
    'Wijzig onderstaande indien de computernaam moet gewijzigd worden' + #13#10 + '(bv. voor herkenning in het netwerk).',
    'Laat dit ongewijzigd zodat de standaard naam behouden blijft (SCM-PC).' + #13#10 + 'Het invoerveld is gelimiteerd tot max. 15 tekens [Max NetBIOS naam].');
CustomPageID := CustomQueryPageHostname.ID;

{ Input van nieuwe computernaam valideren }
CustomQueryPageHostname.OnNextButtonClick := @ValidateInput;
{ Add items (False means it's not a password edit) }
CustomQueryPageHostname.Add('Computernaam: ', False);
{ Standaard value van het veld invullen }
CustomQueryPageHostname.Values[0] := ExpandConstant('{computername}');
{ Input van nieuwe computernaam limiteren zodat geen speciale tekens in netBIOS naam komen te staan }
CustomQueryPageHostname.Edits[0].MaxLength := 15;
CustomQueryPageHostname.Edits[0].OnKeyPress := @EditKeyPress;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  { initialize result to not skip any page (not necessary, but safer) }
  Result := False;
  { if the page that is asked to be skipped is your custom page, then... }
  if PageID = CustomPageID then
    { if the component is not selected, skip the page }
    Result := not IsTaskSelected('ChangePCname');
end;

{_______________________________________________________________________________________________________________________________}

procedure InitializeWizard();
begin
{ Pagina na "wpWelcome" voor invullen van technieker initialen }
CustomInputPageTechnicianName();  

{ Pagina na "CustomLanguagePage" voor wijziging van de computer naam }
CustomInputPageComputerName();

{ Pagina  na 'selectie van opdrachten' voor taalwijziging }
CustomLanguagePage:= CreateCustomPage(wpSelectTasks, 'Windows weergavetaal & toetsenbordindeling wijzigen', 'ENKEL mogelijk op "EYE-M" toestellen. [Win10 Enterprise 2016 LTSB - versie 1607 - build 14393.0]' + #13#10 + 'Optie NEDERLANDS zal even duren, 2 keer heropstarten is hiervoor vereist.');

        CheckListBox := TNewCheckListBox.Create(CustomLanguagePage);
        CheckListBox.Width := CustomLanguagePage.SurfaceWidth;
        CheckListBox.Height := ScaleY(118);
        CheckListBox.Flat := True;
        CheckListBox.Parent := CustomLanguagePage.Surface;

            NW := CheckListBox.AddRadioButton('Niet wijzigen', '', 0, True, True, nil);
            NL := CheckListBox.AddRadioButton('Windows taal wijzigen: NEDERLANDS', '', 0, False, True, nil);
                  NL1 := CheckListBox.AddRadioButton('QWERTY toetsenbord (SCM origineel)', '', 1, False, True, nil);
                  NL2 := CheckListBox.AddRadioButton('AZERTY toetsenbord', '', 1, False, True, nil);
            FR := CheckListBox.AddRadioButton('Windows taal wijzigen: FRANS', '', 0, False, True, nil);
                  FR1 := CheckListBox.AddRadioButton('QWERTY toetsenbord (SCM origineel)', '', 1, False, True, nil);
                  FR2 := CheckListBox.AddRadioButton('AZERTY toetsenbord', '', 1, False, True, nil);
end;

{_______________________________________________________________________________________________________________________________}

{Execute Powershell script to modify Windows display language + keyboard layout, depending on which checkbox is selected on page "CustomLanguagePage"}     
procedure BeforeInstall_NL1();   
begin
        if CheckListBox.Checked[NL1] then
        begin
           // First verify that the user is running a supported 64-bit version of Windows, because calling EnableFsRedirection(False) will raise an exception otherwise.
           if IsWin64 then
                begin
                      // Turn off redirection, so that 'powershell' from the 64-bit System directory is launched.
                      OldState := EnableFsRedirection(False);
                      try
                                MsgBox('Taal instellingen worden nu gewijzigd naar:' + #13#10 + 'NEDERLANDS - QWERTY toetsenbord (SCM origineel)' + #13#10 + 'Even geduld... Drink een koffie.', mbInformation, MB_OK);
                                Exec('powershell','-ExecutionPolicy Bypass "& ""C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___1_AddLanguagePack_NL1.ps1"""', '', SW_SHOW,ewWaitUntilTerminated, ResultCode);  
                      finally
                                // Restore the previous redirection state.
                                EnableFsRedirection(OldState);
                end;
        end;
end;
end;

procedure BeforeInstall_NL2();   
begin
        if CheckListBox.Checked[NL2] then
        begin

           if IsWin64 then
                begin
                      OldState := EnableFsRedirection(False);
                      try
                                MsgBox('Taal instellingen worden nu gewijzigd naar:' + #13#10 + 'NEDERLANDS - AZERTY toetsenbord' + #13#10 + 'Even geduld... Drink een koffie.', mbInformation, MB_OK);
                                Exec('powershell','-ExecutionPolicy Bypass "& ""C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___2_AddLanguagePack_NL2.ps1"""', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);  
                      finally
                                EnableFsRedirection(OldState);
                end;
        end;
end;
end;

procedure BeforeInstall_FR1();   
begin
        if CheckListBox.Checked[FR1] then
              begin
                    MsgBox('Taal instellingen worden nu gewijzigd naar:' + #13#10 + 'FRANS - QWERTY toetsenbord (SCM origineel)' + #13#10 + 'Even geduld... Drink een koffie.', mbInformation, MB_OK);
                    Exec('powershell','-ExecutionPolicy Bypass "& ""C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___3_ChangeLanguage_FR1.ps1"""', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);    
              end;  
end;

procedure BeforeInstall_FR2();   
begin
        if CheckListBox.Checked[FR2] then
              begin
                    MsgBox('Taal instellingen worden nu gewijzigd naar:' + #13#10 + 'FRANS - AZERTY toetsenbord' + #13#10 + 'Even geduld... Drink een koffie.', mbInformation, MB_OK);
                    Exec('powershell','-ExecutionPolicy Bypass "& ""C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\13___4_ChangeLanguage_FR2.ps1"""', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);    
              end;
end;

{_______________________________________________________________________________________________________________________________}

procedure CurStepChanged(CurStep: TSetupStep);
begin
   if CurStep = ssPostInstall then   
     begin
     { Procedure om input (naam) van gebruiker opnieuw te gebruiken voor aanmaak van map - Map maken met : datum van vandaag + spatie + initialen van technieker (gebruiker ingave) }
     CreateDir('C:\ROGIERS\BACKUPS\' + DateTime + ' ' + UserInputName);

     { Procedure om input (computernaam) te gebruiken voor wijziging van PC naam - Enkel computernaam wijzigen / PS script draaien ALS checkbox bij 'tasks' - 'voor softwaremensen' geselecteerd is }
            //Exec('powershell','-ExecutionPolicy Bypass """C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\16___ChangeComputerName.ps1""" -$NewComputerName' + UserInputComputerName, '', SW_SHOW, ewWaitUntilTerminated, ResultCode); 
            //Exec('powershell','-ExecutionPolicy Bypass "& ""C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\16___ChangeComputerName.ps1""" -$NewComputerName' + UserInputComputerName, '', SW_SHOW, ewWaitUntilTerminated, ResultCode); 

      // if IsTaskSelected('ChangePCname') then
      Exec('powershell','-ExecutionPolicy Bypass "& ""C:\ROGIERS\INSTALL\ROGIERS Wizard\SCRIPTS\16___ChangeComputerName.ps1"""' + UserInputComputerName, '', SW_HIDE, ewWaitUntilTerminated, ResultCode);   
     end;
  end;