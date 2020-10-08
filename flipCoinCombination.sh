#!/bin/bash -x

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
