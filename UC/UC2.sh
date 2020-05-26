
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : To check employee is present or not

isPresent=1;
#Generate Random Number
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then
	#calculate employee wage if employee is present
	empRatePerHour=30
	empHours=9
	salary=$(($empHours*$empRatePerHour))
else
	salary=0
fi
