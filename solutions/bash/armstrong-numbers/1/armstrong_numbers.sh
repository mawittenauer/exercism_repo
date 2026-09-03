#!/usr/bin/env bash

num="$1"
numLength=${#num}
sum=0

for ((i=0; i<numLength; i++)); do
    n=${num:i:1}
    sum=$((sum + $((n**numLength))))
done

if [ "$num" == "$sum" ]; then
    echo "true"
else
    echo "false"
fi
