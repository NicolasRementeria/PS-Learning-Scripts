<#  --The syntax
to dot-source a script is so easy that it actually becomes a stumbling block for some people who are
expecting some complex formula or cmdlet with obscure parameters. It is none of that—just a period
(dot), followed by a space, followed by the path to the script that contains the function. This is why it
is called dot-sourcing: you have a dot and the source (path) to the functions you want to include. This
is shown here.
PS C:\> . C:\fso\TextFunctions.ps1  #>

. "C:\Users\Nicolas\Documents\PS Scripts\ConvertToMeters.ps1"
dir function: