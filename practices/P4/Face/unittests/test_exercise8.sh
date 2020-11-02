#!/bin/bash

sum=0
max=-99
min=99
cont=$(cat ex8.dat|wc -l)
cont=$(($cont-1))
marks=$(cat ex7.dat|head -n$cont)
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
if [ "$alu_min" = "$min" ] && [ "$alu_max" = "$max" ] && [ "$alu_ave" = "$average" ]
then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED MIN: $min"
   echo "EXPECTED MAX: $max"
   echo "EXPECTED AVERAGE: $average"
   echo "STUDENT MIN: $alu_min"
   echo "STUDENT MAX: $alu_max"
   echo "STUDENT AVERAGE: $alu_ave"
   exit_code=1
fi
rm ex8_out.txt
exit $exit_code

