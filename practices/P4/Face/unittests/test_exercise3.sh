#!/bin/bash

if [ $# -ne 1 ]
then
   echo "$0 <natural number>"
   exit
fi
n=$1
check=`echo "$n" | grep -E ^\-?[0-9]+$`
if [ "$check" = '' ];
then
  echo "I need an natural number"
  exit 1
fi

if [ $n -lt 0 ]
then
   echo "$0 <natural number> > 1"
   exit 1
fi

echo "$@" > params.txt
./exercise3_bin < params.txt > ex3_alu.out
alu=$(cat ex3_alu.out |tail -n1)

fact=1

for (( i=1; i<=n; i++ ))
do
  fact=$(($fact * $i))
done

pro=$(printf "%d! = %lu\n" $n $fact)

if grep -q "$pro" "ex3_alu.out"
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$pro"
   echo "STUDENT OUTPUT:"
   cat ex4_alu.out|tail -n1
   exit_code=1
fi
rm params.txt ex3_alu.out
exit $exit_code
