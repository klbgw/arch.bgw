pacman -Sy
pacman -S adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji accountsservice acpid adobe-source-code-pro-fonts adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts alsa-firmware alsa-plugins alsa-utils avahi bash-completion bluez bluez-utils broadcom-wl-dkms cantarell-fonts cups dhclient dhcpcd diffutils dialog dina-font dmidecode dmraid dnsmasq dnsutils downgrade duf edk2-ovmf efibootmgr efitools ethtool f2fs-tools ffmpegthumbnailer findutils firewalld freetype2 fsarchiver gentium-plus-font glances gnu-free-fonts gnu-netcat grub grub-tools gptfdisk gst-libav gst-plugin-pipewire gst-plugins-bad gst-plugins-ugly gstreamer-vaapi gvfs gvfs-smb haveged hdparm hwdetect hwinfo ipw2100-fw ipw2200-fw iwd lftp libdvdcss libgsf libopenraw libwnck3 lsscsi mc meld mesa-utils mkinitcpio-archiso mkinitcpio-nfs-utils mlocate mtools nano-syntax-highlighting nbd ndisc6 neofetch networkmanager networkmanager-openvpn nfs-utils nilfs-utils nmap noto-fonts noto-fonts-cjk noto-fonts-emoji nss-mdns ntfs-3g ntp nvme-cli openconnect openssh openvpn os-prober pacman-contrib pavucontrol pipewire alsa pipewire-jack pipewire-media-session pipewire-pulse pkgfile poppler-glib pptpclient pv python-capng python-defusedxml python-packaging python-pyqt5 qemu qemu-arch-extra rebuild-detector pptpclient reflector reflector-simple rsync sed sg3_utils smartmontools sof-firmware sshfs tcpdump tldr ttf-anonymous-pro ttf-bitstream-vera ttf-cascadia-code ttf-dejavu ttf-droid ttf-fantasque-sans-mono ttf-fira-code ttf-fira-mono ttf-hack ttf-ibm-plex ttf-inconsolata ttf-jetbrains-mono ttf-junicode ttf-liberation ttf-liberation ttf-linux-libertine ttf-monofur ttf-opensans ttf-roboto ttf-ubuntu-font-family unrar unzip usb_modeswitch vpnc wget whois wpa_supplicant xdg-user-dirs xdg-utils xf86-input-libinput xf86-video-amdgpu xl2tpd xorg

# Pacman -S open-vm-tools

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable firewalld
systemctl enable acpid
