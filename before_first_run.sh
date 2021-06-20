#!/bin/bash
dd if=/dev/zero of=/mnt/sdb1/swapfile bs=1M count=8192
cd /mnt/sdb1/
mkswap /swapfile
swapon swapfile
sudo pacman -Syu lld clang llvm bison xmlto docbook-xsl kmod inetutils bc libelf pahole patchutils flex python-sphinx python-sphinx_rtd_theme graphviz imagemagick git cpio perl tar xz schedtool strip docs
cd ~/
git clone https://aur.archlinux.org/modprobed-db.git
cd modpp	robed-db
makepkg si
touch ~/.config/modprobed.db
modprobed-db
modprobed-db list