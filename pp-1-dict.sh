#Write a program in the following steps
#a. Roll a die and find the number between 1 to 6
#b. Repeat the Die roll and find the result each time
#c. Store the result in a dictionary
#d. Repeat till any one of the number has reached 10 times
#e. Find the number that reached maximum times and the one that was for minimum times

#etc and store them in an array

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
mostFrequentNumber=$((RANDOM%6 + 1))
leastFrequentNumber=$((RANDOM%6 + 1))

echo "The numbers of the dice and their corresponding frequencies are:"

for number in ${!dictionary[@]}
do
    if (( dictionary[$number] >= dictionary[$mostFrequentNumber] ))
    then
        mostFrequentNumber=$number
    fi
    if (( dictionary[$number] <= dictionary[$leastFrequentNumber] ))
    then
        leastFrequentNumber=$number
    fi

    echo $number " " ${dictionary[$number]}
done

echo "The number that reached maximum times is $mostFrequentNumber"
echo "The number that reached minimum times is $leastFrequentNumber"
