# This is a script that creates a function to create URL shortcuts and places them on the public desktop, designed in this case for the MIT Fishbanks Simulation.
# It was originally written by Kent DuBack II on 1.24.22 for Pima Community College.

######################################################################
# First lets set some variables:
######################################################################
$Chromeroot = 'C:\Program Files (x86)\Google\Chrome'
$Destination = "C:\Users\Public\Desktop\MIT Fishbanks Software.lnk"
$Installedstatus = Test-Path -Path 'C:\Users\Public\Desktop\MIT Fishbanks Software.lnk' -PathType leaf

######################################################################
# Now lets create a function to create URL's:
######################################################################
function Create-Shortcut
{
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("$Destination\$URLTitle.lnk")
$ShortCut.TargetPath="$chromeroot\Application\chrome.exe"
$ShortCut.Arguments="--kiosk $URL"
$ShortCut.WorkingDirectory = "$Chromeroot\Application";
$ShortCut.WindowStyle = 1;
$ShortCut.IconLocation = "$chromeroot\Application\chrome.exe, 0";
$ShortCut.Description = "";
$ShortCut.Save()
}

######################################################################
# Now the Actual Script:
######################################################################

if ($Installedstatus -eq 'True') {
  Write-Host "Fishbanks is installed, Removing:"
  Remove-Item C:\Users\Public\Desktop\MIT Fishbanks Software.lnk
  Write-Host "Fishbanks has been Removed."
  start-sleep 3
  exit
}
else {
  write-host 'Creating and placing Shortcut for MIT Fishbanks Software:'
  URLTitle = "MIT Fishbanks Software.lnk"
  Create-Shortcut
}
