#This is a guessing game
guessing_number() {
	#We declare a random number and assign it to a variable called random-number
	random_number=$((RANDOM % $1))
	#here we use the for loop to loop , through the game
	while [ i lt 3]; do
		# if the random number genrated by the computer and that inputed by the user is thesame
		i = $i + 1
		if [ $random_number -eq $2 ]; then
			echo "You Won!"
			break
		elif [ $random_number -gt $2 ]; then
			echo "You missed! The number is greater than $2"
			echo "Please try again: "
			read guest_number
			guest_number = $2
		else
			echo "You missed! The number is less than $2"
			echo "Please try again: "
			read guest_number
			2 = $guest_number
		fi
	done
	if [ $i eq 3 ]; then
		echo "You Lose, the number was $random_number"
		else 
		echo "Pecfect one"
	fi
}
