#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload


sudo pacman -S --noconfirm baobab cheese eog evince gdm gnome-backgrounds	gnome-calculator gnome-calendar gnome-characters gnome-clocks gnome-connections gnome-console gnome-control-center gnome-disk-utility gnome-font-viewer gnome-keyring gnome-logs gnome-maps gnome-menus gnome-nettool gnome-photos gnome-remote-desktop	gnome-screenshot gnome-session gnome-settings-daemon gnome-settings-daemon gnome-shell gnome-system-monitor gnome-text-editor gnome-usage gnome-user-docs gnome-user-share	gnome-weather grilo-plugins gvfs gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb nautilus rygel simple-scan sushi xdg-desktop-portal-gnome xdg-user-dirs-gtk yelp	endeavour file-roller gnome-boxes gnome-tweaks seahorse  nautilus-sendto ttf-bitstream-vera ttf-croscore ttf-droid gnu-free-fonts ttf-ibm-plex ttf-linux-libertine tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-fantasque-sans-mono ttf-monofur adobe-source-code-pro-fonts inter-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji





sudo sed -i '33s/.//' /etc/pacman.conf
sudo sed -i '36s/.//' /etc/pacman.conf
sudo sed -i '37s/.//' /etc/pacman.conf
sudo sed -i '34i ILoveCandy' /etc/pacman.conf

sudo systemctl enable gdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
