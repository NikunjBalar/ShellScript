
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : store the daily wage along with the total wage using array

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
	totalWorkingHours=$(($totalWorkingHours+$empHours))
done

echo "Day 12 wage " ${wageArr[12]} #12th element of the array
echo "All wages " ${wageArr[@]}		#all the element os the array
echo "Index of the array" ${!wageArr[@]} #all the index
echo "size of array" ${#wageArr[@]}	#size of the array
