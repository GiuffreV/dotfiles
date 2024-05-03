#!/bin/bash

user=$(whoami)

(waybar &) && (hyprpaper &) &&  (neofetch &) &&
sleep 1
killall hyprpaper waybar

echo "Configurando starship || Setting up starship..."
sudo cp -r starship.toml /home/$user/.config/starship.toml
sleep 1

echo "Configurando sddm || Setting up sddm"
sudo git clone https://github.com/lll2yu/sddm-lain-wired-theme
sudo cp -r sddm-lain-wired-theme /usr/share/sddm/themes
sudo cp -r sddm.conf /etc/sddm.conf


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

echo "Instalando yay || Installing yay"
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $user:$user yay
cd yay
makepkg -si
cd ..
sleep 1

echo "Iniciando hyprpaper y waybar || Starting hyprpaper and waybar"
(hyprpaper &) && (waybar &) &&
sleep 1
echo "Youre all set"
exit


