# This is a port of a bash script designed to create a response for a ticket, and put it into your clipboard, after typing in the needed information about what the request was for and what was done. It uses interactive prompts to ask for the information and then outputs the completed text to the clipboard so it can be pasted into TDX.
# It was originally written by Kent DuBack II on 2.18.22 for Pima Community College.

######################################################################
#Default Pleasantry Variables:
######################################################################

#This section is for writing out our pleasantries at the end of the ticket:

$EndPleasantry = "Thank you for contacting Pima's IT Department If you have any further questions on the issue, please give us a call at 520-206-4900 (Or just Extension:4900 on a Pima phone) or respond to this email, and it'll automatically re-open the ticket. We Are always available via phone during these business hours:"

$HoursOfOperation = "IT Service Desk Hours: Mon-Thu: 7am-7:30pm, Fri: 7am - 5pm, Sat: 8am - 2pm, Sun: Closed"

#Put your name here:
$MyName = "CHANGEME"

######################################################################
#Modified Pleasantry Variables:
######################################################################

#This section is for writing out our customized pleasantries at the end of the ticket, these can be changed by the user by using the -modify(EndPleasantry|ModHoursOfOperation or ModMyName flags.)

$ModEndPleasantry = "Thank you for contacting Pima's IT Department If you have any further questions on the issue, please give us a call at 520-206-4900 (Or just Extension:4900 on a Pima phone) or respond to this email, and it'll automatically re-open the ticket. We Are always available via phone during these business hours:"

$ModHoursOfOperation = "IT Service Desk Hours: Mon-Thu: 7am-7:30pm, Fri: 7am - 5pm, Sat: 8am - 2pm, Sun: Closed"

#Put your name here:
$ModMyName = "CHANGEME"

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

#We then set the console colors. Broken due to powershell's way of working with console colors currently, so disabled.
Set-ConsoleColor 'DarkGray' 'Blue'

#A command to change the Background and Foreground colors of the Readline as its edited. Whitespace currently is broken, so disabled.
#$e = [char]0x1b
#Set-PSReadLineOption -Colors @{ Command = "$e[48;2;255;255;255m" + "$e[38;2;0;81;153m" }
#Set-PSReadLineOption -Colors @{ Default = "$e[48;2;255;255;255m" + "$e[38;2;0;81;153m" }

</#>

######################################################################
#Lets create a function to replace the pleasantries with custom ones, and to prompt how to do that. We'll also read parameters passed to the script here.
######################################################################

# reading the 1st parameter with the script to see if we have to change any of the pleasantry texts.
Param(
    [parameter(Mandatory=$false,Position=1)][ValidateSet("-EndPleasantry","-Myname","-HoursOfOperation","-SetDefaults")]$Changepleasantries
)

# Attempting to change the ending pleasantry:

