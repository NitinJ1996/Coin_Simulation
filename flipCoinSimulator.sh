#!/bin/bash -x

#variables
headwin_count=0
tailwin_count=0

#check for multiple coin simulations
while [[ $headwin_count -le 21 || $tailwin_count -le 21 ]]
do
	coinflip=$((RANDOM%2))
	if [ $coinflip -eq 1 ]
	then 
			((headwin_count++)) 
	else
			((tailwin_count++))
	fi
done

#Checking if its a tie or win
if [ $headwin_count -eq $tailwin_count ]
then
		echo "TIE"
elif [ $headwin_count -gt $tailwin_count ]
then
		echo "HEAD wins by $((headwin_count-tailwin_count))"
else
		echo "TAIL wins by $(($tailwin_count-$headwin_count))"
fi
