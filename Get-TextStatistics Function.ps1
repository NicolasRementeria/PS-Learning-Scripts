#Returns the text properties by the format "Lines Words Characters Property"

#Da como resultado propieades del texto en "Lines Words Characters Property"

Function Get-TextStatistics($path)
{
    Get-Content -path $path |
    Measure-Object -line -character -word
}

Get-TextStatistics -path "C:\Users\Nicolas\Desktop\PS Scripts\20190111 ipconfig_info.ps1"