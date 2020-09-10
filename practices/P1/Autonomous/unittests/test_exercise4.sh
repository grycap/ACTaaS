#!/bin/sh

if [ $# -ne 7 ]; then
   echo "$0 <father name> <father first surname> <father second surname> <mother name> <mother first surname> <mother second surname> <Son/Daughter First name>"

   exit
fi

fname="$1"
fsurname="$2"
fssurname="$3"
mname="$4"
msurname="$5"
mssurname="$6"
sdname="$7"

ent=$(printf "Son/Daughter's Full name: %s %s %s" $sdname $fsurname $msurname)

echo "$@"|tr ' ' '\n' > ent.txt
sal="$(./exercise4_bin < ent.txt > sal.txt)"
sal=$(echo "$(tail -n1 sal.txt)")

rm ent.txt sal.txt

if [ "$ent" = "$sal" ]; then
   echo "Test OK!!"
else
  echo "Test ERROR!!"
fi
