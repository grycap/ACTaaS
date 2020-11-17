#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <natural number>"
   exit
fi

declare -i n
declare -i m
n=$(echo -n $1 | tac -rs [^-\n])
echo "$@" > params.txt
./exercise5_bin < params.txt > ex5_out.txt
m=$(cat ex5_out.txt| tr ' ' '\n' | tail -1)
if [ $n -eq $m ]
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "SPECTED OUTPUT: $n"
   echo "STUDENT OUTPUT: $m" 
   exit_code=1
fi
rm params.txt ex5_out.txt
exit $exit_code