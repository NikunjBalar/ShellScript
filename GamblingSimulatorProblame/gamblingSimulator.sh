#!/bin/bash 

#Aurthor : Nikunj Balar
#Purpose : For GamblingSimulstor problem
echo "WELCOME TO GAMBLING SIMULATOR "

#Constant
BET=1
STAKE=100
PERCENTAGE_OF_STAKE=$(( 50*$STAKE /100))
DAY_LOWER_LIMIT=$(( $STAKE - $PERCENTAGE_OF_STAKE ))
DAY_UPPER_LIMIT=$(( $STAKE + $PERCENTAGE_OF_STAKE ))
DAY=20

#VARIABLE
cash=0
totalCash=0

#declare the dictionary
declare -A storeWinloss

#function for each day gambling for a month
function dailyPlay(){

        for ((day=1 ;day<=$DAY; day++))
        do
                stake=$STAKE

                while (( $DAY_LOWER_LIMIT < $stake && $DAY_UPPER_LIMIT > $stake ))
                do
                        if [[ $((RANDOM%2)) -eq 0 ]]
                        then
                                stake=$(($stake-$BET))
                        else
                                stake=$(( $stake+$BET))
                        fi
                done
		#calculating each day cash
                cash=$(($stake - $STAKE))
		#calculating total cash at the end of the day
                totalCash=$(($totalCash + $cash))
		#storing the value of the per day cash and total cash at the end of the day
                storeWinLoss[$day]="$cash  $totalCash"
                echo  "Day$day"     "${storeWinLoss[$day]}"
        done
}
#function for find luckiest day in the month
function findLuckiestDay(){

        echo "Luckiest day in month..."
        for((day=1; day<=$DAY; day++))
        do
        echo "Day$day" ${storeWinLoss[$day]}
        done | sort -k3 -rn | head -1
}

#Function for find unluck day in the month
function findUnLuckiestDay(){

        echo "Unluckiest day in month.."
        for((day=1; day<=$DAY; day++))
        do
        echo "Day$day" ${storeWinLoss[$day]}
        done | sort -k3 -n | head -1
}

#function for checking the possibility for gamblinf of the next month
function checkNextMonthForGambling(){

        if [[ $totalCash -gt 0 ]]
        then
                echo " "
		#calling main function
                 main
        else
                echo "next time play......."
        fi
}
function main(){
	#calling functions
        dailyPlay
        findLuckiestDay
        findUnLuckiestDay
        checkNextMonthForGambling
}

#calling main function
main



