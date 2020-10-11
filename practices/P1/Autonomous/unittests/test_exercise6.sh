#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <character>"
   exit
fi

ch=$1

asc=$(echo $ch | awk 'BEGIN{for(n=0;n<256;n++)ord[sprintf("%c",n)]=n}{print ord[$1]}')
next=$(echo "$asc + 1"|bc)
next=$(echo $next | awk 'BEGIN{for(n=0;n<256;n++)chr[n]=sprintf("%c",n)}{print chr[$1]}')
echo "$@" > ent.txt
./exercise6_bin < ent.txt > sal.txt
sal=$(grep -oE $next sal.txt)

rm ent.txt sal.txt

if [ "$next" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi
