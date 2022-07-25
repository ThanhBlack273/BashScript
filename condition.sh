#!/bin/bash
valid=true

function date()
{
echo "Enter your birthday"
while [ $valid ]
do
echo "your day:"
read day
echo "your month:"
read month
echo "your year:"
read year
if [[($day -gt 0 && $day -lt 31) && ($month -gt 0 && $month -lt 12) && ($year -gt 1000 && $year -lt 2022)]];
then
echo -e  "Your birthday:$day/$month/$year\n"
break
fi
echo "Wrong format"
sleep 2
clear
done
}
date


while [ $valid ]
do
echo "Choose your food: 1/Pizza 2/Noodle 3/Chicken"
read choose 
case $choose in
1) echo "You got a pizza"
 break ;;
2) echo "You got a noodle" 
 break ;;
3) echo "You got a chicken"
 break ;;
*) echo "Sorry, I dont understand"
 break ;;
esac
done

