#!/usr/bin/env bash
#==============================================================================================================
#
#          FILE:  debian-awesome-setup.sh
#
#         USAGE:  bash debian-awesome-install.sh
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
#sudo apt install -y zram-tools vim micro

#sudo vim /etc/default/zramswap

# INCLUDES make,etc.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# xfce 
sudo apt install -y xfce4 xfce4-goodies 

# kde plasma 
# sudo apt install -y kde-full
# sudo apt install -y kde-standard # debian selections
# sudo apt install -y kde-plasma-desktop  # minimal plasma

# awesome
sudo apt install -y awesome awesome-extra luarocks lightdm
#
# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# awesome utils 
sudo apt install -y  xfce4-power-manager numlockx volumeicon-alsa  rofi i3lock bluez bluez-alsa-utils bluez-tools blueman scrot alsa-utils xbacklight conky-all redshift cmatrix picom  

# image tools for wm
sudo apt install -y nitrogen variety feh imagemagick flameshot

# system tools
sudo apt install -y git ufw neofetch htop vim samba

# apps
sudo apt install -y chromium 

# utils
sudo apt install -y unrar unzip p7zip-full 

# hardware utils
sudo apt install -y g810-led 

# python 
sudo apt install -y python3-pip python3-neovim

# devtools
sudo apt install -y sqlite3

# terminals
sudo apt install -y alacritty kitty xsel yank tmux

# Install fonts
sudo apt install -y fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus 

# Install Nerd Fonts
source nerdfonts.sh

