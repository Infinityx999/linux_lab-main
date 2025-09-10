#!/bin/bash

add() {
    echo "Result: $(($1 + $2))"
}

subtract() {
    echo "Resul: $(($1 - $2))"
}

multiply() {
    echo "Result: $(($1 * $2))"
}

divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero!"
    else
        echo "Result: $(($1 / $2))"
    fi
}

echo "Enter First number"
read num1
echo "Enter second number"
read num2

echo "Choose operation (+, -, *, /)"
read op

case $op in
    +) add $num1 $num2 ;;
    -) subtract $num1 $num2 ;;
    \*) multiply $num1 $num2 ;;
    /) divide $num1 $num2 ;;
    *) echo "Invalid operator!" ;;
esac