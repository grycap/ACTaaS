#!/bin/bash

if [ $# -ne 1 ]
then
   echo "$0 <natural number>"
   exit
fi

echo "$@" > params.txt
./exercise4_bin < params.txt > ex4_alu.out
alu=$(cat ex4_alu.out |tail -n1)

if [ $1 -lt 0 ]
then
    pro=$(echo "Factorial of a negative number doesn't exist.")
    if grep -q "$pro" "ex4_alu.out"
    then
       echo "Test OK!!"
    else
       echo "Test ERROR!!"
    fi
    rm params.txt ex4_alu.out
    exit
fi

n=$1
fact=1

for (( i=1; i<=n; i++ ))
do
  fact=$(($fact * $i))
done

pro=$(printf "%d! = %lu\n" $n $fact)

if grep -q "$pro" "ex4_alu.out"
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm params.txt ex4_alu.out
