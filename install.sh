#!/bin/bash
trizen --noconfirm -Sy lightdm lightdm-slick-greeter light-locker numlockx materia-gtk-theme xfce4-whiskermenu-plugin xfce4-session xfce4-panel xfce4-power-manager xfce4-settings  xfce4-screenshooter xfconf xfdesktop xfwm4 network-manager-applet xfce4-pulseaudio-plugin pulseaudio pulseaudio-jack pulseaudio-bluetooth pavucontrol menulibre mugshot arc-gtk-theme papirus-icon-theme
trizen --noconfirm -Sy thunar xdg-user-dirs gvfs gvfs-smb thunar-volman thunar-archive-plugin file-roller gnome-disk-utility mousepad vlc atril ristretto galculator xfce4-terminal libreoffice-fresh-es hunspell-es_es chromium cups system-config-printer blueberry
sudo systemctl enable cups.service
sudo systemctl enable bluetooth.service
sudo systemctl enable lightdm.service
sudo cp -r xfce/.config /etc/skel
sudo cp -r xfce/.local /etc/skel
sudo cp -r xfce/.icons /etc/skel
sudo cp -r lightdm /etc
