#!/usr/bin/env bash

#This is a script to create my most commonly needed alias's on a brand new install of a Debian based machine. It will intelligently see if ZSH is installed and add the needed aliases to that, as well as bash.

#Lets Do some variables that check for my typical programs:

#Is the command installed variables:
brewexist=$(command -v brew)
exaexist=$(command -v exa)
nixexist=$(command -v nix)

#Is it already an alias?: The two most important first:
bashupdatealiasexist=$(grep -Fs 'alias update="sudo apt update && sudo apt dist-upgrade"' ~/.bashrc)
zshupdatealiasexist=$(grep -Fs 'alias update="sudo apt update && sudo apt dist-upgrade"' ~/.zshrc)

#The rest:
brewaliasexist=$(grep -Fs 'alias brewupdate="brew update && brew upgrade && brew cleanup"' ~/.bashrc)
exaaliasexist=$(grep -Fs 'alias ll="exa -l"' ~/.bashrc)
ipcolorexist=$(grep -Fs 'alias ip="ip -c a"' ~/.bashrc)
nixgarbageexist=$(grep -Fs 'alias nixgarbagecollection="nix-collect-garbage -d' ~/.bashrc)
nixinstallexist=$(grep -Fs 'alias nixinstall="nix-env -i"' ~/.bashrc)
nixremoveexist=$(grep -Fs 'alias nixremove="nix-env -e"' ~/.bashrc)
nixsearchexist=$(grep -Fs 'alias nixsearch="nix-env -qa"' ~/.bashrc)
nixtestexist=$(grep -Fs 'alias nixtest="nix-shell -p"' ~/.bashrc)
nixupdateexist=$(grep -Fs 'alias nixupdate="nix-channel --update nixpkgs"' ~/.bashrc)
nixupgradeexist=$(grep -Fs 'alias nixupgrade="nix-env -u '*'"' ~/.bashrc)

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
[ ! -z "$nixexist" ] && [ -z "$nixgarbageexist" ] && echo 'alias nixgarbagecollection="nix-collect-garbage -d' >> ~/.bashrc
[ ! -z "$nixexist" ] && [ -z "$nixinstallexist" ] && echo 'alias nixinstall="nix-env -i"' >> ~/.bashrc
[ ! -z "$nixexist" ] && [ -z "$nixremoveexist" ] && echo 'alias nixremove="nix-env -e"' >> ~/.bashrc
[ ! -z "$nixexist" ] && [ -z "$nixsearchexist" ] && echo 'alias nixsearch="nix-env -qa"' >> ~/.bashrc
[ ! -z "$nixexist" ] && [ -z "$nixtestexist" ] && echo 'alias nixtest="nix-shell -p"' >> ~/.bashrc
[ ! -z "$nixexist" ] && [ -z "$nixupdateexist" ] && echo 'alias nixupdate="nix-channel --update nixpkgs"' >> ~/.bashrc
[ ! -z "$nixexist" ] && [ -z "$nixupgradeexist" ] && echo 'alias nixupgrade="nix-env -u '*'"' >> ~/.bashrc

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
[ ! -z "$nixexist" ] && [ -z "$nixgarbageexist" ] && echo 'alias nixgarbagecollection="nix-collect-garbage -d' >> ~/.zshrc
[ ! -z "$nixexist" ] && [ -z "$nixinstallexist" ] && echo 'alias nixinstall="nix-env -i"' >> ~/.zshrc
[ ! -z "$nixexist" ] && [ -z "$nixremoveexist" ] && echo 'alias nixremove="nix-env -e"' >> ~/.zshrc
[ ! -z "$nixexist" ] && [ -z "$nixsearchexist" ] && echo 'alias nixsearch="nix-env -qa"' >> ~/.zshrc
[ ! -z "$nixexist" ] && [ -z "$nixtestexist" ] && echo 'alias nixtest="nix-shell -p"' >> ~/.zshrc
[ ! -z "$nixexist" ] && [ -z "$nixupdateexist" ] && echo 'alias nixupdate="nix-channel --update nixpkgs"' >> ~/.zshrc
[ ! -z "$nixexist" ] && [ -z "$nixupgradeexist" ] && echo 'alias nixupgrade="nix-env -u '*'"' >> ~/.zshrc

######################
#Sourcing our new Aliases:
######################
#Lastly we'll need to source these two files so they are active, we'll do that in subshells so it can be done quickly.
(bash -c ; source ~/.bashrc)
(zsh -c ; source ~/.zshrc)

#Possible way to improve the script in the future:
# grep -Fs 'alias ip="ip -c a"' ~/.bashrc ~/.zshrc | awk -F '[/:]' {'print($4)}'
