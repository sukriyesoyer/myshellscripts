#!/bin/bash
echo Please select an option:
echo 1.Create an histogram
echo 2.Encryription
echo 3.Delete oldest
echo 4.Convert numbers
echo 5.Orginized files
echo 6.Exit
options=("1" "2" "3" "4" "5" "6")

select opt in "${options[@]}"; do
    case $opt in
         "1")
           ./myprog1.sh 
            ;;
         "2")
            ./myprog2.sh
            ;;
         "3")
            ./myprog3.sh
	    ;;
	 "4")
	    echo Enter file name:
            read file4
	    ./myprog4.sh file4
	    ;;
	 "5")
	    ./myprog5.sh
	     break
	     ;;  
	 "6")
	    exit;;
         
    esac
done
