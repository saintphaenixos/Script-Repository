#!/bin/zsh

# this script requires the fatresize package be installed on your distro.

# This script asks for the location of a disk and a partition of an SCCM install drive, automatically unmounts and then shrinks the partition in order to create an image file that is compressed to use with the Drivemaker.sh script.

#We'll check if we have our needed programs:
for program in pigz pv; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#Here are the actions:

echo "Select drive letter to backup e.g sdA or sdB in lowercase."

read drive

echo "you selected drive $drive"

echo "Select drive partition number."

read partition

echo "you've selected partition $partition"

#Next we're gonna copy over the scripts we need: Currently not working.
#echo "Writing West Scripts to Drive before compression:"
#rsync --info=progress2 -r /home/kduback/Downloads/Ventoy.Export/West\ Scripts/* /media/kduback/{}/West\ Scripts/

#Now we're going to unmount, shrink and make our gzipped image:
sudo umount /dev/sd$drive$partition

sudo fatresize -s 2G -p /dev/sd$drive$partition

sudo dd if=/dev/sd$drive bs=512 count=4000000 status=progress | pigz -c > /home/kduback/Downloads/SCCMstick.img.gz
