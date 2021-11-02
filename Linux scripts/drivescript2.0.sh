#!/bin/bash
#!/bin/zsh

#Lets check if you are root first, as you need to be root for this:
[ "$UID" -gt 0 ] && echo -e "This script must be run as root! \n exiting..." && exit 1

#first lets ensure that needed software for this is installed:
#Smartmontools is needed, but doesn't have an attached binary, so this may not catch it.
for program in perl zenity; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#Lets check for smartmontools seperately as they are a metapackage:
smartmoninstalled=$(command -v smartctl)
[[ -z "$smartmontinstalled" ]] && echo "smartmontools is not installed" && sudo apt update && sudo apt install smartmontools || echo "smartmontools is installed"

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
  preparedlist=$(echo "$drivelist" | awk '{print "/dev/" $0}')
  echo "$preparedlist"
)

driveselection=$(Outputdrivesviagui)
echo -e "you selected these drives: \n$driveselection"

echo "$driveselection" | xargs -I{} smartctl {} -a | grep 9\ Power
