#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
sed -i '171s/.//' /etc/locale.gen #for en_US.UTF-8
sed -i '398s/.//' /etc/locale.gen #for ru_RU.UTF-8
locale-gen
echo "LANG=ru_RU.UTF-8" >> /etc/locale.conf
echo "LC=COLLATE=C" >> /etc/locale.conf
echo "KEYMAP=ru" >> /etc/vconsole.conf
echo "FONT=ter-c32b" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
sed -i '90s/.//' /etc/pacman.conf
sed -i '91s/.//' /etc/pacman.conf

pacman -Sy
pacman -S --needed avahi networkmanager networkmanager-openconnect networkmanager-openvpn networkmanager-pptp networkmanager-vpnc networkmanager-l2tp ntp mobile-broadband-provider-info modemmanager openresolv openssh samba usb_modeswitch alsa-firmware alsa-plugins alsa-utils pipewire pipewire-alsa pipewire-jack pipewire-pulse wireplumber ffmpeg libcanberra lib32-libcanberra gst-plugin-pipewire gst-libav gst-plugins-bad gst-plugins-base gst-plugins-good gst-plugins-ugly phonon-qt5-gstreamer grub-btrfs mtpfs udiskie udisks2 cantarell-fonts ttf-dejavu noto-fonts adobe-source-sans-pro-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts adobe-source-han-sans-cn-fonts noto-fonts-emoji noto-fonts-cjk terminus-font ttf-inconsolata ttf-indic-otf ttf-liberation ttf-droid ttf-bitstream-vera python python-pillow python-pip python-pyqt5 python-reportlab p7zip unarchiver unarchiver sshfs lib32-libva-mesa-driver lib32-libva-vdpau-driver libva-mesa-driver libva-vdpau-driver mesa mesa-demos mesa-utils lib32-mesa lib32-mesa-demos vulkan-radeon lib32-vulkan-radeon corectrl numlockx xdg-user-dirs xdg-utils xorg-server xorg-twm xorg-xinit xorg-xkill xorg-mkfontscale perl-file-mimeinfo power-profiles-daemon squashfs-tools amd-ucode intel-ucode bash bash-completion coreutils efibootmgr file filesystem gcc-libs glibc lsb-release nbd nfs-utils util-linux gnupg curl ca-certificates-utils mkinitcpio-nfs-utils licenses acpi acpid b43-fwcutter btrfs-progs bzip2 cpupower cryptsetup device-mapper dhclient dhcpcd diffutils dmraid dnsmasq dosfstools e2fsprogs ecryptfs-utils exfat-utils f2fs-tools findutils gawk gcc-libs gettext glibc grep grub gzip inetutils iproute2 iputils jfsutils less logrotate lvm2 man-db man-pages mdadm nano nano-syntax-highlighting ntfs-3g os-prober pacman-contrib pciutils perl procps-ng psmisc reiserfsprogs rsync s-nail sed shadow sudo sysfsutils systemd systemd-sysvcompat tar texinfo usbutils util-linux vi wget which wireless-regdb wpa_supplicant xfsprogs xz android-tools android-udev gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb mtpfs ghostscript gsfonts gtk3-print-backends xf86-video-amdgpu xf86-input-libinput xf86-input-elographics xf86-input-evdev xf86-video-vesa xf86-video-fbdev xf86-input-void xf86-video-vmware xdg-desktop-portal xdg-desktop-portal-kde xf86-input-vmmouse xterm virtualbox-guest-utils open-vm-tools qt5ct network-manager-applet zsh inxi meld htop neofetch reflector unrar unzip pkgfile bluez bluez-utils dialog lsscsi

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable acpid

echo root:password | chpasswd
useradd -m bgw
echo bgw:password | chpasswd
usermod -aG libvirt bgw
echo "bgw ALL=(ALL) ALL" >> /etc/sudoers.d/bgw

mkinitcpio -p linux

printf "\e[1;32mDone! Type exit, umount -R and reboot.\e[0m"
