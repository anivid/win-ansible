# win-ansible

This solution is used to pre-installation a remote computers in corporate domain via ssh. To prepare PC for work with ansible, you must input you local admin-credentials in Upgrade-PowerShell.ps1 file (or use params in INSTALL.CMD, like Upgrade-PowerShell.ps1 -version 4.0 -username "Administrator" -password "Password") run INSTALL.CMD file as Administrator. Then you can configuring PCs using playbooks and inventory-file, which contains your machines and local admin credentials.

To run:

    sudo ansible-playbook -i inventory.yml playbooks/your_playbook.yml --ask-pass

Tested on clean installed Windows 10-machines (1809 and 1903).
