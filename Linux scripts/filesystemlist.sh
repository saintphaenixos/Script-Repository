#!/bin/bash
#!/bin/zsh

# this is a script to output all information regarding hard disks that are mounted on a linux system, including a casing system to learn different

# Here we create a bash function to add color for easier distinction.
chartreuse2() {
    if (( $# == 0 )) ; then
        xargs -r -I{} echo -e "\e[38;5;82m"{}"\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;82m${@}\e[0m"
    fi
}

# A case statement for determining how to sort the output data:

  case ${@} in

    -Filesystem|-filesystem)
      SortOption=1
      ;;

    -Type|-type)
      SortOption=2
      ;;

    -Size|-size)
      SortOption=3
      ;;

    -Used|-used)
      SortOption=4
      ;;

    -Available|-available)
      SortOption=5
      ;;

    -Use|-use)
      SortOption=6
      ;;

    -Mount|-mount)
      SortOption=7
      ;;

    -Help|-help|-h)
      echo "
      FILESYSTEM.SH(1)            Usermade Scripts             FILESYSTEM.SH(1)

      NAME

            filsystemlist.sh - Script for displaying mounted filesystems and
            their models.

      SYNOPSIS

            filesystem.sh - Usage

      DESCRIPTION

            This is a script that outputs all needed information regarding
            mounted disk devices on a bash compatible system. It is able to
            sort by several flags to order the data more appropriately for
            viewing.

            The script is available with these Arguments:

            -filesystem, -filesystem
                    Sort by filesystem name alphabetically. This is also
                    given as the default option in the case of no command
                    flags.

            -type, -Type
                    Sort by filesystem type.

            -size, -Size
                    Sort by hard disk Capacity.

            -used, -Used
                    Sort by the Used Capacity of the
                    hard disk.

            -available, -Available
                    Sort by Available space remaining
                    on the hard disk.

            -use, -Use
                    Sort by the Percentage of used
                    space on the hard disk.

            -mount, -Mount
                    Sort by mount point.

      AUTHOR

            Written by Kent DuBack II for Pima Community College.

      COPYRIGHT

            Copyright © 2023 Free Software Foundation, Inc.  License GPLv3+:
            GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
            This is free software: you are free to change and redistribute
            it.  There is NO WARRANTY, to the extent permitted by law.

      COLOPHONE

            This Script is part of this script repository:
            <https://github.com/saintphaenixos/Script-Repository> and
            hopefully many more useful and interesting tools for the
            layman to use.
      "
      exit
      ;;

    "")
      SortOption=1
      break
      ;;

    *)
      echo "No Flags, or invalid flags detected: running without flags.
      Please use -help or -Help to get valid flags."
      SortOption=1
      break
      ;;
  esac

# list all file systems and mounted hard drives, and store in a variable
Output=$(df -HT | grep '^/dev' | awk '{print $1,$2,$3,$4,$5,$6,$7}')

# sort by file system type, and store in a variable
SortedOutput=$(echo "$Output" | sort -nrk "$SortOption" -t ' ')

# print out formatted results
chartreuse2 "Filesystem            Type    Size  Used Avail Use% Mounted on"
echo "------------------------------------------------------------"
while read -r Line; do
  printf "%-20s %-7s %-5s %-5s %-5s %-4s %s\n" $(echo "$Line")
done <<< "$SortedOutput"

echo -e "\n"

# List all Drives and Models, and follow the previous formatting.
chartreuse2 "Device  Model"
echo "------------------------------------------------------------"
lsblk -do name,model | grep -e sd -e nv
