#!/bin/bash

if [ $# -ne 6 ]; then
   echo "$0 <Sandwiches of sausages> <Sandwiches of tune> <Bottels of water> <Bottels of cocacola> <Bottels of orange juice> <payment>"
   exit
fi
### Constants - products prices ###
ps=1.10
pt=1.40
pw=0.50
pc=0.75
pj=0.70
### Constants - products prices ###

ss=$1
st=$2
bw=$3
bc=$4
bj=$5
pay=$6

bill=$(echo "$ss*$ps + $st*$pt + $bw*$pw + $bc*$pc + $bj*$pj"|bc -l)
ref=$(echo "$pay - $bill"|bc -l)
printf "TOTAL:   %6.2f" $bill > ex1.out
printf "\nPayment: %6.2f" $pay >> ex1.out
printf "\nRefund:  %6.2f" $ref >> ex1.out

for i in "$@"
do
  echo "$i" >> ent.txt
done

./exercise1_bin < ent.txt > /dev/null
ent=$(cat ticked.txt|tail -n3)
sal=$(cat ex1.out)
rm ex1.out ent.txt
if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
   exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT: 
   echo "$sal"
   echo "STUDENT OUTPUT:"
   echo "$ent" 
   exit 1
fi

