#!/usr/bin/env bash

#A simple script to completely remove GUIX from a non GUIX-SD distribution.

#Let's ensure that this is only run as root:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Lets Obliterate the Systemd service for GUIX:
systemctl stop guix-daemon.service
systemctl disable guix-daemon.service
rm /etc/systemd/system/guix-daemon.service
rm /usr/lib/systemd/system/guix-daemon.service
systemctl daemon-reload
systemctl reset-failed

#Now lets unmount the virtual GUIX store:
sudo umount /gnu/store

#Now lets remove all the directories full of GUIX:
rm -rf /gnu
rm -rf /var/guix
rm -rf ~/.profile/guix
rm -rf /etc/guix
