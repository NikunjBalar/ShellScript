#!/bin/bash -x

#Aurthor : Nikunj Balar
#Purpose : Add two random dice number

diceNumber1=$((RANDOM%6+1))
diceNumber2=$((RANDOM%6+1))
sumOfDice=$(( $diceNumber1 + $diceNumber2 ))
echo "Dice Number is $sumOfDice"
