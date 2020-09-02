#!/bin/zsh

# SUPERCEDED BY NewDRIVEMAKER.SH!

#This script requires the package: dcfldd to be installed from your Linux distribution repository.

# Lets list out the number of drives we have

# Will's improvement suggestions:
# 1. Use a for loop,
# 2. A switch would also work

# Consider instead a command that would list all drives that are USB and then have the script run the command on them!

echo "How many drives do you wish to make? (1-9)"
read numberdrives

#drivetype=$(udevadm info --query=all --name=sdd | grep ID_BUS)
#if [ "$drivetype" = ]

#This command finds all drives We will be using this with the above if statment shortly.
#udevadm | pee "udevadm info --query=all --name=sd"{d..l} | grep ID_BUS

# working on the command
# dcfldd | pee "dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sd"{d..e} && echo "done!"


if [ "$numberdrives" = 2 ]
then
  echo "Doing $numberdrives drives then" $$
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde

elif [ "$numberdrives" = 3 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf

elif [ "$numberdrives" = 4 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf of=/dev/sdg

elif [ "$numberdrives" = 5 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf of=/dev/sdg of=/dev/sdh

elif [ "$numberdrives" = 6 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf of=/dev/sdg of=/dev/sdh of=/dev/sdi

elif [ "$numberdrives" = 7 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf of=/dev/sdg of=/dev/sdh of=/dev/sdi of=/dev/sdj

elif [ "$numberdrives" = 8 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf of=/dev/sdg of=/dev/sdh of=/dev/sdi of=/dev/sdj of=/dev/sdk

elif [ "$numberdrives" = 9 ]
then
  echo "Doing $numberdrives drives then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd of=/dev/sde of=/dev/sdf of=/dev/sdg of=/dev/sdh of=/dev/sdi of=/dev/sdj of=/dev/sdk of=/dev/sdl

else
  echo "Doing only 1 drive then"
  dcfldd if=/home/kduback/Downloads/SCCMstick.img of=/dev/sdd
fi
