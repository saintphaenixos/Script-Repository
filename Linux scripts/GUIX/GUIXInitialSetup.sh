#!/usr/bin/env bash

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[ "$UID" == 0 ] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

#First we need to add the GUIX installed program PATHs to the system:
#We'll check to see if they are already added or not.

#First lets see if the files (If they exist) have GUIX_PROFILE in them and store that for comparisons..
GuixProfileSetBash=$(cat ~/.bash_profile | grep "GUIX_PROFILE")
GuixProfileSetZsh=$(cat ~/.zsh_profile | grep "GUIX_PROFILE")

#Now lets run it.
if [ -z "$GuixProfileSetBash" ] || [ -z "$GuixProfileSetZsh" ] ; then
  echo 'GUIX_PROFILE="$HOME/.guix-profile"' >> ~/.bash_profile
  echo '. "$GUIX_PROFILE/etc/profile"' >> ~/.bash_profile
  echo 'GUIX_PROFILE="$HOME/.guix-profile"' >> ~/.zshenv
  echo '. "$GUIX_PROFILE/etc/profile"' >> ~/.zshenv
fi

#Then we let Guix know that this is our (nearly) forever home.
hash guix

#Next lets setup locales for GUIX as it doesn't use the local LOCALES profiles on Linux:
guix install glibc-locales
export GUIX_LOCPATH=$HOME/.guix-profile/lib/locale

#If the domain name service doesn't exist install it: (This will prevent future issues with GUIX)
NscdInstalled=$(command -v nscd)
[[ -z "$NscdInstalled" ]] && echo "Name Service Cache Daemon is not installed" && sudo apt install nscd -y || echo "Name Service Cache Daemon is installed"

#Lets get the Fonts for installed programs taken care of:
guix install gs-fonts font-dejavu font-gnu-freefont fontconfig
fc-cache -rv
