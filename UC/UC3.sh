
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : To check employee is present or not

isPartTime=1
isFullTime=2
empRatePerHour=30;

#Generate random number
randomCheck=$((RANDOM%3));

if [ $isPartTime -eq $randomCheck ]
then
	#part time working hours is 4
	empHours=4
elif [ $isFullTime -eq $randomCheck ]
then
	#full time working hours is 8
	empHours=8
else
	#if employee is not present
	empHours=0
fi

#calculate wage according to his working hour
salary=$(($empHours*$empRatePerHour))
