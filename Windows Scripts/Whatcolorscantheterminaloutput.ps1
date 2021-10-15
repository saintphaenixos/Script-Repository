#A simple script to run in Powershell that demonstrates how many colors a powershell window can put out through a terminal emulator.

[enum]::GetValues([System.ConsoleColor]) | Foreach-Object {Write-Host $_ -ForegroundColor $_ }

#Also System Variables:

gci env:* | sort-object name
