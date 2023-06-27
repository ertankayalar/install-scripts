#!/usr/bin/env bash


# Neovim
# Build prerequisites
sudo apt install -y ninja-build gettext cmake unzip curl

# clone
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i -y nvim-linux64.deb

# lazy.nvim
 
sudo apt install -y fzf exa ripgrep lsd bat zoxide

# Starship
curl -sS https://starship.rs/install.sh | sh

# Nodejs 
sudo -i
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
apt-get install -y nodejs
exit 

# PNPM Installation 
curl -fsSL https://get.pnpm.io/install.sh | sh -

# npm global setup
rm -rf $HOME/.npm-global
mkdir $HOME/.npm-global
npm config set prefix $HOME/.npm-global
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' | tee -a ~/.profile 
source $HOME/.profile


CONFIG_HOME="$HOME/.config"

git clone https://github.com/tmux-plugins/tpm "$CONFIG_HOME/tmux/plugins/tpm"
"$CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
