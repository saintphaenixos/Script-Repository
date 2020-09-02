#!/bin/zsh

# This script rips the first Gigabyte-ish of an SCCM stick ONCE IT HAS HAD ITS PARTITION SHRUNK in order to create an image to use with the Drivemaker.sh script. This script and that go hand in hand, but this one doesn't need to be run as often as the other.

echo "Select drive letter to backup e.g sdA or sdB in lowercase."

read drive

echo "you selected drive $drive"

sudo dd if=/dev/sd$drive bs=512 count=1953921 status=progress | pigz -c > /home/kduback/Downloads/SCCMstick.img.gz
