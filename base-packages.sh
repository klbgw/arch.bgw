#!/bin/bash

pacman -S grub efibootmgr reflector acpid networkmanager os-prober xorg libwnck3 xf86-input-libinput avahi networkmanager network-manager-applet nmap dialog dhclient dnsmasq dnsutils ethtool ipset gnu-netcat ndisc6 nss-mdns openconnect openvpn pptpclient networkmanager-pptp sshfs openssh vpnc whois wpa_supplicant sstp-client network-manager-sstp xl2tpd firewalld python-pyqt5 python-capng bluez bluez-utils pacman-contrib pkgfile rebuild-detector accountsservice bash-completion ffmpegthumbnailer gst-libav gst-plugin-pipewire gst-plugins-bad gst-plugins-ugly gstreamer-vaapi libgsf libopenraw mlocate poppler-glib xdg-user-dirs xdg-utils gvfs gvfs-smb efitools haveged nfs-utils nilfs-utils ntp smartmontools unrar unzip dmidecode dmraid hwdetect mtools sof-firmware ntfs-3g duf fsarchiver glances meld nano-syntax-highlighting neofetch pv python-defusedxml python-packaging virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils vde2 rsync tldr wget cups alsa-firmware alsa-plugins alsa-utils pavucontrol pipewire-pulse pipewire-media-session pipewire-alsa pipewire-jack adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts cantarell-fonts freetype2 noto-fonts terminus-font ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans dina-font tamsyn-font ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine ttf-roboto ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts inter-font gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable firewalld
