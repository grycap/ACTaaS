#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <initial value> <end value> <difference between consecutive values>"
   exit 1
fi

begin=$1
end=$2
inc=$3

for euro in $(seq $begin $inc $end)
do
   pts=$(echo "$euro * 166.386" |bc -l)
   printf "%9.2f  | %9.2f\n" $euro $pts >> tabla_prueba.txt
done

echo "$@" > params.txt
./exercise5_bin < params.txt > ex5_alu.txt
start=7
end=$(cat ex6_alu.txt|wc -l)
sed -n "$start,$end p" ex5_alu.txt > tabla_alu.txt
pro=$(cat tabla_prueba.txt)
alu=$(cat tabla_alu.txt)

if [ "$pro" = "$alu" ]
then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat tabla_prueba.txt
   echo "STUDENT OUTPUT:"
   cat tabla_alu.txt
   exit_code=1
fi
rm tabla_alu.txt tabla_prueba.txt params.txt ex5_alu.txt
exit $exit_code






