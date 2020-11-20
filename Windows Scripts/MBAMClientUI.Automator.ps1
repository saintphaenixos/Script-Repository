# This script will attempt to run the MBAM 500 times over the course of the day
# It was originally written by Kent Duback & Bryce Bull on 11.20.2020 for Pima Community College.
#Original idea from Katrina Hockman

# Relaunch as an elevated process:
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

#Before we get serious, lets run a GPUpdate:
gpupdate /force

# Will attempt to open MBAM every 30 seconds 500 times. Estimated 4-5 hours.
for ($timer=1; $timer -le 500; $timer++) {
		start-process 'C:\Program Files\Microsoft\MDOP MBAM\MBAMClientUI.exe'
        echo "`nWe are on Cycle: $timer"
        Write-Host "Ctrl+C to return to Powershell, or just close the window." -ForegroundColor Cyan -BackgroundColor Darkcyan `n
        # Thank you DrakharD
        [int]$countdown = 30
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
