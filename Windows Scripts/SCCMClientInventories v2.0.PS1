# This script run the SCCM task sequences 4 times, over 20 minutes, it partially automates SCCM software installation of new machines.
# It was originally written by Kent DuBack II on 12/5/2019 for Pima Community College.

# Name first Variables here
$Computer = Get-Variable | hostname

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

#READY SET GO!

#Here is the title and all data afterword tells us if it's functioning.
Write-Host ==== Starting GPUpdate ==== -ForegroundColor Red -BackgroundColor White `n

#Before we get serious, lets run a GPUpdate:
gpupdate /force

#Alright lets list the cycles in an array and write out to the terminal that we are starting the cycles
Write-Host ==== Starting Configuration Manager Cycles ==== -ForegroundColor Red -BackgroundColor White `n
$Array= @(
("{00000000-0000-0000-0000-000000000121}","Application Deployment Evaluation Cycle: "),
("{00000000-0000-0000-0000-000000000003}","Discovery Data Collection Cycle: "),
("{00000000-0000-0000-0000-000000000010}","File Collection Cycle: "),
("{00000000-0000-0000-0000-000000000001}","Hardware Inventory Cycle: "),
("{00000000-0000-0000-0000-000000000021}","Machine Policy Retrieval Cycle: "),
("{00000000-0000-0000-0000-000000000022}","Machine Policy Evaluation Cycle: "),
("{00000000-0000-0000-0000-000000000002}","Software Inventory Cycle: "),
("{00000000-0000-0000-0000-000000000031}","Software Metering Usage Report Cycle: "),
("{00000000-0000-0000-0000-000000000114}","Software Updates Assignments Evaluation Cycle: "),
("{00000000-0000-0000-0000-000000000113}","Software Update Scan Cycle: "),
("{00000000-0000-0000-0000-000000000111}","State Message Refresh: "),
("{00000000-0000-0000-0000-000000000032}","Windows Installers Source List Update Cycle: ")
)

# Now lets set up the process to run 4 times, and set a 5 minute timer.
for ($i=1; $i -le 4; $i++)
{ForEach ($Object in $Array) {
write-host "working on " $object[1]
Invoke-WMIMethod -ComputerName $Computer -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule $Object[0]
}
Write-Progress -Activity "Wait Until Next Cycle" -SecondsRemaining 300;
Start-Sleep -Seconds 300}
