#!/usr/bin/env bash

# A simple script to setup my desired shell environment on a brand new Debian based computer:

# Lets check if computer has APT which means it can support this installation.
if command -v apt >/dev/null 2>&1; then
    echo "apt is installed, this is likely a Debian Based system, continuing installation."
else
    echo "Error: apt is not installed on this system exiting installation.."
    exit 1  # Exit with an error
fi

# Here we install my default needed programs:

echo "Lets check if our needed programs are installed, and if not install them."

for program in zsh git curl; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

# Lets install oh-my-zsh, so I can have my favored framework:
wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /tmp/ZSHinstall.sh
chmod +x /tmp/ZSHinstall.sh
bash /tmp/ZSHinstall.sh

# Now lets set my favorite zsh theme.
git clone https://github.com/badouralix/oh-my-via.git $ZSH/custom/themes/oh-my-via
sed -i 's,ZSH_THEME=".*",ZSH_THEME="oh-my-via/via",g' ~/.zshrc

# Lastly lets source our .zshrc and get everything into our active session:
source ~/.zshrc
