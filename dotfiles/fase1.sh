#!/bin/bash

user=$(whoami)

sudo pacman -Syu ttf-font-awesome sddm neofetch lf hyprland kitty rofi qt5-wayland dunst xdg-desktop-portal-hyprland qt6-wayland hyprpaper waybar pipewire pipewire-audio pipewire-alsa pipewire-pulse spotify-launcher firefox vscode nano
curl -sS https://starship.rs/install.sh | sh

