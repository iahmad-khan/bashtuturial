#!/usr/bin/bash 
# getopts.example.ksh 
# Example of getopts 
USAGE="usage:  getopts.example.ksh [-c] [-v] [-a argument ]" 

while getopts :cva: varflag 
do 
case $varflag in 
	 a)   argument=$OPTARG ;; 
	 c)   compile=on ;;  
	 v)   verbose=on ;;  
	 :)   echo "You forgot to enter an argument for the switch called a" ;;
	\?)	echo "$OPTARG is not a valid switch" ;
		echo "$USAGE"; exit 1;; 
esac
done
shift $(($OPTIND -1))

echo "compile is $compile; verbose is $verbose; argument is $argument "

# END
