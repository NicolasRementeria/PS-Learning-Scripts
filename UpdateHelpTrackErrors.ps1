#Update the Help Modules of PS, and then show the errors by order

#Updatea todos los Help de los modulos de PS, mostrando de forma ordenada luego los errores.

$error.Clear()
Update-Help -Module * -Force -ea 0
For ($i = 0 ; $i -lt $error.Count ; $i ++)
{ "`nerror $i" ; $error[$i].exception }