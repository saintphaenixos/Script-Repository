# Relaunch as an elevated process:
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-File", ('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
    exit#}

#Copy the drivers to the computer so we can make the usb this is run off of mobile.
Write-Host "Currently Transferring drivers to Public downloads, one second."
Copy-Item -Path $PSScriptRoot\DellDrivers -Destination C:\Users\Public\Downloads -Recurse
Write-Host "Done!"

# Now we'll pull a list of drivers in the DellDrivers folder on the computer and run each.
Get-ChildItem -path C:\Users\Public\Downloads\DellDrivers -Name | % { "& C:\Users\Public\Downloads\DellDrivers\" + $_ } | % { $_ + " /s /f /r"} > C:\Users\Public\Downloads\DellDrivers\DellDriverExecution.Ps1

Write-Host "Beginning Installation of the Drivers, This may take awhile."
& "C:\Users\Public\Downloads\DellDrivers\DellDriverExecution.Ps1"
Write-Host "Done installing!"

Write-Host "Cleaning up after ourselves..."
Remove-Item "C:\Users\Public\Downloads\DellDrivers" -Recurse -Force -ErrorAction Ignore

Write-Host "We're done! press a key to close this window. :)"
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") > $null
