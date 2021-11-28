#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#Lets set some variables:
currentuser = $USER
sudoexist = $(grep $currentuser < /etc/sudoers)

#First lets get prepared by installing sudo and curl, and checking if sudo is already installed or not.
if [[ -z "$sudoexist" ]]
then #First lets get our requirements installed:
  for program in curl; do
    installed=$(command -v $program)
    [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
  done
else
  echo "Input password for root." && sleep 3
  su root
  for program in sudo curl; do
    installed=$(command -v $program)
    [[ -z "$installed" ]] && echo "$program is not installed" && apt update && apt install $program || echo "$program is installed"
  done
echo "Input password for your standard user account, you started with."
su $currentuser
echo "Now add yourself to the sudoers file." && sleep 3
visudo
fi

#Lastly lets go ahead and install Nix:
curl -L https://nixos.org/nix/install | sh
