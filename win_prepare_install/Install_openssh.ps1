Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
#If it didn't install, please check actual version, use:

#Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'

#and paste correct -Name at first line
Start-Service sshd
# OPTIONAL but recommended:
Set-Service -Name sshd -StartupType 'Automatic'
# Confirm the Firewall rule is configured. It should be created automatically by setup. 

#Get-NetFirewallRule -Name *ssh*

# There should be a firewall rule named "OpenSSH-Server-In-TCP", which should be enabled
# If the firewall does not exist, create one, uncommented down string

# New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22