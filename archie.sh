#!/bin/bash
n=$(cat list-packages | wc -l)
i=1
while [[ $i -le $n ]]
do
	yay --noconfirm -Sy $(head -n $i list-packages | tail -n 1)
	i=$(( $i + 1 ))
done
sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo cp -rv lightdm /etc
sudo systemctl enable lightdm.service
sudo cp -rv skel /etc
sudo cp -rv slick-greeter /usr/share
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo mv /usr/share/slick-greeter/Logo.png /usr/share/pixmaps/cambonos.png
sudo mv /usr/share/backgrounds/xfce/xfce-shapes.svg /usr/share/backgrounds/xfce/xfce--shapes.svg
sudo cp /usr/share/slick-greeter/background.jpg /usr/share/backgrounds/xfce/xfce-shapes.svg
