#Functional excercise

function Get-FilesByDate{
    Param(
        [string[]]$fileTypes, 
        [int]$month, 
        [int]$year, 
        [string[]]$path)
    Get-ChildItem -Path $path -Include $fileTypes -Recurse | 
    Where-Object { $_.lastwritetime.month -eq $month -AND $_.lastwritetime.year -eq $year }
} #end function 

#Example test Get-FilesByDate

Get-FilesByDate -fileTypes *.txt -month 1 -year 2019 -path c:\