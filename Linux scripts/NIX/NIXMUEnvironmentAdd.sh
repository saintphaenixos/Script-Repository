#!/usr/bin/env bash

#A script to add the needed NIX environment to PATH so that it can be used by other users on a system.

#lets add a source for .bashrc:
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" .bash_profile) || [ ! -f ~/.bash_profile ] ; then
  echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.bash_profile
fi

#Now we'll do it again for .zshenv
if (grep -Fqs "~/.nix-profile/etc/profile.d/nix.sh" .zhenv) || [ ! -f ~/.zshenv ] ; then
  echo 'source ~/.nix-profile/etc/profile.d/nix.sh' >> ~/.zshenv
fi
