
Filter AddOne
{
    "add one filter"
    $_ + 1
}

1..5 | addOne

1..50000 | addOne