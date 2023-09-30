#!/bin/bash

# Function to count the files in the current directory
count_files() {
    local file_count=$(ls | wc -l)
    echo "$file_count"
}

# Main game loop
while true; do
    correct_count=$(count_files)
    echo "How many files are in the current directory?"
    read user_guess
    # Usage of If condition
    if [[ $user_guess -lt $correct_count ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly. There are $correct_count files."
        break
    fi
done
