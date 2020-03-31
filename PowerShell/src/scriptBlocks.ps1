

#-----------------------------------------------------------------------------#
# Script Blocks
#-----------------------------------------------------------------------------#
#region Script Blocks

# A basic script block is code inside {}
# The for (as well as other loops) execute a script block
for ($f = 0; $f -le 5; $f++)
{
  "`$f = $f"
}


# A script block can exist on its own
# (note, to put multiple commands on a single line use the ; )
{Clear-Host; "Powershell is cool."}

# Exceucting only shows the contents of the block, doesn't execute it 
# To actually run it, use an ampersand & in front
&{Clear-Host; "Powershell is cool."}

# You can store script blocks inside a variable
$cool = {Clear-Host; "Powershell is cool."}

$cool   # Just entering the variable though only shows the contents, doesn't run it

& $cool # To actually run it, use the & character

# Since scripts can be put in a variable, you can do interesting things
Clear-Host
$cool = {"Powershell is cool."; " So is ArcaneCode"}
for ($i=0;$i -lt 3; $i++)
{ 
  &$cool;
}

#endregion Script Blocks


