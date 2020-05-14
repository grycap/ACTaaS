#!/bin/sh

if [ $# -ne 1 ]; then
   echo "test3 <radio>"
   exit
fi

radio=$1
pi=3.14159
area=$(echo "$pi*$radio*$radio"|bc -l)
perimeter=$(echo "2*$pi*$radio"|bc -l)

ent=$(printf 'The area is %f and the perimeter is %f' $area $perimeter)

echo "$@" > ent.txt 
./exercise3 < ent.txt > sal.txt
sal=$(grep "The area is" sal.txt)

rm ent.txt sal.txt

areab=$(echo $ent | awk -F " " '{print $4}') 
areac=$(echo $sal | awk -F " " '{print $4}') 
error=$(echo "$areac - $areab"|bc -l)

res=$(awk -v cc="$areac" -v cb="$areab" 'BEGIN{ if(cc - cb < 0.5)  { print "OK!!" } else { print "ERROR!!" } }')
echo $res
