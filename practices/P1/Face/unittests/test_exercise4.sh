#!/bin/sh

if [ $# -ne 2 ]; then
   echo "test4 <cost price> <profit margin %>"
   exit
fi

profit=$(echo "$1 * ($2 / 100)"|bc)
sp=$(echo "$1 + $profit" | bc -l)
ent=$(printf 'The selling price is %f euros' $sp)

echo "$@" > ent.txt 
./exercise4 < ent.txt > sal.txt
sal=$(grep "The selling price is" sal.txt)


rm ent.txt sal.txt

spb=$(echo $ent | awk -F " " '{print $5}') 
spc=$(echo $sal | awk -F " " '{print $5}') 
res=$(awk -v cc="$spc" -v cb="$spb" 'BEGIN{ if(cc - cb < 0.5)  { print "OK!!" } else { print "ERROR!!" } }')
echo $res

