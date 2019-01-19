#Returns the OS version
#Da como resultado la version del SO

Function Get-OperatingSystemVersion
{
    (Get-CimInstance -Class Win32_OperatingSystem).Version
} #end Get-OperatingSystemVersion

"This OS is version $(Get-OperatingSystemVersion)"