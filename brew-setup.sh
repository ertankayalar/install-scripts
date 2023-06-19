#!/usr/bin/env bash

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.profile
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# brew tools

brew install gcc 

#tmuxp 
brew install neovim fzf exa ripgrep starship lsd tmux 

brew install bat zoxide lsd

brew install nodejs npm 
npm i -g eslint neovim npm-check-updates

# install from original source
curl -fsSL https://get.pnpm.io/install.sh | sh -

pnpm i -g neovim eslint npm-check-updates



