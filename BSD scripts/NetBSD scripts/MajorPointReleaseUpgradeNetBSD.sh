#!su root -c "/usr/bin/env sh

# This is a script designed to automate the update to a newer version of DragonflyBSD's preparations including upgrading the kernel and its modules.

# This script needs to be run as root!
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
else
    echo "Script is running as root, proceeding."
fi

# Lets get some variables read so we know what version of Dragonfly we are going to:

echo "This script is for use to upgrade to major point releases E.g. 10.X or 11.X NetBSD releases"
echo "This shouldn't be needed between X.1 or X.12 releases, only for major releases."

read -p "What version of NetBSD are we going to? e.g. 9.5, 10.4 or 15.2?  " $BSDVer

# Now lets run the upgrade preparations:
su root -c "/usr/pkg/sbin/sysupgrade fetch https://cdn.NetBSD.org/pub/NetBSD/NetBSD-$BSDVer/amd64"
su root -c "/usr/pkg/sbin/sysupgrade kernel"
su root -c "/usr/pkg/sbin/sysupgrade modules"
su root -c "/usr/pkg/sbin/sysupgrade sets"
su root -c "/usr/pkg/sbin/sysupgrade etcupdate"
su root -c "/usr/pkg/sbin/sysupgrade postinstall"
su root -c "/usr/pkg/sbin/sysupgrade clean"
reboot

echo "Don't forget to run UpgradeNetBSD.sh afterward!"
