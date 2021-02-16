#!/bin/bash
#!/bin/zsh

# Version 1.1
# By Kent DuBack II

#This is a script that will run in a ZSH or Bash session for MacOS versions 10.11 - Current.
#the useage is simple, it allows a user to run the script with an argument which will run the find command to find all instances of the named file across the entirety of MacOS, and then delete it using rm as root.

#THIS IS POTENTIALLY A NUCLEAR SCRIPT, USE WITH CAUTION!

#Lets list some exceptionally dangerous commands to run here in an array to stop our most destructive impulses.
scary=(microsoft apple darwin mach catalina sur sierra macos mac mojave)

#First lets check if the user is Root or not.
if [ "$UID" -gt 0 ]; then
     red "This script must be run as root!"
     echo "exiting..."
     exit
fi

while true
  do
    #Here we get the name from osascript, and the exit status of the command in errorout, then we pass it through validname to see if it's a valid PCC name., and compare using those further in.
    targetfile=$(osascript -e 'Tell application "System Events" to display dialog "Please Enter A Name in lowercase For The Software to be removed \n e.g adobe, example.sh, quicksilver, or other." default answer ""' -e 'text returned of result' 2>/dev/null)
      if [ $? -ne 0 ]
        then # user cancel
          exit
      elif [ -z "$targetfile" ]
        then # loop until input or cancel
          osascript -e 'Tell application "System Events" to display alert " Name entered is empty! \n Please enter a name or select Cancel! " as warning'
      elif [[ "${scary[@]}" =~ "${targetfile}" ]]
        then # user selects scary thing to remove, so it just denied instead.
          osascript -e 'Tell application "System Events" to display alert " This file name as written is exceptionally dangerous and as such will not be run. \n Please use an alternative to this script to clear files with this name. " as warning'
          exit 2
      else [ -n "$targetfile" ]
          break
      fi
done

#Once that's checked lets run the command, with a prompt for safety.

while true
  do
    confirmation=$(osascript -e 'Tell application "System Events" to display dialog "This will delete all instances of files, directory, and programs named. \n This is inclusive and will find ALL files with that string in it, be absolutely sure before running this! \n if you wish to proceed type: confirm" default answer ""' -e 'text returned of result' 2>/dev/null)
    if [ $? -ne 0 ]
      then # user cancel
        exit
    elif [[ $confirmation == confirm ]]
      then
        find / -iname "*${targetfile}*" 2> /var/log/findanddeleteall.log | xargs -I{} rm -Rf -v {} >>/var/log/findanddeleteall.log
        osascript -e 'Tell application "System Events" to display alert " Log written to /var/log/findanddeleteall.log " as warning'
        exit 0
    else
        osascript -e 'Tell application "System Events" to display alert " confirm was not entered correctly, exiting... " as warning'
        exit 2
    fi
done
