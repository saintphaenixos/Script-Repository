#This is a script that creates the needed registry keys to add the "open with Powershell 7 here" Context menu's that Pima's default deployment do not add.
# It was originally written by Kent DuBack II on 10.22.21 for Pima Community College.

#The idea is to create two functions, one that adds the needed keys, and will check if they are already installed, throwing a message and then closing the script after a brief wait. The second switch will remove them, and likewise check throwing an error if they are already removed and then closing.

#Lets set some Variables:
$FirstKeyBatch = "HKCR:\DesktopBackground\Shell\PowerShell7x64"
$SecondKeyBatch = "HKCR:\Directory\Background\shell\PowerShell7x64"
$ThirdKeyBatch = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\openpwsh"
$FourthKeyBatch = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\openpwsh\command]"
$FifthKeyBatch = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\runas"
$SixthKeyBatch = "HKCR:\Directory\ContextMenus\PowerShell7x64\shell\runas\command"
$SeventhKeyBatch = "HKCR:\Directory\shell\PowerShell7x64"
$EighthKeyBatch =  "HKCR:\Drive\shell\PowerShell7x64"

#First we make the HKEY_CLASSES_ROOT Drive able to be read/written to in powershell:
New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR

#First Batch to create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $FirstKeyBatch -Force
Set-ItemProperty -Path $FirstKeyBatch -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $FirstKeyBatch -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $FirstKeyBatch -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"

#Second Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $SecondKeyBatch -Force
Set-ItemProperty -Path $SecondKeyBatch -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $SecondKeyBatch -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $SecondKeyBatch -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"

#Third Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $ThirdKeyBatch -Force
Set-ItemProperty -Path $ThirdKeyBatch -Name MUIVerb -Value "Open &here"
Set-ItemProperty -Path $ThirdKeyBatch -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"

#Fourth Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $FourthKeyBatch -Force
Set-ItemProperty -Path $FourthKeyBatch -Value 'C:\Program Files\PowerShell\7\pwsh.exe -NoExit -RemoveWorkingDirectoryTrailingCharacter -WorkingDirectory \"%V!\" -Command \"$host.UI.RawUI.WindowTitle = 'PowerShell 7 (x64)'\"'

#Fifth Batch to Create:  (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $FifthKeyBatch -Force
Set-ItemProperty -Path $FifthKeyBatch -Name MUIVerb -Value "Open here as &Administrator"
Set-ItemProperty -Path $FifthKeyBatch -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $FifthKeyBatch -Name  HasLUAShield -Value ""

#Sixth Batch to Create: (To remove we remove up to \ContextMenus\ in this path)
New-Item -Path $SixthKeyBatch -Force
Set-ItemProperty -Path $SixthKeyBatch -Value 'C:\Program Files\PowerShell\7\pwsh.exe -NoExit -RemoveWorkingDirectoryTrailingCharacter -WorkingDirectory \"%V!\" -Command \"$host.UI.RawUI.WindowTitle = 'PowerShell 7 (x64)'\"'

#Seventh Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $SeventhKeyBatch -Force
Set-ItemProperty -Path $SeventhKeyBatch -Name MUIVerb -Value "&PowerShell 7"
Set-ItemProperty -Path $SeventhKeyBatch -Name Icon -Value "C:\Program Files\PowerShell\7\assets\Powershell_black.ico"
Set-ItemProperty -Path $SeventhKeyBatch -Name ExtendedSubCommandsKey -Value "Directory\ContextMenus\PowerShell7x64"

#Seventh Batch to Create: (To remove we remove up to \Shell\ in this path)
New-Item -Path $EighthKeyBatch -Force
