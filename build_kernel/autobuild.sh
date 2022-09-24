#!/bin/bash
H=$(date +%H)
if (( 0 <= $H && $H < 4 )); then
	echo between 0AM and 3AM
        cd /home/$USER/kernels/linux-tkg/
	echo 'curl -s https://www.kernel.org | grep -A1 latest_link | tail -n1 | egrep -o '>[^<]+' | egrep -o '[^>]+'' > kernel_version
	echo 'cat kernel_version'
	cd /home/$USER/kernels/
	./start_kernel_make.sh
elif (( 3 <= $H && $H < 23 )); then
	echo between 3AM and 0PM nothing todo now
else
	echo nothing todo
fi
