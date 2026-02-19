#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
PURPLE='\033[1;35m'
NC='\033[0m'

clear
echo -e "${PURPLE}"
echo "======================================"
echo "      SisNaing VPS Professional"
echo "======================================"
echo -e "${NC}"

echo -e "${CYAN}[01] SSH Manager${NC}"
echo -e "${CYAN}[02] Install SisNaing 3X-UI${NC}"
echo -e "${CYAN}[03] UDP Boost${NC}"
echo -e "${CYAN}[04] VPS Tools${NC}"
echo -e "${RED}[00] Exit${NC}"
echo ""

read -p "Select Option: " opt

case $opt in
1) echo "SSH Manager"; read ;;
2) echo "3X-UI Installer"; read ;;
3) echo "UDP Boost"; read ;;
4) echo "Tools"; read ;;
0) exit ;;
*) echo "Invalid Option"; sleep 1; bash menu.sh ;;
esac
