#Needs to be worked on; should give all the dot sources .ps1 files

$Path = "C:\Users\Nicolas\Documents\PS Scripts"

#Get-ChildItem -Path $Path -Filter *.ps1 |ForEach-Object {
#    . $_.FullName
#}

#Get-ChildItem -Path $Path -Filter *.ps1 |Where-Object { $_.FullName -ne $PSCommandPath } |ForEach-Object {
#    . $_.FullName
#}

#(Get-ChildItem -Path (Join-Path $PSScriptRoot Functions) -Filter *.ps1 -Recurse) | % {
#    . $_.FullName
#}