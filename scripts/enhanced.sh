#!/bin/bash

# Ask user for input values
read -p "Enter start value: " start
read -p "Enter end value: " end
read -p "Enter step value: " step

# Loop from start to end with the given step
for (( i=$start; i<=$end; i+=step ))
do
  echo "Number: $i"
done