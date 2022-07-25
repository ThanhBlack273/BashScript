#!/bin/bash
function Add()
{
add=$(($1 +$2 ))
echo -n  "$add "
}
function Sub()
{
sub=$(($1-$2))
echo -n  "$sub "
}
function Mul()
{
mul=$(($1*$2))
echo -n "$mul "
}
function Div()
{
div=$(($1/$2))
echo -n  "$div "
}

echo "Enter num1: "
read num1
echo "Enter num2: "
read num2
Add $num1 $num2
Sub $num1 $num2
Mul $num1 $num2
Div $num1 $num2
