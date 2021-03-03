#!/bin/bash
#!/bin/zsh

# Improved by Kent DuBack II 2.18.2020

#Abandoned 2.18 :(

# Mount smb network volumes for users without user interaction.

# lets set some variables, first we'll set a regex string, and get the username of the currently logged in user for recording:
regex='[^\/]+$'
loggedInUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`
mount="${4}"
domain="${5}"
mountname=" echo "$mount" | perl -nle'print if m{[^\/]+$}gi'"

echo "<result>$loggedInUser</result>"

#Now lets try to mount the share.

mount_smbfs //$loggedInUser@SERVER/folder /Volumes/$mountname || echo "User was unable to mount $mountname due to permissions error."
