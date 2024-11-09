#!/bin/bash
value=0
score=0
high=0
echo ""
echo "********* 🎉️🎊️ Welcom To MY Guessing Game >>> Have fun ☺️ 😀️ ******"
echo ""
menu() {
	echo -e "Enter \n1 for stage 1 \n2 for stage 2 \n3 for stage 3\n4 for to see high score"
	read -p "Chioce : " chioce
}
setlevel() {
	case $chioce in
		1)
		       	range=5 ; attemps=10 
			echo -e "\a You Have choose stage 1\nGuess a number in the range 1 - 5\n\n"
		;;

		2) 
			range=10 ; attemps=7
		        echo -e "\a You choose stage 2 \nGuess a number in the range 1 to 10 \n"
		;;

		3)
			range=15 ; attemps=5
		echo -e "\aYou choosed stage 3 \nGuess a number in the range 1 - 15 \n"
	    	;;
		4)
			echo -e "Highest score : $high "
			return
		;;
		*)
			echo "Invalid option take ctrl+C to exit"
			return
		

	esac
}
generatenumber() {
	num=$(( $RANDOM % $range + 1))
}
playgame(){
	echo -e "\a \n $num \n\n"
 read -p  " Guess a number in the range : " guess
		verify	
}
verify() {
	while [ "$num" != "$guess" ]&&[ "$attemps" != "0" ];do
		echo "Sorry but that is not the correct answer." ; echo  "Please try again : "
		echo -e " You have $((attemps-1)) attemp(s) left "
		let attemps=attemps-1
		playgame
	done
		if [ $attemps -eq 0 ]; then 
			echo " You Lose "
			echo " the number is $num "
		else

			echo -e " That is correct answer $num \n\a\nScore = $(($attemps * $chioce | bc)) "
			let score=attemps*chioce
			if [ $score -gt $high ];then
				echo -e "\nNew High Score = $score\a "
				let high=score
			fi
		fi
}
while true 
do
	menu ; setlevel ; generatenumber ; playgame ; 
	read -p " Will You Like to try again ? [y/n] " ans 
	if [ $ans != "y" ];then
		exit
	fi

done		

			
