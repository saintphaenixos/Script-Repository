#!/bin/zsh

#1) It's on the domain - if it is, try to login with a domain account
#2) Make sure the PimaDot1X profile is installed, if not unbind > run recon command > rebind > recon again. Check the management tab of the device in Jamf if no commands are pending, if any are failed clear the commands.

#This is a script to aid a user in disconnecting and reconnecting a Mac Computer to a Domain to get it to retrieve a new wifi token for connecting to the PimaDot1X Wifi.

#First lets list out some functions we'll need later for recconecting to, or connecting to the Domain in the first place.
appleconnect() {

}

applereconnect() {

}

#Now lets list out our variables:
FULLHOSTNAME=$(hostname | grep domain)
HOSTNAME=$(hostname -s)
DOMAIN=$(echo "$FULLHOSTNAME" | tr -d $HOSTNAME | cut -c 3-)
#These Variables check if a computer is connected to either Domain here on campus.
EDUDOMAINCONNECTION=$(dscl "/Active Directory/EDU-DOMAIN/" read . | grep Authenticated)
PCCDOMAINCONNECTION=$(dscl "/Active Directory/PCC-DOMAIN/" read . | grep Authenticated)
#This Massive variable uses perl due to it being ubiquitous across Unix/Linux and allows us to use PCRE Regex to search for our names.
VALIDNAME=$(hostname -s | perl -nle'print if m{^((?=.{15}$)([a-zA-Z]{2}|(([a-zA-Z]{2}|[0-9]{2})-([a-zA-Z]{1,2})))(([0-9]{2,3})([0-9]{6}))([a-zA-Z]{2}|[vV]{1}[0-9]{1}))|((?=.{15}$)([a-zA-Z]{3}|(([a-zA-Z]{3}|[0-9]{2})-([a-zA-Z]{3})))([0-9]{6})([a-zA-Z]{2}|[vV]{1}[0-9]{1}))|((?=.{15}$)(([a-zA-Z]{3,4}[0-9]{0,1}|(([0-9]{2,3})-([a-zA-Z]{1,3})))([0-9]{6}|[0-9]{8}|[0-9]{9})[a-zA-Z0-9]{2}))$}g')

#An important note here: The website for downloading the Namesheet from must be the fourth Parameter in JAMF.
NAMESHEET= ${4}

if ! [[ -z $VALIDNAME ]] ; then
  echo "Name is correct, continuing..."
  echo "Name is $HOSTNAME"
else
  echo "Name is incorrect, Downloading csv of names and naming from that: (e.g. WC-L100123123SN)"
  wget -O names.csv $NAMESHEET ~/Downloads
  echo "jamf setComputerName -fromFile ~/Downloads/names.csv"
  echo "rm ~/Downloads/names.csv"
  #Lets reset the hostname now that it has been corrected.
  HOSTNAME=$(hostname -s)
  #Lets set the names everywhere in the system also.
  echo "scutil --set ComputerName "$HOSTNAME""
  echo "scutil --set LocalHostName "$HOSTNAME""
  echo "scutil --set HostName "$HOSTNAME""
fi

if ! [ -z $EDUDOMAINCONNECTION ] || [ -z $PCCDOMAINCONNECTION ]; then
  echo "Computer is not joined to the Domain, attempting join now..."
else
  echo "Computer is connected to the Domain, reconnecting."
  exit 1
fi
