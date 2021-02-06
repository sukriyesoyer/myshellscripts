
sort -n <$1>sorted.txt ## sort the numbers for counting occurance
valu=$(cat sorted.txt)

variable=-1

for i in $valu   ##count and start print *
do
if [ $i -lt 0 ]
then 
echo " $i number negative"
  continue
fi
if [ $i -gt 9 ]
then 
echo " $i number greater than 9"
continue
fi
if [ $variable -eq $i ] ##for second or more occurance 
then 
  echo -n "*"
fi
if [ $variable -ne $i ] ##for the first occurance
then
a=`expr $variable + 1`
if [ $a -ne $i ] ## for some value which not exist
then
echo  " " 
  echo  -n "$a"

fi 
  variable=$i
   echo " "
  echo  -n "$variable"
   echo  -n "*"
fi
done
if [ $variable -eq 8 ]
then 
echo  " " 
echo  "9"
fi

     
