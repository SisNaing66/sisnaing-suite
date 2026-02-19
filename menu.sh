#!/bin/bash

header() {
clear
echo "====================================================="
echo "              SisNaing VPS Professional"
echo "====================================================="

uptime_info=$(uptime -p)
ip=$(curl -s ipv4.icanhazip.com)
ram=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
cpu=$(nproc)
disk=$(df -h / | awk 'NR==2 {print $3 "/" $2}')
location=$(curl -s ipinfo.io/country)

echo " UPTIME   : $uptime_info"
echo " IPv4     : $ip"
echo " RAM      : $ram"
echo " CPU CORE : $cpu"
echo " DISK     : $disk"
echo " LOCATION : $location"
echo "====================================================="
echo ""
}

while true; do
header

echo "[01] SSH Manager"
echo "[02] Install SisNaing 3X-UI"
echo "[03] UDP Boost"
echo "[04] VPS Tools"
echo "[05] VPS Status"
echo "[06] Clean Cache"
echo "[07] Check Disk"
echo "[08] Reboot VPS"
echo "[00] Exit"
echo ""

read -p "Select Option: " opt

case $opt in

1)
echo "SSH Manager Coming Soon..."
sleep 2
;;

2)
bash modules/xui.sh
read -p "Press Enter to continue..."
;;

3)
echo "UDP Boost Coming Soon..."
sleep 2
;;

4)
echo "VPS Tools Coming Soon..."
sleep 2
;;

5)
clear
echo "===== VPS STATUS ====="
uptime
free -h
df -h
read -p "Press Enter to continue..."
;;

6)
echo "Cleaning Cache..."
sync; echo 3 > /proc/sys/vm/drop_caches
echo "Cache Cleaned!"
sleep 2
;;

7)
df -h
read -p "Press Enter to continue..."
;;

8)
reboot
;;

0)
exit
;;

*)
echo "Invalid Option"
sleep 1
;;

esac
done
