#----------------------------------------------------------------------------------#
# Built in variables (aka: Automatic Variables)
#----------------------------------------------------------------------------------#
#region Automatic Variables

Clear-Host

# False and true
$false
$true

# Null
$null

# Current Directory
$pwd # Print working directory

# Users Home Directory
$HOME

# Info about a users scripting environment
$host

#Process ID
$PID

# Info about the current version of PowerShell
$PSVersionTable

$_ # Current Object
Set-Location "C:\ps\01 - intro"
Get-ChildItem | Where-Object { $_.Name -like "*.ps1" }


#endregion Automatic Variables