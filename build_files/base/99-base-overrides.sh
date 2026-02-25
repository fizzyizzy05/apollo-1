t#!/bin/bash

set -ouex pipefail

# Enable wheel group for sudo
echo "%wheel ALL=(ALL:ALL) ALL" > /etc/sudoers.d/wheel-group

# Enable Network Manager & systemd-resolved
systemctl enable NetworkManager.service
systemctl enable systemd-resolved.service

# Enable bluetooth
systemctl enable bluetooth.service

# Enable printing
systemctl enable cups.service

# Disable systemd's firstboot
systemctl mask systemd-firstboot.service

# Make sure that uupd timer is enabled
systemctl enable uupd.timer
systemctl disable bootc-fetch-apply-updates.timer

# Enable UFW by default
systemctl enable ufw.service

# Make sure that brew can be used with bash
echo "source /etc/profile.d/brew.sh" | tee -a /etc/bash.bashrc

# Use the Apollo logo for the plymouth theme
cp /ctx/assets/usr/share/plymouth/themes/spinner/watermark.png /usr/share/plymouth/themes/spinner/watermark.png
dracut --force "$(find /usr/lib/modules -maxdepth 1 -type d | grep -v -E "*.img" | tail -n 1)/initramfs.img"
