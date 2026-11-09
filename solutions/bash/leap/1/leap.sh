#!/usr/bin/env bash

year=$1
[[ "$year" =~ ^[0-9]{4}$ ]] || { echo "Usage: leap.sh <year>"; exit 1; }
[[ $# -eq 1 ]] || { echo "Usage: leap.sh <year>"; exit 1; }

if [ $((year%4)) -eq 0 ]; then
    if [ $((year%100)) -eq 0 ]; then
        if [ $((year%400)) -eq 0 ]; then
            echo "true"
        else
            echo "false"
        fi
    else
        echo "true"
    fi
else
    echo "false"
fi
