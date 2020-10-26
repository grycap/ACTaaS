#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <distance>"
   exit
fi

echo "$@" > params.txt
./exercise8_bin < params.txt > /dev/null

array=()
while IFS= read -r line; do
   array+=("$line")
done < info.txt

distance=$1
brand1=${array[0]}
fuel1=${array[1]}
liter_cost1=${array[2]}
brand2=${array[3]}
fuel2=${array[4]}
liter_cost2=${array[5]}
echo $distance
echo "$brand1"
echo $fuel1
echo $liter_cost1

echo "$brand2"
echo $fuel2
echo $liter_cost2
car1=$(echo "$fuel1 * ($distance / 100) * $liter_cost1"| bc -l)
car2=$(echo "$fuel2 * ($distance / 100) * $liter_cost2"| bc -l)
sw=$(echo "$car1 > $car2"|bc -l)
if [ $sw -eq 1 ]
then
   printf "%s\n%s\n%s\n%s\n%s\n%s\n" "$brand1" "$fuel1" "$liter_cost1" "$brand2" "$fuel2" "$liter_cost2" > info2.txt
else
   printf "%s\n%s\n%s\n%s\n%s\n%s\n" "$brand2" "$fuel2" "$liter_cost2" "$brand1" "$fuel1" "$liter_cost1" > info2.txt
fi

if cmp -s info.txt info2.txt; then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
fi
rm params.txt info2.txt
