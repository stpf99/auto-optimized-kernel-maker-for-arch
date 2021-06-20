#!/bin/bash
sudo  rm -r /home/kernels/linux-tkg
cd /home/kernels/
pacman -Syu git
git clone https://github.com/Frogging-Family/linux-tkg.git
echo "Edit default Options for your individual kernel customization in /home/kernels/linux-tkg/customization.cfg file. Answer to any Question and save."
echo set autostart for your computer in Bios at "1 AM everyday"
echo "After this two steps Your computer will start on 1AM and kernel autobuild starts if hour is between 1AM - 3AM and if new rc kernel release is available.
