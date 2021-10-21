#This is a script to output messages in Powershell as colored output to aid in clarity of actions when executing complicated scripts in Powershell, it is designed to be dot sourced for other scripts (A callable script) or parts of it copied and pasted out for use in other scripts.

#It was written by Kent DuBack II 10.15.21 for Pima Community College, it is available under the GNU Version 3 license.

#This script assumes that the default Powershell window is Dark Blue, however will include a function for that purpose for completeness though it'll largely be useless.

#This is a powershell equivalent of 256colorlibrar.sh in the Linux Scripts folder, though more limited in scope by Powershell's color output.

#=====================================================================================
# Color tricks
#=====================================================================================

#Write-Marquee allows you to color input via comma delineated sequences of strings, and in the second parameter colors. It is very simple, and needs the same amount of arguments on both sides: E.G. 3 comma delineated strings in the -Text and 3 Comma delineated colors in -Color

function Write-Marquee([String[]]$Text, [ConsoleColor[]]$Color) {
  for ($i = 0; $i -lt $Text.Length; $i++) {
    Write-Host $Text[$i] -Foreground $Color[$i] -NoNewLine
  }
  Write-Host
}
#Example:
# Write-Marquee -Text Green,Blue,Red -Color Green,Blue,Red

#A More General Purpose Color writer for selecting colors on the fly without all the flags of "Write-Host".

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

#Example: "Write-Color" "First color is Text color", "second is background color".
# Write-Color Green Yellow "Example Text Here"

#=====================================================================================
# Foreground Colors
#=====================================================================================

function Write-Black {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "Black"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-DarkBlue {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkBlue"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

#=====================================================================================
# Background Colors
#=====================================================================================

function Write-DarkBlueBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkBlue"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

Black
DarkBlue
DarkGreen
DarkCyan
DarkRed
DarkMagenta
DarkYellow
Gray
DarkGray
Blue
Green
Cyan
Red
Magenta
Yellow
White

Background colors:
Black
DarkBlue
DarkGreen
DarkCyan
DarkRed
DarkMagenta
DarkYellow
Gray
DarkGray
Blue
Green
Cyan
Red
Magenta
Yellow
White

#To show all available color combinations at once:
<#>
$colors = [enum]::GetValues([System.ConsoleColor]) | Select-Object @{N='ColorObject';E={$_}}, @{N='ColorName'; E={ If ($_.ToString().substring(0,3) -eq 'Dar' ){ $_.ToString().Substring(4) + 'DARK' } else { $_.ToString() } } } | Sort-Object Colorname ; Foreach ($bgcolor in $colors.ColorObject){ Foreach ($fgcolor in $colors.ColorObject) { Write-Host "$fgcolor|" -ForegroundColor $fgcolor -BackgroundColor $bgcolor -NoNewLine } Write-Host " on $bgcolor" }
</#>
