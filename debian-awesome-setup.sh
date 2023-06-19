#!/usr/bin/env bash
#==============================================================================================================
#
#          FILE:  debian-awesome-setup.sh
#
#         USAGE:  bash debian-awesome-setup.sh
#
#   DESCRIPTION:  Installation AwesomeWM on a clean Debian Bookworm (12)
#
#        STATUS:  TESTED
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean Debian Bookworm (12) 
#                 installed with git 
#          BUGS:  ---
#         NOTES:  Read README.md
#        AUTHOR:  Ertan Kayalar, ertankayalar@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  19-06-2023
#      REVISION:  ---
#===============================================================================================================

sudo apt update 


# zram
sudo apt install -y zram-tools vim micro

sudo vim /etc/default/zramswap

# INCLUDES make,etc.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# xfce 
sudo apt install -y xfce4 xfce4-goodies samba

# awesome
sudo apt install -y awesome awesome-extra luarocks lightdm

# system tools
sudo apt install -y git ufw neofetch htop vim xfce4-power-manager numlockx volumeicon-alsa  rofi i3lock bluez bluez-alsa-utils bluez-tools blueman scrot alsa-utils xbacklight conky-all redshift cmatrix picom 

# apps
sudo apt install -y chromium 

# image tools
sudo apt install -y nitrogen variety feh imagemagick flameshot

# utils
sudo apt install -y g810-led unrar unzip p7zip-full 

# python 
sudo apt install -y python3-pip python3-neovim

# devtools
sudo apt install -y sqlite3

# terminals
sudo apt install -y alacritty kitty xsel yank

# Install fonts
sudo apt install -y fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus 

# Install Nerd Fonts
source nerdfonts.sh

# Flatpak
sudo apt install flatpak -y
# apt install gnome-software-plugin-flatpak -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
