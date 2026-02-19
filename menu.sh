#!/bin/bash

while true; do
clear
echo "======================================="
echo "        SisNaing VPS Professional"
echo "======================================="
echo ""
echo "[01] SSH Manager"
echo "[02] Install SisNaing 3X-UI"
echo "[03] UDP Boost"
echo "[04] VPS Tools"
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
0)
exit
;;
*)
echo "Invalid Option"
sleep 1
;;
esac
done
