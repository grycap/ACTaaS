x=$(cat data.txt|head -n1)
y=$(cat data.txt|tail -n1)
res=$(echo "$x * $y"|bc)
sw=$(echo "$res % 2 ==" 0|bc)
if [ $sw -eq 1 ]
then
   pro="even"
else
   pro="odd"
fi

./exercise7_bin

if grep -q "$pro" "result.txt"
then
   echo "Test OK!!"
else
   echo "Test ERROR!!"
fi



