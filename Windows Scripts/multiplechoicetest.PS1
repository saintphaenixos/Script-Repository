$Menu = 'TV30','TV30BP','TV30LM','TV30PV','LT101','XR2','MU11','SAP','ALL'

$Choices = $Menu | Out-GridView -OutputMode Multiple -Title 'Select Locations you want to run staging, and click OK.'

Switch ($Choices)
{ 
  'TV30' {echo "TV30"}
  'TV30BP' {echo "TV30BP"}
  'TV30LM' {echo "TV30LM"}
  'TV30PV' {echo "TV30PV"}
  'LT101' {echo "LT101"}
  'XR2' {echo "XR2"}
}
