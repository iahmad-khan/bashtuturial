# if-then-elif.ksh

if   [[ $# -lt 3 ]] 
then 
	print "Not enough PPs entered" 
	exit 1 

elif [[ ! -o vi ]] 
then
	print "Your vi option is not on"
	exit 2

elif [[ $1 != "loop"   &&   $1 != "value" ]] 
then
	print "The first PP is neither loop nor value"
	exit 3 

else
	print "There are $# PPs entered"
fi

print "This script is called $0" 

