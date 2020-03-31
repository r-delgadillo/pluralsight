#------------------------------------------
# Cmdlets
#------------------------------------------
#region Cmdlets

# Get-Command - Retrieves a list of all system commands
Get-Command

# Can expand by searching for just a verb or noun
Get-Command -Verb "get"
Get-Command -noun "service"

# Get-Help can be used to explain a command
Get-Help Get-Command
Get-Help Get-Command -examples # Displays all examples in the help file
Get-Help Get-Command -detailed
Get-Help Get-Command -full     # Displays everything in the help file
Get-Help Get-Command -Online   # PS 3, Shows online documentation

# Most commands can also be passed a '-?' parameter to get help
Get-Command -? # Same as using Get-Help Get-Command

#endregion Cmdlets

