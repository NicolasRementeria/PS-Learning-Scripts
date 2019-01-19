#Tells the user how many events in the application log have a message attached to them.

Filter HasMessage
{
    $_ |
    Where-Object { $_.message }
} #end HasMessage

Get-WinEvent -LogName Application | HasMessage | Measure-Object