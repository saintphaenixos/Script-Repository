<#
Doesn't function in current version of powershell as of 2.19.2021, will be working to get it functioning again.


    ===========================================================================
     Created with:     SAPIEN Technologies, Inc., PowerShell Studio 2014 v4.1.58
     Created on:       6/9/2014 1:57 PM
     Created by:       Adam Bertram
     Filename:         CMClient.psm1
    -------------------------------------------------------------------------
     Module Name: CMClient
    ===========================================================================
#>
#region Invoke-CMClientAction
<#
.SYNOPSIS
    This is a helper function that initiates many ConfigMgr client actions.
.DESCRIPTION

.PARAMETER  Computername
    The system you'd like to initate the action on.
.PARAMETER  AsJob
    A switch parameter that initates a job in the background
.PARAMETER  ClientAction
    The client action to initiate.
.EXAMPLE
    PS C:\> Invoke-CMClientAction -Computername 'Value1' -AsJob
    This example shows how to call the Invoke-CMClientAction function with named parameters.
.NOTES
#>
function Invoke-CMClientAction {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]$Computername,
        [Parameter(Mandatory = $true)]
        [ValidateSet('MachinePolicy',
            'DiscoveryData',
            'ComplianceEvaluation',
            'AppDeployment',
            'HardwareInventory',
            'UpdateDeployment',
            'UpdateScan',
            'SoftwareInventory')]
        [string]$ClientAction,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {
        try {
            $ScheduleIDMappings = @{
                'MachinePolicy' = '{00000000-0000-0000-0000-000000000021}';
                'DiscoveryData' = '{00000000-0000-0000-0000-000000000003}';
                'ComplianceEvaluation' = '{00000000-0000-0000-0000-000000000071}';
                'AppDeployment' = '{00000000-0000-0000-0000-000000000121}';
                'HardwareInventory' = '{00000000-0000-0000-0000-000000000001}';
                'UpdateDeployment' = '{00000000-0000-0000-0000-000000000108}';
                'UpdateScan' = '{00000000-0000-0000-0000-000000000113}';
                'SoftwareInventory' = '{00000000-0000-0000-0000-000000000002}';
            }
            $ScheduleID = $ScheduleIDMappings[$ClientAction]
        } catch {
            Write-Error $_.Exception.Message
        }

    }
    Process {
        try {
            ## Args1 represents the computername and $args[1] represents the scheduleID
            $ActionScriptBlock = {
                [void] ([wmiclass] "\\$($args[0])\root\ccm:SMS_Client").TriggerSchedule($args[1]);
                if (!$?) {
                    throw "Failed to initiate a $ClientAction on $($args[0])"
                }
            }

            if ($AsJob.IsPresent) {
                $Params = @{
                    'Computername' = $Computername;
                    'OriginatingFunction' = $ClientAction;
                    'ScriptBlock' = $ActionScriptBlock;
                    'ScheduleID' = $ScheduleID
                }
                Initialize-CMClientJob @Params
            } else {
                Invoke-Command -ScriptBlock $ActionScriptBlock -ArgumentList $Computername,$ScheduleID
            }
        } catch {
            Write-Error $_.Exception.Message
        }

    }
    End {

    }
}
#endregion

#region Initialize-CMClientJob
<#
.SYNOPSIS
    This is a helper function that starts and manages background jobs for the all
    functions in this module.
.DESCRIPTION

.PARAMETER  OriginatingFunction
    The function where the job request came from.  This is used to keep track of
    which background jobs were started by which function.
.PARAMETER  ScriptBlock
    This is the scriptblock that is passed to the system.
.PARAMETER  Computername
    The computer name that the function is connecting to.  This is used to keep track
    of the functions initiated on computers.
.PARAMETER  ScheduleID
    This is the schedule ID to designate which client action to initiate.  This is needed
    because it has to be sent to the background job scriptblock.
.EXAMPLE

