#!/bin/bash

# Script to install VirtualBox on Ubuntu 22.04

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install required dependencies
echo "Installing required dependencies..."
sudo apt install -y wget apt-transport-https software-properties-common

# Add Oracle public keys
echo "Adding Oracle public keys..."
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add the VirtualBox repository
echo "Adding VirtualBox repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian jammy contrib"

# Update package list
echo "Updating package list..."
sudo apt update

# Install VirtualBox
echo "Installing VirtualBox..."
sudo apt install -y virtualbox-7.0

# Download and install the VirtualBox Extension Pack (optional)
EXT_PACK_VERSION="7.0.20"
EXT_PACK_FILE="Oracle_VM_VirtualBox_Extension_Pack-$EXT_PACK_VERSION.vbox-extpack"
echo "Downloading and installing VirtualBox Extension Pack..."
wget https://download.virtualbox.org/virtualbox/$EXT_PACK_VERSION/$EXT_PACK_FILE
sudo VBoxManage extpack install $EXT_PACK_FILE

# Add the current user to the vboxusers group
echo "Adding the current user to the vboxusers group..."
sudo usermod -aG vboxusers $USER

# Cleanup
echo "Cleaning up..."
rm $EXT_PACK_FILE

echo "Installation complete. Please log out and log back in to apply the group changes."
