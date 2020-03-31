# Here is the path to the demo folder, and the name of the module manifest
# (update for your computer as needed)
$modulePath = 'C:\PS\Beginning PowerShell Scripting for Developers\demo\'
$moduleName = 'manifest'

# We will import the module manifest file using the full path
$module = "$($modulePath)$($moduleName).psd1"

# To use a module, you first need to import it
Import-Module -Force $module

# Now the functions are available
Write-A
Write-B
Write-M

# Write-APrivate wasn't exported and hence isn't visible, causes error
Write-APrivate

# You can manually unload the module, or when your session ends it will
# be automatically be unloaded.
Remove-Module $moduleName

# Verify it is unloaded
Get-Module

# More help on modules
Get-Help about_modules

# Other about topics
Get-Help about*
