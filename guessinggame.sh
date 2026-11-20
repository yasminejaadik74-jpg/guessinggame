#!/bin/bash

# Guessing Game Project

function guessing_game() {
    local count=$(ls -1 | wc -l)
    local guess=0

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while [[ $guess -ne $count ]]
    do
        read -p "Enter your guess: " guess

        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
        elif [[ $guess -lt $count ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $count ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed correctly!"
        fi
    done
}

guessing_game
