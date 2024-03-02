# homebrew

sudo apt install -y wget curl
sudo apt install -y build-essential

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.bashrc

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# brew tools

brew install gcc

#tmuxp
brew install neovim
brew install bat zoxide lsd eza zoxide starship

# Developer Tools
brew install nodejs npm lazygit hugo

# Npm Tools
npm i -g eslint neovim npm-check-updates

