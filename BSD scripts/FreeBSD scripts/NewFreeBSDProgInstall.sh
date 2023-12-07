#!/bin/sh

# This script must be run as root:
[ "$USER" != root ] && echo -e "This script must be run as root! \n exiting..." && exit 1

# First we'll need to install and configure Doas:
pkg install doas

# Now lets put in a basic doas.conf so I can access root safely.
touch /usr/local/etc/doas.conf
echo "adding current user to /usr/local/etc/doas.conf"
echo "permit persist :wheel" >> /usr/local/etc/doas.conf
echo "permit persist $USER" >> /usr/local/etc/doas.conf

# We can now install all our default needed programs:
pkg install bash cmatrix cowsay curl feh ffmpeg fish htop lolcat mosh mtr ncdu nano neofetch neovim nmap parallel rsync screen tmux wget zsh
