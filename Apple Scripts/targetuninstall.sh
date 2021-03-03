#!/bin/bash
#!/bin/zsh

#A simple script to attempt an uninstall of target program from a Macintosh machine.
#Ensure that targeted Uninstaller can be run without arguments, or if arguments or flags are needed to add them to the additional jamf lines

#First lets check if the user is Root or not.
if [ "$UID" -gt 0 ]; then
     echo -e "This script must be run as root! \n exiting..."
     exit 1
fi

#Now we have our logic to attempt uninstall of the target program.

if [ -f "${4}" ];
  then
    echo "Uninstaller is present, attempting uninstall."
  else
    echo "exiting... as uninstaller is not present."
    exit
fi

sudo ${4} ${5} ${6} ${7} ${8} ${9} ${10} ${11}
