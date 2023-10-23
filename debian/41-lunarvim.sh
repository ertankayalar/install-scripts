#!/usr/bin/env bash

# restart check before brew setup
echo "Lunarvim setup starting."

# Check if the script needs to restart
if [ "$1" != "restarted" ]; then
  echo "Restarting the script..."
  sleep 2  # Adding a delay for demonstration purposes
  
  # Use 'exec' to replace the current shell process with a new one running the same script
  exec bash "$0" "restarted"
fi

LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)


