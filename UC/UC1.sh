
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : To check employee is present or not

isPresent=1;
#Generate random Number
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is preaent"
else
	echo "Employee is Abscent"
fi
