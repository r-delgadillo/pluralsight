

#-----------------------------------------------------------------------------#
# Looping
#-----------------------------------------------------------------------------#
#region Looping

# While
Clear-Host
$i = 1
while ($i -le 5)
{
  "`$i = $i"
  $i = $i + 1
}


# While won't execute if condition is already true
Clear-Host
$i = 6
while ($i -le 5)
{
  "`$i = $i"
  $i = $i + 1
}


# Do
Clear-Host
$i = 1
do
{
  "`$i = $i"
  $i++
} while($i -le 5)


# Do will always execute at least once
Clear-Host
$i = 6
do
{
  "`$i = $i"
  $i++
} while($i -le 5)


# Use until to make the check more positive
Clear-Host
$i = 1
do
{
  "`$i = $i"
  $i++
} until($i -gt 5)


# For loop interates a number of times
Clear-Host
for ($f = 0; $f -le 5; $f++)
{
  "`$f = $f"
}


# Note the initializer can be set seperately
Clear-Host
$f = 2
for (; $f -le 5; $f++)
{
  "`$f = $f"
}


# Iterating over a collection 1 by 1
Clear-Host
$array = 11,12,13,14,15   # Simple Array
for ($i=0; $i -lt $array.Length; $i++)
{
  "`$array[$i]=" + $array[$i]
}


# foreach works on a collection
Clear-Host
$array = 11,12,13,14,15   # Simple Array
foreach ($item in $array)
{
  "`$item = $item"
}


# foreach works with an array of objects
Clear-Host
Set-Location "C:\PS\Beginning PowerShell Scripting for Developers\demo"
foreach ($file in Get-ChildItem)
{
  $file.Name
}


# Use break to get out of the loop
Clear-Host
Set-Location "C:\PS\Beginning PowerShell Scripting for Developers\demo"
foreach ($file in Get-ChildItem)
{
  if ($file.Name -like "*.ps1")
  {
    $file.Name
    break  # exits the loop on first hit
  }
}


# Use continue to skip the rest of a loop but go onto the next iteration
Clear-Host
Set-Location "C:\PS"
foreach ($file in Get-ChildItem)
{
  if ($file.Name -like "*.ps1")
  {
    $file.Name
    continue  # exits the loop on first hit
    "More code here"
  }
  "This isn't a powershell file: $file"
}


# When used in a nested loop, break exits to the outer loop
Clear-Host
foreach ($outside in 1..3)
{
  "`$outside=$outside"
  foreach ($inside in 4..6)
  {
    "    `$inside = $inside"
    break
  }
}


# Use loop labels to break to a certain loop
Clear-Host
:outsideloop foreach ($outside in 1..3)
{
  "`$outside=$outside"
  foreach ($inside in 4..6)
  {
    "    `$inside = $inside"
    break outsideloop
  }
}


# Using continue inside an inner loop
Clear-Host
foreach ($outside in 1..3)
{
  "`$outside=$outside"
  foreach ($inside in 4..6)
  {
    "    `$inside = $inside"
    continue
    "this will never execute as continue goes back to start of inner for loop"
    # note, because we continue to the inside loop, the above line
    # will never run but it will go thru all iterations of the inner loop
  }
}


Clear-Host
:outsideloop foreach ($outside in 1..3)
{
  "`$outside=$outside"
  foreach ($inside in 4..6)
  {
    "    `$inside = $inside"
    continue outsideloop
    "this will never execute as continue goes back to start of inner for loop"
    # here, because we break all the way to the outer loop the last two
    # iterations (5 and 6) never run
  }
  "some more stuff here that will never run"
}


#endregion Looping
