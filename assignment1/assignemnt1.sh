#!/bin/bash

while (true) 
do
read -p "Please Select question number : 1 or 2 or 3, choose 4 to exit  " quest
if [[ quest -eq 1 ]]
then 
read -p 'write first number ' first 
read -p 'write second number ' second

sum=$(($first + $second))

if [[ $sum -lt 100 ]]
then
	echo "The sum is $sum which is less than 100"
elif [[ $sum -gt 100 ]] 
then 
	echo "The sum is $sum which is larger than 100"
else 
	echo "The sum is 100"
fi


elif [[ quest -eq 2 ]]
then 
read -p "Please write a temprature in Fahrenheit " Fahrenheit
Celsius=$(echo "scale=2;($Fahrenheit-32)*(5/9)" | bc)
echo $Celsius


elif [[ quest -eq 3 ]] 
then 
read -p "please enter directory path " dir 
find $dir -type f | du -a  | sort -n -r | head -n 10

elif [[ quest -eq 4 ]]
then
break 

else 
echo "Number must be in range 1-4" 

fi 
done

