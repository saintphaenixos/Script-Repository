#Written by Kent DuBack for Pima Community College 5.12.2021
#Idea provided by Will Crabtree

#This script exists to set the default username prefix for the touchnet logins on the computer,
#as well as set Internet Explorer Site Settings to permissive to stop an additional popup, and allow login.
if(!(Test-Path -Path 'HKCU:Software\TouchNet'))
{
  New-Item -Path HKCU:\Software\TouchNet
  New-Item -Path HKCU:\Software\TouchNet\OTC
  Set-ItemProperty -Path HKCU:\Software\TouchNet\OTC -Name Username -Value "C21239."
  Set-ItemProperty -Path HKCU:\Software\TouchNet\OTC -Name Station "WC03"
}

# Now we'll go ahead and set Internet Explorer Site Settings to Permissive, this can always be done with no harm.
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" -Name "SyncMode5" -Value "00000003" -PropertyType "DWord"
