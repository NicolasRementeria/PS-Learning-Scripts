<#Excercise of acceleration and performance, given the Get-FreeDiskSpace.ps1 function,
  which returns a full object, in this case we only return the FreeSpace. 
#>

Function Get-DiskSpace($drive,$computer)
{
([wmi]"\\$computer\root\cimv2:Win32_logicalDisk.DeviceID='$drive'").FreeSpace
}

Get-DiskSpace -drive "C:" -computer "localhost"