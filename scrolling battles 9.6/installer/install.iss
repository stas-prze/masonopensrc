; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "scrolling battles"
#define MyAppVersion "9.5"
#define MyAppPublisher "MTG Studios, Inc"
#define MyAppURL "http://mtgstudiosus.tk"
#define MyAppExeName "sb.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4BDB7E7B-ABAF-4F8B-A02E-8768229E2D15}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=
InfoBeforeFile=c:\users\mason\projects\games\scrolling battles\installer\changelog.txt
OutputDir=c:\users\mason\installers\
OutputBaseFilename=sb_setup_v9.5.0.131
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "c:\users\mason\projects\games\scrolling battles\installer\sb.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\users\mason\projects\games\scrolling battles\installer\changelog.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\users\mason\projects\games\scrolling battles\installer\nvdaControllerClient32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\users\mason\projects\games\scrolling battles\installer\readme.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\users\mason\projects\games\scrolling battles\installer\sb.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\users\mason\projects\games\scrolling battles\installer\sounds\*"; DestDir: "{app}\sounds"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Changelog"; Filename: "{app}\changelog.txt"
Name: "{group}\Readme"; Filename: "{app}\readme.txt"
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
