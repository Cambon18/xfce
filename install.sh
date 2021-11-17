#!/bin/bash

echo -e "\n>>Instalando XFCE\c"
trizen --noconfirm -Sy xfce4-whiskermenu-plugin xfce4-session xfce4-panel xfce4-power-manager xfce4-settings  xfce4-screenshooter xfconf xfdesktop xfwm4 network-manager-applet networkmanager-openvpn xfce4-pulseaudio-plugin pulseaudio pulseaudio-jack pulseaudio-bluetooth pavucontrol menulibre mugshot
cp -r xfce /etc/skel
