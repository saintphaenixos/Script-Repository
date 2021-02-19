<#> Thanks Will Anderson!,

CURRENTLY DOESNT WORK, DUE TO PERMISSIONS ON REMOTE MACHINES.

Adapted for use at work 2.29.2021 by Kent DuBack II

Examples of the function: Invoke-CMClient -ComputerName server01 -Action hardwareinv filecollect
                          Invoke-CMClient -ComputerName 192.168.1.56 -Action hardwareinv discoveryinv
                                    Or The most commonly reccomended one:
                          Invoke-CMClient -ComputerName 192.168.1.111 -Action applicdeploy machpoleval softupdeploy userpolicy winstalllist

the -Computername parameter can be any of these: a fully qualified domain name, a NetBIOS name, or an IP address. </#>

$Menu = 'hardwareinv','softwareinv','updatescan','machinepol','userpolicy','discoveryinv','filecollect','applicdeploy','discovdata','machpoleval','softmeteruse','softupdeploy','winstalllist'

Function Invoke-CMClient{

    PARAM(
            [Parameter(Mandatory=$True,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
            [string[]]$ComputerName = $env:COMPUTERNAME,

            [Parameter(Mandatory=$True)]
            [ValidateSet('hardwareinv','softwareinv','updatescan','machinepol','userpolicy','discoveryinv','filecollect','applicdeploy','discovdata','machpoleval','softmeteruse','softupdeploy','winstalllist')]
            [string]$Actions = "$Menu | Out-GridView -OutputMode Multiple -Title 'Select client inventories you want to run, and click OK.'"
         )


    # here the actions that can be taken are listed, the names are shortened for sanity while typing, and are all lower case in case more need to be added.
    SWITCH ($Actions) {
                        'hardwareinv'  {$_action = "{00000000-0000-0000-0000-000000000001}"}
                        'softwareinv'  {$_action = "{00000000-0000-0000-0000-000000000002}"}
                        'updatescan'   {$_action = "{00000000-0000-0000-0000-000000000113}"}
                        'machinepol'   {$_action = "{00000000-0000-0000-0000-000000000021}"}
                        'userpolicy'   {$_action = "{00000000-0000-0000-0000-000000000027}"}
                        'filecollect'  {$_action = "{00000000-0000-0000-0000-000000000010}"}
                        'applicdeploy' {$_action = "{00000000-0000-0000-0000-000000000121}"}
                        'discovdata'   {$_action = "{00000000-0000-0000-0000-000000000003}"}
                        'machpoleval'  {$_action = "{00000000-0000-0000-0000-000000000022}"}
                        'softmeteruse' {$_action = "{00000000-0000-0000-0000-000000000031}"}
                        'softupdeploy' {$_action = "{00000000-0000-0000-0000-000000000114}"}
                        'winstalllist' {$_action = "{00000000-0000-0000-0000-000000000032}"}
                        }


    FOREACH ($Computer in $ComputerName){
        if ($PSCmdlet.ShouldProcess("$Actions $computer")) {
            Invoke-WmiMethod -ComputerName $Computer -Namespace root\CCM -Class SMS_Client -Name TriggerSchedule -ArgumentList "$_action"
        }
    }
}
