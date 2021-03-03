#!/bin/zsh

# this is a script to take a backup of a Hard drive with the dd command in linux and zip it for backup.

#Lets check if you are root first, as you need to be root for this:

if [ "$UID" -gt 0 ]; then
     echo "This script must be run as root!"
     echo "exiting..."
     exit 1
fi

# The program requires the package "pigz" and "pv" to be installed, as it will use pigz instead of gzip so that the job may be done as fast as possible with all available cores on a machine. PV will be used to monitor progress of the action.

#We'll go ahead and check if these programs are installed, and get them installed.
for program in pigz pv yad; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

# Here is the action:
date=$(date +"%m.%d.%y")

echo "Name the Backup"

read backupname

#We use yad here to select a location to save the backup to.
backuplocation=$(yad --title=Please\ Select\ a\ Directory\ To\ Save\ The\ Image\ To --file --directory)

echo "Select drive letter to backup e.g sdA or sdB in lowercase."

read drive

pv </dev/sd$drive | pigz -c >$backuplocation/$date$backupname.img.gz
