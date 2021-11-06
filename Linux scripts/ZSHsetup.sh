#!/usr/bin/env bash

#A simple script to setup my desired shell environment on a brand new Debian based computer:

#Here we install my default needed programs:
for program in zsh git curl; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#Lets install oh-my-zsh, so I can have my favored framework:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#now lets set my favorite zsh theme.
git clone https://github.com/badouralix/oh-my-via.git $ZSH/custom/themes/oh-my-via
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="oh-my-via/via"' ~/.zshrc

#Lastly add my only needed alias.
echo 'alias update="sudo apt update && sudo apt full-upgrade"' >> ~/.zshrc
source .zshrc