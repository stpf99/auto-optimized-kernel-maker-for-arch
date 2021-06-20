#!/bin/bash
LOCAL_VER='cat kernel_version_local'
VER='cat kernel_version'
cd /home/kerneles/linux-tkg/
mv customization.cfg backup_customization.cfg
echo 'grep -vwE "*.**"' backup_customization.cfg > kernel_version_local
if $VER > $LOCAL_VER then
grep -vwE "_version="*.**" backup_customization.cfg > customization.cfg
echo _version="$VER" > customization.cfg
makepkg -s
else 
echo Kernel version is as Local version /not compiling
fi
