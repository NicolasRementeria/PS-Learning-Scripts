# Get all the verbs used on PS

Get-Command -CommandType cmdlet | Group-Object -Property Verb | Sort-Object -Property count -Descending

