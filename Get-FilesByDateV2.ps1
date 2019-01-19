#Functional excercise

function Get-FilesByDate{
    Param(
        [string[]]$fileTypes = @("*.txt", "*.exe"), 
        [Parameter(Mandatory=$true)]
        [int]$month,
        [Parameter(Mandatory=$true)]
        [int]$year,
        [Parameter(Mandatory=$true)]
        [string[]]$path)
    Get-ChildItem -Path $path -Include $fileTypes -Recurse | 
    Where-Object { $_.lastwritetime.month -eq $month -AND $_.lastwritetime.year -eq $year }
} #end function 

#Example test Get-FilesByDate

#Get-FilesByDate -month 1 -year 2019 -path "C:\"

Get-FilesByDate