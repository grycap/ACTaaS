#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <natural number>"
   exit
fi
n=$1
check=`echo "$n" | grep -E ^\-?[0-9]+$`
if [ "$check" = '' ];
then
  echo "I need a natural number"
  exit 1
fi

if [ $n -lt 0 ]
then
   echo "$0 <natural number> > 1"
   exit 1
fi
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
./exercise8_bin < params.txt > sal.txt
if grep -q "$res" "sal.txt"
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   exit_code=1
fi
rm params.txt sal.txt
exit $exit_code
