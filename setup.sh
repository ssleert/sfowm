#!/bin/bash

echo "sfowm install script"
echo "version 0.1"
case "$1" in
  "--deb")
    sudo apt install picom
  ;;
  "--arch")
    sudo pacman -S picom
cp picom.conf $HOME/.config/
sudo make clean install
