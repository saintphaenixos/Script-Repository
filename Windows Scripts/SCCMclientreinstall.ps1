#Install SCCM Client Version 5.00.8913.1032

Start-Process $PSScriptRoot\SCCMclient\ccmsetup.exe /uninstall -Wait

Start-Process $PSScriptRoot\SCCMclient\ccmsetup.exe -ArgumentList "/USEPKICERT /NOCRLCHECK /logon /mp:do-sccm.pcc-domain.pima.edu CCMHOSTNAME=sccm.pima.edu SMSSITECODE=PCC SMSMP=do-sccm.pcc-domain.pima.edu" -Wait
