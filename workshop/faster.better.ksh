#!/usr/bin/ksh
# Useage faster.better.ksh
profile=/etc/trcfmt 
if [[ -n "$profile" ]] 
then 
	cat $profile > /tmp/$$ 
	cat $profile >> /tmp/$$ 
	cat $profile >> /tmp/$$ 
fi 
