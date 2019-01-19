#Testing a constrain 0f the parameter, as recives the int type, which only allows a 32bit integer.

#Requires -Version 5.0
Function Resolve-ZipCode([int]$zip)
{
    $URI = "http://www.webservicex.net/uszip.asmx?WSDL"
    $zipProxy = New-WebServiceProxy -uri $URI -namespace WebServiceProxy -class ZipClass
    $zipProxy.getinfobyzip($zip).table
} #end Get-ZipCode
Resolve-ZipCode 28273