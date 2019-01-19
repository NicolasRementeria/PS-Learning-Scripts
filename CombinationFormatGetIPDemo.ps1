﻿
Function Get-IPObject([bool]$IPEnabled = $true)
{
    Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $IPEnabled"
} #end Get-IPObject

Function Format-IPOutput($IP)
{
    "IP Address: " + $IP.IPAddress[0]
    "Subnet: " + $IP.IPSubNet[0]
    "GateWay: " + $IP.DefaultIPGateway
    "DNS Server: " + $IP.DNSServerSearchOrder[0]
    "FQDN: " + $IP.DNSHostName + "." + $IP.DNSDomain
} #end Format-IPOutput

Function Format-NonIPOutput($IP)
{
    Begin { "Index # Description" }
    Process {
        ForEach ($i in $ip)
        {
            Write-Host $i.Index `t $i.Description
        } #end ForEach
    } #end Process
} #end Format-NonIPOutPut

# *** Entry Point ***

"
IPEnabled = False
"
$IPEnabled = $false
$ip = Get-IPObject -IPEnabled $IPEnabled
If($IPEnabled) { Format-IPOutput($ip) }
ELSE { Format-NonIPOutput($ip) }

"
IPEnabled = True
"
$IPEnabled = $True
$ip = Get-IPObject -IPEnabled $IPEnabled
If($IPEnabled) { Format-IPOutput($ip) }
ELSE { Format-NonIPOutput($ip) }