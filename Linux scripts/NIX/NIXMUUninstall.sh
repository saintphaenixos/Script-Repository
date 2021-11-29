#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#Lets make sure only Root can continue from here.
if false ; then
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Lets set some variables and a color function:
sudoexist=/etc/sudoers
wheat1() {
        echo -e "\e[38;5;229m${@}\e[0m"
}

#First lets get prepared by installing wget.
wheat1 "Lets go ahead and blow out the Nix-daemon services"
systemctl stop nix-daemon.service
systemctl disable nix-daemon.service
rm /etc/systemd/system/nix-daemon.service
rm /etc/systemd/system/nix-daemon.socket
rm /usr/lib/systemd/system/nix-daemon.service
rm /usr/lib/systemd/system/nix-daemon.socket
systemctl daemon-reload
systemctl reset-failed

#lets go ahead and remove Nix:
wheat1 "Now removing the /nix location"
rm -rf /nix

fi

#Lastly we'll go ahead and remove all the nixbuilders:
wheat1 "Now removing the Nix Build users:"
builders='awk -F':' '{print($1)}' </etc/passwd | grep nixbld'
echo "$builders"
