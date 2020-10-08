#!/bin/bash

## usecase2

declare -A coinCount

coinCount[HEAD]=0
coinCount[TAIL]=0

function getCoinValues() {

flipOneCoin=$((RANDOM%3))
storeInDictionary $flipOneCoin
}
function storeInDictionary() {

	if [ $1 -eq 0 ]
	then
		coinCount[HEAD]=$((${coinCount[HEAD]} + 1))
	elif [ $1 -eq 1 ]
	then
		coinCount[TAIL]=$((${coinCount[TAIL]} + 1))
	fi
}
echo "enter the limit"
read limit1
	while [[ ${coinCount[HEAD]} -lt $limit1 && ${coinCount[TAIL]} -lt $limit1 ]]
	do
		getCoinValues;
	done
headPercent=$((${coinCount[HEAD]} * 100))
headPercent=$(($headPercent/$limit1))
tailPercent=$((100-$headPercent))
echo "the head percent for one coin flipping $limit1 number of times is $headPercent"
echo "the tail percent for one coin flipping $limit1 number of times is $tailPercent"

