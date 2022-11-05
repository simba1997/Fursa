#!/bin/bash

read -p "Please Select question" quest
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
read -p "Please write a temprature in Fahrenheit" Fahrenheit
Celsius=$(echo "scale=2;($Fahrenheit-32)*(5/9)" | bc)
echo $Celsius


elif [[ quest -eq 3 ]] 
then 
read -p "please enter directory path" dir 
find $dir | du -a | sort -nr | head -10
fi
