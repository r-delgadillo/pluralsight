#--------------------------------------------------------------------------#
# Variables
#--------------------------------------------------------------------------#
#region Variables

Clear-Host

# All variables start with a '$'. Show a simple assignment
$hi = "Hello World!"

# Print the value
$hi

# This is a shortcut to Write-Host
Write-Host $hi

# Variables are objects. Show the type
$hi.GetType()

# Display all the members of this variable (object)
$hi | Get-Member

# Use some of those members
$hi.ToUpper()
$hi.ToLower()
$hi.Length

# TYpes are mutable
Clear-Host
$hi = 5
$hi.GetType()

$hi | Get-Member

# Variables can be strongly typed
Clear-Host
[System.Int32]$myint = 42
$myint
$myint.GetType()

$myint = "This won't work"

# There are shortcuts for most .net types
Clear-Host
[int] $myotherint = 42
$myotherint.GetType()

[string] $mystring = "PowerShell"
$mystring.GetType()

# Others include short, float, decimal, single, bool, byte, etc.

# Not just variables have types - so do static values
"PowerShell Rocks".GetType()

# Accessing Methods on objects
"PowerShell Rocks".ToUpper()
"PowerShell Rocks".Contains("PowerShell")

# For nonstrings you need to wrap in () so PS will evaluate as an object
(33).GetType()

#endregion Variables
