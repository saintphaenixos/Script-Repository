#In Work
function Add-ComputersToSecurityGroupFromOU($SecurityGroup) {
    Import-Module activedirectory

    $stagingOU = 'OU=West,OU=Staging,DC=PCC-Domain,DC=pima,DC=edu'
    $laptopOU = 'OU=COVID-19 Laptops,OU=Computers,OU=IT Services,OU=West,OU=PCC,DC=PCC-Domain,DC=pima,DC=edu'
    $SecurityGroup

    Get-ADComputer -SearchBase $stagingOU -Filter { Name -like "WC-R016*SN" } | ForEach-Object { Move-ADObject -Identity $_.DistinguishedName -TargetPath $laptopOU }

    $mbamSecurityGroup = Get-ADGroup -Filter { Name -like "WC-MBAM-Laptop-Computers" }

    Get-ADComputer -SearchBase $laptopOU -Filter * | ForEach-Object { Add-ADGroupMember -Identity $mbamSecurityGroup -Members $_.DistinguishedName }

}

function Get-ADComputers($ComputerName) {
    Import-Module activedirectory
    return (Get-ADComputer -filter { Name -like $ComputerName }).Name
}

function Get-MappedDrives($ComputerName) {
    #Ping remote machine, continue if available
    if (Test-Connection -ComputerName $ComputerName -Count 1 -Quiet) {
        #Get remote explorer session to identify current user
        $explorer = Get-WmiObject -ComputerName $ComputerName -Class win32_process | ? { $_.name -eq "explorer.exe" }

        #If a session was returned check HKEY_USERS for Network drives under their SID
        if ($explorer) {
            $Hive = [long]$HIVE_HKU = 2147483651
            $sid = ($explorer.GetOwnerSid()).sid
            $owner = $explorer.GetOwner()
            $RegProv = get-WmiObject -List -Namespace "root\default" -ComputerName $ComputerName | Where-Object { $_.Name -eq "StdRegProv" }
            $DriveList = $RegProv.EnumKey($Hive, "$($sid)\Network")

            #If the SID network has mapped drives iterate and report on said drives
            if ($DriveList.sNames.count -gt 0) {
                "$($owner.Domain)\$($owner.user) on $($ComputerName)"
                foreach ($drive in $DriveList.sNames) {
                    "$($drive)`t$(($RegProv.GetStringValue($Hive, "$($sid)\Network\$($drive)", "RemotePath")).sValue)"
                }
            }
            else { "No mapped drives on $($ComputerName)" }
        }
        else { "explorer.exe not running on $($ComputerName)" }
    }
    else { "Can't connect to $($ComputerName)" }
}

function Get-Module($ModuleName) {
  If (-not(Get-InstalledModule $ModuleName -ErrorAction silentlycontinue)) {
      Install-Module $ModuleName -Confirm:$False -Force -Scope CurrentUser
  }
}

function Start-SCCMClientInventories {

# This function automatically runs the SCCM task sequences 500 times every 20 seconds.
# It was originally written by Kent DuBack II on 12/5/2019 for Pima Community College.

# With many additions by Will Crabtree on 8/7/2020

# Check to see if the function this is being called in is Admin:
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
 {
  Write-Host "This function needs to be run in a script or environment with Administrator credentials."
  Break
 }

#Here is the title and all data afterword tells us if it's functioning.
Write-Host ==== Starting GPUpdate ==== -ForegroundColor Red -BackgroundColor White `n

#Before we get serious, lets run a GPUpdate:
# gpupdate /force

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

            echo "`nWe are on Cycle: $timer"
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

}
