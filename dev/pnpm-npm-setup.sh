#!/usr/bin/env bash

# PNPM Installation 
curl -fsSL https://get.pnpm.io/install.sh | sh -

# npm global setup
rm -rf $HOME/.npm-global
mkdir $HOME/.npm-global
npm config set prefix $HOME/.npm-global
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' | tee -a ~/.profile 
source $HOME/.profile
