#!/bin/zsh

# this script requires the fatresize package be installed on your distro.

# This script asks for the location of a disk and a partition of an SCCM install drive, automatically unmounts and then shrinks the partition in order to create an image file that is compressed to use with the Drivemaker.sh script.

#First lets make sure the user is running as root:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#We'll check if we have our needed programs:
for program in pigz pv fatresize; do
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

#Now we're going to unmount, shrink the partition and make our gzipped image:
sudo umount /dev/sd$drive$partition

sudo fatresize -s 4G -p /dev/sd$drive$partition

sudo dd if=/dev/sd$drive bs=512 count=8388608 status=progress | pigz -c > /home/kduback/Downloads/SCCMstick.img.gz
