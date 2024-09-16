#!/bin/bash

# Script to calculate simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Calculate simple interest
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Check if all required arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Call the function to calculate interest
calculate_simple_interest $1 $2 $3