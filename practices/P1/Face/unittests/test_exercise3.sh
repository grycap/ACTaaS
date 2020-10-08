#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <radio>"
   exit
fi

radio=$1
pi=3.14159
area=$(echo "$pi*$radio*$radio"|bc -l)
perimeter=$(echo "2*$pi*$radio"|bc -l)

ent=$(printf 'The area is %f and the perimeter is %f' $area $perimeter)

echo "$@" > ent.txt
./exercise3_bin < ent.txt > sal.txt
sal=$(grep "The area is" sal.txt)

rm ent.txt sal.txt

areab=$(echo $ent | awk -F " " '{print $4}')
perb=$(echo $ent | awk -F " " '{print $9}')
areac=$(echo $sal | awk -F " " '{print $4}')
perc=$(echo $sal | awk -F " " '{print $9}')
errorar=$(echo "$areac - $areab"|bc -l)
firstchar=${errorar:0:1}
if [ "$firstchar" = "-" ]
then
   errorar="${errorar:1}"
fi
errorper=$(echo "$perc - $perb"|bc -l)
firstchar=${errorper:0:1}
if [ "$firstchar" = "-" ]
then
   errorper="${errorper:1}"
fi
sw=$(echo "$errorar < 0.5 && $errorper < 0.5"|bc -l)
if [ $sw -eq 1 ]
then
  echo "Test OK!!"
  exit 0
else
  echo "Test ERROR"
  exit 1
fi
