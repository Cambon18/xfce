#!/bin/bash
yay --noconfirm -Sy $(cat list-packages)
sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo cp -rv lightdm /etc
sudo systemctl enable lightdm.service
sudo cp -rv skel /etc
