#!/bin/bash

#this is a script to search for text or strings of text with color output, possibly with regular expressions in the future.

#These programs are needed for this script
for program in yad; do
  installed=$(command -v $program)
  [[ -z "$installed" ]] && echo "$program is not installed" && sudo apt update && sudo apt install $program || echo "$program is installed"
done

#Here we'll define our variables so we can pass through information from yad.
Searchdirectory=$(yad --title="Please Select a Directory To Search For Text In." --file --directory)
texttosearchfor=$(yad --title="Please select the Text you wish to search for." --width=600 --entry)

grep --color=always -rnw "$Searchdirectory" -e "$texttosearchfor"
