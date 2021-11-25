#!/usr/bin/env bash

#Lets make sure that we are running as root before we start:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#Lets go ahead and create an array of all the programs we'll want installed, we'll do this from a file:
Programs=$(<./newcomputer.programs)
SnapPrograms=$(<./newcomputer.snapish)

#lastly lets update the apps list so it doesn't have to be done repeatedly:
sudo apt update

#Now lets install everything.
for program in $Programs ; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt --yes install $program || echo "$program is installed"
done

#Now lets do the same for snap programs:
for SnapProgram in $SnapPrograms ; do
  installed=$(command -v $SnapProgram)
  [[ -z "$installed" ]] && echo "$SnapProgram is not installed" && yes | sudo snap install $SnapProgram --classic || echo "$SnapProgram is installed"
done

###################################################################

#We need to switch back to a normal user now so Oh-My-Zsh installs properly:
echo "Now we need to switch back to your normal user, please input that name now (CASE SENSITIVE!), and then password."
Read Username
su $Username

#Now lets do some other things, like install oh-my-zsh:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Now lets download my favorite theme for it: Oh-My-Via:
git clone https://github.com/badouralix/oh-my-via.git $ZSH/custom/themes/oh-my-via

#lastly lets set oh-my-via to be my default theme and source it.
sed '11s+.*+ZSH_THEME="oh-my-via/via"+' ~/.zshrc
