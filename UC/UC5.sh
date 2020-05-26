
#!/bin/bash -x

#Aurthor : Nikunj Balar
#purpose : To calculate employee wages for month using forloop

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHour=30
numberOfWorkingDay=22

for (( day=1; day<=$numberOfWorkingDay; day++ ))
do
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
	#calculate wage according to his working hour
	salary=$(($empHours*$empRatePerHour))
	#calculate wage for a month
	totalSalary=$(($totalSalary+$salary))
done
