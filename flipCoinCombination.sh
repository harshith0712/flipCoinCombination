#!/bin/bash

## usecase4

declare -A coinCount

coinCount[HeadHeadHead]=0
coinCount[TailTailTail]=0
coinCount[HeadHeadTail]=0
coinCount[HeadTailTail]=0

function getCoinValues() {

flipThreeCoins=$((RANDOM%4))
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

