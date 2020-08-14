#bin/bash
echo ""
echo "   ╔═════════════════════════════════════╗"
echo -e "   ║         \e[92m Ngrok for Termux\e[97m           ║"
echo "   ╠═════════════════════════════════════╣"
echo "   ║     Developed by:\e[96m Tutorial-Mania\e[97m    ║"
echo "   ╠═════════════════════════════════════╣"
echo "   ║\e[31m https://youtube.com/tutorialmaniabd\e[97m ║"
echo "   ╠═════════════════════════════════════╣"
echo "   ║    [1] - Download Ngrok Stable      ║"
echo "   ║    [2] - Download Ngrok 2.2.8       ║"
echo "   ║    [0] - Exit                       ║"
echo "   ╚═════════════════════════════════════╝"
echo ""
read -p $"      Enter your option: " op

if [[ $op == 1 ]]; then

if [[ -e ngrok-stable-linux-arm.zip ]]; then
apt-get install unzip -y
unzip ngrok-stable-linux-arm.zip -O stable ngrok/
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
echo "Done"
elif [[ ! -e ngrok-2.2.8-linux-arm.zip ]]; then
apt-get install wget -y
wget https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
echo "Done"
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m Please cheack your internet connection\e[0m\n"
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
echo "Done"
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m Please cheack your internet connection\e[0m\n"
exit 1
fi

elif [[ $op -eq 0 ]]; then
echo ""
echo "   Bye Bye"
echo ""
exit 1

else
echo ""
echo "  \e[31m Invalid option!\e[97m"
sleep 2
bash ngrok-for-termux.sh
fi
