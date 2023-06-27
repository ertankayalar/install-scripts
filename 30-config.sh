#!/usr/bin/env bash
#
cd ~/Downloads
git clone https://github.com/ertankayalar/dotfiles

\cp -r ~/Downloads/dotfiles/bin/ ~
chmod +x ~/bin/*
sudo cp ~/bin/pulseaudio-control.bash /bin/
\cp -r ~/Downloads/dotfiles/.config/backgrounds/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/bspwm/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/dk/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/dunst/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/i3/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/picom/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/polybar/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/qtile/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/sxhkd/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/suckless/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/tint2/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/rofi/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/neofetch/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/redshift/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/alacritty/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/kitty/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/tmux/ ~/.config/


printf "\e[1;32m sudo timeshift --create  --comments 'after config' .\e[0m\n"
printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"

