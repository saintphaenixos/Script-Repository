# This script automatically updates the SCCM.iso on the Ventoy Boot Stick when ran, without opening the SCCM GUI.
# It was originally written by Kent DuBack II on 12/5/2019 for Pima Community College.

# First lets run this as Admin
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

# Lets go ahead and import the SCCM Modules needed now:

# -----------------------------------------

try {

# Site configuration
$SiteCode = "PCC" # Site code
$ProviderMachineName = "do-sccm.pcc-domain.pima.edu" # SMS Provider machine name

# Import the ConfigurationManager.psd1 module
  if((Get-Module ConfigurationManager) -eq $null) {
    Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1"
  }

# Connect to the site's drive if it is not already present
  if((Get-PSDrive -Name $SiteCode -PSProvider CMSite -ErrorAction SilentlyContinue) -eq $null) {
    New-PSDrive -Name $SiteCode -PSProvider CMSite -Root $ProviderMachineName
  }

# Set the current location to be the site code.
Set-Location "$($SiteCode):\"

}

catch {
  Write-Host "SCCM is not installed on this machine, please install SCCM before running this script again"
  start-sleep 5
  exit
}

# -----------------------------------------

# Now lets set some Variables:

$DATE = Get-Date -Format MM/dd/yyyy
$DATEPLUSYEAR = (Get-Date).AddYears(1).ToString("MM/dd/yyyy")
$BootImage = Get-CMBootImage -Name "Boot image (x64)"
$DISTPOINT = Get-CMDistributionPoint -SiteCode PCC
$ManagementPoint = Get-CMManagementPoint -SiteSystemServerName "DO-SCCM.pcc-domain.pima.edu"

#Lets make a list of Campuses for Visual use later.
$PIMACAMPUS = @(
    @{Campus="Adult Education";Number="1"},
    @{Campus="Aviation Technologies";Number="2"},
    @{Campus="Downtown Campus";Number="3"},
    @{Campus="District Office";Number="4"},
    @{Campus="Desert Vista Campus";Number="5"},
    @{Campus="East Campus";Number="6"},
    @{Campus="El Pueblo";Number="7"},
    @{Campus="El Rio";Number="8"},
    @{Campus="Northwest Campus";Number="9"},
    @{Campus="West Campus";Number="10"} | % { New-Object object | Add-Member -NotePropertyMembers $_ -PassThru }
)

#Old way of doing the campus view.
#Write-Host "`nAdult Education: 1 `nAviation Technologies: 2 `nDowntown Campus: 3 `nDistrict Office: 4 `nDesert Vista Campus: 5 `nEast Campus: 6 `nEl Pueblo: 7 `nEl Rio: 8 `nNorthwest Campus: 9 `nWest Campus: 10"

#Lets go ahead and list out the campuses so the user can choose which one they wish to get a Distribution point from, and we'll set that variable here:
Out-String -InputObject $PIMACAMPUS
$SELECTDISTPOINT = Read-Host "Select Campus According to the Previous Numbers"
Switch ($SELECTDISTPOINT)
{
    1 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName AE-SCCM-DP.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: AE-SCCM-DP.EDU-DOMAIN.PIMA.EDU"           }
    2 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName AT-SCCM-DP.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: AT-SCCM-DP.EDU-DOMAIN.PIMA.EDU"           }
    3 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName DC-SCCM-DP.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: DC-SCCM-DP.EDU-DOMAIN.PIMA.EDU"           }
    4 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName DO-SCCM-DP.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: DO-SCCM-DP.EDU-DOMAIN.PIMA.EDU"           }
    5 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName DV-SCCM-DP-PROD.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: DV-SCCM-DP-PROD.EDU-DOMAIN.PIMA.EDU" }
    6 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName EC-SCCM-DP2.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: EC-SCCM-DP2.EDU-DOMAIN.PIMA.EDU"         }
    7 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName EP-SCCM-DP.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: EP-SCCM-DP.EDU-DOMAIN.PIMA.EDU"           }
    8 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName ER-SCCM-DP.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: ER-SCCM-DP.EDU-DOMAIN.PIMA.EDU"           }
    9 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName NW-SCCM-DP-PROD.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: NW-SCCM-DP-PROD.EDU-DOMAIN.PIMA.EDU" }
    10 { "$DISTPOINT = Get-CMDistributionPoint -SiteSystemServerName WC-SCCM-DP2.EDU-DOMAIN.PIMA.EDU" > $null ; Write-Host "You've Chosen: WC-SCCM-DP2.EDU-DOMAIN.PIMA.EDU"        }
}

Start-Sleep 2

#Now lets go ahead and run this thing!
New-CMBootableMedia -MediaMode Dynamic -MediaType CdDvd -Path "$env:homedrive\Temp\SCCM.iso" -AllowUnknownMachine -BootImage $BootImage -DistributionPoint $DISTPOINT -ManagementPoint $ManagementPoint -AllowUacPrompt -CertificateStartTime "$DATE" -CertificateExpireTime "$DATEPLUSYEAR" -UserDeviceAffinity DoNotAllow

[array] $DRIVELIST = (Get-Volume -Friendlyname SCCMDrive).DriveLetter + {:\}

Foreach ($DRIVE in $DRIVELIST) {
Copy-Item -Path $env:homedrive\Temp\SCCM.iso -Destination "$DRIVE"
}

rm "$env:homedrive\Temp\SCCM.iso"
