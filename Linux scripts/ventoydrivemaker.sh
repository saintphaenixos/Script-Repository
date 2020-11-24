#!/bin/zsh

USR=kduback

Ventdirectory=/home/$USER/Scripts/Programs_for_scripts/Ventoy

rm -r $Ventdirectory*
mkdir $Ventdirectory

curl -s https://api.github.com/repos/ventoy/Ventoy/releases/latest | grep "browser_download_url.*linux.tar.gz*" | cut -d : -f 2,3 | tr -d \" | wget -i - -P $Ventdirectory
Ventscript=$(ls $Ventdirectory)

cd $Ventdirectory && tar -xzf $Ventscript && rm $Ventscript
Ventscript=$(ls $Ventdirectory)
cd $Ventscript

# sed '195,215d' -i "/home/$USER/Scripts/Programs_for_scripts/Ventoy/$Ventscript/tool/VentoyWorker.sh"

udevadm | pee "udevadm info --query=all --name=sd"{a..z} "udevadm info --query=all --name=sd"{a..z}{a..z} | grep -E \(S=usb\|\ sd\) | tr -d 'N: ' | tr -d 'E: ID_BUS=' | grep -B1 usb | grep sd > drivelist.temp

yes | xargs -a drivelist.temp -I{} -d'\n' zsh ./Ventoy2Disk.sh -I /dev/{} -s -g -L SCCMDrive
rm drivelist.temp

ls /media/$USR | grep SCCM > mountlist.temp
#cat mountlist.temp | time parallel -j+0 --progress "cp -R /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
cat mountlist.temp | time parallel -j+0 --progress "rsync --info=progress2 -r /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
#xargs -a mountlist.temp -I{} -d'\n' cp -R /home/kduback/Downloads/Ventoy.Export/* /media/kduback/{}/
rm mountlist.temp
