#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <natural number>"
   exit
fi
n=$1
prime=1

for ((i=2; i<n; i++))
do
   sw=$(echo "$n % $i == 0"|bc)
   if [ $sw -eq 1 ]
   then
      prime=0
      break
   fi
done

if [ $prime -eq 1 ]
then
   res="The number is prime."
else
   res="The number isn't prime."
fi
echo "$@" > params.txt
./exercise9_bin < params.txt > sal.txt
if grep -q "$res" "sal.txt"
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm params.txt sal.txt
