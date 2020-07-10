#!/bin/bash -x

read -p "Enter the number of times to flip a coin: " num
count=0
while [ $count -lt $num ]
do
	coinflip=$((RANDOM%2))
	if [ $coinflip -eq 1 ]
	then 
			echo "HEADS"
	else
			echo "TAILS"
	fi
	((count++))
done
