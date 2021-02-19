#!/bin/bash
# All original code authors mentioned below. This script was edited and revised by Cody
# Unfinished- Regular File backup

###################### Jansen #########################

# standard updates
sudo apt update
sudo apt-get update
sudo apt upgrade

# Snap Removal
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

# Opens ssh
sudo apt-get install openssh-server -y
sudo systemctl start sshd
sudo ufw allow ssh
sudo systemctl enable ssh

# Install Git
sudo apt install git-all -y

#Installs VS Code
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo apt install code -y
code --version >> ~/Downloads/deployerlog.txt 

#install slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.3.2-amd64.deb
sudo dpkg -i slack-desktop-*.deb -y

# RDP config
sudo apt install gconf2 -y
gconftool-2 -s -t bool /desktop/gnome/remote_access/enabled true
sudo apt install xrdp -y

###################### Jansen #########################

################ TOM ESCH ###############

# Prospect Mail (Outlook Client)
sudo apt update
sudo apt install snapd
sudo snap install prospect-mail

# Source:
#https://websiteforstudents.com/install-prospect-mail-unofficial-outlook-365-client-on-ubuntu-18-04/

# Thunderbird Client
sudo apt-get install thunderbird

# Source:
# https://vitux.com/how-to-install-and-setup-thunderbird-email-client-in-ubuntu/

############### TOM ESCH ##################


################# Cody #####################

# disc partitioning, formatting and mounting
echo 'type=83' | sudo sfdisk /dev/sdb
sudo mkfs -t ext4 /dev/sdb1
sudo mkdir -p /mt/sdb1
sudo mount -t auto /dev/sdb1 /mt/sdb1
