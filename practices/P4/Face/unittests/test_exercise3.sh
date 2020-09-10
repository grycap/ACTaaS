#!/bin/bash

if [ $# -ne 1 ]
then
   echo "$0 <integer number> > 1"
   exit
fi

n=$1
echo "$@" > params.txt
./exercise3_bin < params.txt > ex3_alu.out
lines=$(cat ex3_alu.out|wc -l)
let lines=lines-1
cat ex3_alu.out|tail -n$lines > ex3_alu2.out
mv ex3_alu2.out ex3_alu.out
for (( i=2; i<=n; i++ ))
do
  sw=$(echo "$n % $i == 0"|bc)
  if [ $sw -eq 1 ]
  then
     echo $i >> ex3.out
  fi
done

if cmp -s ex3.out ex3_alu.out; then
    echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm params.txt ex3.out ex3_alu.out
