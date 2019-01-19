#Use of a filter to check the Last Write Time of all the files and folders from a given path

Filter IsToday
{
    Begin {$dte = (Get-Date).Date}
    Process { $_ |
        Where-Object { $_.LastWriteTime -ge $dte }
    }
}

Get-ChildItem -Path "C:\Users\Nicolas\Documents\Repository_Development\PS-Learning-Scripts" | IsToday