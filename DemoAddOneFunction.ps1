
Function AddOne
{
    "Add One Function"
    While ($input.moveNext())
    {
        $input.current + 1
    }
}

1..5 | addOne

1..50000 | addOne