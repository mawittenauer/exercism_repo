#!/usr/bin/env bash

square=$1
rice=1

if [[ "$square" == "total" ]]; then
    echo "18446744073709551615"
    exit 0
fi

if [[ $square -lt 1 || $square -gt 64 ]]; then
    echo "Error: invalid input"
    exit 1
fi

if [[ "$square" == "64" ]]; then
    echo "9223372036854775808"
    exit 0
fi

for ((i=1; i<square; i++)); do
    rice=$((rice*2))
done

echo "$rice"
