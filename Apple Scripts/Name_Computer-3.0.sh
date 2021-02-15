#!/bin/sh

# Collect Variables
serialnumber=$(ioreg -l | grep IOPlatformSerialNumber | sed -e 's/.*\"\(.*\)\"/\1/')
apiUser=$(echo $4 | /usr/bin/openssl enc -aes256 -d -a -A -S "$6" -k "$7")
apiPass=$(echo $5 | /usr/bin/openssl enc -aes256 -d -a -A -S "$8" -k "$9")

while true
do
  #Here we get the name from osascript, and the exit status of the command in errorout, then we pass it through validname to see if it's a valid PCC name., and compare using those further in.
  name=$(osascript -e 'Tell application "System Events" to display dialog "Please Enter A Name For The Computer \n e.g WC-C111123123SN or EC-E101145934LC" default answer ""' -e 'text returned of result' 2>/dev/null)
  errorout=$?
  validname=$( echo "$name" | perl -nle'print if m{^((?=.{15}$)([a-zA-Z]{2}|(([a-zA-Z]{2}|[0-9]{2})-([a-zA-Z]{1,2})))(([0-9]{2,3})([0-9]{6}))([a-zA-Z]{2}|[vV]{1}[0-9]{1}))|((?=.{15}$)([a-zA-Z]{3}|(([a-zA-Z]{3}|[0-9]{2})-([a-zA-Z]{3})))([0-9]{6})([a-zA-Z]{2}|[vV]{1}[0-9]{1}))|((?=.{15}$)(([a-zA-Z]{3,4}[0-9]{0,1}|(([0-9]{2,3})-([a-zA-Z]{1,3})))([0-9]{6}|[0-9]{8}|[0-9]{9})[a-zA-Z0-9]{2}))$}g')
  if [ "$errorout" -ne 0 ]
  then # user cancel
    exit
  elif [ -z "$name" ] || [ -z "$validname"  ]
  then # loop until input or cancel
    osascript -e 'Tell application "System Events" to display alert " Name entered is not correct or empty! \n Please enter a name or select Cancel! " as warning'
  else [ -n "$name" ]
    echo "$name"
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

curl -sfku $apiUser:$apiPass -X PUT https://pccjamf.jamfcloud.com/JSSResource/computers/serialnumber/$serialnumber/subset/general -H "accept: application/xml" -H "Content-Type: application/xml" -d "<?xml version=\"1.0\" encoding=\"UTF-8\"?><computer><general><name>$validname</name><site><id>$siteID</id><name>$sitevalue</name></site></general></computer>"
exit 0
