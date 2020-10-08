#!/bin/bash

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
