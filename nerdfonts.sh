#!/usr/bin/env bash

sudo apt install unzip -y

mkdir ~/.local/share/fonts

cd /tmp
fonts=( 
"FiraCode" 
"Go-Mono" 
"Hack" 
"Iosevka" 
"JetBrainsMono" 
"Mononoki"  
"SourceCodePro" 
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/$font.zip
    unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache

