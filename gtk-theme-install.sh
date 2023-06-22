#!/bin/bash

# Fedora
# dnf install gtk-murrine-engine gtk2-engines

# debian & ubuntu
sudo apt-get install -y gtk2-engines-murrine gtk2-engines-pixbuf sassc

mkdir ~/Documents/Linux
mkdir ~/Documents/Linux/Themes 
cd ~/Documents/Linux/Themes

git clone https://github.com/vinceliuice/Qogir-theme.git 
cd Qogir-theme

./install.sh -i debian --tweaks square


cd ~/Documents/Linux/Themes
git clone https://github.com/vinceliuice/Qogir-icon-theme.git
cd Qogir-icon-theme
./install.sh 

