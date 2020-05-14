#!/bin/sh

if [ $# -ne 1 ]; then
   echo "test5 <number of agendas>"
   exit
fi

n_agendas=$1 
BIG_BOX=50
MEDIUM_BOX=20
SMALL_BOX=5


n_big_boxes=$(echo "$n_agendas / $BIG_BOX"|bc)
aux=$(echo "$n_agendas % $BIG_BOX"|bc)
n_medium_boxes=$(echo "$aux / $MEDIUM_BOX"|bc)
aux=$(echo "$aux % $MEDIUM_BOX"|bc)
n_small_boxes=$(echo "$aux / $SMALL_BOX"|bc)
aux=$(echo "$aux % $SMALL_BOX" | bc)

ent=$(printf '%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas' $n_big_boxes $n_medium_boxes $n_small_boxes $aux)

echo "$@" > ent.txt 
./exercise5 < ent.txt > sal.txt
sal=$(grep "BIG BOXES --" sal.txt)
rm ent.txt sal.txt
echo $ent
echo $sal
if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi
