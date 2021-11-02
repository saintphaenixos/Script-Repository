#!/bin/bash
#Version 2.2

#This is a sourceable library of functions for changing the text or background of text colors to one of the 16 colors and text formats using ANSI/VT100 Control sequences.

bold() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[1m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[1m${@}\e[0m"
    fi
}

dim() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[2m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[2m${@}\e[0m"
    fi
}

underline() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[4m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[4m${@}\e[0m"
    fi
}

blink() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[5m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[5m${@}\e[0m"
    fi
}

invertcolor() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[7m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[7m${@}\e[0m"
    fi
}

hidden() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[8m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[8m${@}\e[0m"
    fi
}

default() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[29m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[29m${@}\e[0m"
    fi
}

black() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[30m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[30m${@}\e[0m"
    fi
}

red() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[31m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[31m${@}\e[0m"
    fi
}

green() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[32m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[32m${@}\e[0m"
    fi
}

yellow() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[33m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[33m${@}\e[0m"
    fi
}

blue() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[34m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[34m${@}\e[0m"
    fi
}

magenta() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[35m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[35m${@}\e[0m"
    fi
}

cyan() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[36m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[36m${@}\e[0m"
    fi
}

lightgray() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[37m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[37m${@}\e[0m"
    fi
}

darkgray() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[90m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[90m${@}\e[0m"
    fi
}

lightred() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[91m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[91m${@}\e[0m"
    fi
}

lightgreen() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[92m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[92m${@}\e[0m"
    fi
}

lightyellow() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[93m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[93m${@}\e[0m"
    fi
}

lightblue() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[94m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[94m${@}\e[0m"
    fi
}

lightmagenta() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[95m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[95m${@}\e[0m"
    fi
}

lightcyan() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[96m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[96m${@}\e[0m"
    fi
}

white() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[97m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[97m${@}\e[0m"
    fi
}

defaultbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[49m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[49m${@}\e[0m"
    fi
}

blackbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[40m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[40m${@}\e[0m"
    fi
}

redbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[41m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[41m${@}\e[0m"
    fi
}

greenbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[42m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[42m${@}\e[0m"
    fi
}

yellowbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[43m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[43m${@}\e[0m"
    fi
}

bluebg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[44m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[44m${@}\e[0m"
    fi
}

magentabg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[45m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[45m${@}\e[0m"
    fi
}

cyanbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[46m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[46m${@}\e[0m"
    fi
}

lightgraybg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[47m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[47m${@}\e[0m"
    fi
}

darkgraybg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[100m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[100m${@}\e[0m"
    fi
}

lightredbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[101m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[101m${@}\e[0m"
    fi
}

lightgreenbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[102m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[102m${@}\e[0m"
    fi
}

lightyellowbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[103m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[103m${@}\e[0m"
    fi
}

lightbluebg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[104m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[104m${@}\e[0m"
    fi
}

lightmagentabg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[105m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[105m${@}\e[0m"
    fi
}

lightcyanbg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[106m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[106m${@}\e[0m"
    fi
}

whitebg() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[107m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[107m${@}\e[0m"
    fi
}

#A neat little trick with an if statement to block out a bunch of lines in a script. If you want the demo, comment out the if false statement, the attached then, and lastly the fi at the bottom of the script. You may need to add the execute bit as well to the script.
if false
then

echo ""
echo "Now lets demo these formats:"
echo ""

bold "This is bold!"
dim "This is dim!"
underline "This is underline!"
blink "This is blink!"
invertcolor "This is invertcolor!"
hidden "This is hidden!"

echo ""
echo "Now lets demo these text colors:"
echo ""

default "This is default!"
black "This is black!"
red "This is red!"
green "This is green!"
yellow "This is yellow!"
blue "This is blue!"
magenta "This is magenta!"
cyan "This is cyan!"
lightgray "This is lightgray!"
darkgray "This is darkgray!"
lightred "This is lightred!"
lightgreen "This is lightgreen!"
lightyellow "This is lightyellow!"
lightblue "This is lightblue!"
lightmagenta "This is lightmagenta!"
lightcyan "This is lightcyan!"
white "This is white!"

echo ""
echo "Now lets demo these background colors:"
echo ""

defaultbg "This is default!"
blackbg "This is black!"
redbg "This is red!"
greenbg "This is green!"
yellowbg "This is yellow!"
bluebg "This is blue!"
magentabg "This is magenta!"
cyanbg "This is cyan!"
lightgraybg "This is lightgray!"
darkgraybg "This is darkgray!"
lightredbg "This is lightred!"
lightgreenbg "This is lightgreen!"
lightyellowbg "This is lightyellow!"
lightbluebg "This is lightblue!"
lightmagentabg "This is lightmagenta!"
lightcyanbg "This is lightcyan!"
whitebg "This is white!"

fi
