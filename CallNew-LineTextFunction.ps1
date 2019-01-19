
Function New-Line([string]$stringIn)
{
    "-" * $stringIn.length
} #end New-Line
Function Get-TextStats([string[]]$textIn)
{
    $textIn | Measure-Object -Line -word -char
} #end Get-TextStats

# *** Entry Point to script ***

"This is a string" | ForEach-Object {$_ ; New-Line $_}
"Aylmao!" | ForEach-Object {$_ ; New-Line $_}

Write-Host "banana! 050"
New-Line "banana! 050"
Get-TextStats "asd
asd
asd"  | ForEach-Object {$_ ; New-Line $_}