# Originally written by Kent DuBack II on 12/5/2019 for Pima Community College.
# With many additions by Craby4Github on occasion

# Summary: This script performs system checks, enforces naming conventions, runs a GPUpdate,
# connects to Wi-Fi, checks for pending reboots, and iteratively runs Configuration Manager Cycles.

# Relaunch as an elevated process:
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
  Start-Process powershell.exe "-File", ('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

# Get the computer system information.
$computername = Get-WmiObject Win32_ComputerSystem

# Validate the computer name against the naming conventions and display an error message if the name does not match the conventions.
if ($computername.Name -notmatch "^(?<Campus>([a-z]{2,3}|\d{2}))(?<Dash>-?)(?<BuildingandRoom>([a-z]{1,2}\d{2,3})|[a-z]{3})(?<PCCNumber>\d{6})(?<Suffix>[a-z]{2}|[v]\d)$") {
  Add-Type -AssemblyName System.Windows.Forms | Out-Null
  [System.Windows.Forms.MessageBox]::Show(
    "Computer name does not match naming conventions.`n
    Please rename the computer.`n
    Current name: $($computername.Name)", 'Error', 'OK', 'Error'
  )
}

# Force a Group Policy update
Write-Host "==== Starting GPUpdate ====" -ForegroundColor Red -BackgroundColor White
gpupdate /force

# Look for a Wi-Fi adapter and if found, connect to the PimaDot1x Wi-Fi network.
$wirelesNetworkAdapters = Get-NetAdapter -Physical -name "Wi*Fi*"
if ($null -ne $wirelesNetworkAdapters) {
  Write-Host "==== Connect to PimaDot1x ====" -ForegroundColor Red -BackgroundColor White
  netsh wlan add profile filename=$PSScriptRoot\Wi-Fi-PimaDot1X.xml
  netsh wlan connect name=PimaDot1X
  Start-Sleep -Seconds 5
}

# Setup Config Manager hash table to be used to run cycles
$configMgrCycles = @{
  'Application Deployment Evaluation Cycle' = '{00000000-0000-0000-0000-000000000121}' 
  'Discovery Data Collection Cycle' = '{00000000-0000-0000-0000-000000000003}' 
  'File Collection Cycle' = '{00000000-0000-0000-0000-000000000010}' 
  'Hardware Inventory Cycle' = '{00000000-0000-0000-0000-000000000001}' 
  'Machine Policy Retrieval Cycle' = '{00000000-0000-0000-0000-000000000021}' 
  'Machine Policy Evaluation Cycle' = '{00000000-0000-0000-0000-000000000022}' 
  'Software Inventory Cycle' = '{00000000-0000-0000-0000-000000000002}' 
  'Software Metering Usage Report Cycle' = '{00000000-0000-0000-0000-000000000031}' 
  'Software Updates Deployment Evaluation Cycle' = '{00000000-0000-0000-0000-000000000114}' 
  'Software Update Scan Cycle' = '{00000000-0000-0000-0000-000000000113}' 
  'Windows Installers Source List Update Cycle' = '{00000000-0000-0000-0000-000000000032}' 
}

# Main loop
for ($cycleCounter = 1; $cycleCounter -le 500; $cycleCounter++) {

  # Check for pending reboots
  $pendingReboot = $false
  if (Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending" -EA Ignore) {
    $pendingReboot = $true
  }
  if (Get-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired" -EA Ignore) {
    $pendingReboot = $true
  }
  if (Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager" -Name PendingFileRenameOperations -EA Ignore) {
    $pendingReboot = $true
  }
  try {
    $util = [wmiclass]"\\.\root\ccm\clientsdk:CCM_ClientUtilities"
    $status = $util.DetermineIfRebootPending()
    if (($null -ne $status) -and $status.RebootPending) {
      $pendingReboot = $true
    }
  }
  catch {}
  
  # If a pending reboot is detected, verify if the system is idle.
  if ($pendingReboot) {

    # If CPU usage is less than or equal to 10%, check the network bandwidth usage.
    $cpuUsage = Get-CimInstance win32_processor | Measure-Object -Property LoadPercentage -Average
    if ($cpuUsage.Average -le 10) {
      $startTime = get-date
      $endTime = $startTime.addMinutes(0.5)
      $timeSpan = new-timespan $startTime $endTime

      $count = 0
      $totalBandwidth = 0

      while ($timeSpan -gt 0) {
        $colInterfaces = Get-CimInstance -Class Win32_PerfFormattedData_Tcpip_NetworkInterface -ErrorAction SilentlyContinue | 
        Select-Object -Property BytesTotalPersec, CurrentBandwidth, PacketsPersec | 
        Where-Object { $_.PacketsPersec -gt 0 }

        foreach ($interface in $colInterfaces) {
          $bitsPerSec = $interface.BytesTotalPersec * 8
          $totalBits = $interface.CurrentBandwidth

          if ($totalBits -gt 0) {
            $result = (( $bitsPerSec / $totalBits) * 100)
            $totalBandwidth = $totalBandwidth + $result
            $count++
          }
        }
        Start-Sleep -milliseconds 100
        $timeSpan = new-timespan $(Get-Date) $endTime
      }

      # If the average network bandwidth usage is less than or equal to 1%, force a system reboot and exit the script.
      $averageBandwidth = $totalBandwidth / $count
      if ($averageBandwidth -le 1) {
        Restart-Computer -Force
        Exit
      }
    }
  }

  # Run Configuration Manager Cycles to update and synchronize the device with the Configuration Manager.
  Write-Host "==== Starting Configuration Manager Cycles ====" -ForegroundColor Red -BackgroundColor White
  ForEach ($Cycle in $configMgrCycles.GetEnumerator()) {
    write-host "Working on $($Cycle.Name)" -ForegroundColor Green
    Invoke-WMIMethod -ComputerName $env:COMPUTERNAME -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule $Cycle.Value | Out-Null
  }

  Write-Host "`nWe are on Cycle: $cycleCounter"
  Write-Host "Ctrl+C to return to Powershell, or just close the window." -ForegroundColor Cyan -BackgroundColor Darkcyan

  # Wait for 1200 seconds (20 minutes) before running the next cycle.
  $seconds = 1200
  $cycleEndTime = (Get-Date).AddSeconds($seconds)

  # Display a progress bar while waiting.
  while ($cycleEndTime -gt (Get-Date)) {
    $remainingSeconds = $cycleEndTime.Subtract((Get-Date)).TotalSeconds
    $percent = ($seconds - $remainingSeconds) / $seconds * 100
    Write-Progress -Activity "Waiting for..." -Status "Sleeping" -SecondsRemaining $remainingSeconds -PercentComplete $percent
    Start-Sleep -Seconds 1
  }
  Write-Progress -Activity "Sleeping" -Status "Sleeping..." -SecondsRemaining 0 -Completed
  Clear-Host
}