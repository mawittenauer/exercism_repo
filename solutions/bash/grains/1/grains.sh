#!/usr/bin/env bash
grains=1

if [ "$1" == "total" ]; then
    echo "18446744073709551615"
    exit 0;
fi

if [[ $1 -lt 1 || $1 -gt 64 ]]; then
    echo "Error: invalid input"
    exit 1
fi

if [ "$1" == "64" ]; then
    echo "9223372036854775808"
    exit 0
fi

for ((i=2; i<=$1; i++)); do
    grains=$((grains*2))
done

echo "$grains"
