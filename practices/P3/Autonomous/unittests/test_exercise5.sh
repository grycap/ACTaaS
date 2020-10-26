#!/bin/bash

if [ $# -ne 1 ]; then
   echo "$0 <1000 - 9999>"
   exit
fi

if [ $1 -lt 1000 ] || [ $1 -gt 999999 ]
then
  ent="out range"
else
  n=$(echo "$1 / 1000"|bc)
  m=$(echo "$1 % 1000"|bc)
  ent="$n thousand $m"
fi

echo "$@" > params.txt
./exercise5_bin < params.txt > sal.txt
sal=$(cat sal.txt)
case "$sal" in
  *"$ent"*)
  echo "Test OK!!"
  exit_code=0
  ;;
  *)
  echo "Test ERROR!!"
  echo "EXPECTED OUTPUT:"
  echo "$ent"
  echo "EXPECTED OUTPUT:"
  echo "$sal"
  exit_code=1
esac
rm sal.txt params.txt
exit $exit_code




