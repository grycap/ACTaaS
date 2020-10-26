#!/bin/bash

if [ ! -f data.txt ]
then
   echo "Test ERROR -- File data.txt not found!"
   exit 1
fi

x=$(cat data.txt|head -n1)
y=$(cat data.txt|tail -n1)
res=$(echo "$x * $y"|bc)
sw=$(echo "$res % 2 ==" 0|bc)
if [ $sw -eq 1 ]
then
   pro="even"
else
   pro="odd"
fi

./exercise7_bin
if [ ! -f result.txt ]
then
   echo "Test ERROR -- File result.txt not found!"
   exit 1
fi
if grep -q "$pro" "result.txt"
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   echo "$pro"
   echo "STUDENT OUTPUT:"
   cat result.txt
   exit_code=1
fi
rm result.txt data.txt
exit $exit_code



