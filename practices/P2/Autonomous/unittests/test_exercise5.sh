#!/bin/bash
./exercise5_bin < text.dat > ex5.dat
awk 'NF' ex5.dat > ex5.bak
mv ex5.bak ex5.dat
if cmp -s text.dat ex5.dat; then
    echo "OK!!"
else
    echo "ERROR"
fi
#rm ex5.dat
