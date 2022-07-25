#!/bin/bash
echo "Enter your num: "
read num
for (( i=1; i < $(($num+1)); i++))
do
echo -n "$i "
done
printf "\n"

if [ $num -eq 0 -o  $num -eq 1 ]; then 
echo "$num != 1"
elif [ $num -gt 1 ]; then
let "gt = 1"
let "i = 2"
while [ $i -le $num ]; do 
let " gt = $gt * $i "
let " i = $i + 1"
done  
echo "giai thua $num = $gt "
else
echo "nhap loi"
fi 
