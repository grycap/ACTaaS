#!/bin/bash

for (( c=0; c<100; c++ ))
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
sal=$(printf "%.2f" $average)
printf "0" >> data.txt
./exercise1_bin < data.txt > ex1.out

if grep -q "$sal" "ex1.out"
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$sal"
   echo "STUDENT OUTPUT:"
   alu=$(cat ex1.out| |grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
   echo "$alu"
   exit_code=1
fi
rm ex1.out data.txt
exit $exit_code