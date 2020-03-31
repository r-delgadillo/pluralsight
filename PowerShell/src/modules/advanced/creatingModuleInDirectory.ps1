

#-----------------------------------------------------------------------------#
# Module Path
#-----------------------------------------------------------------------------#

# You can import modules without including the path if you store it
# in one of the default locations. To see this, look at the 
# environment variable PSModulePath
$env:PSModulePath

# We will use the 'User' location for modules. Note if you've not used
# modules before, the WindowsPowerShell\Modules\ folder may not exist, 
# so check first to see if you need to manually create. 

# Here is the path to the user folder of modules for this machine
# (if you are running on your own computer, you'll need to update for
# your computer)
$userModulePath = 'C:\Users\rcain_000\Documents\WindowsPowerShell\Modules\'

# Reminder here's the original path for the demos
$modulePath = 'C:\PS\Beginning PowerShell Scripting for Developers\demo\'

# Name of our module
$moduleName = 'bpsd-m05-module-advanced-module'

# First, we'll setup the new path for our module in the user folder,
# then create that folder
$userModulePathBPSD = "$($userModulePath)$($moduleName)" 
New-Item -ItemType directory -Force $userModulePathBPSD

# Note if you have made a lot of changes to the files (i.e. removing files 
# from the module) you may wish to clean out the directory prior to copying
Remove-Item "$($userModulePathBPSD)\*.*"

# Copy our module to the users module folder (force will overwrite if there)
Copy-Item "$($modulePath)bpsd-m05-module-advanced-*.*" `
          $userModulePathBPSD `
          -Force

# Validate the files are there
Get-ChildItem $userModulePathBPSD 

# It's not loaded into memory yet! 
Get-Module

# Now you can import the bpsd-m05-module-advanced-module without the path
Import-Module -Force $moduleName

# Verify it is loaded
Get-Module

# Test
Write-A
Write-B
Write-M

# Unload the module
Remove-Module $moduleName

# Verify it is unloaded
Get-Module


