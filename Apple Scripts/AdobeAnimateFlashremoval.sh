#!/bin/bash
#!/bin/zsh

#A simple script to remove Adobe Flash player from Adobe CC installations with Adobe Animate which come with it pre-packaged.
#For Adobe Animate version 2020 (as part of Creative Cloud)

if [ -f "/Applications/Adobe\ Animate\ 2020/Players/Flash\ Player.app" ];
  then
    echo "Flash Player is present, attempting run."
  else
    echo "exiting... as uninstaller is not present."
    exit 0
fi

rm -rf /Applications/Adobe\ Animate\ 2020/Players/Flash\ Player.app
