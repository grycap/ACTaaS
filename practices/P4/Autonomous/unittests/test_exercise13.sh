#!/bin/bash

./exercise13_bin > rombo_alu.txt
r1=$(cat rombo_alu.txt)
r2=$(cat rombo.txt|grep  "$r1")
if [ "$r1" = "$r2" ]
then
   echo "Test OK!!"
   exit_code=0
else
   echo "Test ERROR!!"
   echo "SPECTED OUTPUT:"
   cat rombo.txt
   echo "STUDENT OUTPUT:"
   cat rombo_alu.txt
   exit_code=1  
fi
rm rombo_alu.txt rombo.txt
exit $exit_code

