#!/bin/bash
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
g="\033[1;93m"
gb="\e[92;1m"
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
function line_atas(){
echo -e " ${CYAN}┌─────────────────────────────────────┐${p}"
}
function line_bawah() {
echo -e " ${CYAN}└─────────────────────────────────────┘${p}"
}
function line_tengah() {
echo -e "   ${CYAN}────────────────────────────────────────${p}"
}
clear
# Link Installation
clear
ipsaya=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/bobon86/TOKEK-TUNNELING/main/ip-admin"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "     ANDA HARUS MENDAFTAR DAHULU UNTUK MENJADI RESSEL       "
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "            ${RED}DAFTAR DULU DEK !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6281327393959"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
cd 
clear
line_atas
echo -e " ${gb}         Download Session             \E[0m"
line_bawah
red "WARNING !!!"
green "Generating download link, Please Wait"
rm -rf /root/results
mkdir /root/results
cp -r /root/shc results/
cd /root
read -rp "masukan nama file: " -e user
sub=$user`</dev/urandom tr -dc A-Z0-9 | head -c4`
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d")
domain=$(cat /etc/xray/domain)
ISP=$(cat /usr/local/etc/xray/org)
zip -r shc-$sub.zip results > /dev/null 2>&1
mv /root/shc-$sub.zip /var/www/html/
link="http://${IP}:81/shc-$sub.zip" 
green "Successfully"
clear
echo ""
echo -e "Detail Link Download
${CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m
Client Name   : ${GREEN}$user${NC}
IP VPS        : ${BLUE}$IP${NC}
Domain        : ${GREEN}$domain${NC}
Date           : ${GREEN}$date${NC}
Link Download : ${RED}$link${NC}
${CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
rm -rf /root/results
echo ""
echo "You can download and extract the results file above"
red "Credit Script by TOKEK TUNNELING"
echo ""
read -n 1 -s -r -p "Press any key to back in encryption menu"
menuenc