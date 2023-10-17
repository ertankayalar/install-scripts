#!/usr/bin/env bash
sudo apt update

sudo apt install -y kitty xsel yank tmux htop

sudo apt install -y python3-pip sqlite3 luarocks

sudo apt install -y whois

#curl -sL https://deb.nodesource.com/setup_20.x -o ~/Downloads/nodesource_setup.sh
#sudo bash ~/Downloads/nodesource_setup.sh

# brew tools
brew install fzf exa ripgrep lsd bat zoxide
brew install neovim hugo
brew install node npm pnpm yarn
# sudo apt install python3-pynvim
