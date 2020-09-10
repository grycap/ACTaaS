#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <extra 1> <extra 2>"
   echo "Exemple\n$0 y n Enables extra1 and disable extra 2"
   exit
fi

BASE_PRICE=120000.0
total=$BASE_PRICE
PORCEN=10
INC=$(echo "$BASE_PRICE * ($PORCEN / 100)"|bc -l)


if [ "$1" = "y" ] || [ "$1" = "Y" ]
then
  total=$(echo "$total + $INC"| bc -l)
fi

if [ "$2" = "y" ] || [ "$2" = "Y" ]
then
  total=$(echo "$total + $INC"| bc -l)
fi

printf "The final price of your flat is %.1f Euros\n" $total > ent.txt
for i in "$@"
do
  echo "$i" >> param.txt
done

./exercise3_bin < param.txt > sal.txt
sal=$(cat sal.txt|tail -n1)
ent=$(cat ent.txt)

if [ "$ent" = "$sal" ]
then
   echo "OK!!"
else
  echo "ERROR!!"
fi

rm ent.txt sal.txt param.txt


