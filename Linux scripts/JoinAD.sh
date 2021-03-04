#!/bin/zsh

#DO NOT RUN THIS SCRIPT AS ROOT! LETS ENSURE THAT HERE:
[ "$UID" == 0 ] && echo -e "This script cannot be run as root! \n exiting..." && exit 1

#This is a script to automate the process of joining my computer to my Active Directory server.

# required software for this is: Curl, zsh, and wget, lets check for them and get them installed.
for program in curl zsh wget; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#Lets set some variables:
PBISdirectory=/home/$USER/Git/PBIS
URL=PIMA.EDU

#Lets read which domain we want to join:
echo -e "Please enter the domain name:\n\e[31mYou want to write out the whole domain name here in caps (e.g. PCC-DOMAIN or EDU-DOMAIN)\e[0m"
read DOMAIN

#Lets get the domain user name that is capable of joining a machine to the active directory server:
echo -e "Please Enter a domain user that can join devices to this domain:"
read USER

#First lets clear the directory of any extra files, we only ever need one in it, and will create it if neccesary:
rm -r $PBISdirectory/pbis*
mkdir /home/$USER/Git/PBIS

#Now lets get a fresh copy of the installation script from BeyondTrust, we'll get a list of the latest releases and parse out our needed installer which is for 64 bit linux with .deb repositories.
curl -s https://api.github.com/repos/BeyondTrust/pbis-open/releases/latest | grep "browser_download_url.*x86_64.deb" | cut -d : -f 2,3 | tr -d \" | wget -i - -P $PBISdirectory

#Set a variable from the output of the previous command:
PBISinstaller=$(ls $PBISdirectory)

#Now we'll make it executable and execute it:
chmod +x $PBISdirectory/$PBISinstaller && sudo /bin/zsh $PBISdirectory/$PBISinstaller

#Now we'll join the domain, it'll ask for user input here, which we'll pull from :
sudo /opt/pbis/bin/domainjoin-cli join $DOMAIN.$URL $USER

#lets check the status and write it to a log and then run PBIS configurations into an array:
sudo pbis status > /home/$USER/Downloads/DOMAINJOIN.log

PBISCONFIGS=("UserDomainPrefix $DOMAIN"
"AssumeDefaultDomain True"
"LoginShellTemplate /bin/zsh"
"HomeDirTemplate %H/%D/%U"
"$DOMAIN")

sudo printf '%s\n' $PBISCONFIGS | xargs -I{} -d'\n' /opt/pbis/bin/config {}

#Lets restart lsass before we enumerate the users.
sudo /opt/pbis/bin/lwsm restart lsass
echo "Sleeping for 10 seconds before we enumerate users"
sleep 10

#Lastly lets have PBIS download a list of all the users in Active directory so others can login!:
pbis enum-users
echo "Done! Welcome to the $DOMAIN, you may now login using a standard $DOMAIN account, but you may need to have root add permissions to that account."
