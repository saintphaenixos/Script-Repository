#!/bin/bash

#This is an example of creating a function that you can use to change text colors

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
    echo -e "\e[90m${1}\e[0m"
}

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
