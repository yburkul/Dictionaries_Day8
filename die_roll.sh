#1 Roll a die & find num between 1 to 6
#2 Repeat the Die roll & find the result each time
#3 store the result in a dictionary
#4 Repeat till any one of the number has reached 10 times 
#5 Find the number that reached maximum times and the one that was minimum times

dice=0
while (( result[$dice] < 10 ))
do
   dice=$((RANDOM%6+1))
   result[$dice]=$(( ${result[$dice]} + 1 ))
done

echo "Dice number: " ${!result[@]}
echo "Dice number times: " ${result[@]}
echo "Max repeated dice num: " $dice

min=1
for(( count=1 ; count<=6 ; count++ ))
do
   if (( ${result[$min]} > ${result[$count]} ))
   then
        min=$count
   fi
done

echo "Min repeated dice number: " $min
