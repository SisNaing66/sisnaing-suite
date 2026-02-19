
#!/bin/bash

clear

CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
NC='\033[0m'

UPTIME=$(uptime -p)
IP=$(curl -s ifconfig.me)
RAM=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
CPU=$(nproc)
DISK=$(df -h / | awk 'NR==2 {print $3 "/" $2}')
LOC=$(curl -s ipinfo.io/country)

echo -e "${MAGENTA}"
echo "══════════════════════════════════════════════"
echo "        🚀  SisNaing VPS Professional 🚀"
echo "══════════════════════════════════════════════"
echo -e "${NC}"

echo -e "${CYAN} UPTIME   : ${GREEN}$UPTIME${NC}"
echo -e "${CYAN} IPv4     : ${GREEN}$IP${NC}"
echo -e "${CYAN} RAM      : ${GREEN}$RAM${NC}"
echo -e "${CYAN} CPU CORE : ${GREEN}$CPU${NC}"
echo -e "${CYAN} DISK     : ${GREEN}$DISK${NC}"
echo -e "${CYAN} LOCATION : ${GREEN}$LOC${NC}"

echo -e "${MAGENTA}══════════════════════════════════════════════${NC}"
