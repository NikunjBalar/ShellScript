
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : To calculate employee wages till a condition of total working hours or days is reached for a month 
#		using function.

#variables
isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHour=30
maxWorkingHours=132
maxWorkingDays=22

totalWorkingHours=0
totalWorkingDays=0

function getWorkingHours() {
	#Generate random number
	randomCheck=$((RANDOM%3))

	case $randomCheck in
		$isPartTime)
			empHours=4;;
		$isFullTime)
			empHours=8;;
		*)
			empHours=0;;
	esac
	echo $empHours
}

while [[ $totalWorkingHours -lt $maxWorkingHours &&
	$totalWorkingDays -lt $maxWorkingDays ]]
do
	#Increas a day by 1
	((totalWorkingDays++))
	empHours="$( getWorkingHours )"
	totalWorkingHours=$(($totalWorkingHours+$empHours))
done
#calculate wage according to his working hour
totalSalary=$(($totalWorkingHours*$empRatePerHour))
