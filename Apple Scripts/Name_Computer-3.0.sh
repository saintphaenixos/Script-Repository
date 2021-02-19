#!/bin/sh

# Written by Kent DuBack II and Will Crabtree and Luis Duarte

# Collect Variables
serialnumber=$(ioreg -l | awk '/IOPlatformSerialNumber/ { print $4;}' | tr -d '"')
apiUser=$(echo $4 | /usr/bin/openssl enc -aes256 -d -a -A -S "$6" -k "$7")
apiPass=$(echo $5 | /usr/bin/openssl enc -aes256 -d -a -A -S "$8" -k "$9")
oldname=$(hostname)

while true
do
  #Here we get the name from osascript, and the exit status of the command in errorout, then we pass it through validname to see if it's a valid PCC name., and compare using those further in.
  name=$(osascript -e 'Tell application "System Events" to display dialog "Please enter a name for the computer \n e.g WC-C210150415SN or EC-E101145934LC" default answer ""' -e 'text returned of result' 2>/dev/null)
  errorout=$?
  validname=$( echo "$name" | perl -nle'print if m{^(?=.{15}$)([a-z]{2}|[\d]{2})-([a-z]{1,2})([\d]{2,3})([\d]{6})([a-z]{2}|[v]{1}[\d]{1})|(?=.{15}$)([a-z]{3})-([a-z]{3})([\d]{6})([a-z]{2}|[v]{1}[\d]{1})|(?=.{15}$)([a-z]{3,4}[\d]{0,1})([\d]{9})([a-z]{2}|[v]{1}[\d]{1})$}gi')
  if [ "$errorout" -ne 0 ]
    then # user cancel
      exit
  elif [ -z "$name" ] || [ -z "$validname"  ]
    then # loop until input or cancel
      osascript -e 'Tell application "System Events" to display alert " Name entered is not correct or empty! \n Please enter a name or select Cancel! " as warning'
  else [ -n "$name" ]
    break
  fi
done

# Case statment for Site Assignment
case $name in
  "DO"*)
        sitevalue="District Office"
        siteID="1" ;;
  "WC"*)
        sitevalue="West Campus"
        siteID="2" ;;
  "NW"*)
        sitevalue="Northwest Campus"
        siteID="4" ;;
  "DC"*)
        sitevalue="Downtown Campus"
        siteID="5" ;;
  "DV"*)
        sitevalue="Desert Vista Campus"
        siteID="6" ;;
  "EC"*)
        sitevalue="East Campus"
        siteID="7" ;;
  "MS"*)
        sitevalue="Maintenance and Security"
        siteID="10" ;;
  "29"*)
        sitevalue="29th Street"
        siteID="11" ;;
  "ER"*)
        sitevalue="El Rio"
        siteID="12" ;;
  "EP"*)
        sitevalue="El Pueblo"
        siteID="13" ;;
  "PCC"*)
        sitevalue="CARES Act"
        siteID="15" ;;
esac

# Set Computer Name
scutil --set ComputerName $name
scutil --set HostName $name
scutil --set LocalHostName $name

# Change the Site of the device based on variable

curl -sfku $apiUser:$apiPass -X PUT https://pccjamf.jamfcloud.com/JSSResource/computers/serialnumber/$serialnumber/subset/general -H "accept: application/xml" -H "Content-Type: application/xml" -d "<?xml version=\"1.0\" encoding=\"UTF-8\"?><computer><general><name>$validname</name><site><id>$siteID</id><name>$sitevalue</name></site></general></computer>" > dev/null

#Send old name to log:
echo "Switched to $validname from $oldname"

exit 0
