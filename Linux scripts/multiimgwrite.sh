#!/bin/bash
#!/bin/zsh

#This is a script to write one image to multiple disks selected through Zenity, using the dcfldd tool, it only supports .img files, but may be changed in the future.

#Lets check if you are root first, as you need to be root for this:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#We'll go ahead and check if these programs are installed, and get them installed.
for program in dcfldd zenity; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

# First lets select the img file we wish to work with:
imglocation=$(zenity --file-selection --filename="/home" --title="Select a File")

#Lets create a function to run to get a list of drives, output it to GUI and then use it with the intended command:
Outputdrivesviagui () (

  #Lets create a sub-function for listing the names of the drives using PCRE2 in Perl.
  listdrivesclean() {
    ls -1 /dev | perl -nle'print if m{sd[a-z]{1,2}$|(?=.{7}$)nvme[0-9]{1,2}n[0-9]{1,2}|vd[a-z]{1,2}$|hd[a-z]{1,2}$}gi'
  }

  #Now we'll setup the data to be viewed in zenity, and select our drives and have them output to a variable.
  zenitylist=$(listdrivesclean | awk '{print "false " $0}') # Here we add false and a space so that Zenity can display them correctly.
  drivelist=$(zenity --list --title="Target Drive Selector" --text="Please Select Target Drives" --column="Select" --column="Drives" --separator="\n" --checklist $zenitylist)

  #Now lets set it so that if the Zenity window is closed or cancelled, then it will kill the script:
  [ "$?" -gt 0 ] && exit 1

  #Lastly we add /dev/ to the names of the drives selected through Zenity.
  preparedlist=$(echo "$drivelist" | awk '{print "of=/dev/" $0}')
  echo "$preparedlist"
)

targetslist=$(Outputdrivesviagui)
modtargets=$(echo "$targetslist" | tr "\n" " " )
argtargs=$(echo "${modtargets%?}") # this removes the last character from the last output.

#Lets do a sanity check to make sure we don't overwrite the wrong targets on accident:
confirmation=$(zenity --entry --text "Please confirm that these drives are correct: $targetslist by typing the word "confirm"")
#if the Zenity window is closed or cancelled, then it will kill the script:
[ "$?" -gt 0 ] && exit 1

#Now lets check to see if confirmation
[ "$confirmation" != "confirm" ] && zenity --warning --text "confirm not entered, or entered incorrectly, cancelling." && exit 1

# Now we'll go ahead and utilize the list we have generated with our function and get the images burnt to the new mediums.
echo "dcfldd if=\"$imglocation\" $argtargs bs=1M"
