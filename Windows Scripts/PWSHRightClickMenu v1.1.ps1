#This is a script that creates the needed registry keys to add the "open with Powershell 7 here" and a "Open with Powershell 5 here" Context menus that Pima's default deployment do not add.
# It was originally written by Kent DuBack II on 10.22.21 for Pima Community College.

# First Let's relaunch as an elevated process:
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
  Start-Process powershell.exe "-File", ('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

######################################################################
# All of our Variables:
######################################################################

#Powershell 5 Variables:
$FirstKeyBatchPWSH5 = "HKCR:\DesktopBackground\Shell\PowerShell5x64"
$SecondKeyBatchPWSH5 = "HKCR:\Directory\Background\shell\PowerShell5x64"
$ThirdKeyBatchPWSH5 = "HKCR:\Directory\ContextMenus\PowerShell5x64\shell\openpwsh"
$FourthKeyBatchPWSH5 = "HKCR:\Directory\ContextMenus\PowerShell5x64\shell\openpwsh\command"
$FifthKeyBatchPWSH5 = "HKCR:\Directory\ContextMenus\PowerShell5x64\shell\runas"
$SixthKeyBatchPWSH5 = "HKCR:\Directory\ContextMenus\PowerShell5x64\shell\runas\command"
$SeventhKeyBatchPWSH5 = "HKCR:\Directory\shell\PowerShell5x64"
$EighthKeyBatchPWSH5 =  "HKCR:\Drive\shell\PowerShell5x64"
$Powershell5RunCommand = 'C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe -NoExit -Command "$host.UI.RawUI.WindowTitle = ''PowerShell 5 (x64)''" ; Set-Location -LiteralPath ''%V'''

#Powershell 7 Variables:
$FirstKeyBatchPWSH7 = "HKCR:\DesktopBackground\Shell\PowerShell7x64"
$SecondKeyBatchPWSH7 = "HKCR:\Directory\Background\shell\PowerShell7x64"
$ThirdKeyBatchPWSH7 = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\openpwsh"
$FourthKeyBatchPWSH7 = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\openpwsh\command"
$FifthKeyBatchPWSH7 = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\runas"
$SixthKeyBatchPWSH7 = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\runas\command"
$SeventhKeyBatchPWSH7 = "HKCR:\Directory\shell\PowerShell7x64"
$EighthKeyBatchPWSH7 =  "HKCR:\Drive\shell\PowerShell7x64"
$Powershell7RunCommand = 'C:\Program Files\PowerShell\7\pwsh.exe -NoExit -RemoveWorkingDirectoryTrailingCharacter -WorkingDirectory "%V!" -Command "$host.UI.RawUI.WindowTitle = ''PowerShell 7 (x64)''"'

#First we make the HKEY_CLASSES_ROOT Drive able to be read/written to in powershell:
New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR > $null

######################################################################
# Functions for Adding the Powershell 5 & 7 Registry Entries:
######################################################################

function AddPWSH5Entries() {

#First Batch to create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $FirstKeyBatchPWSH5 -Force
Set-ItemProperty -Path $FirstKeyBatchPWSH5 -Name MUIVerb -Value "&PowerShell 5"
Set-ItemProperty -Path $FirstKeyBatchPWSH5 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $FirstKeyBatchPWSH5 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell5x64"

#Second Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $SecondKeyBatchPWSH5 -Force
Set-ItemProperty -Path $SecondKeyBatchPWSH5 -Name MUIVerb -Value "&PowerShell 5"
Set-ItemProperty -Path $SecondKeyBatchPWSH5 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $SecondKeyBatchPWSH5 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell5x64"

#Third Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $ThirdKeyBatchPWSH5 -Force
Set-ItemProperty -Path $ThirdKeyBatchPWSH5 -Name MUIVerb -Value "Open &here"
Set-ItemProperty -Path $ThirdKeyBatchPWSH5 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"

#Fourth Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $FourthKeyBatchPWSH5 -Force
Set-ItemProperty -Path $FourthKeyBatchPWSH5 -Name '(default)' -Value "$Powershell5RunCommand"

#Fifth Batch to Create:  (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $FifthKeyBatchPWSH5 -Force
Set-ItemProperty -Path $FifthKeyBatchPWSH5 -Name MUIVerb -Value "Open here as &Administrator"
Set-ItemProperty -Path $FifthKeyBatchPWSH5 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $FifthKeyBatchPWSH5 -Name HasLUAShield -Value ""

#Sixth Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $SixthKeyBatchPWSH5 -Force
Set-ItemProperty -Path $SixthKeyBatchPWSH5 -Name '(default)' -Value "$Powershell5RunCommand"

#Seventh Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $SeventhKeyBatchPWSH5 -Force
Set-ItemProperty -Path $SeventhKeyBatchPWSH5 -Name MUIVerb -Value "&PowerShell 5"
Set-ItemProperty -Path $SeventhKeyBatchPWSH5 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $SeventhKeyBatchPWSH5 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell5x64"

#Seventh Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $EighthKeyBatchPWSH5 -Force
Set-ItemProperty -Path $EighthKeyBatchPWSH5 -Name MUIVerb -Value "&PowerShell 5"
Set-ItemProperty -Path $EighthKeyBatchPWSH5 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $EighthKeyBatchPWSH5 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell5x64"
}

function AddPWSH7Entries() {

#First Batch to create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $FirstKeyBatchPWSH7 -Force
Set-ItemProperty -Path $FirstKeyBatchPWSH7 -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $FirstKeyBatchPWSH7 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $FirstKeyBatchPWSH7 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"

#Second Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $SecondKeyBatchPWSH7 -Force
Set-ItemProperty -Path $SecondKeyBatchPWSH7 -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $SecondKeyBatchPWSH7 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $SecondKeyBatchPWSH7 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"

#Third Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $ThirdKeyBatchPWSH7 -Force
Set-ItemProperty -Path $ThirdKeyBatchPWSH7 -Name MUIVerb -Value "Open &here"
Set-ItemProperty -Path $ThirdKeyBatchPWSH7 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"

#Fourth Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $FourthKeyBatchPWSH7 -Force
Set-ItemProperty -Path $FourthKeyBatchPWSH7 -Name '(default)' -Value "$Powershell7RunCommand"

#Fifth Batch to Create:  (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $FifthKeyBatchPWSH7 -Force
Set-ItemProperty -Path $FifthKeyBatchPWSH7 -Name MUIVerb -Value "Open here as &Administrator"
Set-ItemProperty -Path $FifthKeyBatchPWSH7 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $FifthKeyBatchPWSH7 -Name HasLUAShield -Value ""

#Sixth Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $SixthKeyBatchPWSH7 -Force
Set-ItemProperty -Path $SixthKeyBatchPWSH7 -Name '(default)' -Value "$Powershell7RunCommand"

#Seventh Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $SeventhKeyBatchPWSH7 -Force
Set-ItemProperty -Path $SeventhKeyBatchPWSH7 -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $SeventhKeyBatchPWSH7 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $SeventhKeyBatchPWSH7 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"

#Seventh Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $EighthKeyBatchPWSH7 -Force
Set-ItemProperty -Path $EighthKeyBatchPWSH7 -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $EighthKeyBatchPWSH7 -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $EighthKeyBatchPWSH7 -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"
}

######################################################################
# Function for Removing the Powershell Registry Entries:
######################################################################

function RemovePWSH7Entries() {

Remove-Item -Path $FirstKeyBatchPWSH7 -Recurse
Remove-Item -Path $SecondKeyBatchPWSH7 -Recurse
Remove-Item -Path $ThirdKeyBatchPWSH7 -Recurse
Remove-Item -Path $SeventhKeyBatchPWSH7 -Recurse
Remove-Item -Path $EighthKeyBatchPWSH7 -Recurse
}

function RemovePWSH5Entries() {

Remove-Item -Path $FirstKeyBatchPWSH5 -Recurse
Remove-Item -Path $SecondKeyBatchPWSH5 -Recurse
Remove-Item -Path $ThirdKeyBatchPWSH5 -Recurse
Remove-Item -Path $SeventhKeyBatchPWSH5 -Recurse
Remove-Item -Path $EighthKeyBatchPWSH5 -Recurse
}

######################################################################
# Now the actual Switch:
######################################################################

$Menu = 'Install Both Menus','Install PWSH 5 Menus','Remove PWSH 5 Menus','Install PWSH 7 Menus','Remove PWSH 7 Menus','Remove Both'
$Choices = $Menu | Out-GridView -OutputMode Multiple -Title 'Select your Desired Powershell Context Menu Installations, or Removals.'

Switch ($Choices) {
  'Install Both Menus'   {Write-Host "==== Installing Powershell 5 Context Menu Entries ====" -ForegroundColor Blue -BackgroundColor White;
                          AddPWSH5Entries > $null;
                          Write-Host "==== Installing Powershell 7 Context Menu Entries ====" -ForegroundColor Blue -BackgroundColor White;
                          AddPWSH7Entries > $null}
  'Install PWSH 5 Menus' {Write-Host "==== Installing Powershell 5 Context Menu Entries ====" -ForegroundColor Blue -BackgroundColor White;
                          AddPWSH5Entries > $null}
  'Remove PWSH 5 Menus'  {Write-Host "==== Removing Powershell 5 Context Menu Entries ====" -ForegroundColor DarkRed -BackgroundColor White;
                          RemovePWSH5Entries 2> $null}
  'Install PWSH 7 Menus' {Write-Host "==== Installing Powershell 7 Context Menu Entries ====" -ForegroundColor Blue -BackgroundColor White;
                          AddPWSH7Entries > $null}
  'Remove PWSH 7 Menus'  {Write-Host "==== Removing Powershell 7 Context Menu Entries ====" -ForegroundColor DarkRed -BackgroundColor White;
                          RemovePWSH7Entries > $null}
  'Remove Both'          {Write-Host "==== Removing Powershell 5 Context Menu Entries ====" -ForegroundColor DarkRed -BackgroundColor White;
                          RemovePWSH5Entries 2> $null;
                          Write-Host "==== Removing Powershell 7 Context Menu Entries ====" -ForegroundColor DarkRed -BackgroundColor White;
                          RemovePWSH7Entries 2> $null}
}

Write-Host "==== We Are Done! ====" -ForegroundColor Blue -BackgroundColor White
sleep 3
