#!/bin/bash

./exercise9_bin > sal9_alu.txt

array=()
while IFS= read -r line; do
   array+=("$line")
done < train.txt

d=${array[0]}
vt1=${array[1]}
vt2=${array[2]}
tt1=${array[3]}
tt2=${array[4]}
dt1=$(echo "$vt1 * $tt1"|bc -l)
dt2=$(echo "$vt2 * $tt2"|bc -l)
sw=$(echo "($dt1 + $dt2) < $d"|bc -l)
if [ $sw -eq 1 ]
then
   pro="Trains cannot crash"
else
   pro="Trains would crash"
fi

if grep -s "$pro" sal9_alu.txt
then
    echo "Test OK!!"
    exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$pro"
   echo "STUDENT OUTPUT:"
   cat sal9_alu.txt
   exit_code=1
fi
rm sal9_alu.txt
exit $exit_code
