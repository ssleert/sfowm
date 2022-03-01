#!/bin/sh
echo "sfowm install script"
echo "version 0.2"
case "$1" in
  "--deb")
    sudo apt install picom xsetroot dmenu ttf-dejavu
  ;;
  "--arch")
    sudo pacman -S picom xorg-xsetroot dmenu ttf-dejavu
esac
cp conf/picom.conf $HOME/.config/
sudo make clean install
sudo cp conf/sfowm.desktop /usr/share/xsessions/sfowm.desktop
cp -r conf/.sfowm $HOME/.sfowm
