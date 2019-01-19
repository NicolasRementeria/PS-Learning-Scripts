#Get the free disk space of the targeted computer

Function Get-FreeDiskSpace($drive,$computer, [switch]$help)
{
    If($help)
    {
        $helpstring = @"
        NAME
        Get-FreeDiskSpace
        SYNOPSIS
        Get the free disk space of the targeted computer
        SYNTAX
        Get-FreeDiskSpace [[-drive] [string]] [[-computer] [string]] [-help]
        EXAMPLE
        Get-FreeDiskSpace -drive "C:" -computer localhost
        This command gives the C Disk Space. The C Disk space 
        are from the localhost computer.
"@
$helpString
        break #exits the function early
    }
    $driveData = Get-WmiObject -class win32_LogicalDisk `
    -computername $computer -filter “Name = '$drive'"
    "
    $computer free disk space on drive $drive
    $("{0:n2}" -f ($driveData.FreeSpace/1MB)) MegaBytes
    "
}

#Get-FreeDiskSpace -drive "C:" -computer "C10"

Get-FreeDiskSpace -drive "C:" -computer localhost

Get-FreeDiskSpace -help