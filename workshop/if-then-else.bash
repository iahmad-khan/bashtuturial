# if-then-else.ksh 

if	[[ $# -lt 3 ]] 
then 
	echo "Not enough PPs entered" 
	exit 1 
else
	echo "There are $# PPs entered"
fi

echo "This script is called $0" 
