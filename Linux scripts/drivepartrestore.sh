#!/bin/zsh

# this is a script to take a backup of a Hard drive with the dd command in linux and zip it for backup.

#Lets check if you are root first, as you need to be root for this:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

# The program requires the package "pv" to be installed, as it will use pv to monitor progress of the action.
# We'll go ahead and check if these programs are installed, and get them installed.
for program in pigz pv yad; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#here are our actions:

date=$(date +"%m.%d.%y")

echo "What is the name of the backup?"

read backupname

#We use yad here to select an image to restore from.
backuplocation=$(yad --title=Please\ Select\ an\ Image\ To\ Restore\ From --file)

echo "Select drive letter to backup e.g sdA or sdB in lowercase."

read drive

gunzip <$backuplocation >/dev/sd$drive
