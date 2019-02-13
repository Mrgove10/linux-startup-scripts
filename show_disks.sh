#!/bin/bash
sudo lsblk;
echo -e "\n---\n";
sudo ls -l /dev/disk/by-uuid/;
#!/bin/bash
clear;
echo -e "---lsblk---\n";
sudo lsblk;
echo -e "\n---Disk UUID---\n";
sudo ls -l /dev/disk/by-uuid/;
echo -e "\n---df---\n";
df -h;
echo -e "\n";
