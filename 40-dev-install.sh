#!/usr/bin/env bash


# Nodejs 20
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
apt-get install -y nodejs

# Neovim
# Build prerequisites
sudo apt install ninja-build gettext cmake unzip curl

# clone
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb


# lazy.nvim

 
sudo apt install fzf exa ripgrep lsd bat

# Starship
curl -sS https://starship.rs/install.sh | sh

# PNPM Installation 
curl -fsSL https://get.pnpm.io/install.sh | sh -

# zoxide
