#!/bin/bash
#!/bin/zsh

# Version 1.1

#This is a script that will run in a ZSH or Bash session for MacOS versions 10.11 - Current.
#the useage is simple, it allows a user to run the script with an argument which will run the find command to find all instances of the named file across the entirety of MacOS, and then delete it using the rm as root.

#Example usage of script: "sudo ./findanddelete.sh Photoshop"

#Lets set a function for Red text:
red() {
    echo -e "\e[31m${1}\e[0m"
}

#First lets check if the user is Root or not.
if [ "$UID" -gt 0 ]; then
     red "This script must be run as root!"
     echo "exiting..."
     exit
fi

#Next lets check if an argument was used with the script or not.
if (( $# == 0 )); then
    red "No argument specified with script, exiting..."
    echo "Example usage of script: sudo ./findanddelete.sh Photoshop"
    exit
fi

#Once that's checked lets run the command, with a prompt for safety.

red "This will delete all instances of files named \e[1m${1}\e[0m. \n"
red "This is inclusive and will find \e[4mALL\e[24m files with that string in it, be absolutely sure before running this! \n"
echo "Proceed? Y/N?"
read REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]
    then
      find / -type d \( -path /Volumes -o -path /System/Volumes \) -prune -false -o -iname '*${targetfile}*' 2> /var/log/findanddeleteall.log | xargs -I{} rm -Rfv {} >>/var/log/findanddeleteall.log
      echo "Log written to /var/log/findanddeleteall.log"
    else
      red "Answer was not affirmative, exiting..."
  fi
