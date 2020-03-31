#--------------------------------------------------------------------------#
# Cmdlet Pipelining
#--------------------------------------------------------------------------#
#region Cmdlet Pipelining

# Moving around the file tree
# Get-ChildItem lists all items in current path
Get-ChildItem

# Set-Location will change the current path
Set-Location "C:\PS\01 -Intro"

# Pipelining - combine CmdLets for power
# Get the output of Get-ChildItem and push it into the Where-Object cmdlet
Get-ChildItem | Where-Object { $_.Length -gt 10kb }

Get-ChildItem | Where-Object { $_.Length -gt 10kb } | Sort-Object Length

# Can break commands up among several lines
# (note pipe must be last char on line)
Get-ChildItem |
    Where-Object { $_.Length -gt 10kb } |
    Sort-Object Length

# To specify columns in the output and get nice formatting, use Format-Table
Get-ChildItem |
    Where-Object { $_.Length -gt 10kb } |
    Sort-Object Length |
    Format-Table -Property Name, Length -AutoSize

# You can also use the Select-Object to retrieve certain properties from an object
Get-ChildItem | Select-Object Name, Length

# If you have an especially long command without pipes, you can also use
# a line continuation character of the reverse single quote '`' (typically
# located to the left of the number 1 on your keyboard)
# Note that just as with the '|', the '`' must be the very last character
# on the line. No spaces or comments are allowed after it
Get-ChildItem -Path C:\PS `
              -File "*.ps1" `
              -Verbose

Get-ChildItem -Path C:\PS `
              -File "*.ps1" `
              -Verbose |
              Format-Table -Property Name, Length -AutoSize

#endregion Cmdlet Pipelining

