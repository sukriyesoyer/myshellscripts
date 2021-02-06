
echo Enter an input:
read input
array=($input)
b=(${input[a-zA-Z]/})

read -a letters <<< $(echo ${input[a-zA-Z]/} | sed 's/./& /g')
a=(${input//[a-zA-Z]/})
read -a numbers <<< $(echo ${input//[a-zA-Z]/} | sed 's/./& /g')
ord()
{
LC_CTYPE=C 
value=$(printf '%d' "'$1")
if [ ${#numbers[@]}  -gt 1 ] 
then
num=${numbers[$i]}
else
num=${numbers[0]}
fi
((s=value + num))
if [ $s -gt 122 ]
then
((s=s-26))
else
((s=value + num))
fi
echo  "$s" | awk '{ printf("%c",$0); }'
} 
if [ ${#numbers[@]} -eq 1 -o $((${#numbers[@]}*2)) -eq ${#letters[@]} ]
then
for i in "${!letters[@]}"; do
ord ${letters[$i]} 
done
else 
echo Input structure is wrong
fi
echo
