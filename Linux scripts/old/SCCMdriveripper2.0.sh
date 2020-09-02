#!/bin/zsh

# This script rips the first Gigabyte-ish of an SCCM stick ONCE IT HAS HAD ITS PARTITION SHRUNK in order to create an image to use with the Drivemaker.sh script. This script and that go hand in hand, but this one doesn't need to be run as often as the other.

echo "Select drive letter to backup e.g sdA or sdB in lowercase."

read drive

echo "you selected drive $drive"

echo "Select drive partition number."

read partition

echo "you've selected partition $partition"

sudo fatresize -s 1GB /dev/sd$drive$partition

sudo dd if=/dev/sd$drive$partition status=progress | pigz -c > /home/kduback/Downloads/SCCMstick.img.gz
