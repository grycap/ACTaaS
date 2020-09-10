#!/bin/bash

echo $((1 + RANDOM % 100)) > data.txt
for (( c=0; c<99; c++ ))
do
  echo $((1 + RANDOM % 100)) >> data.txt
done

sum=0
c=100

while IFS= read -r n
do
  sum=$(($sum + $n))
done < data.txt

average=$(echo "$sum / $c"|bc -l)
sal=$(printf "The average is %.2f\n" $average)
printf "0" >> data.txt
./exercise1_bin < data.txt > ex1.out

if grep -q "$sal" "ex1.out"
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm ex1.out data.txt
