#!/bin/zsh

#This is a script that automatically downloads and installed the Ventoy drive creation script's latest version, and then uses it to create ventoy drives out of all connected USB block devices on my machine.

# Due to writing partition information, this script needs to be run as the super user.

#Lets set the Variable for my user directory, and where I want Ventoy to install itself:
USR=kduback
Ventdirectory=/home/$USER/Scripts/Programs_for_scripts/Ventoy

#First we'll clearn out the install directory and re-create it.
rm -r $Ventdirectory*
mkdir $Ventdirectory

#Now lets download it set a variable named off the .tar.gz.
curl -s https://api.github.com/repos/ventoy/Ventoy/releases/latest | grep "browser_download_url.*linux.tar.gz*" | cut -d : -f 2,3 | tr -d \" | wget -i - -P $Ventdirectory
Ventscript=$(ls $Ventdirectory)

#Now we'll change directory to there, untar it, and remove the .tar.gz, then re-set the variable to stand for the new directory it creates and change directory to that.
cd $Ventdirectory && tar -xzf $Ventscript && rm $Ventscript
Ventscript=$(ls $Ventdirectory)
cd $Ventscript

#Keep this code in case you ever need to remove the y/n prompt in the Ventoy Script
# sed '195,215d' -i "/home/$USER/Scripts/Programs_for_scripts/Ventoy/$Ventscript/tool/VentoyWorker.sh"

#Now we'll get a list of all USB devices and place that into a temp file.
udevadm | pee "udevadm info --query=all --name=sd"{a..z} "udevadm info --query=all --name=sd"{a..z}{a..z} | grep -E \(S=usb\|\ sd\) | tr -d 'N: ' | tr -d 'E: ID_BUS=' | grep -B1 usb | grep sd > drivelist.temp

#Now we pass the yes command straight through xargs, with a seperate argument list (The list of USB drives) which it'll feed to the Ventoy Script to create SCCM drives with the storage partition of each named: SCCMDrive, then remove the list.
yes | xargs -a drivelist.temp -I{} -d'\n' zsh ./Ventoy2Disk.sh -I /dev/{} -s -g -L SCCMDrive
rm drivelist.temp

#Last we make a temp file of all mounted drives under /Media/$USR and order rsync to over-write all files on those partitions with everything in Ventoy.Export on my machine. Then we remove the temp list.
ls /media/$USR | grep SCCM > mountlist.temp
#cat mountlist.temp | time parallel -j+0 --progress "cp -R /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
cat mountlist.temp | time parallel -j+0 --progress "rsync --info=progress2 -r /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
#xargs -a mountlist.temp -I{} -d'\n' cp -R /home/kduback/Downloads/Ventoy.Export/* /media/kduback/{}/
rm mountlist.temp
