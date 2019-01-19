
Function New-Line([string]$stringIn)
{
    "-" * $stringIn.length
} #end New-Line

Function Get-TextStats([string[]]$textIn)
{
    $textIn | Measure-Object -Line -word -char
} #end Get-TextStats

Write-Host "banana! 050"
New-Line "banana! 050"
Get-TextStats "asd
asd
asd"
