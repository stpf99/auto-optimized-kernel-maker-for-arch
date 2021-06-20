#!/bin/bash
sudo cp systemd/kernel_autobuild.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable kernel_autobuild.service
sudo systemctl start kernel_autobuild.service
mkdir /home/kernels
cp start_kernel_make.sh refresh_configs.sh build_kernel/autobuild.sh /home/kernels/
cd /home/kernels/
pacman -Syu git
git clone https://github.com/Frogging-Family/linux-tkg.git
echo "Edit default Options for your individual kernel customization in /home/kernels/linux-tkg/customization.cfg file. Answer to any Question and save."
echo set autostart for your computer in Bios at "1 AM everyday"
echo "After this two steps Your computer will start on 1AM and kernel autobuild starts if hour is between 1AM - 3AM and if new rc kernel release is available.
