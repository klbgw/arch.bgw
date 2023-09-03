#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo pacman -S --noconfirm sddm sddm-kcm audiocd-kio bluedevil kde-gtk-config kdeplasma-addons kgamma5 kinfocenter kmenuedit kscreen kscreenlocker ksshaskpass ksysguard libksysguard kwallet-pam kwayland-integration kwin qt5-virtualkeyboard  kwrited milou plasma-desktop plasma-desktop plasma-nm plasma-pa plasma-workspace plasma-workspace-wallpapers powerdevil systemsettings plasma-browser-integration gnome-themes-standard breeze-gtk plymouth ark dolphin dolphin-plugins filelight kate kcalc keditbookmarks kfind kdeconnect okular kget libktorrent kdenetwork-filesharing khelpcenter khotkeys kinit kio-extras konsole ksystemlog kwalletmanager gwenview partitionmanager print-manager skanlite spectacle kdegraphics-thumbnailers ffmpegthumbs kimageformats qt5-imageformats kaccounts-providers poppler-data elisa dmidecode firefox plasma-systemmonitor powertop systemd-kcm plymouth-kcm kruler krdc svgpart sweeper extra-cmake-modules krusader skanpage kclock vlc kwordquiz parley minuet kcolorchooser kio-gdrive kio-zeroconf remmina libvncserver freerdp plasma-disks kdecoration kactivitymanagerd kde-cli-tools flatpak

sudo sed -i '33s/.//' /etc/pacman.conf
sudo sed -i '36s/.//' /etc/pacman.conf
sudo sed -i '37s/.//' /etc/pacman.conf
sudo sed -i '34i ILoveCandy' /etc/pacman.conf

sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
reboot


