#wget https://github.com/${GitUser}/
GitUser="Andyyuda"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v7/main/version )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/v7/main/newversion | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo ""
                                                           
echo -e "$green▀████▀ ▀███▀▀████▀   ▀████▄     ▄███▀███▀▀▀██▄▀████▀ ▀███▀ $NC"
echo -e "$green  ██   ▄█▀    ██       ████    ████   ██   ▀██▄ ██   ▄█▀   $NC"
echo -e "$green  ██ ▄█▀      ██       █ ██   ▄█ ██   ██   ▄██  ██ ▄█▀     $NC"
echo -e "$green  █████▄      ██       █  ██  █▀ ██   ███████   █████▄     $NC"
echo -e "$green  ██  ███     ██     ▄ █  ██▄█▀  ██   ██        ██  ███    $NC"
echo -e "$green  ██   ▀██▄   ██    ▄█ █  ▀██▀   ██   ██        ██   ▀██▄  $NC"
echo -e "$green▄████▄   ███▄████████████▄ ▀▀  ▄████▄████▄    ▄████▄   ███▄$NC"
                                                           
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$back_text                 \e[30m[\e[$box CHECK NEW UPDATE\e[30m ]                   \e[m"
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$below VVERSION NOW >> $Info1"
echo -e "   \e[$below SSTATUS UPDATE >> $sts"
echo -e ""
echo -e "       \e[1;31mWould you like to proceed?\e[0m"
echo ""
echo -e "            \e[0;32m[ Select Option ]\033[0m"
echo -e "     \e[$number [1]\e[m \e[$below CCheck Script Update Now\e[m"
echo -e "     \e[$number [x]\e[m \e[$below BBack To Menu\e[m"
echo -e ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "\e[$line"
read -p "PPlease Choose 1 or x : " option2
case $option2 in
1)
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/v7/main/newversion | grep $version )
if [ $version = $new_version ]; then
clear
echo ""
echo -e "\e[1;31mChecking New Version, Please Wait...!\e[m"
sleep 3
clear
echo -e "\e[1;31mUpdate Not Available\e[m"
echo ""
clear
sleep 1
echo -e "\e[1;36mYou Have The Latest Version\e[m"
echo -e "\e[1;31mThankyou.\e[0m"
sleep 2
update1
fi
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/${GitUser}/v7/main/menu/update1.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-vless.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/Andyyuda/v7/main/running.sh"
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/clearcache.sh"
wget -q -O /usr/bin/menu-trgo "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-trgo.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/m-ssws "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/m-ssws.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/update.sh"
wget -q -O /usr/bin/prot "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/prot.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/usernew.sh"
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/trial.sh"
wget -q -O /usr/bin/renew "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/renew.sh"
wget -q -O /usr/bin/hapus "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/hapus.sh"
wget -q -O /usr/bin/cek "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/cek.sh"
wget -q -O /usr/bin/member "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/member.sh"
wget -q -O /usr/bin/delete "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/delete.sh"
wget -q -O /usr/bin/autokill "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/autokill.sh"
wget -q -O /usr/bin/ceklim "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/ceklim.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/tendang.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-set.sh"
wget -q -O /usr/bin/menu-domain "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-domain.sh"
wget -q -O /usr/bin/add-host "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/add-host.sh"
wget -q -O /usr/bin/port-change "https://raw.githubusercontent.com/Andyyuda/v7/main/port/port-change.sh"
wget -q -O /usr/bin/certv2ray "https://raw.githubusercontent.com/Andyyuda/v7/main/xray/certv2ray.sh"
wget -q -O /usr/bin/menu-webmin "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/menu-webmin.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/speedtest_cli.py"
wget -q -O /usr/bin/about "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/about.sh"
wget -q -O /usr/bin/auto-reboot "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/auto-reboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/restart.sh"
wget -q -O /usr/bin/bw "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/bw.sh"
wget -q -O /usr/bin/port-ssl "https://raw.githubusercontent.com/Andyyuda/v7/main/port/port-ssl.sh"
wget -q -O /usr/bin/port-ovpn "https://raw.githubusercontent.com/Andyyuda/v7/main/port/port-ovpn.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/xp.sh"
wget -q -O /usr/bin/acs-set "https://raw.githubusercontent.com/Andyyuda/v7/main/acs-set.sh"
wget -q -O /usr/bin/sshws "https://raw.githubusercontent.com/Andyyuda/v7/main/ssh/sshws.sh"
wget -q -O /usr/bin/bot "https://raw.githubusercontent.com/Andyyuda/bot/main/bot.sh"
wget -q -O /usr/bin/add-bot-notif "https://raw.githubusercontent.com/Andyyuda/bot/main/add-bot-notif.sh"
wget -q -O /usr/bin/del-bot-notif "https://raw.githubusercontent.com/Andyyuda/bot/main/del-bot-notif.sh"
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/Andyyuda/bot/main/menu-bot.sh"
wget -q -O /usr/bin/menu-sstp "https://raw.githubusercontent.com/Andyyuda/sstp/main/menu-sstp.sh"
wget -q -O /usr/bin/menu-l2tp "https://raw.githubusercontent.com/Andyyuda/ipsec/main/menu-l2tp.sh"
wget -q -O /usr/bin/menu-pptp "https://raw.githubusercontent.com/Andyyuda/ipsec/main/menu-pptp.sh"
wget -q -O /usr/bin/menu-ssr "https://raw.githubusercontent.com/Andyyuda/ssr/main/menu-ssr.sh"
wget -q -O /usr/bin/menu-ssl "https://raw.githubusercontent.com/Andyyuda/shadowsocks-libev/main/menu-ssl.sh"
wget -q -O /usr/bin/menu-wg "https://raw.githubusercontent.com/Andyyuda/wireguard/main/menu-wg.sh"
wget -q -O /usr/bin/update1 "https://raw.githubusercontent.com/Andyyuda/v7/main/menu/update1.sh"
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/running
chmod +x /usr/bin/clearcache
chmod +x /usr/bin/menu-trgo
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/m-ssws
chmod +x /usr/bin/update
chmod +x /usr/bin/prot
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/usernew
chmod +x /usr/bin/trial
chmod +x /usr/bin/renew
chmod +x /usr/bin/hapus
chmod +x /usr/bin/cek
chmod +x /usr/bin/member
chmod +x /usr/bin/delete
chmod +x /usr/bin/autokill
chmod +x /usr/bin/ceklim
chmod +x /usr/bin/tendang
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/menu-domain
chmod +x /usr/bin/add-host
chmod +x /usr/bin/port-change
chmod +x /usr/bin/certv2ray
chmod +x /usr/bin/menu-webmin
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/about
chmod +x /usr/bin/auto-reboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/bw
chmod +x /usr/bin/port-ssl
chmod +x /usr/bin/port-ovpn
chmod +x /usr/bin/xp
chmod +x /usr/bin/acs-set
chmod +x /usr/bin/sshws
chmod +x /usr/bin/bot
chmod +x /usr/bin/add-bot-notif
chmod +x /usr/bin/del-bot-notif
chmod +x /usr/bin/menu-bot
chmod +x /usr/bin/menu-sstp
chmod +x /usr/bin/menu-l2tp
chmod +x /usr/bin/menu-pptp
chmod +x /usr/bin/menu-ssr
chmod +x /usr/bin/menu-ssl
chmod +x /usr/bin/menu-wg
chmod +x /usr/bin/update1
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v7/main/version )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
esac
