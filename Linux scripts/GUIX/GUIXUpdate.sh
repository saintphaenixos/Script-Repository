#!/usr/bin/env bash

#This is a script to update GUIX in place on a machine that has already had it installed.

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[[ "$UID" == 0 ]] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

tmuxsessionify() {
    # Create a new tmux session with the specified name
    tmux new-session -d -s $1

    # Run the specified commands in the tmux session
    for command in "$2"; do
        tmux send-keys -t $1 "$command" C-m
    done

    # Detach the tmux session
    tmux detach-client -s $1
}

# Specify the tmux session name
Session_Name="GUIXUpgradeSession"

# Specify the commands to run in sequence
GUIXCommands=("guix pull" "hash guix" "guix upgrade" "guix gc" "guix gx --delete-generations")

# Run the commands in sequence in the tmux session
tmuxsessionify $Session_Name "${GUIXCommands[@]}"

#Lets also export the paths while we are at it, so the Binaries are available in terminal sessions.
export PATH="$HOME/.config/guix/current/bin:$PATH"
export INFOPATH="$HOME/.config/guix/current/share/info:$INFOPATH"

echo "Commands are running in the background in a tmux session."
echo "To view the first session, run: tmux attach-session -t $Session_Name"

######################
#oldscript for archival purposes:
######################

#A neat little trick with an if statement to block out a bunch of lines in a shell script.
if false
then

#Update GUIX:
guix pull
hash guix

#Update Guix install Packages:
guix upgrade

#Run the garbage collector:
guix gc

#Remove the older generations, which is more garbage collection:
guix gc --delete-generations

#add the needed paths:
export PATH="$HOME/.config/guix/current/bin:$PATH"
export INFOPATH="$HOME/.config/guix/current/share/info:$INFOPATH"

#Now we update the build daemon:
sudo -i guix pull

#Restart the Daemon
systemctl restart guix-daemon.service

fi
