#!/bin/bash 

#variables
headwin_count=0
tailwin_count=0
valid=true

#function for coin simulation
function flipCoinSimulation(){
	coinflip=$((RANDOM%2))
	if [ $coinflip -eq 1 ]
	then 
			((headwin_count++)) 
	else
			((tailwin_count++))
	fi
}

#multiple coin simuations till either reaches 21
while [[ $headwin_count -le 21 || $tailwin_count -le 21 ]]
do
		flipCoinSimulation
done

#Checking if its a tie
if [ $headwin_count -eq $tailwin_count ]
then
		echo "TIE"
		while [ $valid ]
		do
				flipCoinSimulation
				if [[ $(($headwin_count-$tailwin_count)) -eq 2 || $(($tailwin_count-$headwin_count)) -eq 2 ]]
				then
						break
				fi
		done
fi

#check if head or tail won and by how much
if [ $headwin_count -gt $tailwin_count ]
then
		echo "HEAD wins by $(($headwin_count-$tailwin_count))" 
else
		echo "TAIL wins by $(($tailwin_count-$headwin_count))"
fi
