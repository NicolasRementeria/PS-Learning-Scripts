#Function which behaves as a Filter performance-wise, with the Process keyword


Function AddOneR2
{
    Process {
        "add one function r2"
        $_ + 1
    }
} #end AddOneR2

1..5 | addOneR2

1..50000 | addOneR2