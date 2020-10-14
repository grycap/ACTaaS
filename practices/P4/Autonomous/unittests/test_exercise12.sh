#!/bin/bash
declare -i s
./exercise12_bin > sal.txt
cat sal.txt|grep . > ex12_out_alu.dat
while IFS= read -r line
do
   n=$(echo "$line"|grep -oE '[^ ]+$')
   echo $n >> res_alu.txt
done < ex12_out_alu.dat

awk '{ $1=""; print substr($0,2) }' bowling_team.txt > ex12_out.dat
ts=0
while IFS= read -r line
do
   s=0
   for n in $(echo "$line")
   do
     s=$(echo "$s + $n"|bc)
   done
   echo $s >> res_pro.dat
   ts=$(echo "$ts + $s"|bc)
done < ex12_out.dat
av=$(echo "$ts / 5"|bc -l)
printf "%.2f\n" $av >> res_pro.dat
if cmp -s res_pro.dat res_alu.txt; then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm res_pro.dat res_alu.txt ex12_out.dat sal.txt