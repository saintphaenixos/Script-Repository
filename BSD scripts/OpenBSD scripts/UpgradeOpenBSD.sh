#!/usr/bin/env sh

# This is a script designed to automate the update to a newer version of OpenBSD.

# This script needs to be run as root!
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
else
    echo "Script is running as root, proceeding."
fi

# Lets get some variables read so we know what version of OpenBSD we are going to:

read -p "What version of OpenBSD are we going to? e.g. 5.2, 6.0 or 8.0  " BSDVer


# Now lets download the newest version of the kernel:
wget -P / https://cdn.openbsd.org/pub/OpenBSD/$BSDVer/amd64/bsd.rd /

echo "Now reboot and select the newest kernal to boot to. It will give you instructions to update the rest of the way. Remember to run sysmerge after it's done and you've booted into the system after the next time!"
