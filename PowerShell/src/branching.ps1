#-----------------------------------------------------------------------------#
# Logic Branching
#-----------------------------------------------------------------------------#
#region Logic Branching

# if/else
$var = 2
if ($var -eq 1)  # Be sure to use -eq instead of =
{
  Clear-Host
  "If branch"
}
else
{
  Clear-Host
  "else branch"
}

  
# if elseif else
$var = 2
if ($var -eq 1)
{
  Clear-Host
  "If -eq 1 branch"
}
elseif ($var -eq 2)
{
  Clear-Host
  "ElseIf -eq 2 branch"
}
else
{
  Clear-Host
  "else branch"
}


# Switch statement for multiple conditions
Clear-Host
$var = 42                   # Also test with 43 and 49
switch  ($var)
{
  41 {"Forty One"}
  42 {"Forty Two"}
  43 {"Forty Three"}
  default {"default"}
}



# Will match all lines that match
Clear-Host
$var = 42
switch  ($var)
{
  42 {"Forty Two"}
  "42" {"Forty Two String"}
  default {"default"}
}
# Note type coercion will cause both 42 lines to have a match


# To stop processing once a block is found use break
Clear-Host
$var = 42
switch  ($var)
{
  42 {"Forty Two"; break}
  "42" {"Forty Two String"; break}
  default {"default"}
}
# Note, if you want to put multiple commands on a single line, use a ; to separate them


# Switch works with collections, looping and executing for each match
Clear-Host
switch (3,1,2,42)
{
  1 {"One"}
  2 {"Two"}
  3 {"Three"}
  default {"The default answer"}
}


# String compares are case insensitive by default
Clear-Host
switch ("PowerShell")
{
  "powershell" {"lowercase"}
  "POWERSHELL" {"uppercase"}
  "PowerShell" {"mixedcase"}
}



# Use the -casesenstive switch to make it so
Clear-Host
switch -casesensitive ("PowerShell")
{
  "powershell" {"lowercase"}
  "POWERSHELL" {"uppercase"}
  "PowerShell" {"mixedcase"}
}


# Supports wildcards
Clear-Host
switch -Wildcard ("Pluralsight")
{
  "plural*" {"*"}
  "?luralsight" {"?"}
  "Pluralsi???" {"???"}
}

# Note it will also support regex matches

#endregion Logic Branching

##
