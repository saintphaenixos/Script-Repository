#Written by Kent DuBack for Pima Community College 5.12.2021
#Idea provided by Will Crabtree

#Set the default username prefix for the Touchnet logins on the computer,
if(!(Test-Path -Path 'HKCU:Software\TouchNet'))
{
  New-Item -Path HKCU:\Software\TouchNet
  New-Item -Path HKCU:\Software\TouchNet\OTC
  Set-ItemProperty -Path HKCU:\Software\TouchNet\OTC -Name Username -Value "C21239.$($env:USERNAME)"
  Set-ItemProperty -Path HKCU:\Software\TouchNet\OTC -Name Station "WC03"
}
