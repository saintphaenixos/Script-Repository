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

read -p "What version of DragonflyBSD are we going to please use this Syntax 5.1 = 5_1 or 4.6 = 4_6" $BSDVer

# lets switch directory to /usr to download the latest source, and see our options.
cd /usr
make src-create

#Next we will change directory to select what source we wish to build for what version of DragonflyBSD.

cd /usr/src
git checkout DragonFly_RELEASE_$BSDVer

# Now we begin the upgrade:

cd /usr/src #Just in case git moves us.
make build-all
make install-all

#Now lets sync changes to HAMMER2 volumes:
sync

# Lets finish it and reboot!
reboot
