#!bin/bash

apt-get install wget
apt-get install unzip
wget https://bin.equinox.io/a/e93TBaoFgZw/ngrok-2.2.8-linux-arm.zip
if [[ -e ngrok-2.2.8-linux-arm.zip ]]; then
unzip ngrok-2.2.8-linux-arm.zip
chmod +x ngrok
rm -rf ngrok-2.2.8-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0>
exit 1
fi
