#!/bin/bash
# Program: palindrome_prime_process.sh
# Description: Process two arrays — one for palindromes, one for primes — and generate two output arrays.

# ---------- Input Arrays ----------
# You can modify these or take input dynamically
ArrayA=("121" "madam" "hello" "454" "wow" "apple")
ArrayB=(3 4 5 7 9 11)

# ---------- Step 1: Identify palindrome positions ----------
is_palindrome() {
    local str="$1"
    local rev
    rev=$(echo "$str" | rev)
    [[ "$str" == "$rev" ]]
}

# ---------- Step 2: Identify prime numbers ----------
is_prime() {
    local n=$1
    if (( n <= 1 )); then
        return 1
    fi
    for (( i=2; i*i<=n; i++ )); do
        if (( n % i == 0 )); then
            return 1
        fi
    done
    return 0
}

# ---------- Step 3: Process arrays ----------
C=()   # Stores indices of palindromes
D=()   # Stores products (sum * prime)

palindromes=()
primes=()

# Find palindrome positions and their values
for (( i=0; i<${#ArrayA[@]}; i++ )); do
    if is_palindrome "${ArrayA[i]}"; then
        C+=($i)
        palindromes+=("${ArrayA[i]}")
    fi
done

# Find prime numbers
for num in "${ArrayB[@]}"; do
    if is_prime "$num"; then
        primes+=("$num")
    fi
done

# ---------- Step 4: Calculate products ----------
for p in "${palindromes[@]}"; do
    if [[ "$p" =~ ^[0-9]+$ ]]; then
        # Numeric palindrome → sum of digits
        sum=0
        for (( j=0; j<${#p}; j++ )); do
            sum=$(( sum + ${p:j:1} ))
        done
    else
        # String palindrome → sum of ASCII values
        sum=0
        for (( j=0; j<${#p}; j++ )); do
            asc=$(printf "%d" "'${p:j:1}")
            sum=$(( sum + asc ))
        done
    fi

    for prime in "${primes[@]}"; do
        D+=($(( sum * prime )))
    done
done

# ---------- Step 5: Output ----------
echo "Array A: ${ArrayA[@]}"
echo "Array B: ${ArrayB[@]}"
echo
echo "Array C (Palindrome Indices): ${C[@]}"
echo "Array D (Products): ${D[@]}"