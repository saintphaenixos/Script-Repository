[enum]::GetValues([System.ConsoleColor]) | Foreach-Object {Write-Host $_ -ForegroundColor $_ }

#Also System Variables:

gci env:* | sort-object name
