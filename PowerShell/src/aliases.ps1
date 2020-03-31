#-----------------------------------------------------------------#
# Alias
#-----------------------------------------------------------------#
#region Aliasing

# Notice how older DOS/Linux commands work in PowerShell
dir
ls

# But how? With command aliasing
# The aliases dir and ls both point to the cmdlet Get-Childitem
Get-Alias dir
Get-Alias ls

# We can see all of the aliases for cmdlet
Get-Alias -Definition Get-ChildItem

# There are ljots of aliases
Get-Alias

# Note: Aliases are fine for command line use or quick prototypes
# For clarity however it is a best practice to use the full cmdlet
# name in all scripts you write.

#endregion Aliasing