
#!/usr/bin/env bash
#==============================================================================================================
#
#          FILE:  installer.sh
#
#         USAGE:  ./installer.sh
#
#   DESCRIPTION:  Installation WM on a clean Debian Bookworm (12)
#
#        STATUS:  NOT TESTED
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean Debian Bookworm (12) installed with git 
#          BUGS:  ---
#         NOTES:  Read README.md
#        AUTHOR:  Ertan Kayalar, ertankayalar@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  24-06-2023
#      REVISION:  ---
#===============================================================================================================

sudo apt update 


# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# PICK YOUR Window Managers (Uncomment if you want these installed)
bash ~/install-scripts/resources/bspwm-commands
bash ~/install-scripts/resources/dk-commands
bash ~/install-scripts/resources/qtile-commands
bash ~/install-scripts/resources/i3-commands

# XFCE4 Minimal
#sudo apt install -y xfce4 xfce4-goodies

# kde plasma 
# sudo apt install -y kde-full
# sudo apt install -y kde-standard # debian selections
# sudo apt install -y kde-plasma-desktop  # minimal plasma


# Gnome

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager 

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminals 
sudo apt install -y kitty alacritty xsel yank tmux tilix

# Terminal Tools
sudo apt install -y fzf exa ripgrep lsd bat zoxide

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# System tools
sudo apt install -y neofetch htop samba ufw

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr  chromium

# Desktop background browser/handler  and image tools for wm
# feh --bg-fill /path/to/directory 
# sudo apt install -y nitrogen 
sudo apt install -y feh nitrogen variety imagemick flameshot
 

# python pip
sudo apt install -y python3-pip 

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus fonts-noto-hinted fonts-roboto-hinted


# Printing and bluetooth (if needed)
# sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

# sudo systemctl enable cups
sudo systemctl enable bluetooth

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin 

# utils
sudo apt install -y unrar unzip p7zip-full  curl wget

# fav apps

sudo apt install -y numlockx scrot evince pdfarranger transmission-gtk 
sudo apt install -y figlet qimgv l3afpad galculator redshift cpu-x


# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# hardware utils
sudo apt install -y g810-led 


\cp ~/.bashrc ~/.bashrc-old
\cp ~/install-scripts/resources/bashrc ~/.bashrc

sudo apt autoremove

printf "\e[1;32m It's time to run config installer .\e[0m\n"
