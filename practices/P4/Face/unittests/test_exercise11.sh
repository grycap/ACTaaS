#!/bin/bash

sum=0
passed=0
max=-99
min=99
upper_average=0
lower_average=0
cont=$(cat marks.txt|wc -l)
marks=$(cat marks.txt)
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
  sw=$(echo "$mark >= 5.0"|bc -l)
  if [ $sw -eq 1 ]
  then
     passed=$(echo "$passed + 1"|bc)
  fi
done
average=$(echo "$sum / $cont"|bc -l)
min=$(printf "%.2f" $min)
max=$(printf "%.2f" $max)
average=$(printf "%.2f" $average)
./exercise11_bin < marks.txt > ex11_out.txt
for mark in $marks
do
   sw=$(echo "$mark > $average"|bc -l)
  if [ $sw -eq 1 ]
  then
     upper_average=$(echo "$upper_average + 1"|bc)
 fi
 sw=$(echo "$mark < $average"|bc -l)
 if [ $sw -eq 1 ]
 then
     lower_average=$(echo "$lower_average" + 1|bc)
 fi
done
alu_min=$(cat ex11_out.txt|grep "Minimum"|grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
alu_max=$(cat ex11_out.txt|grep "Maximum"|grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
alu_pas=$(cat ex11_out.txt|grep "Passed"| tr -dc '0-9')
alu_ave=$(cat ex11_out.txt|grep "Average mark"|grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
alu_up_ave=$(cat ex11_out.txt|grep "higher than the mark average"| tr -dc '0-9')
alu_lo_ave=$(cat ex11_out.txt|grep "lower than the mark average"| tr -dc '0-9')
if [ "$alu_min" = "$min" ] && [ "$alu_max" = "$max" ] && [ "$alu_ave" = "$average" ] && [ "$alu_pas" =  "$passed" ] && [ "$alu_up_ave" = "$upper_average" ] && [ "$alu_lo_ave" = "$lower_average" ]
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm ex11_out.txt

