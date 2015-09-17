#!/usr/bin/ksh

for name in $(cat mail.list) 
do 
	if [[  "$name" = "team01" ]] 
	then 
		continue 
	else 
		mail $name < mail.message 
	fi 
done   
