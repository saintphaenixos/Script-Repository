#!/bin/sh

# This script must not be run as root:
[ "$USER" == root ] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

# Lets install oh-my-zsh, so I can have my favored zsh framework:
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /tmp/ZSHinstall.sh
chmod +x /tmp/ZSHinstall.sh
RUNZSH="no"
sh /tmp/ZSHinstall.sh

# Now lets set my favorite zsh theme.
git clone "https://github.com/badouralix/oh-my-via.git" "$ZSH/custom/themes/oh-my-via"
echo "Remember to change your theme to oh-my-via/via!"

# Lastly lets source our .zshrc and get everything into our active session:
source ~/.zshrc