#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
sed -i '178s/.//' /etc/locale.gen
sed -i '398s/.//' /etc/locale.gen
locale-gen
echo "LANG=ru_RU.UTF-8" >> /etc/locale.conf
echo "LC=COLLATE=C" >> /etc/locale.conf
echo "KEYMAP=ru" >> /etc/vconsole.conf
echo "FONT=cyr-sun16" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:password | chpasswd

pacman -S grub efibootmgr efitools networkmanager network-manager-applet networkmanager-openconnect networkmanager-openvpn dialog wpa_supplicant mtools dosfstools avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector  virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g libwnck3 mesa-utils xf86-input-libinput xf86-video-amdgpu xf86-video-ati xorg broadcom-wl-dkms dhclient ethtool iwd nss-mdns usb_modeswitch xl2tpd python-pyqt5 python-capng pacman-contrib pkgfile rebuild-detector ffmpegthumbnailer gst-libav gst-plugin-pipewire gst-plugins-bad gst-plugins-ugly libgsf libopenraw mlocate poppler-glib haveged nilfs-utils ntp smartmontools unrar unzip  adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts cantarell-fonts freetype2 noto-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans alsa-firmware alsa-plugins pavucontrol wireplumber rtkit dmidecode dmraid hdparm hwdetect lsscsi sg3_utils sof-firmware power-profiles-daemon upower duf fsarchiver glances hwinfo inxi meld nano-syntax-highlighting neofetch pv python-defusedxml python-packaging tldr vi wget dracut exfatprogs f2fs-tools  inetutils jfsutils logrotate lvm2 man-db man-pages mdadm netctl ntfs-3g python reiserfsprogs s-nail sysfsutils usbutils xfsprogs xterm

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi is you mounted the EFI partition at /boot/efi

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid

useradd -m bgw
echo bgw:password | chpasswd
usermod -aG libvirt bgw

echo "bgw ALL=(ALL) ALL" >> /etc/sudoers.d/bgw


printf "\e[1;32mDone! Type exit, umount all and reboot.\e[0m"

