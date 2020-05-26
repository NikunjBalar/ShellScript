
#!/bin/bash -x

#Author : Nikunj Balar

#Script contail logic for prime number serease
#Script contain example of function and the if statement as well as break and continue keyword

#Define function
Prime_Number () {
a=1
#Define While loop
while [ $a -le 100 ]
do
	#If Selections
	if [ $a == 1 -o $a == 2 ]
	then
		echo "$a is a prime number "
	else	#else selection
		i=2
		prime=0
		#Nested while loop
		while [ $i -le `expr $a / 2` ]
		do
			if [ `expr $a \% $i` -eq 0 ]
			then
				prime=1
			fi
			i=`expr $i + 1`
		done
		if [ $prime -eq 1 ]
		then
			echo "$a is not a prime number"
		else
			echo "$a is a prime number"
		fi
	fi
	a=`expr $a + 1`
done
}
#invoking function
Prime_Number
