#Generate a birth month of 50 individuals
#find birthday in same month

for (( i=1 ; i<=50 ; i++ ))
do
   month=$(( RANDOM%12 + 1 ))
   result[$month]=$(( ${result[month]} + 1 ))

done

echo "Month of persons birth: " ${!result[@]}

echo "Birth date in that month: " ${result[@]}
