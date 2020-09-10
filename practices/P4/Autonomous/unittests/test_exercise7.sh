#!/bin/bash

declare -i min
declare -i max
min=$(echo $1 | awk 'BEGIN{for(n=0;n<256;n++)ord[sprintf("%c",n)]=n}{print ord[$1]}')
max=$(echo $2 | awk 'BEGIN{for(n=0;n<256;n++)ord[sprintf("%c",n)]=n}{print ord[$1]}')
if [ $# -ne 2 ] || [ $min -ge $max ]
then
   echo "$0 <character> <character> alphabetically ordered"
   exit
fi

echo "$@" > params.txt
./exercise7_bin < params.txt > ex7_out.txt
for ((i=min; i<=max; i++))
do
  grep -o $i ex7_out.txt > /dev/null
  if [ $? -ne 0 ]
  then
     echo "Test ERROR!!"
     rm ex7_out.txt params.txt
     exit
  fi
done
echo "Test OK!!"
rm ex7_out.txt params.txt
