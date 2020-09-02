# This script run the SCCM task sequences 4 times, over 20 minutes, it partially automates SCCM software installation of new machines.
# It was originally written by Kent DuBack II on 12/5/2019 for Pima Community College.

# With many additions by Will Crabtree on 8/7/2020

# Relaunch as an elevated process:
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
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
$ConfigManCycles = @(
    ("{00000000-0000-0000-0000-000000000121}", "Application Deployment Evaluation Cycle: "),
    ("{00000000-0000-0000-0000-000000000003}", "Discovery Data Collection Cycle: "),
    ("{00000000-0000-0000-0000-000000000010}", "File Collection Cycle: "),
    ("{00000000-0000-0000-0000-000000000001}", "Hardware Inventory Cycle: "),
    ("{00000000-0000-0000-0000-000000000021}", "Machine Policy Retrieval Cycle: "),
    ("{00000000-0000-0000-0000-000000000022}", "Machine Policy Evaluation Cycle: "),
    ("{00000000-0000-0000-0000-000000000002}", "Software Inventory Cycle: "),
    ("{00000000-0000-0000-0000-000000000031}", "Software Metering Usage Report Cycle: "),
    ("{00000000-0000-0000-0000-000000000114}", "Software Updates Deployment Evaluation Cycle: "),
    ("{00000000-0000-0000-0000-000000000113}", "Software Update Scan Cycle: "),
    ("{00000000-0000-0000-0000-000000000032}", "Windows Installers Source List Update Cycle: ")
)

# here we have a for loop that runs on an incrementing timer, it then runs through the cycles in the array piece by piece and outputs all the output to null, with the exception of the names. It shows what cycle we are on, and clears the screen repeatedly after each, to show motion on the screen and make it easier to see what it is doing.
for ($timer=1; $timer -le 500; $timer++) {
        ForEach ($Cycle in $ConfigManCycles) {
        write-host "working on" $Cycle[1]
        Invoke-WMIMethod -ComputerName $env:COMPUTERNAME -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule $Cycle[0] > $null
        }
            echo ""
            echo "We are on Cycle: $timer"
            Write-Host "Ctrl+C to return to Powershell, or just close the window." -ForegroundColor Cyan -BackgroundColor Darkcyan `n
            # Thank you DrakharD
            [int]$countdown = 20
            $Length = $countdown / 100
              For ($countdown; $countdown -gt 0; $countdown--) {
                $min = [int](([string]($Time/60)).split('.')[0])
                $text = " " + $min + " minutes " + ($countdown % 60) + " seconds left"
                Write-Progress -Activity "Waiting for..." -Status $Text -PercentComplete ($countdown / $Length)
                Start-Sleep 1
              }
Write-Progress -Activity "Waiting for..." -Status "Ready" -Completed
Clear-Host
}
