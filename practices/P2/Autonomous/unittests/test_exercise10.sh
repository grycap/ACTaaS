if [ $# -ne 3 ];
then
   echo "$0 <name> <current year> <year of birth>"
   exit
fi
age=$(echo "$2-$3"|bc)
ent=$(printf "%s is %d years old.\n" "$1" $age)
./exercise10_bin > sal_10.txt
sal=$(cat sal_10.txt)

if [ "$ent" = "$sal" ];
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi
rm sal_10.txt

