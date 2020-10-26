#!/bin/bash

if [ $# -ne 4 ]; then
   echo "$0 <base price> <porcen> <extra 1> <extra 2>"
   echo "Exemple\n$0 120000 10 y n Enables extra1 and disable extra 2 with a base price of 120000€ and aincrement of 10% for each extra"
   exit
fi

BASE_PRICE=$1
total=$BASE_PRICE
PORCEN=$2
INC=$(echo "$BASE_PRICE * ($PORCEN / 100)"|bc -l)


if [ "$3" = "y" ] || [ "$3" = "Y" ]
then
  total=$(echo "$total + $INC"| bc -l)
fi

if [ "$4" = "y" ] || [ "$4" = "Y" ]
then
  total=$(echo "$total + $INC"| bc -l)
fi

total=$(printf "%.1f" $total) 
for i in "$@"
do
  echo "$i" >> param.txt
done

./exercise3_bin < param.txt > sal.txt
sal=$(cat sal.txt|grep -oE $total)
sw=$(echo "$total == $sal"|bc -l)
if [ $sw -eq 1 ]
then
   echo "Test OK!!"
   exit_code=0
else
  echo "Test ERROR!!"
  echo "Total price expected: $total"
  echo "Total price student: $sal"
  exit_code=1
fi

rm ent.txt sal.txt param.txt
exit $exit_code

