#Testing a 3 parameters with default and switch case types

Function Get-DirectoryListing
{
    Param(
    [String]$Path,
    [String]$Extension = "txt", #Default will be .txt
    [Switch]$Today
    )
    If($Today)
    {
        Get-ChildItem -Path $path\* -include *.$Extension |
        Where-Object { $_.LastWriteTime -ge (Get-Date).Date }
    }
    ELSE
    {
        Get-ChildItem -Path $path\* -include *.$Extension
    }
} #end Get-DirectoryListing

# *** Entry to script ***
Get-DirectoryListing -Path "C:\Users\Nicolas\Documents\" -Today