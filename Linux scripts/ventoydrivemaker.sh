#!/bin/zsh

Ventdirectory=/home/$USER/Scripts/Programs_for_scripts/Ventoy

rm -r $Ventdirectory*
mkdir $Ventdirectory

curl -s https://api.github.com/repos/ventoy/Ventoy/releases/latest | grep "browser_download_url.*linux.tar.gz*" | cut -d : -f 2,3 | tr -d \" | wget -i - -P $Ventdirectory
Ventscript=$(ls $Ventdirectory)

cd $Ventdirectory && tar -xzf $Ventscript && rm $Ventscript
Ventscript=$(ls $Ventdirectory)
cd $Ventscript

sed '195,215d' -i "/home/$USER/Scripts/Programs_for_scripts/Ventoy/$Ventscript/tool/VentoyWorker.sh"

udevadm | pee "udevadm info --query=all --name=sd"{a..z} "udevadm info --query=all --name=sd"{a..z}{a..z} | grep -E \(S=usb\|\ sd\) | tr -d 'N: ' | tr -d 'E: ID_BUS=' | grep -B1 usb | grep sd > drivelist.temp

< drivelist.temp xargs -I{} -d'\n' umount /dev/{}1
yes | xargs -a drivelist.temp -I{} -d'\n' zsh ./Ventoy2Disk.sh -I /dev/{} -s -g -L SCCMDrive
rm drivelist.temp
