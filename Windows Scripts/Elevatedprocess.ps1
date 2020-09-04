#A script for other scripts to call that will automatically restart the current script, in an elevated powershell prompt.
#Created 9.4.2020 by Kent DuBack II for Pima Community College.

$ErrorActionPreference= 'silentlycontinue'

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}
