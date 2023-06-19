#!/usr/bin/env bash

# Debian Awesome WM Setup
sudo apt update -y

# zram
sudo apt install -y zram-tools vim micro

sudo vim /etc/default/zramswap

