#!bin/bash

echo "  [1] - Download Ngrok Letest Version"
echo "  [2] - Download Ngrok Version 2.2.8"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

if [[ $option == 1 ]]; then 
bash ngrok/ngrok-stable.sh

elif [[ $option == 2 ]]; then
bash ngrok/ngrok-2.2.8.sh

else
echo " Inviald Option"
exit 1
fi
