#!/usr/bin/ksh 
# getopts.example.ksh 
# Example of getopts 
USAGE="usage:  getopts.example.ksh [+-c] [+-v] [-a argument ]" 

while getopts :cva: varflag 
do 
case $varflag in 
	 a)   argument=$OPTARG ;; 
	 c)   compile=on ;;  
	+c)   compile=off ;; 
	 v)   verbose=on ;;  
	+v)   verbose=off ;; 
	 :)   print "You forgot to enter an argument for the switch called a" ;;
	\?)	print "$OPTARG is not a valid switch" ;
		print "$USAGE"; exit 1;; 
esac
done
shift $(($OPTIND -1))

print "compile is $compile; verbose is $verbose; argument is $argument "

# END
