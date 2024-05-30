#/bin/bash 

# Brew
sudo apt install -y wget curl
sudo apt install -y build-essential

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> $HOME/.bashrc

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc
#brew install neovim
brew install tmux bat zoxide eza fzf
brew install nodejs npm lazygit

sudo snap install hugo


# Npm Tools
npm i -g eslint neovim npm-check-updates
