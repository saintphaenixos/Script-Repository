#!/usr/bin/env bash

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[ "$UID" == 0 ] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

#First lets do our first repository update:
guix pull

#Now lets update our bash profile for the latest version of GUIX:
if (grep -Fqs "guix-profile" .bash_profile) || [ ! -f ~/.bash_profile ] ; then
  echo 'GUIX_PROFILE="$HOME/.guix-profile"' >> ~/.bash_profile
  echo 'source "$GUIX_PROFILE/etc/profile"' >> ~/.bash_profile
fi

#Similarly we'll do this for zsh:
if (grep -Fqs "guix-profile" .zshenv) || [ ! -f ~/.zshenv ] ; then
  echo 'GUIX_PROFILE="$HOME/.guix-profile"' >> ~/.zshenv
  echo 'source "$GUIX_PROFILE/etc/profile"' >> ~/.zshenv
fi

#Lets call them now however so they can be used immediately.
GUIX_PROFILE="/home/fenix/.guix-profile"
source "$GUIX_PROFILE/etc/profile"

#Then we let GUIX know that this is our (nearly) forever home.
hash guix

#Now we do our first guix upgrade:
guix upgrade

#Next lets setup locales for GUIX as it doesn't use the local LOCALES profiles on Linux:
guix install glibc-locales
export GUIX_LOCPATH=$HOME/.guix-profile/lib/locale

#If the domain name service doesn't exist install it: (This will prevent future issues with GUIX)
NscdInstalled=$(command -v nscd)
[[ -z "$NscdInstalled" ]] && echo "Name Service Cache Daemon is not installed" && sudo apt install nscd -y || echo "Name Service Cache Daemon is installed"

#Lets get the Fonts for installed programs taken care of:
guix install gs-fonts font-dejavu font-gnu-freefont fontconfig
fc-cache -rv

#Lastly lets source the bash profile to gaurantee functionality after the script.
source ~/.bash_profile
