#!/bin/zsh

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

#Now lets get a fresh copy of the installation script from BeyondTrust, we'll get a list of the lastest releases parse out to our needed installer which is for 64 bit linux with .deb repositories.
curl -s https://api.github.com/repos/BeyondTrust/pbis-open/releases/latest | grep "browser_download_url.*x86_64.deb" | cut -d : -f 2,3 | tr -d \" | wget -i - -P $PBISdirectory

#Set a variable from the output of the previous command:
PBISinstaller=$(ls $PBISdirectory)

#Now we'll make it executable and execute it:
chmod +x $PBISdirectory/$PBISinstaller && sudo /bin/zsh $PBISdirectory/$PBISinstaller

#Now we'll join the domain, it'll ask for user input here:
sudo /opt/pbis/bin/domainjoin-cli join $DOMAIN.$URL $USER

#lets check the status and set some configurations:
sudo pbis status
sudo /opt/pbis/bin/config UserDomainPrefix $DOMAIN
sudo /opt/pbis/bin/config AssumeDefaultDomain True
sudo /opt/pbis/bin/config LoginShellTemplate /bin/zsh
sudo /opt/pbis/bin/config HomeDirTemplate %H/%D/%U
sudo /opt/pbis/bin/config $DOMAIN

#Lets restart lsass
sudo /opt/pbis/bin/lwsm restart lsass
echo "Sleeping for 10 seconds before we enumerate users"
sleep 10

#Lastly lets have PBIS download a list of all the users in Active directory so others can login!:
pbis enum-users
echo "Done! Welcome to the $DOMAIN, you may now login using a standard $DOMAIN account, but you may need to have root add permissions to that account."
