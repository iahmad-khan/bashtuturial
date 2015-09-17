#!/usr/bin/ksh

for filename in /* 
do 
	if [[ -d "$filename" ]] 
	then
		ls -ld $filename
	fi
done
