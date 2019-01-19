#Test of open and close applications

#Testeo de abrir distintas aplicaciones, preguntar que pasaria si las cierro, y abrir prompt de confirmacion

notepad
notepad
notepad
Stop-Process -Name note* -WhatIf
Stop-Process -Name note* -Confirm