#!/bin/bash

if [ $# -ne 1 ]
then
   echo "$0 <integer number> > 1"
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
   echo "$0 <integer number> > 1"
   exit 1
fi

echo "$@" > params.txt
./exercise2_bin < params.txt > ex2_alu.out

for (( i=2; i<=n; i++ ))
do
  sw=$(echo "$n % $i == 0"|bc)
  if [ $sw -eq 1 ]
  then
     echo $i >> ex2.out
  fi
done
tail -n +2 ex2_alu.out > ex2_alu.sol
if cmp -s ex2.out ex2_alu.sol; then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat ex3.out
   echo "STUDENT OUTPUT:"
   cat ex3_alu.sol
   exit_code=1
fi
rm params.txt ex2.out ex2_alu.out ex2_alu.sol
exit $exit_code
