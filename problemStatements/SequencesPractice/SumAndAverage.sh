#!/bin/bash -x

#Aurthor : Nikunj Balar
#Purpose : Sum and Average of 5 random 2 digit value

number1=$((RANDOM%100))
number2=$((RANDOM%100))
number3=$((RANDOM%100))
number4=$((RANDOM%100))
number5=$((RANDOM%100))
totalSumOfNumbers=$(( $number1 + $number2 + $number3 + $number4 + $number5 ))
averageOfNumbers=$(( $totalSumOfNumbers / 5 ))
echo "Sum of five random Number is $totalSumOfNumbers"
echo "Average of five random number is $averageOfNumbers"
