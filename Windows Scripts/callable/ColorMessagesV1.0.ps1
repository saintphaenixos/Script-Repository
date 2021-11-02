#This is a script to output messages in Powershell as colored output to aid in clarity of actions when executing complicated scripts in Powershell, it is designed to be dot sourced for other scripts (A callable script) or parts of it copied and pasted out for use in other scripts.

#It was written by Kent DuBack II 10.15.21 for Pima Community College, it is available under the GNU Version 3 license.

#This script assumes that the default Powershell window is Dark Blue, however will include a function for that purpose for completeness though it'll largely be useless.

#This is a powershell equivalent of 256colorlibrar.sh in the Linux Scripts folder, though more limited in scope by Powershell's color output.

#=====================================================================================
# Color tricks
#=====================================================================================

#=========================================
#Write-Marquee allows you to color input via comma delineated sequences of strings, and in the second parameter colors. It is very simple, and needs the same amount of arguments on both sides: E.G. 3 comma delineated strings in the -Text and 3 Comma delineated colors in -Color
#=========================================

function Write-Marquee([String[]]$Text, [ConsoleColor[]]$Color) {
  for ($i = 0; $i -lt $Text.Length; $i++) {
    Write-Host $Text[$i] -Foreground $Color[$i] -NoNewLine
  }
  Write-Host
}
#Example:
# Write-Marquee -Text Green,Blue,Red -Color Green,Blue,Red

#=========================================
#Write-Color is a more general purpose color writer for selecting colors on the fly without all the flags of "Write-Host".
#=========================================

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

#Example: "Write-Color" "First color is Text color", "second is background color", "insert text here in double quotations".
# Write-Color Green Yellow "Example Text Here"

#=========================================
#This is just a small trick to show all the color combinations at once.
#=========================================

<#>
$colors = [enum]::GetValues([System.ConsoleColor]) | Select-Object @{N='ColorObject';E={$_}}, @{N='ColorName'; E={ If ($_.ToString().substring(0,3) -eq 'Dar' ){ $_.ToString().Substring(4) + 'DARK' } else { $_.ToString() } } } | Sort-Object Colorname ; Foreach ($bgcolor in $colors.ColorObject){ Foreach ($fgcolor in $colors.ColorObject) { Write-Host "$fgcolor|" -ForegroundColor $fgcolor -BackgroundColor $bgcolor -NoNewLine } Write-Host " on $bgcolor" }
</#>

#=====================================================================================
# Foreground Colors
#=====================================================================================

<#>
Available Foreground (Font) Colors:
Black ,DarkBlue ,DarkGreen ,DarkCyan ,DarkRed ,DarkMagenta ,DarkYellow ,Gray ,DarkGray ,Blue ,Green ,Cyan ,Red ,Magenta ,Yellow ,White.
</#>

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

function Write-DarkGreen {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkGreen"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-DarkCyan {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkCyan"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-DarkRed {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkRed"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-DarkMagenta {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkMagenta"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-DarkYellow {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkYellow"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-Gray {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "Gray"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-DarkGray {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "DarkGray"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-Blue {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "Blue"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

function Write-Green {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required, piped or as a parameter."
}
 $StartingColor = $Host.UI.RawUI.ForegroundColor
 $Host.UI.RawUI.ForegroundColor = "Green"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.ForegroundColor = $StartingColor
}

#=====================================================================================
# Background Colors
#=====================================================================================

<#>
Available Background Colors:
Black ,DarkBlue ,DarkGreen ,DarkCyan ,DarkRed ,DarkMagenta ,DarkYellow ,Gray ,DarkGray ,Blue ,Green ,Cyan ,Red ,Magenta ,Yellow ,White.
</#>

function Write-Blackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Black"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

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

function Write-DarkGreenBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkGreen"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-DarkCyanBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkCyan"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-DarkRedBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkRed"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-DarkMagentaBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkMagenta"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-DarkYellowBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkYellow"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-GrayBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Gray"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-DarkGrayBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "DarkGray"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-BlueBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Blue"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-BlueBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Blue"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-GreenBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Green"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-CyanBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Cyan"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-RedBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Red"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-MagentaBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Magenta"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-YellowBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "Yellow"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}

function Write-WhiteBackground {
 [cmdletbinding()]
 param(
 [parameter(Mandatory=$false,ValueFromPipeline)]
 [string]$Message
 )
if([string]::IsNullOrEmpty($Message)) {
    throw [System.ArgumentException] "Input in the form of a string is required."
}
 $StartingColor = $Host.UI.RawUI.BackgroundColor
 $Host.UI.RawUI.BackgroundColor = "White"
 Write-Output -inputobject $Message
 $Host.UI.RawUI.BackgroundColor = $StartingColor
}
