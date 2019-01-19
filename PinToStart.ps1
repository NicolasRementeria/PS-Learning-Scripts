#Create two direct access on the Start Menu of PS ISE y PS, only works if the OS is on English

#Crea dos accesos directos en el menú Start de PS ISE y PS, si el idioma del SO está en Ingles

$pinToStart = "Pin to Start"
$file = @((Join-Path -Path $PSHOME -childpath "PowerShell.exe"),
(Join-Path -Path $PSHOME -childpath "powershell_ise.exe") )
Foreach($f in $file)
    {$path = Split-Path $f
    $shell=New-Object -com "Shell.Application"
    $folder=$shell.Namespace($path)
    $item = $folder.parsename((Split-Path $f -leaf))
    $verbs = $item.verbs()
    foreach($v in $verbs)
    {if($v.Name.Replace("&","") -match $pinToStart){$v.DoIt()}}}