#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#First lets make sure you are root as you run this, and do some basic software checks:

#Lets set some variables and a color function:
sudoexist=/etc/sudoers
fuchsia() {
  echo -e "\e[38;5;13m${@}\e[0m"
}

#I've noticed that NIX won't run on less than 2 GB of memory, so lets check for that:
Systemmem=$(free --giga | awk 'FNR == 2 {print($3)}')
(( $Systemmem < 1 )) && fuchsia "The Nix Package Manager's memory requirements exceed installed amount, please install greater than 2 Total Gigabytes of Memory." && fuchsia "Exiting Installation." && exit 1

#First lets get prepared by installing wget.
[[ ! -f "$sudoexist" ]] && fuchsia "Sudo doesn't exist on this system, please install and configure it first." && exit 1
for program in wget; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && apt update && apt install $program || echo "$program is installed"
done

#lets go ahead and install Nix:
wget -P /tmp https://releases.nixos.org/nix/nix-2.4/nix-2.4-x86_64-linux.tar.xz
cd /tmp
tar -xvf /tmp/nix-2.4-x86_64-linux.tar.xz
cd /tmp/nix-2.4-x86_64-linux
bash install-systemd-multi-user install

#We'll also have to add an export command to the skeleton bashrc's so that new users already have it ready to go:
if (grep -Fqs "export NIX_REMOTE=daemon" /etc/skel/.bash_profile) || [ ! -f ~/.bash_profile ] ; then
  sudo echo 'export NIX_REMOTE=daemon' >> ~/.bash_profile
fi

#Lets do that again for Zsh users:
if (grep -Fqs "export NIX_REMOTE=daemon" /etc/skel/.zhenv) || [ ! -f ~/.zshenv ] ; then
  sudo echo 'export NIX_REMOTE=daemon' >> ~/.zshenv
fi

#An alert so we don't forget:
fuchsia 'Please remember that all users added after this script is ran will need to have export NIX_REMOTE=daemon" added to their .zshenv or .bash_profiles'
sleep 3

#Now lets add a source for .bashrc for Root: The installer should do this, but lets do this just in case.
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" ~/.bash_profile) || [ ! -f ~/.bash_profile ] ; then
  sudo echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.bash_profile
fi

#Now we'll do it again for .zshenv likewise for Root.
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" /root/.zhenv) || [ ! -f /root/.zshenv ] ; then
  sudo echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.zshenv
fi
