#!/bin/zsh

#Lets check if you are root first, as you need to be root for this:

if [ "$UID" -gt 0 ]; then
     echo "This script must be run as root!"
     echo "exiting..."
     exit 1
fi

echo "select your drive"

read drive

echo "you selected drive $drive"
sudo smartctl /dev/sd$drive -a | grep 9\ Power
