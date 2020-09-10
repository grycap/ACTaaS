#!/bin/bash
cp ex9.org ex8.txt
./exercise8_bin
./exercise9_bin
if cmp -s ex8.txt ex8_alu.txt; then
    echo "OK!!"
else
   echo "ERROR!!"
fi
rm ex8_alu.txt
