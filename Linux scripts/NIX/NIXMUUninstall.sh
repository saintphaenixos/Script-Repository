#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#THIS CURRENTLY CANT UNINSTALL NIX, AS CURRENT NIX ISN'T UNINSTALLABLE IN MULTI-USER. BEWARE WHEN INSTALLING!

#Lets set some variables and a color function:
sudoexist=/etc/sudoers
fuchsia() {
  echo -e "\e[38;5;13m${@}\e[0m"
}

#First lets get prepared by installing wget.
[[ ! -f "$sudoexist" ]] && fuchsia "Sudo doesn't exist on this system, please install and configure it first." && exit 1
for program in wget; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && apt update && apt install $program || echo "$program is installed"
done

#lets go ahead and remove Nix:
wget -P /tmp https://releases.nixos.org/nix/nix-2.4/nix-2.4-x86_64-linux.tar.xz
cd /tmp
tar -xvf /tmp/nix-2.4-x86_64-linux.tar.xz
cd /tmp/nix-2.4-x86_64-linux
bash install-multi-user uninstall
