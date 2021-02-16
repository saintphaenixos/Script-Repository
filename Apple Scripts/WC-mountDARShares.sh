#!/bin/bash

# Improved by Kent DuBack II 2.16.2020

# Mount volumes for DAR without user interaction.

# Get the username of the currently logged in user
loggedInUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`

echo "<result>$loggedInUser</result>"
finderactive=$(pgrep Finder)

for ((i=0;i<3;i++)); do
  if [ -z $finderactive ]
    then
      finderactive=$(pgrep Finder)
      sleep 1
    else [ ! -z $finderactive ]
      break
  fi
done

/usr/bin/osascript > /dev/null <<EOT
tell application "Finder"
activate
mount volume \"${4}\"
end tell
EOT
