#!/usr/bin/ksh

until [[ -s /tmp/$LOGNAME ]] 
do 
	sleep 1 
done 
print "Got it!"
