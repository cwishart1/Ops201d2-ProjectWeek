#!/bin/bash
# Made by Cody
# If using for personal use 'lsblk' to find the three letter name of the drive, example sdb.
# If the disk you want to format name is NOT sdb replace every instance of sdb in this script 
# with the name of your disk

echo 'type=83' | sudo sfdisk /deb/sdb
sudo mkfs -t ext4 /dev/sdb1
sudo mkdir -p /mt/sdb1
sudo mount -t auto /dev/sdb1 /mt/sdb1
