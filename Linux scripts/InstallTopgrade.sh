#/bin/bash

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[[ "$UID" == 0 ]] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

#This is a simple script to install Topgrade, the all-in one upgrade program repository here: https://github.com/topgrade-rs/topgrade
#Tested on Ubuntu Linux, though should run on most Linuxes, it downloads the latest version, and then copies it into your /bin folder so it's automatically in your path.

#Lets download the latest copy of Topgrade:

curl -sL https://api.github.com/repos/topgrade-rs/topgrade/releases/latest | grep "browser_download_url.*x86_64-unknown-linux-gnu.tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -i - -P /home/$USER

#Now lets unpack it and get ready to move it.

TOPGRADEARCHIVE=$(ls | grep topgrade*.gz)
echo "$TOPGRADEARCHIVE"

tar -xvf "/home/$USER/$TOPGRADEARCHIVE"
rm "$TOPGRADEARCHIVE"

sudo mv /home/$USER/topgrade /bin/topgrade
