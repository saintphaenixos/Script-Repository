#!/bin/zsh

echo "select your drive"

read drive

echo "you selected drive $drive"
sudo smartctl /dev/sd$drive -a | grep 9\ Power
