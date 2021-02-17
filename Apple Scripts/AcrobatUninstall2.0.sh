#!/bin/sh

# Improved by Kent DuBack II 2.17.2021, idea by Will Crabtree.

if [ -f "/Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app/Contents/Helpers/Acrobat\ Uninstaller.app" ];
  then
    echo "Uninstaller is present, attempting run."
  else
    echo "exiting... as uninstaller is not present."
    exit 0
fi

# Remove Adobe Acrobat DC

sudo /Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app/Contents/Helpers/Acrobat\ Uninstaller.app/Contents/Library/LaunchServices/com.adobe.Acrobat.RemoverTool Uninstall /Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app
