#!/usr/bin/env bash

num=$1
drops=""

if [[ $((num%3)) -eq 0 ]]; then
    drops+="Pling"
fi

if [[ $((num%5)) -eq 0 ]]; then
    drops+="Plang"
fi

if [[ $((num%7)) -eq 0 ]]; then
    drops+="Plong"
fi

if [[ -z "$drops" ]]; then
    echo "$num"
else
    echo "$drops"
fi
