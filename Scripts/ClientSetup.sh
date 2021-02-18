#!/bin/bash
# Jansen's bash script before revision by Cody

#Snap Removal
snap_begone(){
    sudo snap remove snap-store
    sudo snap remove gtk-common-themes
    sudo snap remove gnome-3-34-1804
    sudo snap remove core18
    sudo apt purge snapd
    rm -rf ~/snap
    sudo rm -rf /snap
    sudo rm -rf /var/snap
    sudo rm -rf /var/lib/snapd
    sudo snap remove snapd
}
#yes | snap_begone

#standard updates
updates(){
    sudo apt update
    sudo apt-get update
    sudo apt upgrade
}

#yes | updates

#Opens ssh
ssh_server(){
    sudo apt-get install openssh-server
    sudo systemctl start sshd
    sudo ufw allow ssh
    sudo systemctl enable ssh
}

#yes | ssh_server

#sudo apt install git -y

#Installs VS Code
install_VSCode(){
    sudo apt install software-properties-common apt-transport-https wget -y
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt install code -y
    code --version >> ~/Downloads/deployerlog.txt 
}

#install_VSCode

#Installs hubspot. Needs work
install_hubspot(){
    sudo apt install npm
    sudo npm install -g @hubspot/cli@latest
}

#yes | install_hubspot - I think this may not be needed here for the engineers since this is their CRM - this belongs in PowerShell as part of the powershell script setup - the partner to what you've done.


#install slack can't get desktop to open. Needs work
install_slack(){
    wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.3.2-amd64.deb
    sudo dpkg -i slack-desktop-*.deb
}

yes | install_slack
