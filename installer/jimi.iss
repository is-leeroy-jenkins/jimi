#define MyAppName "Jimi"
#ifndef MyAppVersion
  #define MyAppVersion "0.1.0"
#endif

[Setup]
AppId={{F2028DF1-EF03-49DB-B872-EA97474682F4}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher=is-leeroy-jenkins
DefaultDirName={localappdata}\Programs\Jimi
DefaultGroupName=Jimi
OutputDir=..\dist-installer
OutputBaseFilename=Jimi-Setup-{#MyAppVersion}
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
WizardStyle=modern
UninstallDisplayName=Jimi
UninstallDisplayIcon={app}\Jimi.exe
CloseApplications=yes

[Files]
Source: "..\dist\Jimi\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"

[Icons]
Name: "{group}\Jimi"; Filename: "{app}\Jimi.exe"
Name: "{autodesktop}\Jimi"; Filename: "{app}\Jimi.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Jimi.exe"; Description: "Launch Jimi"; Flags: nowait postinstall skipifsilent
