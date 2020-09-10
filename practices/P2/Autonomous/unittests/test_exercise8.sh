#!/bin/bash
./exercise8_bin
cp ex8.org ex8.txt
if cmp -s ex8.txt ex8_alu.txt; then
    echo "OK!!"
else
   echo "ERROR!!"
fi
rm ex8_alu.txt
