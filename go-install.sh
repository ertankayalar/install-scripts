#!/usr/bin/env bash

cd ~/Downloads

wget https://golang.org/dl/go1.20.6.linux-amd64.tar.gz

# remove previous install
sudo rm -rf /usr/local/go 

# install go
sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz


echo 'export PATH="/usr/local/go/bin:$PATH"' | tee -a ~/.bashrc

source $HOME/.bashrc

go version
