#!/bin/sh

if [ $# -ne 8 ]; then
   echo "test2 <name> <first surname> <second surname> <NIF> <day> <month> <year> <sex>"

   exit
fi

name=$1
fsurname=$2
ssurname=$3
nif=$4
day=$5
month=$6
year=$7
sex=$8

ent=$(printf 'My name is %s %s %s whith NIF %s. I was born on %d/%d/%d and my sex is %c.' $name $fsurname $ssurname $nif $day $month $year $sex)

echo "$@" > ent.txt 
./exercise2_bin < ent.txt > sal.txt
sal=$(grep "My name is" sal.txt)
rm ent.txt sal.txt

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
   exit 0
else
  echo "Test ERROR!!"
  exit 1
fi
