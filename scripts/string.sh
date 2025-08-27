#!/bin/bash
str1="hello"
str2="nidhish"
empt=""

if [ $str1 = "nidhish" ]; then
	echo "string 1 matched the value"
fi
if [ $str1 !=  "nidhish" ]; then
	echo "string1 does not match the value"
fi
if [ -z "$empt" ]; then
	echo "string variable empt is empty"
fi
if [ -n "$empt" ]; then 
	echo " empt is not empty"
fi
