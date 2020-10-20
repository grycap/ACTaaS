#!/bin/bash
./exercise2_bin
if cmp -s summary.txt sol_ex2.txt; then
    echo "OK!!"
    exit 0
else
   echo "ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat sol_ex2.txt
   echo "STUDENT OUPUT:"
   cat summary.txt
   exit 1
fi
