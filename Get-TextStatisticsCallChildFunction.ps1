#Show stats of the file given by parameter, and show the path you are

#Muestra stats del archivo pasado como parametro, y muestra donde estas parado en $path

Function Get-TextStatistics($path)
{
    Get-Content -path $path | Measure-Object -line -character -word
    Write-Path
}

Function Write-Path()
{
    "Inside Write-Path the `$path variable is equal to $path"
}

Get-TextStatistics(“C:\Users\Nicolas\Desktop\PS Scripts\20190111 ipconfig_info.ps1”)
"Outside the Get-TextStatistics function `$path is equal to $path"