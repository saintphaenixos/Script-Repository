#!/usr/bin/env bash

#this is a script written 5.27.21 to install the GNU Guix package management system into a unix OS.

#First lets make sure you are root as you run this.
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Now lets gather the current Guix install script for use here, we'll put it into the /tmp location.
cd /tmp
wget https://git.savannah.gnu.org/cgit/guix.git/plain/etc/guix-install.sh
chmod +x guix-install.sh
sudo bash /guix-install.sh
