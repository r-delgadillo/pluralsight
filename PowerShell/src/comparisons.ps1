#-----------------------------------------------------------#
# Comparisons
#-----------------------------------------------------------#
#region Comparisons

$var = 33

$var -gt 30
$var -lt 30
$var -eq 33

# List is:
#     -eq         Equals
#     -ne         Not Equal to
#     -lt         Less Than
#     -gt         Greater then
#     -le         Less than or equal to
#     -ge         Greater then or equal to

#     -in         See if value in an array
#     -notin      See if a value is missing from an array
#     -Like       Like wildcard pattern matching
#     -NotLike    Not Like
#     -Match      Matches based on regular expressions
#     -NotMatch   Non-Matches based on regular expressions

# Calculations are like any other language
$var = 3 * 11 # Also uses +, -, and /
$var

# Supports post unary operators ++ and --
$var++
$var

# And preunary operators as well
++$var
$var

Clear-Host
$var=33
$post = $var++
$post 
$var

Clear-Host
$var = 33
$post = ++$var
$post
$var



# Be cautious of Implicit Type Conversions
"42" -eq 42
42 -eq "42"

# Whatever is on the right is converted o the data type on the left
# Can lead to some odd conversions
42 -eq "042" # True because the string on the right is converted to an int
"042" -eq 42 # False because int on the right is converted to a string

#endregion Comparisons