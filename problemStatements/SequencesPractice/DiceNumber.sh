#!/bin/bash -x

#Aurthor : Nikunj Balar
#Purpose : Random function to get dice number

diceNumber=$((RANDOM%6+1))
echo "Dice Number is $diceNumber"
