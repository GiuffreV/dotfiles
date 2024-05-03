#!/bin/bash

user=$(whoami)

sudo pacman -S sddm neofetch lf hyprland kitty rofi qt5-wayland dunst xdg-desktop-portal-hyprland qt6-wayland hyprpaper waybar pipewire pipewire-audio pipewire-alsa pipewire-pulse spotify-launcher firefox vscode nano
curl -sS https://starship.rs/install.sh | sh
sudo mv starship.toml /home/$user/.config/starship.toml
sudo mv .bashrc /home/$user/.bashrc
sudo mv /hypr/hyprland.conf /home/$user/.config/hypr/hyprland.conf
sudo mv /hypr/hyprpaper.conf /home/$user/.config/hypr/hyprpaper.conf
sudo mv wallpapers /home/$user/
sudo mv /kitty/kitty.conf /home/$user/.config/kitty/kitty.conf
sudo mv /neofetch/config.conf /home/$user/.config/neofetch/config.conf
sudo mv rofi /home/$user/.config/
sudo mv /waybar/config.jsonc /etc/xdg/waybar/config.jsonc
sudo mv /waybar/style.css /etc/xdg/waybar/style.css
sudo mv /waybar/mediaplayer.sh /etc/xdg/waybar/mediaplayer.sh
systemctl enable sddm.service
systemctl start sddm.service
