#!/bin/sh

echo "sfowm install script"
echo "version 0.1"
case "$1" in
  "--deb")
    sudo apt install picom
  ;;
  "--arch")
    sudo pacman -S picom
esac
cp picom.conf $HOME/.config/
sudo make clean install
