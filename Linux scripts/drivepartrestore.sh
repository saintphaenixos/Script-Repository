#!/bin/zsh

# this is a script to take a backup of a Hard drive with the dd command in linux and zip it for backup.

# The program requires the package "pv" to be installed, as it will use pv to monitor progress of the action.

date=$(date +"%m.%d.%y")

echo "What is the name of the backup?"

read backupname

echo "Select drive letter to backup e.g sdA or sdB in lowercase."

read drive

gunzip </home/fenix/Downloads/$date$backupname.img.gz >/dev/sd$drive
