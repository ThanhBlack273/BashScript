#!/bin/bash
function Add()
{
add=$(($1 +$2 ))
echo "result: $add"
}
function Sub()
{
sub=$(($1-$2))
echo "result: $sub"
}
function Mul()
{
mul=$(($1*$2))
echo "result: $mul"
}
function Div()
{
div=$(($1/$2))
echo "result: $div"
}

echo "Enter num1: "
read num1
echo "Enter num2: "
read num2
echo "Choose: 1/Add 2/Sub 3/Mul 4/Div "
read choose

case $choose in
1) Add $num1 $num2;;
2) Sub $num1 $num2;;
3) Mul $num1 $num2;;
4) Div $num1 $num2;;
*) echo -e  "Unknown";;
esac
