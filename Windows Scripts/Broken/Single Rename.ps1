#Shamelessly stolen from Will Crabtree, this doesn't currently work.

#region Variable Declarations
$OC = Read-Host -Prompt 'Old Name'
$NC = Read-Host -Prompt 'New Name'
$UN = Get-Credential
#endregion

#region Meat
$Connection = Test-Connection -Quiet -ComputerName $OC -Count 1
if($Connection -eq "True")
{
  write-host "Standby... Changing name"
  Rename-Computer -ComputerName $OC -NewName $NC -DomainCredential $UN -Force -Restart
  write-host "Rename Complete. Machine is restarting."
}
else
{
   write-host "Unable to connect to target computer."
}
#endregion
