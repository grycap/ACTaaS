#!/bin/sh

if [ $# -ne 1 ]; then
   echo "$0 <number of agendas>"
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

ent=$(printf '%d BIG BOXES -- %d MEDIUM BOXES -- %d SMALL BOXES -- %d Individual agendas.' $n_big_boxes $n_medium_boxes $n_small_boxes $aux)
values=$(echo "$ent"| sed 's/[^0-9]*//g' )
echo "$@" > ent.txt
./exercise5_bin < ent.txt > sal.txt

sal=$(cat sal.txt)
pos=$(echo `expr index "$sal" 'B'`)
pos=$(echo "$pos - 2"|bc)
sal=$(cat sal.txt| cut -c $pos-)
values_alu=$(echo "$sal"| sed 's/[^0-9]*//g' )
rm ent.txt sal.txt
if [ $values -eq $values_alu ]; then
   echo "Test OK!!"
   exit 0
else
  echo "Test ERROR!!"
  echo "For input = $n_agendas agendas"
  echo "Spected sal: $ent"
  echo "Student output: $sal"
  exit 1
fi
