#!/usr/bin/env bash

#this is a script written 5.27.21 to install the GNU Guix package management system into a unix OS.

#First lets make sure you are root as you run this.
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Lets set a color function:
teal() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[38;5;6m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;6m${@}\e[0m"
    fi
}

#Now lets gather the current Guix install script for use here, we'll put it into the /tmp location.
cd /tmp
wget https://git.savannah.gnu.org/cgit/guix.git/plain/etc/guix-install.sh
chmod +x guix-install.sh
sudo bash guix-install.sh

#Now we need to update the newly installed GUIX, as it's not the latest version:

#First we'll set these temporarily so that GUIX can see itself on $PATH
GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"

#Now we update GUIX and its packages:
guix pull

#Restart the Daemon
systemctl restart guix-daemon.service

teal "BE SURE TO RUN THE GUIXInitialSetup.sh after this!"
