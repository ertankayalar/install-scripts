#!/usr/bin/env bash

THEME_FOLDER = "~/Documents/Linux/Themes"
mkdir ~/Documents/Linux
cd $THEME_FOLDER 

# Fedora
# dnf install gtk-murrine-engine gtk2-engines

# debian & ubuntu
sudo apt-get install -y gtk2-engines-murrine gtk2-engines-pixbuf sassc

# Qogir Gtk Theme
cd $THEME_FOLDER
git clone https://github.com/vinceliuice/Qogir-theme.git 
cd Qogir-theme
./install.sh -i debian --tweaks square

# Qogir Icon Theme
cd $THEME_FOLDER
git clone https://github.com/vinceliuice/Qogir-icon-theme.git
cd Qogir-icon-theme
./install.sh 

# Colloid Gtk Theme 
cd $THEME_FOLDER
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme 
./install.sh --scheme dracula --theme purple teal

# Lavanda GTK Theme
cd $THEME_FOLDER
git clone https://github.com/vinceliuice/Lavanda-gtk-theme.git
cd Lavanda-gtk-theme
./install.sh --icon debian


cd ~/
printf "\e[1;32m Themes are installed.\e[0m\n"

