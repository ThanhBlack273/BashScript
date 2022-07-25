#!/bin/bash
function bac2()
{
echo -n "Nhap a= "
read a
echo -n "Nhap b= "
read b
echo -n "Nhap c= "
read c
f=`echo "-($b)" |bc`
p=`expr 2 \* $a`
if [ $a -ne 0 ]
then
    d=`echo \( \( $b \* $b \) - \( 4 \* $a \* $c \) \) | bc`
    if [ $d -lt 0 ]
    then
        x=`echo "-($d)" | bc`
        s=`echo "scale=2; sqrt ( $x )" | bc`
        echo The first solution is:
        echo "($f + $s i) / $p"
        echo The second solution is:
        echo "($f - $s i) / $p"
    elif [ $d -eq 0 ]
    then
        result=`expr $f / $p`
        echo The solution is: $result
    else
        s=`echo "scale=2; sqrt( $d )" | bc`
        result1=`echo "scale=2; ( $f + $s) / ( $p )"|bc`
        result2=`echo "scale=2; ( $f - $s) / ( $p )"|bc`
        echo The first root is: $result1
        echo The second root is: $result2
    fi
else
    echo invalid funtion.
fi


function dientich()
{
echo "nhap ban kinh: "
read r
pi=3,14
dienTich=$[$pi*$r*$r]
echo "Dien tich hinh tron: $dienTich"
}

function nguyento()
{
echo "Nhap so: "
read n
if [ $n -lt 2 ]
then
echo "$n khong phai so nguyen to"
else
s=0
for (( i=2;i <= $n;i++ ))
do
if [ $(($n % $i)) -eq 0 ]
then s=$(($s+1))
fi
done
if [ $s -eq 1 ]
then echo "$n la so nguyen to"
else
echo "$n khong phai la so nguyen to"
fi
fi
}
echo "Chon mode: 1/pt bac 2 || 2/dien tich hinh tron || 3/kiem tra so nguyen to "
read choose 
case $choose in
1) bac2 ;;
2) dientich ;;
3) nguyento ;;
*) echo "Unknown";;
esac 
