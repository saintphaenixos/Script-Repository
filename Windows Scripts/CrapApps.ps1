#This script was modified by Kent DuBack II on September 3rd 2020.

$ErrorActionPreference= 'silentlycontinue'

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  Write-Host "Please execute this script from an elevated Powershell after logging into a User account with Administrator Credentials" -ForegroundColor Red -BackgroundColor White `n
  Start-Sleep 10
  exit
}

#Lets make a huge array of all of our apps we wanna remove.
$applications = @(
  # Wildcard App Names for crap apps
  ("*3dbuilder*"),
  ("*ActiproSoftwareLLC*"),
  ("*AdobeSystemsIncorporated.AdobePhotoshopExpress*"),
  ("*Advertising*"),
  ("*bingfinance*"),
  ("*bingnews*"),
  ("*bingsports*"),
  ("*BingTranslator*"),
  ("*BingWeather*"),
  ("*BubbleWitch3Saga*"),
  ("*CandyCrush*"),
  ("*ContactSupport*"),
  ("*DesktopAppInstaller*"),
  ("*Dolby*"),
  ("*duolingo*"),
  ("*Duolingo-LearnLanguagesforFree*"),
  ("*EclipseManager*"),
  ("*Facebook*"),
  ("*Flipboard*"),
  ("*flipboard*"),
  ("*FreshPaint*"),
  ("*getstarted*"),
  ("*Microsoft.BingWeather*"),
  ("*Minecraft*"),
  ("*NetworkSpeedTest*"),
  ("*News*"),
  ("*officehub*"),
  ("*OneConnect*"),
  ("*onenote*"),
  ("*PandoraMediaInc*"),
  ("*people*"),
  ("*Print3D*"),
  ("*Royal Revolt*"),
  ("*skypeapp*"),
  ("*solitairecollection*"),
  ("*Speed Test*"),
  ("*Spotify*"),
  ("*StorePurchaseApp*"),
  ("*Sway*"),
  ("*Sway*"),
  ("*Twitter*"),
  ("*WindowsAlarms*"),
  ("*windowscamera*"),
  ("*windowscommunicationsapps*"),
  ("*WindowsFeedbackHub*"),
  ("*windowsmaps*"),
  ("*windowsphone*"),
  ("*windowsstore*"),
  ("*Wunderlist*"),
  ("*Wunderlist*"),
  ("*Xbox*"),
  ("*zune*"),
  ("*zunemusic*"),
    # For specific App Names:
    ("Microsoft.Getstarted")
)

foreach ($application in $applications) {
    Get-AppxPackage -allusers $application | Remove-AppxPackage
    Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $application | Remove-AppxProvisionedPackage -Online
    Write-Host "Currently cleaning $application, please wait" -ForegroundColor Yellow -BackgroundColor Darkcyan `n
}
