guessing_game() {
    rand_number=$((RANDOM % $1))

     guess_numbers=($2 $3 $4)
    for i in {1..3}; do
   
        echo "Guess the number:" #prompt the user to enter a value
       # read guess_number #read input from the user
guess_number=${guess_numbers[$i]}
        if [ $rand_number -eq "$guess_number" ]; then
            echo "Congratulations, You Won!"
            return
        elif [ $rand_number -gt "$guess_number" ]; then
             echo "You missed! The random number is greater than $guess_number"
        else
            echo "You missed! The random number is lesser than $guess_number"
        fi

        echo "Please try again!"
    done
    echo "You lose, the number was $rand_number"
}