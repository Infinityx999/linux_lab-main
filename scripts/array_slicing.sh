#!/bin/bash

A=($(seq 1 10))

B=("${A[@]:0:5}")
echo "Sliced A was : ${A[@]}"

echo "After slicing A: ${B[@]}"
