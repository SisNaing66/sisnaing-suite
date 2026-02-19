#!/bin/bash

while true; do
clear

bash core/header.sh

echo "[01] SSH Manager"
echo "[02] Install SisNaing 3X-UI"
echo "[03] UDP Boost"
echo "[04] VPS Tools"
echo "[00] Exit"
echo ""

read -p "Select Option: " opt

case $opt in
1) bash modules/ssh.sh ;;
2) bash modules/xui.sh ;;
3) bash modules/udp.sh ;;
4) bash modules/tools.sh ;;
0) exit ;;
*) echo "Invalid Option"; sleep 1 ;;
esac

done
