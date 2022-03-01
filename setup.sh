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
sudo touch /usr/share/xsessions/sfowm.desktop
sudo echo "[Desktop Entry]" >> /usr/share/xsessions/sfowm.desktop
sudo echo "Encoding=UTF-8" >> /usr/share/xsessions/sfowm.desktop
sudo echo "Name=sfowm" >> /usr/share/xsessions/sfowm.desktop
sudo echo "Comment=useless fork of dwm" >> /usr/share/xsessions/sfowm.desktop
sudo echo "Exec=sfowm" >> /usr/share/xsessions/sfowm.desktop
sudo echo "Icon=sfowm" >> /usr/share/xsessions/sfowm.desktop
sudo echo "Type=XSession" >> /usr/share/xsessions/sfowm.desktop
sudo chmod 777 /usr/share/xsessions/sfowm.desktop
