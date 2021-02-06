
func1(){

val="$1"
##convert to ch array
for (( i=0; i< ${#val} ;i++)) 
do
a=${val:$i:1}  ##convert  integer to string
if [[ $a == 1 ]]
then
echo -n >>"$2" " one"
fi
if [[ $a == 2 ]]
then
echo -n >>"$2" " two"
fi
if [[ $a == 0 ]]
then
echo -n >>"$2" " zero"
fi
if [[ $a == 3 ]]
then
echo -n >>"$2" " three"
fi
if [[ $a == 4 ]]
then
echo -n >>"$2" " four"
fi
if [[ $a == 5 ]]
then
echo -n >>"$2" " five"
fi
if [[ $a == 6 ]]
then
echo -n >>"$2" " six"
fi
if [[ $a == 7 ]]
then
echo -n >>"$2" " seven"
fi
if [[ $a == 8 ]]
then
echo -n >>"$2" " eight"
fi
if [[ $a == 9 ]]
then
echo -n >>"$2" " nine"
fi
if [[ $a == '-' ]]
then
echo -n >>"$2" " -"
fi
done
}



valu=$(cat "$1")
echo > "$1" " "
y=0
for i in $valu
do
if [[ $y == 10 ]]
then
echo >>"$1" " "
y=0
fi
if [[ $i == ?(-)+([0-9]) ]] ##select integer
then
func1 $i "$1"
else 
echo -n >>"$1" " $i" #write non integer
fi
y=`expr $y + 1`
done






