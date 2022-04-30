#!/bin/bash
sudo reflector -c Russian,Germany,France -a 12 --latest --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy
sudo pacman -S --noconfirm adwaita-icon-theme eog evince file-roller firefox gdm gedit gnome-calculator gnome-control-center gnome-disk-utility gnome-keyring gnome-nettool gnome-power-manager gnome-screenshot gnome-shell gnome-terminal gnome gnome-tweaks gnome-usage gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs nautilus nautilus-sendto sushi totem xdg-user-dirs-gtk
sudo systemctl enable gdm
sleep 5
sudo reboot
