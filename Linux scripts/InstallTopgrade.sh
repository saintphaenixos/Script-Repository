#!/bin/bash

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[[ "$UID" == 0 ]] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

#This is a simple script to install Topgrade, the all-in one upgrade program repository here: https://github.com/topgrade-rs/topgrade
#Tested on Ubuntu Linux, though should run on most Linuxes, it downloads the latest version, and then copies it into your /bin folder so it's automatically in your path.

#Lets download the latest copy of Topgrade, we'll change this accordingly to if

ARCH=$(arch)

if [ "$ARCH" == "x86_64" ]; then
    curl -sL https://api.github.com/repos/topgrade-rs/topgrade/releases/latest | grep "browser_download_url.*x86_64-unknown-linux-gnu.tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -i - -P /tmp
elif [ "$ARCH" == "aarch64" ]; then
    curl -sL https://api.github.com/repos/topgrade-rs/topgrade/releases/latest | grep "browser_download_url.*aarch64-unknown-linux-gnu.tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -i - -P /tmp
else
    echo "Unsupported architecture: Ending Script here."
    exit 1
fi

#Now lets unpack it and get ready to move it.

TOPGRADEARCHIVE=$(ls /tmp | grep "topgrade")
echo "$TOPGRADEARCHIVE"

tar -xvf "/tmp/$TOPGRADEARCHIVE" -C /tmp
rm "/tmp/$TOPGRADEARCHIVE"

sudo mv /tmp/topgrade /bin/topgrade
