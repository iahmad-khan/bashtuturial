#!/usr/bin/ksh
# Demonstration program for getopts in AU23 
# Written by John Peck - 10/10/94
# Updated by RSD - 9/8/98
#
# Usage:  /home/workshop/exampl2.getopts.ksh -options flags args...
#
# Examples in notes:
# /home/workshop/exampl2.getopts.ksh +c -ab oarg -- arg1 arg2
# /home/workshop/exampl2.getopts.ksh -cab oarg -- arg1 arg2
# /home/workshop/exampl2.getopts.ksh +aboarg -c arg1 arg2
#
integer loops=0
print "\nValues\t\tFLAG\tOPTIND\tOPTARG"
print - "--------------------------------------"
print "Before loop" "\t${FLAG:-unset}" "\t${OPTIND:-unset}" "\t${OPTARG:-unset}"

while getopts ab:c FLAG
do
	loops=loops+1
	print "Loop pass" "$loops" "\t${FLAG:-unset}" "\t${OPTIND:-unset}" "\t${OPTARG:-unset}"
done

print "After loop" "\t${FLAG:-unset}" "\t${OPTIND:-unset}" "\t${OPTARG:-unset}\n"
