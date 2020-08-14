#!bin/bash

menu() {

echo "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m [1] - Download Ngrok Letest Version\e[0m"
echo "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m [2] - Download Ngrok Version 2.2.8\e[0m"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

if [[ $option == 1 ]]; then 
bash /.ngrok/ngrok-stable.sh

elif [[ $option == 2 ]]; then
bash /.ngrok/ngrok-2.2.8.sh

else
echo "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m Please cheack your internet\e[0m\n"
exit 1
menu
fi
}
