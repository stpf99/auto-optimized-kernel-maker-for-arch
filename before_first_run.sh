#!/bin/bash
#sudo dd if=/dev/zero of=/home/$USER/swapfile bs=1M count=8192
cd /home/$USER
sudo mkswap swapfile
sudo swapon swapfile
#sudo pacman -Syu lld clang llvm bison xmlto docbook-xsl kmod inetutils bc libelf pahole patchutils flex python-sphinx python-sphinx_rtd_theme graphviz imagemagick git cpio perl tar xz schedtool
git clone https://aur.archlinux.org/modprobed-db.git
cd modprobed-db
makepkg -si
touch ~/.config/modprobed.db
modprobed-db
modprobed-db list
