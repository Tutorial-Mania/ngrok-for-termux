#bin/bash
echo "╔══════════════════════════════════╗"
echo "║        Ngrok for Termux          ║"
echo "║   Developed by: Tutorial_Mania   ║"
echo "╠══════════════════════════════════╣"
echo "╠══════════════════════════════════╣"
echo "║   [1] - Download Ngrok Stable    ║"
echo "║   [2] - Download Ngrok 2.2.8     ║"
echo "╚══════════════════════════════════╝"

read -p $"    Choose your option: " op

if [[ $op == 1 ]]; then
if [[ -e ngrok-stable-linux-arm.zip ]]; then
apt-get install unzip -y
unzip ngrok-stable-linux-arm.zip
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

elif [[$op == 2 ]]; then
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

else
echo ""
echo "  Invalid option!"
echo ""
fi
