# At its simplest, a module can be just a ps1 file renamed to psm1
# with functions defined

function Write-One()
{
  Write-Output 'One33'
}

function Write-Two()
{
  Write-Output 'Two'
}


# Note if you declare a variable its scope is limited to the module
$scopedToModuleOnly = 'In The Morning'

# To make it everywhere you could make it global
$Global:scopedGlobal = 'In The Global Morning'

# A better solution is to us a script level variable and wrap in a function
$Script:scopedToScript = 'In The Morning!'

function Get-ITM()
{
  return $Script:scopedToScript 
}

function Write-ITM($itm)
{
  $Script:scopedToScript = $itm
}
