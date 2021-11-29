#!/usr/bin/env bash

#A simple script to setup my desired shell environment on a brand new Debian based computer:

#Here we install my default needed programs:
for program in zsh git curl; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#Lets install oh-my-zsh, so I can have my favored framework:
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /tmp/ZSHinstall.sh
chmod +x /tmp/ZSHinstall.sh
bash /tmp/ZSHinstall.sh

#now lets set my favorite zsh theme.
git clone https://github.com/badouralix/oh-my-via.git $ZSH/custom/themes/oh-my-via
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="oh-my-via/via"' ~/.zshrc

#Lastly lets source our .zshrc and get everything into our active session:
source ~/.zshrc