.NOTES
#>
function Initialize-CMClientJob {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]$OriginatingFunction,
        [Parameter(Mandatory = $true)]
        [scriptblock]$ScriptBlock,
        [Parameter(Mandatory = $true)]
        [string]$Computername,
        [Parameter(Mandatory = $true)]
        [string]$ScheduleID
    )

    Begin {
        ## The total number of jobs that can be concurrently running
        $MaxJobThreads = 75
        ## How long to wait when the max job threads has been met to start another job
        $JobWaitSecs = 1
    }
    Process {
        try {
            Write-Verbose "Starting job `"$ComputerName - $OriginatingFunction`"..."
            Start-Job -ScriptBlock $ScriptBlock -Name "$ComputerName - $OriginatingFunction" -ArgumentList $Computername, $ScheduleID | Out-Null
            While ((Get-Job -state running).count -ge $MaxJobThreads) {
                Write-Verbose "Maximum job threshold has been met.  Waiting $JobWaitSecs second(s) to try again...";
                Start-Sleep -Seconds $JobWaitSecs
            }
        } catch {
            Write-Error $_.Exception.Message
        }
    }
    End {

    }
}
#endregion

#region Invoke-CMClientMachinePolicyDownload
<#
.SYNOPSIS
    This function invokes a machine policy download on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the machine policy download on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientMachinePolicyDownload -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientMachinePolicyDownload {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [alias('Name')]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername'    = $Computername;
            'ClientAction'  = 'MachinePolicy';
            'AsJob'            = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientDiscoveryDataCycle
<#
.SYNOPSIS
    This function invokes a DDR cycle on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientDiscoveryDataCycle -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientDiscoveryDataCycle {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'DiscoveryData';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientComplianceEvaluation
<#
.SYNOPSIS
    This function invokes a compliance evaluation on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientComplianceEvaluation -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientComplianceEvaluation {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'ComplianceEvaluation';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientApplicationDeploymentEvaluation
<#
.SYNOPSIS
    This function invokes an application deployment eval on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientApplicationDeploymentEvaluation -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientApplicationDeploymentEvaluation {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'AppDeployment';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientHardwareInventory
<#
.SYNOPSIS
    This function invokes a hardware inventory cycle on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientHardwareInventory -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientHardwareInventory {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'HardwareInventory';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientUpdateDeploymentEvaluation
<#
.SYNOPSIS
    This function invokes an update deployment eval on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientUpdateDeploymentEvaluation -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientUpdateDeploymentEvaluation {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'UpdateDeployment';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientUpdateScan
<#
.SYNOPSIS
    This function invokes an update scan eval on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientUpdateScan -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientUpdateScan {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'UpdateScan';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Invoke-CMClientSoftwareInventory
<#
.SYNOPSIS
    This function invokes a software inventory scan on a ConfigMgr client
.DESCRIPTION

.PARAMETER  Computername
    The name of the system you'd like to invoke the action on
.PARAMETER  AsJob
    Specify this parameter if you'd like to run this as a background job.
.EXAMPLE
    PS C:\> Invoke-CMClientSoftwareInventory -Computername 'Value1' -AsJob
.NOTES

#>
function Invoke-CMClientSoftwareInventory {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true)]
        [string]$Computername,
        [Parameter()]
        [switch]$AsJob
    )

    Begin {

    }
    Process {
        $Params = @{
            'Computername' = $Computername;
            'ClientAction' = 'SoftwareInventory';
            'AsJob' = $AsJob.IsPresent
        }
        Invoke-CMClientAction @Params
    }
    End {

    }
}
#endregion

#region Set-CMClientDebugLogging
<#
.NOTES
     Created on:       5/23/2014 5:27 PM
     Created by:       Adam Bertram
     Filename:      Set-CMClientDebugLogging.ps1
.DESCRIPTION
    This simple script either enables or disables ConfigMgr client debug logging on a remote computer
.EXAMPLE
    .\Set-CMClientDebugLogging.ps1 -Computername COMPUTERNAME -Enable
.EXAMPLE
    .\Set-CMClientDebugLogging.ps1 -Computername COMPUTERNAME -Diable
.PARAMETER Computername
    The computer name you'd like to connect to
.PARAMETER Enable
    Add this parameter to enable debug logging
.PARAMETER Disable
    Add this parameter to disable debug logging
#>
function Set-CMClientDebugLogging {
    [CmdletBinding(DefaultParameterSetName = 'Enable')]
    param (
        [Parameter(Mandatory = $True,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [ValidateScript({ Test-Connection $_ -Count 1 -Quiet })]
        [string[]]$Computername,
        [Parameter(ParameterSetName = 'Enable',
                   Mandatory = $True,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [switch]$Enable,
        [Parameter(ParameterSetName = 'Disable',
                   Mandatory = $True,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [switch]$Disable
    )

    begin {
        try {
            $Registry = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('LocalMachine', $Computername)
            $LogLevel = @{ $true = 0; $false = 1 }[$Enable.IsPresent]
        } catch {
            Write-Error $_.Exception.Message
        }
    }

    process {
        try {
            $RegistryKey = $Registry.OpenSubKey("SOFTWARE\Microsoft\CCM\Logging\@Global", $true)
            $RegistryKey.SetValue("Loglevel", $LogLevel, [Microsoft.Win32.RegistryValueKind]::Dword)

            if ($Disable.IsPresent) {
                ## Delete the enabled value rather than the entire Enabled key. I am not deleting the
                ## entire key to enable this line to be backward compatible with XP.
                $RegistryKey = $Registry.OpenSubKey("SOFTWARE\Microsoft\CCM\Logging\Enabled", $true)
                $RegistryKey.DeleteValue('Enabled')
            } else {
                $RegistryKey = $Registry.OpenSubKey("SOFTWARE\Microsoft\CCM\Logging", $true)
                $NewKey = $RegistryKey.CreateSubKey('Enabled')
                $NewKey.Close()
                $RegistryKey = $Registry.OpenSubKey("SOFTWARE\Microsoft\CCM\Logging\Enabled", $true)
                $RegistryKey.SetValue('Enabled', 'True', [Microsoft.Win32.RegistryValueKind]::String)
            }

        } catch {
            Write-Error $_.Exception.Message
        }
    }
    #endregion

#region Enable-CMClientDebugLogging
<#
.NOTES
     Created on:       5/23/2014 5:27 PM
     Created by:       Adam Bertram
     Filename:      Enable-CMClientDebugLogging.ps1
.DESCRIPTION
    This simple script either enables ConfigMgr client debug logging on a remote computer. This function
    is just a wrapper for Set-CMClientDebugLogging
.EXAMPLE
    .\Enable-CMClientDebugLogging.ps1 -Computername COMPUTERNAME
.PARAMETER Computername
    The computer name you'd like to connect to
#>
function Enable-CMClientDebugLogging {
    [CmdletBinding(DefaultParameterSetName = 'Enable')]
    param (
        [Parameter(Mandatory = $True,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [ValidateScript({ Test-Connection $_ -Count 1 -Quiet })]
        [string[]]$Computername
    )

    process {
        try {
            Set-CMClientDebugLogging -Computername $Computername -Enable
        } catch {
            Write-Error $_.Exception.Message
        }
    }
}
#endregion

#region Disable-CMClientDebugLogging
<#
.NOTES
     Created on:       5/23/2014 5:27 PM
     Created by:       Adam Bertram
     Filename:      Disable-CMClientDebugLogging.ps1
.DESCRIPTION
    This simple script disables ConfigMgr client debug logging on a remote computer. This function
    is just a wrapper for Set-CMClientDebugLogging
.EXAMPLE
    .\Disable-CMClientDebugLogging.ps1 -Computername COMPUTERNAME
.PARAMETER Computername
    The computer name you'd like to connect to
#>
function Disable-CMClientDebugLogging {
    [CmdletBinding(DefaultParameterSetName = 'Enable')]
    param (
        [Parameter(Mandatory = $True,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [ValidateScript({ Test-Connection $_ -Count 1 -Quiet })]
        [string[]]$Computername
    )

    process {
        try {
            Set-CMClientDebugLogging -Computername $Computername -Disable
        } catch {
            Write-Error $_.Exception.Message
        }
    }
}
#endregion

Export-ModuleMember Enable-CMClientDebugLogging
Export-ModuleMember Disable-CMClientDebugLogging
Export-ModuleMember Invoke-CMClientUpdateScan
Export-ModuleMember Invoke-CMClientUpdateDeploymentEvaluation
Export-ModuleMember Invoke-CMClientHardwareInventory
Export-ModuleMember Invoke-CMClientApplicationDeploymentEvaluation
Export-ModuleMember Invoke-CMClientComplianceEvaluation
Export-ModuleMember Invoke-CMClientDiscoveryDataCycle
Export-ModuleMember Invoke-CMClientMachinePolicyDownload
