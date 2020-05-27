
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : store the day and daily wage along with the total Wage

#variables
isPartTime=1
isFullTime=2
totalWage=0
ratePerHour=300
maxWorkingHours=132
maxWorkingDays=22
count=0

totalWorkingHours=0
totalWorkingDays=0

#Declaring dictionaries
declare -A storeWage

#function for calculating  working hours for a day
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
	perDayWage=$(($empHours*$ratePerHour))
	totalWage=$(($totalWage+$perDayWage))
	wageArr[((count++))]=$perDayWage
	storeWage[$count]="$perDayWage	$totalWage"
	totalWorkingHours=$(($totalWorkingHours+$empHours))
done

for (( i=1; i<$count+1; i++))
do
	echo "$i	${storeWage[$i]}"
done
