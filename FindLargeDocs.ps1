#Filter added function

#Get-Doc finds on the given path and it's childs, files with *.doc,*.docx,*.dot extensions

Function Get-Doc($path)
{
    Get-ChildItem -Path $path -include *.doc,*.docx,*.dot -recurse
} #end Get-Doc

Filter LargeFiles($size)
{
    $_ |
    Where-Object { $_.length -ge $size }
} #end LargeFiles

#Get-Doc("C:\") | LargeFiles 1000

Get-Doc("D:\") | LargeFiles 5000