switch -wildcard ($Changepleasantries) {
  "-EndPleasantry" {
    #clear the screen for prominence
    clear
    $ChangeEndPleasantry = Read-Host "please enter the new End Pleasantry here, you'll want to be detailed and include these: A thank you statement for contacting us for aid, mentioning that if the user has any further questions to reach out to us, as well as mention that if they response to this email/ticket response that it will re-open the ticket for our attention."

      function Change-EndPleasantry() {
        if([string]::IsNullOrEmpty($ChangeEndPleasantry)) {
          throw [System.ArgumentException] "Please enter a Proper Ending Pleasantry for your Response, it can't be blank."
        }
        else {
          $line = Get-Content $PSScriptRoot\GenerateResponse.ps1 | Select-String $ModEndPleasantry | Select-Object -ExpandProperty Line
          $content = Get-Content $PSScriptRoot\GenerateResponse.ps1
          $content | ForEach-Object {$_ -replace $line,"$ChangeEndPleasantry"} | Set-Content $PSScriptRoot\GenerateResponse.ps1
        }
      }
      Change-EndPleasantry
  }

  "-Myname" {
    #clear the screen for prominence
    clear
    $ChangeMyname = Read-Host "please enter the new End Pleasantry here, you'll want to be detailed and include these: A thank you statement for contacting us for aid, mentioning that if the user has any further questions to reach out to us, as well as mention that if they respons to this email/ticket response that it will re-open the ticket for our attention."

      function Change-MyName() {
        if([string]::IsNullOrEmpty($ChangeMyname)) {
          throw [System.ArgumentException] "Please enter a Proper Ending for your Response, it can't be blank."
        }
        else {
          $line = Get-Content $PSScriptRoot\GenerateResponse.ps1 | Select-String $ModMyName | Select-Object -ExpandProperty Line
          $content = Get-Content $PSScriptRoot\GenerateResponse.ps1
          $content | ForEach-Object {$_ -replace $line,"$ChangeMyname"} | Set-Content $PSScriptRoot\GenerateResponse.ps1
        }
      }
      Change-MyName
  }

  "-HoursOfOperation" {
    #clear the screen for prominence
    clear
    $ChangeHoursOfOperation = Read-Host "please enter the new End Pleasantry here, you'll want to be detailed and include these: A thank you statement for contacting us for aid, mentioning that if the user has any further questions to reach out to us, as well as mention that if they respons to this email/ticket response that it will re-open the ticket for our attention."

      function Change-HouseOfOperation() {
        if([string]::IsNullOrEmpty($ChangeHoursOfOperation)) {
          throw [System.ArgumentException] "Please enter a Proper Ending for your Response, it can't be blank."
        }
        else {
          $line = Get-Content $PSScriptRoot\GenerateResponse.ps1 | Select-String $ModHoursOfOperation | Select-Object -ExpandProperty Line
          $content = Get-Content $PSScriptRoot\GenerateResponse.ps1
          $content | ForEach-Object {$_ -replace $line,"$ChangeHoursOfOperation"} | Set-Content $PSScriptRoot\GenerateResponse.ps1
        }
      }
      Change-HouseOfOperation
  }

  "-SetDefaults" {
      function Set-Defaults() {
          #Set Hours of Operation back to default
          $line = Get-Content $PSScriptRoot\GenerateResponse.ps1 | Select-String $HoursOfOperation | Select-Object -ExpandProperty Line
          $content = Get-Content $PSScriptRoot\GenerateResponse.ps1
          $content | ForEach-Object {$_ -replace $line,"$ChangeHoursOfOperation"} | Set-Content $PSScriptRoot\GenerateResponse.ps1
        }
      }
  }

}



######################################################################
#Lets clear the screen, and read the ticket input:
######################################################################

clear

Write-Color blue white "What is user's name?"
$name = Read-Host

Write-Color blue gray "What was the issue on the machine?"
$issue = Read-Host

Write-Color darkblue gray "What did I do to fix the issue?"
$fix = Read-Host

Write-Color yellow darkgray "Was there any miscellaneous info to say?"
$extra = Read-Host

$hour = Get-Date -Format "HH"

######################################################################
#Lets format the input and output it to the clipboard
######################################################################

Write-Output "$issue" | Out-File response.txt

Write-Output "`n$fix" | Add-Content response.txt

#Lets write an if statement for putting in the extra info if needed.
if ($extra -ne '$null') {
  Write-Output "`n$extra" | Add-Content response.txt
}

Write-Output "-------------------------------------------------------------" | Add-Content response.txt

Write-Output "`n" | Add-Content response.txt

if ($hour -lt '12') {
  Write-Output "Good Morning $name," | Add-Content response.txt
}
elseif ($hour -lt '18') {
  Write-Output "Good Afternoon $name," | Add-Content response.txt
}
else {
  Write-Output "Good Evening $name," | Add-Content response.txt
}

Write-Output "`n$endpleasantry $hoursofoperation" | Add-Content response.txt

if ($hour -lt '12') {
  Write-Output "`nYou have a good day," | Add-Content response.txt
}
elseif ($hour -lt '18') {
  Write-Output "`nhave a good afternoon," | Add-Content response.txt
}
else {
  Write-Output "`nI hope you have a good evening," | Add-Content response.txt
}

Write-Output "`n$myname" | Add-Content response.txt

######################################################################
#Now lets output everything to the clipboard
######################################################################

Get-Content -Path .\response.txt | Set-Clipboard

Remove-Item .\response.txt

Write-Output '"The Response is now available in your clipboard, simply right-click, paste or press CTRL+V"'
Write-Output "Thanks for using Kent's Response Generator!"

start-sleep 1

exit
