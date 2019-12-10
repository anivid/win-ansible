powershell.exe Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
powershell.exe -ExecutionPolicy ByPass -file Upgrade-PowerShell.ps1
powershell.exe -ExecutionPolicy ByPass -file install_openssh.ps1
reg import openSsh_defaultshell.reg
