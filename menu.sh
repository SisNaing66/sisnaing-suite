#!/bin/bash

while true; do
bash core/header.sh

echo -e "\033[1;34m[01]\033[0m 🔐 SSH Manager"
echo -e "\033[1;34m[02]\033[0m ⚡ Install SisNaing 3X-UI"
echo -e "\033[1;34m[03]\033[0m 🚀 UDP Boost"
echo -e "\033[1;34m[04]\033[0m 🛠 VPS Tools"
echo -e "\033[1;34m[05]\033[0m 📊 VPS Status"
echo -e "\033[1;34m[06]\033[0m 🧹 Clean Cache"
echo -e "\033[1;34m[07]\033[0m 💾 Check Disk"
echo -e "\033[1;34m[08]\033[0m 🔄 Reboot VPS"
echo -e "\033[1;31m[00]\033[0m ❌ Exit"
echo ""

read -p "Select Option ➜ " opt

case $opt in
1) echo "Coming Soon..."; sleep 2 ;;
2) bash modules/xui.sh ;;
3) echo "UDP Boost Coming Soon..."; sleep 2 ;;
4) echo "VPS Tools Coming Soon..."; sleep 2 ;;
5) uptime; read -p "Press Enter..." ;;
6) sync; echo 3 > /proc/sys/vm/drop_caches; echo "Cache Cleaned"; sleep 2 ;;
7) df -h; read -p "Press Enter..." ;;
8) reboot ;;
0) exit ;;
*) echo "Invalid Option"; sleep 1 ;;
esac
done
