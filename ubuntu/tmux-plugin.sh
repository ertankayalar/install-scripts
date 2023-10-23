#!/usr/bin/env bash
#
CONFIG_HOME="$HOME/.config"

git clone https://github.com/tmux-plugins/tpm "$CONFIG_HOME/tmux/plugins/tpm"
"$CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
