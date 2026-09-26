#!/usr/bin/env bash

instruction=$1

square_of_sum() {
    local num=$1
    local sum=0

    for ((i = 1; i <= num; i++)); do
        (( sum += i ))
    done
    
    local square=$((sum**2))
    echo "$square"
}

sum_of_squares() {
    local num=$1
    local sum=0

    for ((i = 1; i <= num; i++)); do
        (( sum += i**2 ))
    done
    
    echo "$sum"
}

if [ "$instruction" == "square_of_sum" ]; then
    echo "$(square_of_sum $2)"
elif [ "$instruction" == "sum_of_squares" ]; then
    echo "$(sum_of_squares $2)"
elif [ "$instruction" == "difference" ]; then
    sum_square=$(sum_of_squares $2)
    square_sum=$(square_of_sum $2)
    echo "$((square_sum - sum_square))"
fi
