#----------------------------------------------------------------------#
# Out-GridView
#----------------------------------------------------------------------#
#region Out-GridView

# With no params, just displays the results in the output panel
Get-ChildItem | Out-GridView

# Use -PassThru to pipe the results to the next item
# (without -passthru nothing gets displayed)
Get-ChildItem | Out-GridView -PassThru

# Use output mode to determine way in which user
# can select output, single or multiple
Get-ChildItem | Out-GridView -OutputMode Single

Get-ChildItem | Out-GridView -OutputMode Multiple

# Can add useful titles to the display
Get-ChildItem | Out-GridView -PassThru -Title "Hello World"

# You can send the output of the GridView to a variable
$ov = ""
Get-ChildItem | Out-GridView -PassThru -OutVariable ov
        
Clear-Host # Clear output pane
$ov     # Show the result

# Works with -OutputMode too!
Get-ChildItem | Out-GridView -OutputMode Single -OutVariable ov

Clear-Host
$ov

# Cancel stops the flow. Run this twice, the second time hit cancel
Get-ChildItem |
    Out-GridView -OutputMode Single |
    Format-Table -AutoSize

# Waiting around
# Without wiat, when launched form a command line
# the gridview won't wait. Open a CMD window then
# try these two commands.
Powershell "Get-ChildItem | Out-GridView"
Powershell "Get-ChildItem | Out-GridView -Wait"

# Gotcha: Don't try to use format-* before it
# Yields an error
Get-ChildItem |
    Format-Table -Property Name, Length -AutoSize |
    Out-GridView -PassThru

# Instead use Select-Object
Get-ChildItem |
    Select-Object -Property Name, Length |
    Out-GridView -PassThru

#endregion Out-GridView