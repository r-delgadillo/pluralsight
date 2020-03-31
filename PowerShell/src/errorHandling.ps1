

#-----------------------------------------------------------------------------#
# Error Handling
#-----------------------------------------------------------------------------#
#region Error Handling

# No error handling produces ugly errors

function divver($enum,$denom)
{   
  Write-Host "Divver begin."
  $result = $enum / $denom
  Write-Host "Result: $result"
  Write-Host "Divver done."    
}

Clear-Host
divver 33 3   # No Error
divver 33 0   # Generate Error

# Handle errors using try/catch/finally
function divver($enum,$denom)
{   
  Write-Host "Divver begin."

  try
  {
    $result = $enum / $denom
    Write-Host "Result: $result"
  }
  catch
  {
    Write-Host "Oh NO! An error has occurred!!"
    Write-Host $_.ErrorID
    Write-Host $_.Exception.Message
    break  # With break, or omitting it, error bubbles up to parent
  }
  finally
  {
    Write-Host "Divver done."    
  }
}

Clear-Host
divver 33 3   # No Error
divver 33 0   # Generate Error

#endregion Error Handling

