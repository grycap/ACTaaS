#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <purchased price> <deprecation rate> <years>"
   exit
fi

pur=$1
dep=$2
years=$3
end_year=$pur
acum_dep=0
./exercise8_bin > ex8_out.txt
for ((i=1; i <= years; i++))
do
   end_year=$(echo "$end_year - $dep"| bc)
   acum_dep=$(echo "$acum_dep + $dep"| bc)
done

grep -o $end_year ex8_out.txt|tail -1 > /dev/null
c1=$?
grep -o $acum_dep ex8_out.txt|tail -1 >/dev/null
c2=$?

if [ $c1 -ne 0 ] || [ $c2 -ne 0 ]
then
    echo "Test ERROR!!"
    exit_code=0
else
    echo "Test OK!!"
    exit_code=1
fi
rm ex8_out.txt
exit $exit_code
