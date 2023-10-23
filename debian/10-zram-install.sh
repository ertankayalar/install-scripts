#!/usr/bin/env bash

# Debian Awesome WM Setup
sudo apt update -y

# zram
sudo apt install -y zram-tools vim micro timeshift

sudo vim /etc/default/zramswap

printf "\e[1;32m Don't forget TimeShift Backup!.\e[0m\n"
printf "\e[1;32m sudo timeshift --create --comments 'inital install' .\e[0m\n"
