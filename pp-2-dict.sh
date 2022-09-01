noOfIndividuals=50;

declare -A birthDay

echo "The birthday month and year of $noOfIndividuals individuals are: "

for (( individual = 1; individual <= noOfIndividuals; individual++ ))
do
    (( birthMonth = RANDOM % 12 + 1 ))
    (( birthYear = RANDOM % 2 + 92 ))
    echo "individual $individual has birthday in month $birthMonth year $birthYear "
    birthDay[$birthMonth]+="${individual} "
done

for month in ${!birthDay[@]}
do
    echo "The individuals who are having birthday in month $month are: "
    	for individual in ${birthDay[$month]}
    	do
        	echo -n "$individual ";
    	done
	echo
done