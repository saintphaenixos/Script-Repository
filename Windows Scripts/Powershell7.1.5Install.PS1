#Powershell 7.1.5 Installation

#Written by Kent DuBack II for Pima Community College 10.20.21.

#Installation command
Start-Process msiexec.exe -ArgumentList '/i PowerShell-7.1.5-win-x64.msi /q ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 REGISTER_MANIFEST=1' -wait
