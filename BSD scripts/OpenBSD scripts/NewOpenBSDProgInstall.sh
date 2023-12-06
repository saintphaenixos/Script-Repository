#!/bin/zsh

#Lets make sure that we are running as root before we start:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#This script is to be run, once pf has been disabled/configured on the install, as well as resolv.conf with 8.8.8.8 and 8.8.4.4. Once complete, and zsh and have been installed this can be run.

#lets install our needed programs.
#Lets go ahead and create an array of all the programs we'll want installed, we'll do this from a file:
Programs=$(<./openbsd.programs)

#Now lets install everything.
for program in $Programs ; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && pkg_add $program || echo "$program is installed"
done
