#!/bin/zsh

#Lets check if you are root first, as you need to be root for this:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#first lets ensure that needed software for this is installed:
for program in perl zenity smartmontools; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#create a function for listing drives that meet various UNIX naming standards, using PCRE2.
listdrivesclean() {
ls -1 /dev | perl -nle'print if m{sd[a-z]{1,2}$|(?=.{7}$)nvme[0-9]{1,2}n[0-9]{1,2}|vd[a-z]{1,2}$|hd[a-z]{1,2}$}gi'
}

#First we get a list of drives, and NVME namespaces for formatting.
zenitylist=$(listdrivesclean | awk '{print "false " $0}') # Here we add false and a space so that Zenity can display them correctly.

#Next we push that into Zenity to select from.
drivelist=$(zenity --list --title="Target Drive Selector" --text="Please Select Target Drives" --column="Select" --column="Drives" --separator="\n" --checklist $zenitylist)

#if previous variable/command fails, exit script.
[ "$?" -gt 0 ] && exit 1

#Lastly we take that list and modify it so that the list is ready for input into other processes.
preparedlist=$(echo "$drivelist" | awk '{print "/dev/" $0}') # Here we add /dev/ to each line to make a good path to the drive.

#Let us see the list.
echo "$preparedlist"

echo "select your drive"

read drive

echo "you selected drive $drive"
sudo smartctl /dev/sd$drive -a | grep 9\ Power
