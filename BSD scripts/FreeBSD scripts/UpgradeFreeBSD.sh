#!/usr/bin/env sh

# This is a script designed to automate the update to a newer version of FreeBSD.

# This script needs to be run as root!
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
else
    echo "Script is running as root, proceeding."
fi

# Lets get some variables read so we know what version of FreeBSD we are going to:

read -p "What version of FreeBSD are we going to? e.g. 11.0, 11.5 or 15.6  " BSDVer


# Now lets run the upgrade:
freebsd-update -r $BSDVer-RELEASE upgrade
