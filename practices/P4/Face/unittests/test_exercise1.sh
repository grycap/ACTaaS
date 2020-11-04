#!/bin/bash

if [ $# -ne 1 ]
then
   echo "$0 <number of values>"
   exit 1
fi
n=$1
check=`echo "$n" | grep -E ^\-?[0-9]+$`
if [ "$check" = '' ];
then
  echo "I need an integer number"
  exit 1
fi

if [ $n -lt 0 ]
then
  echo "I need a natural number"
  exit 1
fi

if [ $n -eq 0 ]
then
   printf "0" > data.txt
  ./exercise1_bin < data.txt > ex1.out
  sal="No value has been entered"
  if grep -q "$sal" "ex1.out"
  then
     echo "Test OK!!"
     exit_code=0
  else
      echo "Test ERROR!!"
      echo "EXPECTED OUTPUT:"
      echo "$sal"
      echo "STUDENT OUTPUT:"
      alu=$(cat ex1.out)
      echo "$alu"
      exit_code=1
  fi
  rm ex1.out data.txt
  exit $exit_code
fi

for (( c=0; c<n; c++ ))
do
  echo $((1 + RANDOM % 100)) >> data.txt
done

sum=0
c=$n
while IFS= read -r num
do
  sum=$(($sum + $num))
done < data.txt

average=$(echo "$sum / $c"|bc -l)
sal=$(printf "The average is %.2f" $average)
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
   alu=$(cat ex1.out|grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
   echo "$alu"
   exit_code=1
fi
rm ex1.out data.txt
exit $exit_code
