# This is a script to install the SCCM client on both EDU and PCC computers,
# This script was written by Kent DuBack II on 9.17.2020 at Pima Community College.

#This will require an SCCM install folder copied to the root of the directory that this script is run on (Or the root of the USB drive that this is run on), named: SCCM Client
#The Folder is available at: \\DO-SCCM\Sources\Applications\Microsoft\SCCM
#Please select the latest version of the SCCM client folder for this.

#First lets elevate the process to Administrator:

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Relaunch as an elevated process:
    Start-Process powershell.exe "-File", ('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
    exit
}

#Next lets start killing some processes

write-host "Killing all CCM labeled Processes"

#We'll be attempting to kill everything in a loop just to make sure it's all dead.

Do {
  #Lets name some variables:
  $procMsiExec = Get-Process -Name msiexec -ErrorAction SilentlyContinue
  $procCCMExec = Get-Process -Name ccmexec -ErrorAction SilentlyContinue
  $procCCMSetup = Get-Process -Name ccmsetup -ErrorAction SilentlyContinue

  #We'll attempt a blanket kill of the obviously named ones:
  Get-Process -Name msiexec -ErrorAction SilentlyContinue | Stop-Process
  Stop-Process -Force -Name "*CCM*"
  Stop-Process -Force -Name "*SCC*"
  Stop-Service -Force -Name "*SMS*"

  #Next we'll attempt a specific kill of processes in all the SCCM folders. Thanks Will! :)
  $SCCMFolders = @('C:\Windows\CCM','C:\Windows\CCMsetup')
    foreach($folder in $SCCMFolders){
        $CCMexe = Get-ChildItem $folder -recurse -ErrorAction SilentlyContinue | where {$_.extension -eq '.exe'}
        foreach($exe in $CCMexe){
            $exeRemoved = $exe.name -replace '.exe',''
            if(Get-Process -name $exe.Name -ErrorAction SilentlyContinue){
                write-host 'Stopping process:' $exeRemoved
                Stop-Process -name $exeRemoved -force
            }
        }
    }
}

until (($procMsiExec -eq $null) -and ($procCCMExec -eq $null) -and ($procCCMSetup -eq $null))

#Now lets go ahead and detect if it's a reinstall or not.

if (Test-Path -LiteralPath $env:SystemRoot\ccmcache\CCMEXEC.exe -PathType Leaf) {

  write-host "Old installation Detected, Forcing Re-install"
  Write-Host "Removing the installation first"
  Start-Process $PSScriptRoot\ccmsetup.exe /uninstall -Wait
  Start-Sleep -seconds 5
  Write-host "Removing all remaining items and Registry entries with Recursive Force"
  Remove-Item $env:SystemRoot\CCM, $env:SystemRoot\ccmsetup, "$env:SystemDrive\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft System Center" -Recurse -Force -ErrorAction Ignore
  Remove-Item HKLM:\SOFTWARE\Microsoft\CCMSetup -Force -ErrorAction Ignore

  #KEEP THIS TO TEST A REINSTALL IN THE FUTURE
  #Start-Process ".\SCCM CLIENT\ccmsetup.exe" -ArgumentList "/USEPKICERT /NOCRLCHECK /forceinstall /logon /mp:do-sccm.pcc-domain.pima.edu CCMHOSTNAME=sccm.pima.edu SMSSITECODE=PCC SMSMP=do-sccm.pcc-domain.pima.edu" -Wait

  Write-Host "Beginning re-installation of SCCM"
  Start-Process "$PSScriptRoot\SCCM CLIENT\ccmsetup.exe" -ArgumentList "/USEPKICERT /NOCRLCHECK /logon /mp:do-sccm.pcc-domain.pima.edu CCMHOSTNAME=sccm.pima.edu SMSSITECODE=PCC SMSMP=do-sccm.pcc-domain.pima.edu" -Wait

}

else {

    write-host "Beginning installation of SCCM Client"
    Start-Process "$PSScriptRoot\SCCM CLIENT\ccmsetup.exe" -ArgumentList "/USEPKICERT /NOCRLCHECK /logon /mp:do-sccm.pcc-domain.pima.edu CCMHOSTNAME=sccm.pima.edu SMSSITECODE=PCC SMSMP=do-sccm.pcc-domain.pima.edu" -Wait
}

Write-host "Restarting all stopped SCCM Services"
Restart-Service -Force -Name "*SMS*"
