#!/bin/zsh

#Lets check if you are root first, as you need to be root for this:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

echo "select your drive"

read drive

echo "you selected drive $drive"
sudo smartctl /dev/sd$drive -a | grep 9\ Power
