#!/bin/bash

./exercise13_bin > rombo_alu.txt
r1=$(cat rombo_alu.txt)
r2=$(cat rombo.txt|grep  "$r1")
if [ "$r1" = "$r2" ]
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm rombo_alu.txt
