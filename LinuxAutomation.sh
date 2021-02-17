#!/bin/bash

# Unfinished- Regular File backup, Drive partitioning and formatting 

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
