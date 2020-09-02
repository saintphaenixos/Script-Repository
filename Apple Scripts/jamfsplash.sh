#!/bin/bash

sudo jamf recon

sudo jamf policy -event splash_it_up

osascript -e 'tell application "Terminal" to close first window' & exit 
