#!/usr/bin/env bash

sudo apt install -y ripgrep luarocks sqlite3

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# brew tools

brew install gcc 

#tmuxp 
brew install neovim 


brew install nodejs npm lazygit
#npm i -g eslint neovim npm-check-updates

#brew install bat zoxide lsd exa zoxide 
# sudo apt install nodejs npm bat zoxide lsd
# install from original source
curl -fsSL https://get.pnpm.io/install.sh | sh -

#npm i -g eslint neovim npm-check-updates
#pnpm i -g neovim eslint npm-check-updates



