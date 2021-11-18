#!/bin/bash

echo -e "\n>>Instalando XFCE\c"
trizen --noconfirm -Sy xfce4-whiskermenu-plugin xfce4-session xfce4-panel xfce4-power-manager xfce4-settings  xfce4-screenshooter xfconf xfdesktop xfwm4 network-manager-applet xfce4-pulseaudio-plugin pulseaudio pulseaudio-jack pulseaudio-bluetooth pavucontrol menulibre mugshot
trizen --noconfirm -Sy thunar xdg-user-dirs gvfs gvfs-smb thunar-volman thunar-archive-plugin file-roller gnome-disk-utility mousepad vlc atril ristretto galculator xfce4-terminal gnome-mines libreoffice-fresh-es hunspell-es_es firefox-i18n-es-es firefox-adblock-plus cups system-config-printer blueberry
sudo systemctl enable cups.service
sudo systemctl enable bluetooth.service
sudo cp -r xfce/.config /etc/skel
sudo cp -r xfce/.local /etc/skel
sudo cp -r xfce/.icons /etc/skel
