
#!/bin/bash
clear;
echo -e "\n---Disk UUID---\n";
sudo ls -l /dev/disk/by-uuid/;
echo -e "\n---lsblk---\n";
sudo lsblk;
echo -e "\n---df---\n";
sudo df -h;
echo -e "\n";
