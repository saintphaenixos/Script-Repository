#!/usr/bin/env sh

# This is a script designed to automate the update to a newer version of DragonflyBSD.

# This script needs to be run as root!
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
else
    echo "Script is running as root, proceeding."
fi

# Lets get some variables read so we know what version of Dragonfly we are going to:

read -p "What version of NetBSD are we going to? e.g. 8.9, 9.0 or 5.6  " BSDVer


# Now lets run the upgrade:
su root -c "/usr/pkg/sbin/sysupgrade auto https://cdn.NetBSD.org/pub/NetBSD/NetBSD-$BSDVer/amd64"
