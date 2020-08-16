#bin/bash
clear
echo ""
echo -e "   ╔═════════════════════════════════════╗"
echo -e "   ║         \e[92m Ngrok for Termux\e[97m           ║"
echo -e "   ╠══════════════════════════════════════╣"
echo -e "   ║            Version - 1.0             ║"
echo -e "   ╠══════════════════════════════════════╣"
echo -e "   ║     Developed by:\e[96m Tutorial-Mania\e[97m     ║"
echo -e "   ╠══════════════════════════════════════╣"
echo -e "   ║\e[31m https://facebook.com/tutorialmaniabd\e[97m ║"
echo -e "   ╠══════════════════════════════════════╣"
echo "   ║    [1] - Download Ngrok Stable      ║"
echo "   ║    [2] - Download Ngrok 2.2.8       ║"
echo "   ║    [3] - Update                     ║"
echo "   ║    [0] - Exit                       ║"
echo "   ╚═════════════════════════════════════╝"
echo ""
read -p $"   Enter your option: " op

if [[ $op == 1 ]]; then

if [[ -e ngrok-stable-linux-arm.zip ]]; then
apt-get install unzip -y
unzip ngrok-stable-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
echo "Done"
elif [[ ! -e ngrok-2.2.8-linux-arm.zip ]]; then
apt-get install wget -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
echo -e " \e[92m Done\e[97m"
else
printf "\e[1;93m[!] Download error...\e[0m\e[1;77m Please cheack your internet connection.\e[0m\n"
exit 1
fi

elif [[ $op == 2 ]]; then

if [[ -e ngrok-2.2.8-linux-arm.zip ]]; then
apt-get install unzip -y
unzip ngrok-2.2.8-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm.zip
echo "Done"
elif [[ ! -e ngrok-2.2.8-linux-arm.zip ]]; then
apt-get install wget -y
wget https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm.zip
unzip ngrok-2.2.8-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm.zip
echo -e " \e[92m Done\e[97m"
else
printf "\e[1;93m[!] Download error...\e[0m\e[1;77m Please cheack your internet connection.\e[0m\n"
exit 1
fi

elif [[ $op -eq 3 ]]; then
echo ""
echo -e "   \e[93m Updating...\e[0m"
apt-get install git -y
cd ..
rm -rf ngrok-for-termux
git clone https://github.com/Tutorial-Mania/ngrok-for-termux.git
echo ""
echo -e "   \e[32m Updated\e[0m"
sleep 2
clear
exit 1

elif [[ $op -eq 0 ]]; then
echo ""
echo "   Bye Bye"
echo ""
exit 1

else
echo ""
echo -e "  \e[31m Invalid option!\e[97m"
sleep 2
bash ngrok-for-termux.sh
fi
