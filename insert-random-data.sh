#!/bin/bash
# Random Number Function
insert_random_data()
{
	if [ "$1" = "prob" ]; then
		echo $(bc -l <<< "scale=2 ; ${RANDOM}/32767")
	elif [ "$1" = "deca-scale" ]; then
		echo $((RANDOM % 10))
	elif [ "$1" = "logical" ]; then
		logical=$(( $RANDOM % 2 + 1 ))
		if [ "$logical" = "1" ]; then
			echo TRUE
		elif [ "$logical" = "2" ]; then
			echo FALSE
		fi
	elif [ "$1"='' ]; then
		echo $RANDOM
	fi
}