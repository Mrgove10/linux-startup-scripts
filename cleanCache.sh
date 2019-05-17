#source : https://www.techpaste.com/2018/02/shell-script-linux-clear-cache/

#!/bin/bash

#Calculates the current percentage of free RAM available in system
_ram_avl=`free | grep Mem | awk '{print $4/$2 * 100.0}' | awk -F'.' '{print $1}'`

#If free percentage is less than equal to 15% of total RAM trigger the cleanup

if [ $_ram_avl -le 15 ]; then

echo "RAM available in system is below 15 percentage clearing cache and freeing up memory";
echo
free && sync && echo 3 > /proc/sys/vm/drop_caches && free
echo
sudo sysctl vm.drop_caches=1
echo
fi;