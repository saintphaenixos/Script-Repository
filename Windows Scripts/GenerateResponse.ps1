# This is a port of a bash script designed to create a response for a ticket, and put it into your clipboard, after typing in the needed information about what the request was for and what was done. It uses interactive prompts to ask for the information and then outputs the completed text to the clipboard so it can be pasted into TDX.
# It was originally written by Kent DuBack II on 2.18.22 for Pima Community College.

######################################################################
#Color Function for creating the popup messages, as well as setting the color of the terminal:
######################################################################

#A function for writing out the titles in color:
function Write-Color() {
  Param(
      [parameter(Mandatory=$false,ValueFromPipeline=$True,ValueFromRemainingArguments=$True)][string]$Text,
      [parameter(Mandatory=$false,Position=1)][ValidateSet("Black","DarkBlue","DarkGreen","DarkCyan","DarkRed","DarkMagenta","DarkYellow","Gray","DarkGray","Blue","Green","Cyan","Red","Magenta","Yellow","White")]$ForegroundColor,
      [parameter(Mandatory=$false,Position=2)][ValidateSet("Black","DarkBlue","DarkGreen","DarkCyan","DarkRed","DarkMagenta","DarkYellow","Gray","DarkGray","Blue","Green","Cyan","Red","Magenta","Yellow","White")]$BackgroundColor
)
  if([string]::IsNullOrEmpty($Text)) {
      throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
  }
  Write-Host $Text -ForegroundColor $ForegroundColor -BackgroundColor $BackgroundColor
}

<#> Fixing this later: Changing the colors of the prompt and background and foreground color.

#A function for changing the background and foreground color of the command prompt, as well as open window.
function Set-ConsoleColor ($bc, $fc) {
    $Host.UI.RawUI.BackgroundColor = $bc
    $Host.UI.RawUI.ForegroundColor = $fc
    Clear-Host
}

#We then set the console colors:
Set-ConsoleColor 'DarkGray' 'Blue'

#A command to change the Background and Foreground colors of the Readline as its edited.
#$e = [char]0x1b
#Set-PSReadLineOption -Colors @{ Command = "$e[48;2;255;255;255m" + "$e[38;2;0;81;153m" }
#Set-PSReadLineOption -Colors @{ Default = "$e[48;2;255;255;255m" + "$e[38;2;0;81;153m" }

</#>

######################################################################
#Lets read the ticket input:
######################################################################
Write-Color blue white "What is their name?"
$name = Read-Host

Write-Color blue gray "What was the issue on the machine?"
$issue = Read-Host

Write-Color blue darkgray "What did I do to fix the issue?"
$fix = Read-Host

yellow "Was there any miscellaneous info to say?"
$extra = Read-Host

$hour = Get-Date -Format "HH:mm"

######################################################################
#Lets format the input and output it to the clipboard
######################################################################

Write-Host

echo "$issue" > responsetemp.fil

echo "" >> responsetemp.fil

echo "$fix" >> responsetemp.fil

echo "" >> responsetemp.fil

if [ -z "$extra" ]
then
  :
else
  echo "$extra" >> responsetemp.fil
  echo "" >> responsetemp.fil
fi

  echo "-------------------------------------------------------------" >> responsetemp.fil

if [ $h -lt 12 ]; then
  echo Good Morning $name >> responsetemp.fil
elif [ $h -lt 18 ]; then
  echo Good Afternoon $name >> responsetemp.fil
else
  echo Good Evening $name >> responsetemp.fil
fi

echo "" >> responsetemp.fil

echo "I hope this fixes the issue, If you have any further questions on the issue, please give us a call at 4900 or respond to this email, and it'll automatically re-open the ticket." >> responsetemp.fil

echo "" >> responsetemp.fil

if [ $h -lt 12 ]; then
  echo You have a good rest of your morning, >> responsetemp.fil
elif [ $h -lt 18 ]; then
  echo You have a good rest of your afternoon, >> responsetemp.fil
else
  echo You have a good rest of your evening, >> responsetemp.fil
fi

echo "" >> responsetemp.fil

echo "-Kent in IT" >> responsetemp.fil

#you need to install xclip and the handle is specified here.

cat responsetemp.fil | xclip -selection c

rm responsetemp.fil
