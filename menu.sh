#!/bin/bash

clear

while true; do
echo "======================================"
echo "      SisNaing VPS Professional"
echo "======================================"
echo ""
echo "[01] Install SisNaing 3X-UI"
echo "[02] System Tools"
echo "[00] Exit"
echo ""
read -p "Select Option: " opt

case $opt in
1) bash modules/xui.sh ;;
2) echo "Tools coming soon..." ;;
0) exit ;;
*) echo "Invalid Option" ;;
esac
done
