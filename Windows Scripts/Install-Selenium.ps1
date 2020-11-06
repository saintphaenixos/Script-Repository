if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}
$Version = '3.0.0'
$Url = "https://psg-prod-eastus.azureedge.net/packages/selenium." + $Version + ".nupkg"

$Installedstatus = Test-Path 'C:\Program Files\WindowsPowerShell\Modules\Selenium\'

if ($Installedstatus -eq 'True') {
  Write-Host "Selenium verified as installed, no further action needed."
  start-sleep 3
}
else {
  write-host 'Beginning Download and Installation of Selenium'
  Start-BitsTransfer -Source $Url -Destination "C:\Program Files\WindowsPowerShell\Modules\Selenium$($Version).zip"
  Expand-Archive -Force -Path "C:\Program Files\WindowsPowerShell\Modules\Selenium$($Version).zip" -DestinationPath "C:\Program Files\WindowsPowerShell\Modules\Selenium\$($Version)"
  rm "C:\Program Files\WindowsPowerShell\Modules\Selenium$($Version).nupkg"
}
