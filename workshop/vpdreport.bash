#!/usr/bin/bash 

for DEV in $(lsdev -CF name)
do
	echo $(lsdev -Cl $DEV -F "name location")
	lsattr -EHl $DEV
done >> $HOME/d.log

lscfg -v >> $HOME/d.log
