#!/bin/bash

#Aurthor : Nikunj Balar
#Purpose : SnakeAndLadder game

echo "WELCOME TO SNAKE AND LADDER GAME"

#constant
START_POSITION=0
WINNING_POSITION=100


#variable
position=0
noPlay=0
ladder=1
snake=2
count=0
player1=0
player2=0
flag=0

function playSnakeLadderGame(){

		position=$1
		#roll the dice
		dieroll=$((RANDOM%6+1))
		checkForMove=$((RANDOM%3))
		#check for the movie
		case $checkForMove in
			#checkForMovie is 0
			$noPlay)
				postion=$START_POSITION
				;;
			#checkForMovie is 1
			$ladder)
				position=$(($position + $dieroll))
				if [[ $position -gt $WINNING_POSITION ]]
                                then
                                      position=$(($position-$dieroll))
                                fi
				;;
			#checkForMovie is 2
			$snake)
				position=$(($position - $dieroll))
				if [[ $position -lt $START_POSITION ]]
                		then
					position=$(($position + $dieroll))
                		fi
				;;

		esac
		echo $position

}

#function for get the winning player
function getWinningPlayer(){

	#check the position of both players
	while [[ $player1 -lt $WINNING_POSITION && $player2 -lt $WINNING_POSITION ]]
	do
        	if [ $flag -eq 0 ]
        	then
			#player 1 term to play
        		player1=$(playSnakeLadderGame $player1)
        		flag=1
        		echo "Player1 position : "$player1
			#check player win or not
                	if [ $player1 -eq $WINNING_POSITION ]
                	then
                        	echo "Position : "$player1
                        	echo "Player1 win"
                        break;
                	fi
       		elif [ $flag -eq 1 ]
       		then
       			flag=0
			#player 2 term to play
       			player2=$(playSnakeLadderGame $player2)
       			echo "Player2 position : "$player2
			#check player win or not
                	if [ $player2 -eq $WINNING_POSITION ]
               		then
                        	echo "Position : "$player2
                        	echo "Player2 win !!"
                        break;
                	fi
        	fi
		#to calculate the total number terms of both the player
		count=$(( $count+1 ))

	done
	echo "total term for both the player is $count "
}

#calling function
getWinningPlayer
