#!/usr/bin/ksh
# Usage: case.ksh filenames ...
for filename 
do
	case $filename in 
	(*.tmp)		rm $filename ;; 
	(f*)		cp $filename /tmp ;; 
	(*x*)		chmod +x $filename ;; 
	(*)		print "File name $filename not processed" ;;
	esac 
done 
