#!/usr/bin/env bash
#
cd ~/Downloads
git clone https://github.com/ertankayalar/dotfiles

cd ~/Downloads/dotfiles

\cp -rf ~/Downloads/dotfiles/bin/ ~
chmod +x ~/bin/*
sudo cp -rf ~/bin/pulseaudio-control.bash /bin/

bash install.sh


# Install Nerd Fonts
#bash ~/install-scripts/nerdfonts.sh

printf "\e[1;32m sudo timeshift --create  --comments 'after config' .\e[0m\n"
printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"

