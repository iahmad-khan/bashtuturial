# if-then-elif.ksh

if   [[ $# -lt 3 ]] 
then 
	echo "Not enough PPs entered" 
	exit 1 

elif [[ ! -o vi ]] 
then
	echo "Your vi option is not on"
	exit 2

elif [[ $1 != "loop"   &&   $1 != "value" ]] 
then
	echo "The first PP is neither loop nor value"
	exit 3 

else
	echo "There are $# PPs entered"
fi

echo "This script is called $0" 

