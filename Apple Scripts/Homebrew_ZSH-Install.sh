#!/bin/bash

#This script must NOT be run as root:
[[ "$UID" == 0 ]] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

# First lets install homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Now we're gonna order the installation of my most used software:
brew install cask

# Now we'll install our needed gui programs:
brew install atom discord firefox gitkraken google-chrome keka libreoffice vivaldi

# Now we'll do our needed Terminal Programs:
brew install bash zsh shellcheck

#Lets install oh-my-zsh, so I can have my favored zsh framework:
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /tmp/ZSHinstall.sh
chmod +x /tmp/ZSHinstall.sh
bash /tmp/ZSHinstall.sh

#now lets set my favorite zsh theme.
git clone https://github.com/badouralix/oh-my-via.git $ZSH/custom/themes/oh-my-via
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="oh-my-via/via"' ~/.zshrc

#Lastly lets source our .zshrc and get everything into our active session:
source ~/.zshrc
