#!/usr/bin/env bash

#==============================================================================================================
#
#          FILE:  dev-tools-install.sh
#
#         USAGE:  bash dev-tools-setup.sh
#
#   DESCRIPTION:  Installation of dev tools
#
#        STATUS:  TESTED
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean Debian Bookworm (12) 
#                 installed with git 
#          BUGS:  ---
#         NOTES:  Read README.md
#        AUTHOR:  Ertan Kayalar, ertankayalar@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  19-06-2023
#      REVISION:  ---
#===============================================================================================================
# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.profile
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# brew tools

brew install gcc 

#tmuxp 
brew install neovim fzf exa ripgrep starship lsd 

brew install bat zoxide lsd

brew install nodejs npm 
npm i -g eslint neovim npm-check-updates

# install from original source
curl -fsSL https://get.pnpm.io/install.sh | sh -

pnpm i -g neovim eslint npm-check-updates



