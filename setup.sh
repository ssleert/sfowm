#!/bin/sh
echo "sfowm install script"
echo "version 0.2"
case "$1" in
  "--deb")
    sudo apt install picom xsetroot dmenu 
  ;;
  "--arch")
    sudo pacman -S picom xorg-xsetroot dmenu 
esac
cp conf/picom.conf $HOME/.config/
sudo make clean install
sudo cp conf/sfowm.desktop /usr/share/xsessions/sfowm.desktop
cp conf/.sfowm $HOME/.sfowm
