#Performance test of a Filter

Filter AddOne
{
"add one filter"
$_ + 1
}
Measure-Command { 1..50000 | addOne }

Measure-Command { 1..100000 | addOne }

Measure-Command { 1..200000 | addOne }

Measure-Command { 1..400000 | addOne }

Measure-Command { 1..800000 | addOne }

Measure-Command { 1..1600000 | addOne }

Measure-Command { 1..3200000 | addOne }

Measure-Command { 1..6400000 | addOne }