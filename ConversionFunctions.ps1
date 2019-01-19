﻿#Several convertion functions

Function Script:ConvertToMeters($feet)
{
    "$feet feet equals $($feet*.31) meters"
} #end ConvertToMeters

Function Script:ConvertToFeet($meters)
{
    "$meters meters equals $($meters * 3.28) feet"
} #end ConvertToFeet

Function Script:ConvertToFahrenheit($celsius)
{
    "$celsius celsius equals $((1.8 * $celsius) + 32 ) fahrenheit"
} #end ConvertToFahrenheit

Function Script:ConvertTocelsius($fahrenheit)
{
    "$fahrenheit fahrenheit equals $( (($fahrenheit - 32)/9)*5 ) celsius"
} #end ConvertTocelsius

Function Script:ConvertToMiles($kilometer)
{
    "$kilometer kilometers equals $( ($kilometer *.6211) ) miles"
} #end convertToMiles

Function Script:ConvertToKilometers($miles)
{
    "$miles miles equals $( ($miles * 1.61) ) kilometers"
} #end convertToKilometers

ConvertToKilometers -miles 50
ConvertTocelsius -fahrenheit 0
$km = 1000
ConvertToMiles -kilometer $km