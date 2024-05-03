#!/bin/bash

echo "Configurando starship || Setting up starship..."
sudo cp -r starship.toml /home/$user/.config/starship.toml
sleep 1

echo "Configurando .bashrc || Setting up .bashrc..."
sudo cp -r .bashrc /home/$user/.bashrc
sleep 1

echo "Configurando hyprland e hyprpaper || Setting up hyprland and hyprpaper..."
sudo cp -r hypr/hyprland.conf /home/$user/.config/hypr/hyprland.conf
sudo cp -r hypr/hyprpaper.conf /home/$user/.config/hypr/hyprpaper.conf
sudo cp -r wallpapers /home/$user/wallpapers
sleep 1

echo "Configurando Kitty || Setting up kitty..."
sudo cp -r kitty/kitty.conf /home/$user/.config/kitty/kitty.conf
sleep 1

echo "Configurando neofetch || Setting up neofetch..."
sudo cp -r neofetch/config.conf /home/$user/.config/neofetch/config.conf
sleep 1

echo "Configurando rofi  || Setting up folder..."
sudo cp -r rofi /home/$user/.config/rofi
sleep 1

echo "You're all set"
