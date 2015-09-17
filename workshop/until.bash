#!/usr/bin/bash

until [[ -s /tmp/$LOGNAME ]] 
do 
	sleep 1 
done 
echo "Got it!"
