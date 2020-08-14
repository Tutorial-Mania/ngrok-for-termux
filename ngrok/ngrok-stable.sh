#!bin/bash

if [[ -e ngrok ]]; then
echo "Done"
elif [[ -e ngrok-2.2.8-linux-arm.zip ]]; then
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
echo "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m Please cheack your internet\e[0m\n"
exit 1
fi