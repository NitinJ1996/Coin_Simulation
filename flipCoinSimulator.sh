#!/bin/bash -x

coinflip=$((RANDOM%2))
if [ $coinflip -eq 1 ]
then 
		echo "HEADS"
else
		echo "TAILS"
fi
