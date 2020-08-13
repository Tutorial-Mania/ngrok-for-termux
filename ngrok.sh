#!bin/bash

if [[ -e ngrok ]]; then
echo "Done"
elif [[ -e ngrok-2.2.8-linux-arm.zip ]]; then
apt-get install unzip
unzip ngrok-2.2.8-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm.zip
echo "Done"
elif [[ x != ngrok-2.2.8-linux-arm.zip ]]; then
apt-get install wget
wget https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm.zip
unzip ngrok-2.2.8-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm.zip
echo "Done"
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi
