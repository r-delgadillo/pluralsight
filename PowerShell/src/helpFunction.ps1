#-----------------------------------------------------------------------------#
# Adding Help to Your Functions
#-----------------------------------------------------------------------------#
#region Help

# Robust help built into PowerShell
Get-Help Get-ChildItem

# Help for your function?
function Get-ChildName ()
{
  Write-Output (Get-ChildItem | Select-Object "Name")
}
Clear-Host
Get-Help Get-ChildName


# Custom tags within a comment block that Get-Help will recognize
# Note that not all of them are required
# .SYNOPSIS - A brief description of the command
# .DESCRIPTION - Detailed command description
# .PARAMETER name - Include one description for each parameter
# .EXAMPLE - Detailed examples on how to use the command
# .INPUTS - What pipeline inputs are supported
# .OUTPUTS - What this funciton outputs
# .NOTES - Any misc notes you haven't put anywhere else
# .LINK - A link to the URL for more help. Use one .LINK tag per URL
# Use "Get-Help about_comment_based_help" for full list and details

function Get-ChildName ()
{
<#
  .SYNOPSIS
  Returns a list of only the names for the child items in the current location.
  
  .DESCRIPTION
  This function is similar to Get-ChildItem, except that it returns only the name
  property. 
  
  .INPUTS
  None. 
  
  .OUTPUTS
  System.String. Sends a collection of strings out the pipeline. 
  
  .EXAMPLE
  Example 1 - Simple use
  Get-ChildName
  
  .EXAMPLE
  Example 2 - Passing to another object in the pipeline
  Get-ChildName | Where-Object {$_.Name -like "*.ps1"}

  .LINK
  Get-ChildItem 
  
#>

  Write-Output (Get-ChildItem | Select-Object "Name")
  
}

Clear-Host
Get-Help Get-ChildName


Clear-Host
Get-Help Get-ChildName -full

#endregion Help
