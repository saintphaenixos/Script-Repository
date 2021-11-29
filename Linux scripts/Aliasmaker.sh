#!/usr/bin/env bash

#This is a script to create my most commonly needed alias's on a brand new install of a Debian based machine. It will intelligently see if ZSH is installed and add the needed aliases to that, as well as bash.

#Lets Do some variables that check for my typical programs:

#Is the command installed variables:
brewexist=$(command -v brew)
exaexist=$(command -v exa)

#Is it already an alias?:
bashupdatealiasexist=$(grep -Fs 'alias update="sudo apt update && sudo apt dist-upgrade"' ~/.bashrc)
brewaliasexist=$(grep -Fs 'alias brewupdate="brew update && brew upgrade && brew cleanup"' ~/.bashrc)
exaaliasexist=$(grep -Fs 'alias ll="exa -l"' ~/.bashrc)
ipcolorexist=$(grep -Fs 'alias ip="ip -c a"' ~/.bashrc)
zshupdatealiasexist=$(grep -Fs 'alias update="sudo apt update && sudo apt dist-upgrade"' ~/.zshrc)

######################
#.bashrc aliases:
######################
#Now lets add the initial and my most important alias to .bashrc:
if [[ -z $bashupdatealiasexist ]] || [ ! -f ~/.bashrc ] ; then
  echo 'alias update="sudo apt update && sudo apt dist-upgrade"' >> ~/.bashrc
fi

#Now lets do the rest for .bashrc
[ ! -z "$brewexist" ] && [ -z "$brewaliasexist" ] && echo 'alias brewupdate="brew update && brew upgrade && brew cleanup"' >> ~/.bashrc
[ ! -z "$exaexist" ] && [ -z "$exaaliasexist" ] && echo 'alias ll="exa -l"' >> ~/.bashrc
[ -z "$ipcolorexist" ] && echo 'alias ip="ip -c a"' >> ~/.bashrc

######################
#.zshrc aliases:
######################
#Now we'll the initial edit of again for .zshrc
if [[ -z $zshupdatealiasexist ]] || [ ! -f ~/.zshrc ] ; then
  echo 'alias update="sudo apt update && sudo apt dist-upgrade"' >> ~/.zshrc
fi

#Now lets do the rest for .zshrc
[ ! -z "$brewexist" ] && [ -z "$brewaliasexist" ] && echo 'alias brewupdate="brew update && brew upgrade && brew cleanup"' >> ~/.zshrc
[ ! -z "$exaexist" ] && [ -z "$exaaliasexist" ] && echo 'alias ll="exa -l"' >> ~/.zshrc
[ -z "$ipcolorexist" ] && echo 'alias ip="ip -c a"' >> ~/.zshrc
