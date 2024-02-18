#!/bin/bash

if [ -z "$USER" ]; then
    echo "USER environment variable is not set."
    exit 1
fi

echo "Do you want to sort the processes by (m)emory or (c)pu?"
read -r answer

if [ "$answer" = "m" ]; then
    sort_column=4
    echo "Sorting by memory..."
elif [ "$answer" = "c" ]; then
    sort_column=3
    echo "Sorting by CPU..."
else
    echo "Invalid input. Exiting..."
    exit 1
fi

echo "How many processes would you like to display?"
read -r number

if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi

ps aux | awk -v user=$USER -v column=$sort_column '$1 == user {print $0}' | sort -k$sort_column -rn | head -n $number

