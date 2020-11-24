#!/bin/zsh

USR=kduback

ls /media/$USR | grep SCCM > mountlist.temp
#cat mountlist.temp | time parallel -j+0 --progress "cp -R /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
cat mountlist.temp | time parallel -j+0 --progress "rsync --info=progress2 -r /home/$USR/Downloads/Ventoy.Export/* /media/$USR/{}/"
#xargs -a mountlist.temp -I{} -d'\n' cp -R /home/kduback/Downloads/Ventoy.Export/* /media/kduback/{}/
rm mountlist.temp
