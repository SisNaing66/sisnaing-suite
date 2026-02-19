#!/bin/bash

while true; do
clear

GREEN='\033[1;32m'
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

UPTIME=$(uptime -p)
IP=$(curl -s ifconfig.me)
RAM=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
CPU=$(nproc)
DISK=$(df -h / | awk 'NR==2 {print $3 "/" $2}')
LOC=$(curl -s ipinfo.io/country)

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " UPTIME      : $UPTIME"
echo -e " IPv4        : $IP"
echo -e " SERVER RAM  : $RAM"
echo -e " CPU CORES   : $CPU"
echo -e " LOCATION    : $LOC"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e "${MAGENTA}"
echo "                     MENU"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"

echo -e "${GREEN}[01] • SSH MANAGER                [07] • DARK SSH"
echo -e "[02] • INSTALL SISNAING 3X-UI     [08] • ALIREZA 3X-UI"
echo -e "[03] • UDP BOOST                  [09] • VPN UNINSTALL"
echo -e "[04] • VPS TOOLS                  [10] • DOTY TUNNEL"
echo -e "[05] • VPS STATUS                 [11] • SELECTOR TOOL"
echo -e "[06] • RDP INSTALLER"
echo -e "${NC}"

echo -e "${YELLOW}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "                     TOOLS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"

echo -e "${GREEN}[12] • SYSTEM UPDATE              [16] • SERVER BENCHMARK"
echo -e "[13] • CLEAN CACHE                [17] • VPN PORT INFO"
echo -e "[14] • CHECK DISK SPACE           [18] • CLEAN VPS LOGS"
echo -e "[15] • VPS STATUS"
echo -e "${NC}"

echo -e "${RED}[00] • EXIT                         [88] • REBOOT VPS${NC}"
echo ""
echo -e "${MAGENTA}VERSION : 3.0"
echo -e "SCRIPT BY : SisNaing💥"
echo -e "OWNER     : SisNaing💥${NC}"
echo ""

read -p "Select Menu : " opt

case $opt in
1) echo "SSH Manager Coming Soon..."; sleep 2 ;;
2) bash modules/xui.sh ;;
3) echo "UDP Boost Coming Soon..."; sleep 2 ;;
4) echo "VPS Tools Coming Soon..."; sleep 2 ;;
5) uptime; read -p "Press Enter..." ;;
12) apt update -y ;;
13) sync; echo 3 > /proc/sys/vm/drop_caches; echo "Cache Cleaned"; sleep 2 ;;
14) df -h; read -p "Press Enter..." ;;
88) reboot ;;
0) exit ;;
*) echo "Invalid Option"; sleep 1 ;;
esac

done
