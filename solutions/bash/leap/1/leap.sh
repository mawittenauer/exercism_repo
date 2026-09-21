#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
    echo "Usage: leap.sh <year>"
    exit 1
fi

if [[ ! $1 =~ ^[0-9]{4}$ ]]; then
    echo "Usage: leap.sh <year>"
    exit 1
fi

year=$1

if [[ $((year % 4)) -eq 0 ]]; then
    if [[ $((year % 100)) -eq 0 ]]; then
        if [[ $((year % 400)) -eq 0 ]]; then
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
