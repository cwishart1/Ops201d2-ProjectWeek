#Jansen's Powershell script
#The goal is to use Chocolately to download packages.
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Installs and upgrades Brave
choco install brave -y 

choco upgrade brave -y

#Installs and upgrades Slack 
choco install slack -y

choco upgrade slack -y
