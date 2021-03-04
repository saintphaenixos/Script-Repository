#!/bin/zsh

# Written by Kent DuBack at Pima Community College on 8/7/2020

# GNU Parallel and dosfstools and fatresize must be installed!

# This is an improved version of Drivemaker using GNU parralel and dd which by default are installed on most distributions and can function more universally and across more drives than my previous script Drivemaker.sh. It searches for all usb drives and then writes the image to them, and parralelizes them.

#Lets check if you are root first, as you need to be root for this:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Lets check to make sure we have all the software installed that we need:

for program in parallel fatresize; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

# First we get a list of all the drives in the system that are usb by searching for them
udevadm | pee "udevadm info --query=all --name=sd"{a..z} "udevadm info --query=all --name=sd"{a..z}{a..z} | grep -E \(S=usb\|\ sd\) | tr -d 'N: ' | tr -d 'E: ID_BUS=' | grep -B1 usb | grep sd > drivelist.temp

#Now we go ahead and write out the file to the drives it found.
cat drivelist.temp | time parallel -j+0 --progress "gunzip </home/kduback/Downloads/SCCMstick.img.gz > /dev/{}"

#this command exists, because Gunzip has a strange issue where once it starts unzipping, it returns that it is complete, when it isn't, causing all commands after to fail, this fixes that, by checking to see if this file is being accessed by a process and once it's done, it continues the script.
while fuser -s "/home/kduback/Downloads/SCCMstick.img.gz"; do :; done

#Here we take that list and have fatresize resize everything to 15GB, someday I may be able to do to the max drive size.
< drivelist.temp xargs -I{} -d'\n' umount /dev/{}1
< drivelist.temp xargs -I{} -d'\n' fatresize -q -s 15G /dev/{}1

#Lastly lets do a file system check just in case.
cat drivelist.temp | time parallel -j+0 --progress "dosfsck -p -t -w /dev/{}1"

#clean up the list.
rm drivelist.temp
