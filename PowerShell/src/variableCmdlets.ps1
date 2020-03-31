
#-----------------------------------------------------------------------------#
# Using the *-Variable cmdlets
#-----------------------------------------------------------------------------#
#region 

Clear-Host

# Normal variable usage
$normal = 33
$normal

$text = "In The Morning"
$text


# Long version of $var = 33
New-Variable -Name var -Value 33
$var

# Note if you try to use New-Variable and it already exists, you get an error
# Try again with $var already existing
New-Variable -Name var -Value 99
$var

# Displays the variable and it's value
Get-Variable var -valueonly

Get-Variable var

Get-Variable   # Without params it shows all variables

# Assign a new value to an existing variable
# $var = "In The Morning"
Set-Variable -Name var -Value "In The Morning"
$var

# Clear the contents of a variable
# Same as $var = $null
Clear-Variable -Name var
$var   

# Variable is now set to null
$var -eq $null

# Even though null, it still exists
Get-Variable var   


# Wipe out a variable
Remove-Variable -Name var
# Now var is gone, if you try to remove or clear again an error occurs
# (note if you try to access it by just doing a $var the var is recreated)

Get-Variable var   # Now produces an error


#endregion