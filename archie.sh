#!/bin/bash
n=$(cat list-packages | wc -l)
i=1
while [[ $i -le $n ]]
do
	yay --noconfirm -Sy $(head -n $i list-packages | tail -n 1)
	i=$(( $i + 1 ))
	echo "$((41+(($i*47)/$n)))" >/tmp/PRG
done
sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo sed -i 's/\bresolve\b/mdns_minimal [NOTFOUND=return] resolve/g' /etc/nsswitch.conf
sudo cp -rv lightdm /etc/
sudo systemctl enable lightdm.service
sudo cp -rv skel /etc/
sudo mv /usr/share/backgrounds/xfce/xfce-x.svg /usr/share/backgrounds/xfce/xfce--x.svg
sudo cp imagenes/wallpaper.jpeg /usr/share/backgrounds/xfce/xfce-x.svg
sudo cp imagenes/cambonos.png /usr/share/pixmaps/
sudo cp imagenes/background.jpg /usr/share/backgrounds/
