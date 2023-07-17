#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

sudo pacman -S --noconfirm ark bluedevil breeze-gtk dolphin gwenview kcalc kdeconnect kate kde-gtk-config khotkeys kinfocenter kinit kio-fuse konsole kscreen kwallet-pam okular plasma-desktop sddm plasma-desktop plasma-disks plasma-nm plasma-pa powerdevil print-manager sddm-kcm solid  spectacle xsettingsd firefox simplescreenrecorder vlc
sudo pacman -S --needed plasma kde-applications

sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
reboot


