#----------------------------------------------------------------------------#
# Providers
#----------------------------------------------------------------------------#
#region Providers

# List default Providers
Clear-Host
Get-PSProvider

# Now show how these providers quate to "drives" we can navigate
Clear-Host
Get-PSDrive

# Move to the ENV (environment variables) drive
Clear-Host
Set-Location env:
Get-ChildItem

Clear-Host
Get-ChildItem | Format-Table -Property Name, Value -AutoSize

# Get a list of aliases
Clear-Host
Set-Location alias:
Get-ChildItem

# Access the variables via Variable provider
$zvar = 0 # add a variable so we can show it

Clear-Host
Set-Location variable:
Get-ChildItem

# Setting up provider aliases
New-PSDrive -Name BPSD `
            -PSProvider FileSystem `
            -Root 'C:\PS\]Beginning PowerShell Scripting for Developers'

Set-Location BPSD:
GetChildItem | Format-Table

Set-Location BPSD:\demo:
GetChildItem | Format-Table

# When done, either use the remove cmdlet below, otherwise
# when this session ends so does the lifespan of the PSDrive
# Make sure to set your location outside the PSDrive first
Set-Location 'C:\PS|Beginning PowerShell Scripting for Developers'
Remove-PSDrive BPSD

#endregion Providers

