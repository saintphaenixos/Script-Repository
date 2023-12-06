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
Session_Name="GUIXBuilderUpgradeSession"

# Specify the commands to run in sequence
GUIXBuildCommands=("sudo -i guix pull" "systemctl restart guix-daemon.service")

# Run the commands in sequence in the tmux session
tmuxsessionify $Session_Name "${GUIXBuildCommands[@]}"

echo "The Guix Builder Upgrade is running in the background in a root tmux session."
echo "To view the session, run: tmux attach-session -t $Session_Name as root!"
