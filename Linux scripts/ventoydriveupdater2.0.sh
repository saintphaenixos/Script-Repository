#!/bin/zsh

#First we set the Variable for which /media user's mount location we want to search through:
USR=kduback

#Last we make a temp file of all mounted drives under /Media/$USR and order rsync to over-write all files on those partitions with everything in Ventoy.Export on my machine. Then we remove the temp list.
ls /media/$USR | grep SCCM | time parallel -j+0 --progress "rsync --info=progress2 -r /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
