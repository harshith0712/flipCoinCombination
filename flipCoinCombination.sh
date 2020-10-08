#!/bin/bash

echo "welcome to flip coin combination"

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

## usecase3

declare -A coinCount

coinCount[HeadHead]=0
coinCount[TailTail]=0
coinCount[HeadTail]=0

function getCoinValues() {

flipTwoCoins=$((RANDOM%3))
storeInDictionary $flipTwoCoins
}
function storeInDictionary() {

   if [ $1 -eq 0 ]
   then
      coinCount[HeadHead]=$((${coinCount[HeadHead]} + 1))
   elif [ $1 -eq 1 ]
   then
      coinCount[TailTail]=$((${coinCount[TailTail]} + 1))
   else
      coinCount[HeadTail]=$((${coinCount[HeadTail]} + 1))
   fi
}
echo "enter the limit"
read limit2
   while [[ ${coinCount[HeadHead]} -lt $limit2 && ${coinCount[TailTail]} -lt $limit2 && ${coinCount[HeadTail]} -lt $limit2 ]]
   do
      getCoinValues;
   done
headHeadPercent=$((${coinCount[HeadHead]} * 100))
headHeadPercent=$(($headHeadPercent/$limit2))
tailTailPercent=$((${coinCount[TailTail]} * 100))
tailTailPercent=$(($tailTailPercent/$limit2))
headTailPercent=$((${coinCount[HeadTail]} * 100))
headTailPercent=$(($headTailPercent/$limit2))
echo "the head head percent for two coin flipping $limit2 number of times is $headHeadPercent"
echo "the tail tail percent for two coin flipping $limit2 number of times is $tailTailPercent"
echo "the head tail percent for two coin flipping $limit2 number of times is $headTailPercent"

## usecase4

declare -A coinCount

coinCount[HeadHeadHead]=0
coinCount[TailTailTail]=0
coinCount[HeadHeadTail]=0
coinCount[HeadTailTail]=0

function getCoinValues() {

flipthreeCoins=$((RANDOM%4))
storeInDictionary $flipThreeCoins
}
function storeInDictionary() {

   if [ $1 -eq 0 ]
   then
      coinCount[HeadHeadHead]=$((${coinCount[HeadHeadHead]} + 1))
   elif [ $1 -eq 1 ]
   then
      coinCount[TailTailTail]=$((${coinCount[TailTailTail]} + 1))
   elif [ $1 -eq 2 ]
   then
      coinCount[HeadHeadTail]=$((${coinCount[HeadHeadTail]} + 1))
   else
      coinCount[HeadTailTail]=$((${coinCount[HeadTailTail]} + 1))
   fi
}
echo "enter the limit"
read limit3
   while [[ ${coinCount[HeadHeadHead]} -lt $limit3 && ${coinCount[TailTailTail]} -lt $limit3 && ${coinCount[HeadHeadTail]} -lt $limit3 && ${coinCount[HeadTailTail]} -lt $limit3 ]]
   do
      getCoinValues;
   done
headHeadHeadPercent=$((${coinCount[HeadHeadHead]} * 100))
headHeadHeadPercent=$(($headHeadHeadPercent/$limit3))
tailTailTailPercent=$((${coinCount[TailTailTail]} * 100))
tailTailTailPercent=$(($tailTailTailPercent/$limit3))
headHeadTailPercent=$((${coinCount[HeadHeadTail]} * 100))
headHeadTailPercent=$(($headHeadTailPercent/$limit3))
headTailTailPercent=$((${coinCount[HeadTailTail]} * 100))
headTailTailPercent=$(($headTailTailPercent/$limit3))

echo "the head head head percent for three coin flipping $limit3 number of times is $headHeadHeadPercent"
echo "the tail tail tail percent for three coin flipping $limit3 number of times is $tailTailTailPercent"
echo "the head head tail percent for three coin flipping $limit3 number of times is $headHeadTailPercent"
echo "the head tail tail percent for three coin flipping $limit3 number of times is $headTailTailPercent"

## usecase5

declare  -A Sort

Sort[1]=$headPercent
Sort[2]=$tailPercent
Sort[3]=$headHeadPercent
Sort[4]=$tailTailPercent
Sort[5]=$headTailPercent
Sort[6]=$headHeadHeadPercent
Sort[7]=$tailTailTailPercent
Sort[8]=$headHeadTailPercent
Sort[9]=$headTailTailPercent
echo "the win values are ${Sort[@]}"
variable=${Sort[@]}
for value in $variable
do
   array+=($value)
done
   echo "array value are ${array[@]}"
sorting=`echo ${array[@]} | awk 'BEGIN{RS=" "} {print $1}' | sort -n `
echo $sorting
