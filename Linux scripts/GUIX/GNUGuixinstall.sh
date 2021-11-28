#!/usr/bin/env bash

#this is a script written 5.27.21 to install the GNU Guix package management system onto a Debian Based system.

#First lets make sure you are root as you run this, and do some basic software checks:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

git=$(command -v git)
[[ -z "$git" ]] && echo "Git is not installed, please install that before running this shell script."

#Now lets install the required software for this script:
# The required software for this is: Curl, zsh, and wget, lets check for them and get them installed.
for program in wget xz-utils gpg; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && apt update && apt install $program || echo "$program is installed"
done

#Lets set a color function:
teal() {
        echo -e "\e[38;5;6m${@}\e[0m"
}

#Now lets gather the current Guix install script for use here, we'll put it into the /tmp location.
cd /tmp
wget https://git.savannah.gnu.org/cgit/guix.git/plain/etc/guix-install.sh
chmod +x guix-install.sh
bash guix-install.sh

#Now we need to update the newly installed GUIX, as it's not the latest version:

#First we'll set these temporarily so that GUIX can see itself on $PATH
GUIX_PROFILE="$HOME/.guix-profile"
source "$GUIX_PROFILE/etc/profile"

#Now we update GUIX and its packages:
guix pull

#Restart the Daemon
systemctl restart guix-daemon.service

teal "BE SURE TO RUN THE GUIXInitialSetup.sh after this!"
