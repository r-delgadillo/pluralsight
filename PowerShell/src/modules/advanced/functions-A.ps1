# Module doesn't really do much, just used to show the module process
function Write-A()
{
  Write-Host 'A'
}

# Note this function will only be usable inside the module, because we
# don't explicitly export it in the modules main psm1 file. 
function Write-APrivate()
{
  Write-Host 'APrivate'
}



