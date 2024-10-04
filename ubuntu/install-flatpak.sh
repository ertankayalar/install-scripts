#!/bin/bash

# Install flatpak
sudo apt -y install flatpak
# Add flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install gnome-software-plugin-flatpak
sudo apt install -y gnome-software-plugin-flatpak
