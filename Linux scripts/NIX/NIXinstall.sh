#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#Lets set some variables and a color function:
sudoexist=/etc/sudoers
fuchsia() {
  echo -e "\e[38;5;13m${@}\e[0m"
}

#First lets get prepared by installing sudo and curl, and checking if sudo is already installed or not.
[[ ! -f "$sudoexist" ]] && fuchsia "Sudo doesn't exist on this system, please install and configure it first." && exit 1
for program in curl; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#lets go ahead and install Nix:
curl -L https://nixos.org/nix/install | sh

#Now lets add a source to both .bashrc and .zshenv:
if [grep -Fq "~/.nix-profile/etc/profile.d/nix.sh" .bash_profile] || [ ! -f ~/.bash_profile ] ; then
echo 'source "~/.nix-profile/etc/profile.d/nix.sh"' >> ~/.bash_profile
elif [grep -Fq "~/.nix-profile/etc/profile.d/nix.sh" .zhenv] || [ ! -f ~/.zshenv ] ; then
echo 'source "~/.nix-profile/etc/profile.d/nix.sh"' >> ~/.zshenv
fi
