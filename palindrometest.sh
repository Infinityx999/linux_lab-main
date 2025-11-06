#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    if (( num < 2 )); then
        return 1
    fi
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            return 1
        fi
    done
    return 0
}

# Function to check if a number is palindrome
is_palindrome() {
    local num=$1
    local rev=0
    local temp=$num
    while (( temp > 0 )); do
        rev=$((rev * 10 + temp % 10))
        temp=$((temp / 10))
    done
    (( num == rev ))
}

# Take array input
echo -n "Enter elements of the array (space-separated): "
read -a arr

len=${#arr[@]}
product=1
found=0

# Loop using 1-based positions
for (( pos=1; pos<=len; pos++ )); do
    index=$((pos - 1))  # convert to 0-based for array access
    if is_palindrome "${arr[index]}" && is_prime "$pos"; then
        product=$((product * arr[index]))
        found=1
    fi
done

# Display result
if (( found == 1 )); then
    echo "Product of palindromic elements at prime positions = $product"
else
    echo "No palindromic elements found at prime positions."
fi
