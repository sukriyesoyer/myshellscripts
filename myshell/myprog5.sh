func1() {

cdirc=$(pwd) ##store the curent working directory

value=$(find $1)  ##find the files which obeys wildcard
if [[ $? -ne 0 ]]
then 
echo "file yok"

else 
mkdir copied

cp $value  copied ##copy the files
fi
dir=$(find -type d) ##find the subdirectory 
if [[ $dir == "." ]]
then
return
fi

for i in $dir  ##
do
if [[ $i == "." || $i == "./copied" ]]
then
continue
fi

cd  $i ##change the directory 
func2 "$1" ##copy files
cd $cdirc
done
}
func2(){

value=$(find $1)
if [[ $? -ne 0 ]]
then 
echo "file yok"
else 
mkdir copied

cp $value  copied
fi
}

if [[ $# -eq 2 ]] ## with r option
then
func1 "$2"

elif [[ $# -eq 1 ]] ##without r option
then
func2 "$1"
else
echo "you must give least one argument"
fi

