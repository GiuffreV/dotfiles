#!/bin/bash

user=$(whoami)

echo "Configurando waybar || Configurating waybar..."
sudo cp -r waybar/config.jsonc /etc/xdg/waybar/config.jsonc
sudo cp -r waybar/style.css /etc/xdg/waybar/style.css
sudo cp -r waybar/mediaplayer.sh /etc/xdg/waybar/mediaplayer.sh
sleep 1

echo "Your system will be ready in 3..."
sleep 1
echo "2..."
sleep 1
echo "1..."

systemctl enable sddm.service

reboot
