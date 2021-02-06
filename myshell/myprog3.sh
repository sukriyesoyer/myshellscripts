#!/bin/bash
cd $1
   oldf=  #I create a method to find the oldest file
   for f in *; do
      # not a file, ignore
      [[ ! -f "$f" ]] && continue
      # find oldest entry
      [[ -z "$oldf" ]] && oldf="$f" || [[ "$f" -ot "$oldf" ]] && oldf="$f"
   done
  echo "Do you want to delete $oldf.txt? (y/n): y"
read answer #take input 
if [ $answer = "y" ]; then
ls -1 -lt | awk  ' /^-/{print $9}' | tail -1 | xargs rm #delete a file from starting point in tail
echo "1 file deleted." # informed user
fi
