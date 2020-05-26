
#!/bin/bash -x

#Author : Nikunj Balar
#Script for example of the the different loops

# For loop 
echo "for loop "
for var in 0 1 2 3 4 5 6 7 8 9
do
	echo -n "$var "
done
echo
# OR
for (( counter=1; counter<=5; counter++ ))
do
	echo -n "$counter"
done
printf "\n"

# While loop
echo "While loop"

a=0

while [ $a -lt 10 ]
do
	echo -n "$a "
	a=`expr $a + 1`
done
echo

#Untile loop
echo "Until loop"

b=10

until [ ! $b -lt 20 ]
do
        echo -n "$b "
        b=`expr $b + 1`
done
echo

#Nested loop
echo "Nested loop"

a=0

while [ $a -lt 10 ]
do
	b="$a"

	while [ $b -ge 0 ]
	do
        	echo -n "$b "
        	b=`expr $b - 1`
	done
        echo
        a=`expr $a + 1`
done
echo

#Infinite loop
echo "Infinite loop"

a=10

until [ ! $a -gt 0 ]
do
        echo $a
        a=`expr $a + 1`
	break
done
