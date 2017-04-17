#!/bin/bash

# Define Random Number Function
insert_random_data()
{
	if [ "$1" = "prob" ]; then
		datum=$(bc -l <<< "scale=2 ; ${RANDOM}/32767")
	elif [ "$1" = "deca-scale" ]; then
		datum=$((RANDOM % 10))
	elif [ "$1" = "logical" ]; then
		logical=$(( $RANDOM % 2 + 1 ))
		if [ "$logical" = "1" ]; then
			datum=TRUE
		elif [ "$logical" = "2" ]; then
			datum=FALSE
		fi
	elif [ "$1"='' ]; then
		datum=$RANDOM
	fi
}

# Call function and print result to screen
insert_random_data $1
echo $datum