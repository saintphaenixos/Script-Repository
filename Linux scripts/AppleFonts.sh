#! /usr/bin/env bash

# This is a simple script to download the latest version of Apples Fonts from Apple themselves and install them on your version of Linux, for system-wide use. It is heavily based on the work of ilbuonmarcio here: https://aur.archlinux.org/packages/apple-fonts Thanks!

# It works by creating two functions to install or remove the apple fonts, or update them, as they do get updated from time to time. The actual script itself simply runs these functions in the needed order to get the desired result.

#This Script must be run as Root:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

######################
#The Functions:
######################

#Function to install:
installapplefonts() {

#First we create a working directory in /tmp/ and switch to that.
mkdir /tmp/fontfiles/downloaded
cd /tmp/fontfiles/downloaded

#Now we'll go through a loop to download and extract our needed fonts.
for font in SF-Pro.dmg SF-Compact.dmg SF-Mono.dmg NY.dmg ; do
  curl -O https://devimages-cdn.apple.com/design/resources/download/$font
  7z x "$font"
done

#Lets extract each font payload and clean up, we'll make an array of the currently available directories and work from there:
FontDirectoryArray=(`ls -d */`)
for FontDirectory in $FontDirectoryArray ; do
  cd $FontDirectory
  find -name *.pkg | xargs -r -I{} 7z x {}
  7z x 'Payload~'
  mkdir /tmp/fontfiles/$FontDirectory
  mv Library/Fonts/* /tmp/fontfiles/$FontDirectory
  cd ..
done

#Now we'll move one folder up, and remove the "downloaded" folder to make the next part of the scripts logic work:
cd ..
rm -R /tmp/fontfiles/downloaded

#Now we'll move the .ttfs in the central folder so we can then prepare to make folders for them and place them:
find -name "*.ttf" | xargs -r -I{} mv {} /tmp/fontfiles/

#We'll create Directories named after the ttfs in /tmp/fontfiles, first we get an array of their names, then create directories for each and move them into it.
TTFNameArray=(`find . -name "*.ttf" -execdir basename {} .ttf ';'`)

#Now the for loop to do the work:
for TTF in $TTFNameArray ; do
  mkdir "$TTF-TTF"
  find . -name "$TTF.ttf" | xargs -r -I{} mv {} $TTF-TTF/
done

#Lastly we do the installation by first setting permissions:

#This then moves the truetype files:
find -name "*-TTF" | xargs -r -I{} mv {} /usr/share/fonts/truetype

#and afterwards moves the Opentype files:
ls -d */ | xargs -r -I{} mv {} /usr/share/fonts/opentype

}

######################

#Function to remove:
removeapplefonts() {

#Lets list all the possible directories this will make, so we can remove them.
InstalledApplefonts=(NewYork-TTF  NewYorkItalic-TTF  NYFonts  SF-Compact-Italic-TTF  SF-Compact-TTF  SF-Pro-Italic-TTF  SF-Pro-TTF  SFCompactFonts  SFMonoFonts  SFProFonts)

#Now lets make a for loop to check for and remove them if found:

#DONT RUN THIS AGIAN WITHOUT FIXING IT! ITLL NUKE YOUR FONTS!>:O
for AppleFont in $InstalledApplefonts ; do
  [ -d "/usr/share/fonts/truetype/$Applefont" ] && rm -R /usr/share/fonts/truetype/$Applefont && echo "Deleted $Applefont" 2>/dev/null
  [ -d "/usr/share/fonts/opentype/$Applefont" ] && rm -R /usr/share/fonts/opentype/$Applefont && echo "Deleted $Applefont" 2>/dev/null
done

}


######################
#The Script:
######################




#Maybe create an unistaller for this? Also perhaps a method to install both OTF and TTF font types?
