
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : To calculate employee wages using case statement

isPartTime=1
isFullTime=2
empRatePerHour=30;

#Generate random number
randomCheck=$((RANDOM%3));

case $randomCheck in
	$isPartTime)
		empHours=4;;
	$isFullTime)
		empHours=8;;
	*)
		empHours=0;;
esac
#calculate wage according to his working hour
salary=$(($empHours*$empRatePerHour))
