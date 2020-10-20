#!/bin/bash
./exercise7_bin
if cmp -s ex7_sol.txt ex7_alu.txt; then
    echo "Test OK!!"
    rm ex7_alu.txt
    exit 0
else
   echo "Test ERROR -- EXPECTED OUTPUT:"
   cat ex7_sol.txt
   echo "STUDENT OUTPUT:"
   cat ex7_alu.txt
   rm ex7_alu.txt
   exit 1
fi

