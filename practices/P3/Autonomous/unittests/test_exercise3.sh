#!/bin/bash

if [ $# -ne 4 ]; then
   echo "$0 <base price> <porcen> <extra 1> <extra 2>"
   echo "Exemple\n$0 120000 10 y n Enables extra1 and disable extra 2 with a base price of 120000€ and aincrement of 10% for each extra"
   exit
fi

BASE_PRICE=$1
PORCEN=$2
total=$BASE_PRICE
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
echo "$3" > param.txt
echo "$4" >> param.txt


./exercise3_bin < param.txt > sal.txt
sal=$(cat sal.txt|grep -m 1 -oE "$total")
if [ "$sal" = "$total" ]
then
   echo "Test OK!!"
   exit_code=0
else
  echo "Test ERROR!!"
  echo "Total price expected: $total"
  echo "Total price student: $sal"
  exit_code=1
fi

rm sal.txt param.txt
exit $exit_code

