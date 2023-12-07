#!/usr/bin/env bash

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[[ "$UID" == 0 ]] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

# This is a script that starts Bomgar on an Ubuntu 23.10 Linux system in case it doesn't operate.

bash /home/$USER/.bomgar-rep/pima.beyondtrustcloud.com/bomgar-rep --run-script-file /home/$USER/Downloads/rep-script.brcs-pima
