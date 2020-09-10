#!/bin/bash

sum=0
max=-99
min=99
cont=$(cat ex8.dat|wc -l)
cont=$(($cont-1))
marks=$(cat ex8.dat|head -n$cont)
for mark in $marks
do
  sum=$(echo "$sum + $mark"|bc -l)
  sw=$(echo "$mark > $max"|bc -l)
  if [ $sw -eq 1 ]
  then
     max=$mark
  fi
  sw=$(echo "$mark < $min"|bc -l)
  if [ $sw -eq 1 ]
  then
     min=$mark
  fi
done
average=$(echo "$sum / $cont"|bc -l)
min=$(printf "%.1f" $min)
max=$(printf "%.1f" $max)
average=$(printf "%.1f" $average)
./exercise8_bin < ex8.dat > ex8_out.txt
alu_min=$(cat ex8_out.txt|grep -o $min)
alu_max=$(cat ex8_out.txt|grep -o $max)
alu_ave=$(cat ex8_out.txt|grep -o $average)
echo $alu_min $alu_max $alu_ave
if [ "$alu_min" = "$min" ] && [ "$alu_max" = "$max" ] && [ "$alu_ave" = "$average" ]
then
    echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm ex8_out.txt

