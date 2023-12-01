#!/usr/bin/env bash
cd ~/Downloads
sudo dnf install -y git make gcc-c++ hidapi-devel
git clone https://github.com/MatMoul/g810-led.git
cd g810-led
make bin
sudo make install
