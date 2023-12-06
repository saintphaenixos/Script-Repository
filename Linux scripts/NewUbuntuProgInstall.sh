#!/usr/bin/env bash

#Lets make sure that we are running as root before we start:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#lets also create a color function for outputting prettier text:
aqua() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[38;5;14m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;14m${@}\e[0m"
    fi
}

#Lets give us the Username to return to when we get to install Oh-My-Zsh later in the script.
read -p "What is your original username before elevating?" $Username
id $Username

#Now lets check to see if this user exists, as a form of error protection.
if [ $? -ne 0 ]; then
    echo "Error: User doesn't exist. Exiting script."
    exit 1
fi

#Lets go ahead and create an array of all the programs we'll want installed, we'll do this from a file depending on the desired type of installation:

aqua "Choose Installation Mode:"
aqua "1. GUI Install"
aqua "2. CLI Install"

read -p "Enter your choice (1 or 2): " Choice

case $Choice in
    1)
        # GUI installation variables:
        Programs=$(<./newcomputer.programs)
        SnapPrograms=$(<./newcomputer.snapish)
        ;;
    2)
        # CLI installation variables:
        Programs=$(<./newubuntucli.programs)
        SnapPrograms=$(<./newubuntucli.snapish)
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

aqua "You have chosen $Choice"


#lastly lets update the apps list so it doesn't have to be done repeatedly:
sudo apt update

#Now lets install everything.
for Program in $Programs ; do
  Installed=$(command -v $program)
  [[ -z "$Installed" ]] && echo "$Program is not installed" && sudo apt --yes install $Program || echo "$Program is installed"
done

#Now lets do the same for snap programs:
for SnapProgram in $SnapPrograms ; do
  Installed=$(command -v $SnapProgram)
  [[ -z "$Installed" ]] && echo "$SnapProgram is not installed" && yes | sudo snap install $SnapProgram --classic || echo "$SnapProgram is installed"
done

###################################################################

#We need to switch back to a normal user now so Oh-My-Zsh installs properly:
aqua "Now we need to switch back to your normal user, please input password for $Username."
su $Username

#Now lets do some other things, like install oh-my-zsh:
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Now lets download my favorite theme for it: Oh-My-Via:
git clone https://github.com/badouralix/oh-my-via.git $ZSH/custom/themes/oh-my-via

#lastly lets set oh-my-via to be my default theme and source it.
sed '11s+.*+ZSH_THEME="oh-my-via/via"+' ~/.zshrc
