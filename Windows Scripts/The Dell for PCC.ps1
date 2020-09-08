########################################
$Username = ""
########################################

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Relaunch as an elevated process:
    Start-Process powershell.exe "-File", ('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
    exit
}

if ((Get-WmiObject win32_computersystem).partofdomain) {
    Start-Process $PSScriptRoot\caffeine64.exe


    if ($null -eq (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object { $_.DisplayName -eq 'Configuration Manager Client' })) {

        Write-Host "Installing SCCM Client"
        Start-Process ".\SCCM CLIENT\ccmsetup.exe" /uninstall -Wait

        Start-Process ".\SCCM CLIENT\ccmsetup.exe" -ArgumentList "/USEPKICERT /NOCRLCHECK /logon /mp:do-sccm.pcc-domain.pima.edu CCMHOSTNAME=sccm.pima.edu SMSSITECODE=PCC SMSMP=do-sccm.pcc-domain.pima.edu" -Wait
    }

    c:\windows\system32\cscript.exe "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /act

    gpupdate /force

    $ConfigManCycles = @(
        ("{00000000-0000-0000-0000-000000000121}", "Application Deployment Evaluation Cycle: "),
        ("{00000000-0000-0000-0000-000000000003}", "Discovery Data Collection Cycle: "),
        ("{00000000-0000-0000-0000-000000000010}", "File Collection Cycle: "),
        ("{00000000-0000-0000-0000-000000000001}", "Hardware Inventory Cycle: "),
        ("{00000000-0000-0000-0000-000000000021}", "Machine Policy Retrieval Cycle: "),
        ("{00000000-0000-0000-0000-000000000022}", "Machine Policy Evaluation Cycle: "),
        ("{00000000-0000-0000-0000-000000000002}", "Software Inventory Cycle: "),
        ("{00000000-0000-0000-0000-000000000031}", "Software Metering Usage Report Cycle: "),
        ("{00000000-0000-0000-0000-000000000114}", "Software Updates Assignments Evaluation Cycle: "),
        ("{00000000-0000-0000-0000-000000000113}", "Software Update Scan Cycle: "),
        ("{00000000-0000-0000-0000-000000000111}", "State Message Refresh: "),
        ("{00000000-0000-0000-0000-000000000032}", "Windows Installers Source List Update Cycle: ")
    )

    do {
        Clear-Host
        ForEach ($Cycle in $ConfigManCycles) {
            Write-Progress -Activity "Working on $($Cycle[1])"
            Invoke-WmiMethod -ComputerName $env:COMPUTERNAME -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule $Cycle[0] | Out-Null
        }

        $Updates = Get-WindowsPackage -Online
        $PendingInstall = ($Updates | Where-Object { $_.PackageState -eq 'InstallPending' }).Count
        Write-Progress -Activity 'Windows Update Status' -Status "Pending: $PendingInstall Installed: $($Updates.Count)"
        Start-Sleep -Seconds 20
    }
    Until(($Updates.Count -eq 43) -and ($PendingInstall -eq 11))

    Add-Type -AssemblyName System.Windows.Forms | Out-Null
    [System.Windows.Forms.MessageBox]::Show($THIS, "Updates Complete", 'woot', 'OK', 'Error')

    netsh wlan connect name=PimaDot1X
    Start-Sleep -Seconds 5

    $ethernet = Get-WmiObject -Class Win32_NetworkAdapterConfiguration | Where-Object { $_.IpEnabled -eq $true -and $_.DhcpEnabled -eq $true }

    foreach ($lan in $ethernet) {
        $lan.ReleaseDHCPLease() | Out-Null
    }
    Stop-Computer -Force
}
else {
    Add-Type -AssemblyName System.Windows.Forms | Out-Null

    $Credentials = Get-Credential "PCC-Domain\$Username"

    $PCCAssetTag = (Get-WmiObject -Query "Select * from Win32_SystemEnclosure").SMBiosAssetTag

    if ($PCCAssetTag -match '\d{6}') {

        $NewComputerName = ("PCC-EMP" + $PCCAssetTag + "LL")

        $VerifyName = [System.Windows.Forms.MessageBox]::Show($THIS, "Computer Name: $NewComputerName", 'Verify Computer Name', 'YesNo')

        if ($VerifyName -eq 'Yes') {
            if ($env:COMPUTERNAME -ne $NewComputerName) {
                try {
                    Add-Computer -DomainName 'pcc-domain.pima.edu' -Credential $Credentials -NewName $NewComputerName -OUPath 'OU=CARES Laptops,OU=Computers,OU=IT Services,OU=West,OU=PCC,DC=PCC-Domain,DC=pima,DC=edu' -Restart -Force -ErrorAction Stop
                }
                catch {
                    [System.Windows.Forms.MessageBox]::Show($_.Exception.Message, 'Error', 'OK', 'Error')
                }
            }
            elseif ($env:COMPUTERNAME -eq $NewComputerName) {
                try {
                    Add-Computer -DomainName 'pcc-domain.pima.edu' -Credential $Credentials -OUPath 'OU=CARES Laptops,OU=Computers,OU=IT Services,OU=West,OU=PCC,DC=PCC-Domain,DC=pima,DC=edu' -Restart -Force -ErrorAction Stop
                }
                catch {
                    [System.Windows.Forms.MessageBox]::Show($_.Exception.Message, 'Error', 'OK', 'Error')
                }
            }
        }
        else {
            exit
        }
    }
    else {
        [System.Windows.Forms.MessageBox]::Show("Asset tag not set in BIOS correctly.`nCurrent tag: $PCCAssetTag", 'Error', 'OK', 'Error')
    }
}
