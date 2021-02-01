#!/bin/bash

#This is an example of creating a function that you can use to change text colors and formatting such as bolding dimming, underlining and etc.
#Changing Formatting:
bold() {
    echo -e "\e[1m${1}\e[0m"
}

dim() {
    echo -e "\e[2m${1}\e[0m"
}

underlined() {
    echo -e "\e[4m${1}\e[0m"
}

blink() {
    echo -e "\e[5m${1}\e[0m"
}

reversecolors() {
    echo -e "\e[7m${1}\e[0m"
}

hiddentext() {
    echo -e "\e[8m${1}\e[0m"
}

bunderlined() {
    echo -e "\e[1;4m${1}\e[0m"
}


#Changing text color:
red() {
    echo -e "\e[31m${1}\e[0m"
}

green() {
    echo -e "\e[32m${1}\e[0m"
}

yellow() {
    echo -e "\e[33m${1}\e[0m"
}

blue() {
    echo -e "\e[34m${1}\e[0m"
}

magenta() {
    echo -e "\e[35m${1}\e[0m"
}

cyan() {
    echo -e "\e[36m${1}\e[0m"
}

lightgray() {
    echo -e "\e[37m${1}\e[0m"
}

darkgray() {
    echo -e "\e[90m${1}\e[0m"
}

lightred() {
    echo -e "\e[91m${1}\e[0m"
}

lightgreen() {
    echo -e "\e[92m${1}\e[0m"
}

lightyellow() {
    echo -e "\e[93m${1}\e[0m"
}

lightblue() {
    echo -e "\e[94m${1}\e[0m"
}

lightmagenta() {
    echo -e "\e[95m${1}\e[0m"
}

lightcyan() {
    echo -e "\e[96m${1}\e[0m"
}

white() {
    echo -e "\e[97m${1}\e[0m"
}

#Changing Background color:

defaultbg() {
    echo -e "\e[49m${1}\e[0m"
}

blackbg() {
    echo -e "\e[40m${1}\e[0m"
}

redbg() {
    echo -e "\e[41m${1}\e[0m"
}

greenbg() {
    echo -e "\e[42m${1}\e[0m"
}

yellowbg() {
    echo -e "\e[43m${1}\e[0m"
}

bluebg() {
    echo -e "\e[44m${1}\e[0m"
}

magentabg() {
    echo -e "\e[45m${1}\e[0m"
}

cyanbg() {
    echo -e "\e[46m${1}\e[0m"
}

lightgraybg() {
    echo -e "\e[47m${1}\e[0m"
}

darkgraybg() {
    echo -e "\e[100m${1}\e[0m"
}

lightredbg() {
    echo -e "\e[101m${1}\e[0m"
}

lightgreenbg() {
    echo -e "\e[102m${1}\e[0m"
}

lightyellowbg() {
    echo -e "\e[103m${1}\e[0m"
}

lightbluebg() {
    echo -e "\e[104m${1}\e[0m"
}

lightmagentabg() {
    echo -e "\e[105m${1}\e[0m"
}

lightcyanbg() {
    echo -e "\e[106m${1}\e[0m"
}

whitebg() {
    echo -e "\e[107m${1}\e[0m"
}

#Now lets demo all of them:

white "Here are all the formats!"

bold "This is Bold!"

underlined "This is Underlined!"

blink "This is Blinking!"

reversecolors "The Colors of this text are reversed!"

hiddentext "Password123  \e[0m< This text is hidden."

bunderlined "This is bold and underlined!"

echo ""

bunderlined "Here are all the text colors!"

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo

red "This is Red!"

green "This is Green!"

yellow "This is Yellow!"

blue "This is Blue!"

magenta "This is Magenta!"

cyan "This is Cyan!"

lightgray "This is Light Gray!"

darkgray "This is Dark Gray!"

lightred "This is Light Red!"

lightgreen "This is Light Green!"

lightyellow "This is Light Yellow!"

lightblue "This is Light Blue!"

lightmagenta "This is Light Magenta!"

lightcyan "This is Light Cyan!"

white "This is White!"

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo

echo ""

bunderlined "Here are all the background colors!"

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo

defaultbg "Here is the Default background."

blackbg "Here is a black background."

redbg "Here is a red background."

greenbg "Here is a green background."

yellowbg "Here is a yellow background."

bluebg "Here is a blue background."

magentabg "Here is a magenta background."

cyanbg "Here is a cyan background."

lightgraybg "Here is a light gray background."

darkgraybg "Here is a dark gray background."

lightredbg "Here is a light red background."

lightgreenbg "Here is a light green background."

lightyellowbg "Here is a light yellow background."

lightbluebg "Here is a light blue background."

lightmagentabg "Here is a light magenta background."

lightcyanbg "Here is a light cyan background."

whitebg "Here is a white background."

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo
