#!/bin/bash

pur=28000
dep=4000
years=7
end_year=28000
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
else
    echo "Test OK!!"
fi
rm ex8_out.txt
