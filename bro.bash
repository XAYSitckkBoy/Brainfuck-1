#!/bin/bash

# Generate a random number between 1 and 100
secret_number=$((RANDOM % 100 + 1))

echo "Welcome to the Guessing Game!"
echo "Guess a number between 1 and 100:"

# Game loop
while true; do
    read -p "Your guess: " guess

    # Validate input
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a number."
        continue
    fi

    # Compare guess with secret number
    if (( guess < secret_number )); then
        echo "Too low! Try again."
    elif (( guess > secret_number )); then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the number!"
        break
    fi
done
