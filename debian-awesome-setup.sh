#!/usr/bin/env bash

# Debian Awesome WM Setup
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
sudo apt install git neofetch htop vim xfce4-power-manager numlockx volumeicon-alsa nitrogen variety chromium feh imagemagick rofi i3lock bluez bluez-alsa-utils bluez-tools blueman scrot alsa-utils xbacklight conky-all redshift cmatrix picom

# utils
sudo apt install -y g810-led unrar unzip p7zip-full flameshot

# python 
sudo apt install -y python3-pip python3-neovim

# devtools
sudo apt install -y sqlite3

# terminals
sudo apt install -y alacritty kitty xsel yank

# Install fonts
sudo apt install fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus 

# Install Nerd Fonts
 source ./nerdfonts.sh


