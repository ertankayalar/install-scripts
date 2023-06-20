#!/usr/bin/env bash

#==============================================================================================================
#
#          FILE:  debian-flatpak-install.sh
#
#         USAGE:  bash debian-flatpak-apps.sh
#
#   DESCRIPTION:  Installation AwesomeWM on a clean Debian Bookworm (12)
#
#        STATUS:  TESTED
#
#       OPTIONS:  ---
#  REQUIREMENTS:  a clean Debian Bookworm (12) 
#                 installed with git, 
#          BUGS:  ---
#         NOTES:  Read README.md
#        AUTHOR:  Ertan Kayalar, ertankayalar@gmail.com
#       COMPANY:  private
#       VERSION:  0.01
#       CREATED:  19-06-2023
#      REVISION:  ---
#===============================================================================================================

sudo apt install flatpak -y
# apt install gnome-software-plugin-flatpak -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.brave.Browser -y


