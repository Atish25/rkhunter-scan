#!/bin/sh
# Display welcome messages!
clear
echo -e "\e[31m|-------------------[\e[96] RK HUNTER INSTALL && SCAN \e[0m\e[31m]-----------------|\e[0m"
echo -e "\e[31m|                                                                   |\e[0m"
echo -e "\e[31m|  #############        ####      ####                              |\e[0m"
echo -e "\e[31m|  #####    ####        ####   ####                     \e[96m{V.1.0}\e[0m\e[31m |\e[0m"
echo -e "\e[31m|  #####    ####        #### ###                                    |\e[0m"
echo -e "\e[31m|  #############        #### ##                                     |\e[0m"
echo -e "\e[31m|  #####   ####         ##### ####                                  |\e[0m"
echo -e "\e[31m|  #####    #####       #####    ###                                |\e[0m"
echo -e "\e[31m|  #####     #######    #####       ####                            |\e[0m"
echo -e "\e[31m|                       \e[96m (c) 2016 WRITTEN BY ATISH) \e[0m\e[31m|\e[m"
echo -e "\e[31m|--------- ------------  -------------------------------------------|\e[0m"

read -p 'Would you like to Scan Your Server [y/n]: ' answer
    if [ "$answer" != 'y' ] && [ "$answer" != 'Y'  ]; then
        echo 'Thank You '
        exit 1
    fi

git clone https://github.com/crunchsec/rkhunter.git
cd rkhunter/
sh installer.sh --install
printf "\n" | /usr/local/bin/rkhunter --update
printf "\n" | /usr/local/bin/rkhunter --propupd
printf "\n" | rkhunter --check
exit
