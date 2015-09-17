# if-then-else.ksh 

if	[[ $# -lt 3 ]] 
then 
	print "Not enough PPs entered" 
	exit 1 
else
	print "There are $# PPs entered"
fi

print "This script is called $0" 
