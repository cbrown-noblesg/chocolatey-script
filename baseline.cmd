@ECHO OFF
ECHO ============================
ECHO Chocolatey Updater
ECHO ============================
:: This batch file reveals OS, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO ============================
ECHO UPDATES
ECHO ============================
:: Developer Updates
choco upgrade python -y
choco upgrade yarn -y
choco upgrade git -y
choco upgrade gh -y
choco upgrade microsoft-edge -y
choco upgrade googlechrome -y
choco upgrade firefox -y
choco upgrade vscode -y
choco upgrade azure-cli -y
choco upgrade microsoftazurestorageexplorer -y
choco upgrade azure-functions-core-tools -y
choco upgrade azurepowershell -y
choco upgrade azure-data-studio -y
choco upgrade docker-desktop -y
choco upgrade 7zip -y
choco upgrade notepadplusplus -y
choco upgrade termius -y
choco upgrade linqpad -y
choco upgrade postman -y
choco upgrade gitkraken -y
choco upgrade tortoisegit -y
choco upgrade winmerge -y
choco upgrade wireguard -y

choco upgrade sql-server-2022 -y
@REM will need to install ssrs manually: https://www.microsoft.com/en-us/download/details.aspx?id=104502
choco upgrade sql-server-management-studio -y
choco upgrade visualstudio2019enterprise -y
choco upgrade visualstudio2019-workload-azure -y
choco upgrade visualstudio2019-workload-node -y
choco upgrade visualstudio2019-workload-manageddesktop -y
choco upgrade visualstudio2019-workload-data -y
choco upgrade visualstudio2019-workload-netweb -y
choco upgrade visualstudio2022enterprise -y
choco upgrade visualstudio2022buildtools -y
choco upgrade visualstudio2022-remotetools -y
choco upgrade visualstudio2022-workload-node -y
choco upgrade visualstudio2022-workload-azure -y
choco upgrade visualstudio2022-workload-azurebuildtools -y
choco upgrade visualstudio2022-workload-manageddesktop -y
choco upgrade visualstudio2022-workload-data -y
choco upgrade visualstudio2022-workload-netweb -y
choco upgrade microsoft-teams -y
choco upgrade 1password -y
:: Meetings
@REM choco upgrade skype -y
choco upgrade microsoft-teams -y
@REM choco upgrade webex-meetings -y
choco upgrade zoom -y
:: Video
@REM choco upgrade obs-studio -y
@REM choco upgrade vlc -y
:: Utilities
@REM choco upgrade rufus -y
@REM choco upgrade ccleaner -y
@REM choco upgrade cpu-z -y
@REM choco upgrade steam -y
@REM choco upgrade grammarly -y
@REM choco upgrade choco-cleaner -y
:: Chocolatey
choco upgrade chocolatey -y

winget install SlackTechnologies.Slack -h --accept-package-agreements --uninstall-previous --disable-interactivity


@REM will need to install ssrs manually: https://www.microsoft.com/en-us/download/details.aspx?id=104502
@REM will need to install wsl manually: https://learn.microsoft.com/en-us/windows/wsl/install
