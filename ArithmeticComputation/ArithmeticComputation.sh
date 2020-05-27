#!/bin/bash -x

#Aurthor : Nikunj Balar
#Purpose : syntex for arithmetic computation

#Read input from user
echo "ENTER THREE INPUT"
read -p "enter the value..>" a
read -p "enter the value..>" b
read -p "enter the value..>" c

#declare Dictionary 
declare -A result

#Syntex for Arithmetic computation
compute0=$(( $a + $b * $c))
compute1=$(( $a * $b + $c ))
compute2=$(( $c + $a / $b ))
compute3=$(( $a % $b + $c ))

#Store element into the dictionary
result["compute0"]=$compute0
result["compute1"]=$compute1
result["compute2"]=$compute2
result["compute3"]=$compute3

#Declaring and initallising Array
for (( i=0 ; i<4; i++))
do
        resultArr[$i]="${result[compute$i]}"
done
# get all the element of the dictionary
echo ${result[@]}

# sort array into asscending order
echo "asscending array"
for asc in ${!resultArr[@]}
do
        echo ${resultArr[$asc]}
done | sort -n

#sort array into decending order
echo "decending  array"
for dec in ${!resultArr[@]}
do
	echo ${resultArr[$dec]}

done | sort -nr
