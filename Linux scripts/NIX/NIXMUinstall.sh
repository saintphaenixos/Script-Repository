#!/usr/bin/env bash

#This is a script to check for and download the requirements for the NIX packaging system to a Debian Based OS. It will be tested on both Debian 11, and Ubuntu 21.10.

#First lets make sure you are root as you run this, and do some basic software checks:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Lets set some variables and a color function:
fuchsia() {
  echo -e "\e[38;5;13m${@}\e[0m"
}

#I've noticed that NIX won't run on less than 2 GB of memory, so lets check for that:
Systemmem=$(free --giga | awk 'FNR == 2 {print($3)}')
(( $Systemmem < 2 )) && fuchsia "The Nix Package Manager's memory requirements exceed installed amount, please install greater than 4 Total Gigabytes of Memory." && fuchsia "Exiting Installation." && exit 1

#First lets get prepared by installing sudo and curl, and checking if sudo is already installed or not.
for program in curl; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && apt update && apt install $program || echo "$program is installed"
done

#lets go ahead and install Nix:
curl -L https://nixos.org/nix/install | sh

#Now we'll need to add builders for the multiple users to use, lets create a group for them:
groupadd -r nixbld

#Now lets create them 20 of them just in case:
for nixbuilders in $(seq 1 20); do useradd -c "Nix build user $nixbuilders" \
    -d /var/empty -g nixbld -G nixbld -M -N -r -s "$(which nologin)" \
    nixbld$nixbuilders; done

#Now we start the Nix Daemon for the first time:
systemctl start nix-daemon

#Now we'll create a System D service that will start up with the system so it's always available:
systemctl enable nix-daemon

#We'll also have to add an export command to the skeleton bashrc's so that new users already have it ready to go:
if (grep -Fqs "export NIX_REMOTE=daemon" /etc/skel/.bash_profile) || [ ! -f ~/.bash_profile ] ; then
  echo 'export NIX_REMOTE=daemon' >> ~/.bash_profile
fi

#Lets do that again for Zsh users:
if (grep -Fqs "export NIX_REMOTE=daemon" /etc/skel/.zhenv) || [ ! -f ~/.zshenv ] ; then
  echo 'export NIX_REMOTE=daemon' >> ~/.zshenv
fi

#An alert so we don't forget:
fuchsia 'Please remember that all users added after this script is ran will need to have export NIX_REMOTE=daemon" added to their .zshenv or .bash_profiles'
sleep 3

#Now lets add a source for .bashrc for Root: The installer should do this, but lets do this just in case.
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" ~/.bash_profile) || [ ! -f ~/.bash_profile ] ; then
  echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.bash_profile
fi

#Now we'll do it again for .zshenv likewise for Root.
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" ~/.zhenv) || [ ! -f ~/.zshenv ] ; then
  echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.zshenv
fi
