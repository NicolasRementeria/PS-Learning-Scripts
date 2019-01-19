
Function AddOneR2
{
    Process {
        "add one function r2"
        $_ + 1
    }
} #end AddOneR2

Measure-Command {1..50000 | addOneR2 }