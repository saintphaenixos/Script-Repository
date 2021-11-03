#!/usr/bin/env zsh

#This is a script to update GUIX in place on a machine that has already had it installed.

#Update GUIX:
guix pull
sudo -i guix pull

#Run the garbage collector:
guix gc

#add the needed paths:
export PATH="$HOME/.config/guix/current/bin:$PATH"
export INFOPATH="$HOME/.config/guix/current/share/info:$INFOPATH"

#Restart the Daemon
systemctl restart guix-daemon.service

#Update Guix install Packages:
guix upgrade
