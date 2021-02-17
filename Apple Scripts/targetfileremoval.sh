#!/bin/bash
#!/bin/zsh

#A simple script to remove target files\folders\or programs from a Unix/Linux machine.

#First lets check if the user is Root or not.
if [ "$UID" -gt 0 ]; then
     echo -e "This script must be run as root! \n exiting..."
     exit
fi

#Now we have our logic to remove the target file, folder, or program.

if [ -f "${4}" ];
  then
    echo "Target file, folder, or program is present, attempting removal."
  else
    echo "exiting... as Program/File is not present."
    exit 0
fi

rm -rf ${4}
