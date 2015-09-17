#!/usr/bin/bash
# Usage: case.ksh filenames ...
for filename 
do
	case $filename in 
	(*.tmp)		rm $filename ;; 
	(f*)		cp $filename /tmp ;; 
	(*x*)		chmod +x $filename ;; 
	(*)		echo "File name $filename not processed" ;;
	esac 
done 
