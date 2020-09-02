# This is a script written by Kent DuBack in December of 2019 to allow a user to reset a TPM which gives the following error: "The TPM is current protecting against dictionary attacks" This script resets the TPM, which then has to be re-activated in the Control Panel\All Control Panel Items\Bitlocker Drive Encryption, and then selecting TPM Administration in the lower left. then on the run the "prepare the TPM..." Action item in the upper right of the screen. This will reset the TPM completely and allow the PIN to be reset.

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

$tpm=get-wmiobject -class Win32_Tpm -namespace root\cimv2\security\microsofttpm

$tpm.DisableAutoProvisioning()

$tpm.SetPhysicalPresenceRequest(22)
