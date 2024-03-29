#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#Lets set some variables and a color function:
sudoexist=/etc/sudoers
fuchsia() {
  echo -e "\e[38;5;13m${@}\e[0m"
}

#I've noticed that NIX won't run on less than 2 GB of memory, so lets check for that:
Systemmem=$(free --giga | awk 'FNR == 2 {print($2)}')
(( $Systemmem < 2 )) && fuchsia "The Nix Package Manager's memory requirements exceed installed amount, please install greater than 4 Total Gigabytes of Memory." && fuchsia "Exiting Installation." && exit 1

#First lets get prepared by installing sudo and curl, and checking if sudo is already installed or not.
[[ ! -f "$sudoexist" ]] && fuchsia "Sudo doesn't exist on this system, please install and configure it first." && exit 1
for program in curl; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#lets go ahead and install Nix:
curl -L https://nixos.org/nix/install | sh

#Now lets add a source for .bashrc: The installer should do this, but lets do this just in case.
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" ~/.bash_profile) || [ ! -f ~/.bash_profile ] ; then
  echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.bash_profile
fi

#Now we'll do it again for .zshenv
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" ~/.zhenv) || [ ! -f ~/.zshenv ] ; then
  echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.zshenv
fi
