#!/bin/bash -x
declare -A dictionary=(
                            [1]=0
                            [2]=0
                            [3]=0
                            [4]=0
                            [5]=0
                            [6]=0
                        )
maxCount=10
while(( 1 ))
do
    result=$(( RANDOM % 6 + 1 ))
    (( dictionary[$result]++))
    if(( dictionary[$result] == maxCount))
    then
        break
    fi

done
mostFrequentNumber=0
leastFrequentNumber=9999999999

echo "The numbers of the dice and their corresponding frequencies are:"

for number in ${!dictionary[@]}
do
    if(( dictionary[$number] >= dictionary[$mostFrequentNumber] ))
    then
        most_frequent_number=$number
    fi
    if(( dictionary[$number] <= dictionary[$leastFrequentNumber] ))
    then
        least_frequent_number=$number
    fi

    echo $number " " ${dictionary[$number]}
done

echo "The number that reached maximum times is $mostFrequentNumber"
echo "The number that reached minimum times is $leastFrequentNumber"
