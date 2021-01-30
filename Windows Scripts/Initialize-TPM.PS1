#A very simple script written by Kent DuBack II 11.24.2020 to initialize a TPM that hasn't done so for Pima Community College.

#First we ensure that we are running as an admin:
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

#Then we run the command.
Initialize-TPM
