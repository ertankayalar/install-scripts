
CONFIG_HOME="$HOME/.config"

#cp $HOME/OS/dotfiles/.config/tmux/tmux.conf $CONFIG_HOME/tmux

# Tmux Plugins
git clone https://github.com/tmux-plugins/tpm "$CONFIG_HOME/tmux/plugins/tpm"
"$CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
