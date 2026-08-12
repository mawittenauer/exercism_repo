#!/usr/bin/env bash

str="$1"
strLength=${#str}
reverseStr=""

for ((i=strLength; i>=0 ;i--)); do
    char=${str:i:1}
    reverseStr+="$char"
done

echo "$reverseStr"
