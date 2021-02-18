# Author: Cody

# Needs to be combined with main ps1

# Format new disc
Initialize-Disk -Number 1
New-Partition -DiskNumber 1 -Size 45gb -DriveLetter E
Format-Volume -DriveLetter E -FileSystem NTFS -NewFileSystemLabel Backup -Confirm:$false

# Creating backup scripts
echo 'robocopy "C:\Users" "E:\Users" /MIR /xj' > "C:\DailyBackup.ps1"
echo 'robocopy "C:\Windows" E:\OS" /MIR' > "C:\WeeklyBackup.ps1"

# Creating Tasks
SCHTASKS /Create /SC Daily /TN "Daily Backup" /TR "C:\DailyBackup.ps1" /ST 23:59
SCHTASKS /Create /SC Weekly /TN "Weekly OS Backup" /TR "C:\WeeklyBackup.ps1" /ST 23:59 /D FRI
