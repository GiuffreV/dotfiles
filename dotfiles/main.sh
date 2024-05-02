#!/bin/bash

user=$(whoami)

sudo pacman -S sddm neofetch lf hyprland kitty rofi qt5-wayland dunst xdg-desktop-portal-hyprland qt6-wayland hyprpaper waybar pipewire pipewire-audio pipewire-alsa pipewire-pulse spotify-launcher firefox vscode nano
curl -sS https://starship.rs/install.sh | sh
sudo mv -r starship.toml /home/$user/.config/starship.toml
sudo mv -r .bashrc /home/$user/.bashrc
sudo mv -r /hypr/hyprland.conf /home/$user/.config/hypr/hyprland.conf
sudo mv -r /hypr/hyprpaper.conf /home/$user/.config/hypr/hyprpaper.conf
sudo mv -r wallpapers /home/$user/
sudo mv -r /kitty/kitty.conf /home/$user/.config/kitty/kitty.conf
sudo mv -r /neofetch/config.conf /home/$user/.config/neofetch/config.conf
sudo mv -r rofi /home/$user/.config/
sudo mv -r /waybar/config.jsonc /etc/xdg/waybar/config.jsonc
sudo mv -r /waybar/style.css /etc/xdg/waybar/style.css
sudo mv -r /waybar/mediaplayer.sh /etc/xdg/waybar/mediaplayer.sh
systemctl enable sddm.service
systemctl start sddm.service
