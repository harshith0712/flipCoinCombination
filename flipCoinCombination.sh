#!/bin/bash


## usecase1

Head=0
Tail=1
flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq $Head ]
	then
		echo "head"
	else
		echo "tail"
	fi

