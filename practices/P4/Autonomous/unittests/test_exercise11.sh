#!/bin/bash

if [ ! -f experiment.txt ]
then
  echo "Test ERROR -- File experiment.txt not found !!"
  exit 1
fi

awk '{ $1=""; print substr($0,2) }' experiment.txt > ex11.dat
while IFS= read -r line
do
   sum=0
   c=0
   for i in $(echo "$line")
   do
     sum=$(echo "$sum + $i"|bc -l)
     c=$(echo "$c + 1"|bc)
   done
   av=$(echo "$sum / $c"|bc -l)
   printf "%.2f\n" $av >> ex11_out.dat
done < ex11.dat
./exercise11_bin > sal.txt
awk '{ $1=""; print substr($0,10) }' sal.txt > ex11_alu.dat
if cmp -s ex11_out.dat ex11_alu.dat; then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat ex11_out.dat
   echo "STUDENT OUTPUT:"
   cat ex11_alu.dat
   exit_code=1
fi
rm ex11_out.dat sal.txt ex11.dat ex11_alu.dat experiment.txt
exit $exit_code
