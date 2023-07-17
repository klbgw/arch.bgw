#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

sudo pacman -S --noconfirm ark bluedevil breeze breeze-grub breeze-gtk drkonqi kde-gtk-config kdeplasma-addons kgamma5 kinfocenter kscreen kscreenlocker ksshaskpass ksystemstats kmenuedit kpipewire libksysguard kwin kwayland-integration kwrited plasma-browser-integration plasma-systemmonitor plasma-vault plasma-workspace plasma-workspace-wallpapers breeze-plymouth flatpak-kcm plasma-wayland-protocols plasma-wayland-session kdecoration kactivitymanagerd kde-cli-tools dolphin gwenview kcalc kdeconnect kate kinit konsole kwallet-pam okular plasma-desktop sddm plasma-desktop plasma-disks plasma-nm plasma-pa powerdevil print-manager sddm-kcm systemsettings spectacle xsettingsd firefox vlc layer-shell-qt kclock kfind kweather markdownpart skanpage sweeper blinken kalgebra kmplot kanagram kbruch kgeography ktouch kwordquiz parley minuet kbreakout kpat ksudoku kcolorchooser koko kruler svgpart ffmpegthumbs elisa kio kio-extras kio-gdrive kio-zeroconf krdc extra-cmake-modules krusader	kalendar remmina libvncserver freerdp

sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
reboot


