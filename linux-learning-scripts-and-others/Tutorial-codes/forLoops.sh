#!/bin/bash

fruits=("orange", "banana", "papaya", "mango")

for fruit in "${fruits[@]}"; do

	echo "fruit is $fruit"
done

#this is c like for loop
for ((i=0; i<=4; i++)); do

	echo "Fruit from c like loop is : ${fruits[i]}"
done

#fruits[@] measn all the elements

# ${#fruits[@]} means count all the elements in the fruits array

length=${#fruits[@]} 

for((i=0; i<$length; i++)); do

	echo "fruits from length counting way: ${fruits[i]}" 
done
