#!/bin/bash

if [ $# -ne 2 ]; then
   echo "$0 <cost price> <profit margin %>"
   exit
fi

profit=$(echo "$1 * $2 / 100"|bc -l)
printf 'The profit is %f euros' $profit
sp=$(echo "$1 + $profit" | bc -l)
ent=$(printf 'The selling price is %f euros' $sp)
echo "$@" > ent.txt
./exercise4_bin < ent.txt > sal.txt
sal=$(grep "The selling price is" sal.txt)


rm ent.txt sal.txt

spb=$(echo $ent | awk -F " " '{print $5}')
spc=$(echo $sal | awk -F " " '{print $5}')
echo $spb
echo $spc
errorsp=$(echo "$spc - $spb"|bc -l)
firstchar=${errorsp:0:1}
if [ "$firstchar" = "-" ]
then
   errorsp="${errorsp:1}"
fi
sw=$(echo "$errorsp < 0.5"|bc -l)
if [ $sw -eq 1 ]
then
  echo "Test OK!!"
  exit 0
else
  echo "Test ERROR!!"
  exit 1
fi


