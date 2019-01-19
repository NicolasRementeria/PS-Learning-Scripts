#Test of trapping an error

Function My-Test([int]$myinput)
{
    "It worked"
} #End my-test function

# *** Entry Point to Script ***

Trap [SystemException] { "error trapped" ; continue }

My-Test -myinput "string"
"After the error"

My-Test -myinput 50
"Accepted"